package com.tencent.wecarbase.common.thread;

import android.util.Log;
import com.tencent.wecarbase.utils.LogUtils;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: /home/user/work/dex/classes.dex */
public class TAIThreadPoolProxyFactory {
    private static final int FIXED_KEEP_ALIVE = 40000;
    private static final int FIXED_WORK_QUEUE = 128;
    private static final int IO_KEEP_ALIVE = 30000;
    private static final int IO_WORK_QUEUE = 64;
    private static final int NORMAL_CORE_POOL_SIZE = 0;
    private static final int NORMAL_KEEP_ALIVE = 50000;
    private static final int NORMAL_MAXIMUM_POOL_SIZE = Integer.MAX_VALUE;
    private static String TAG = "TAIThreadPoolProxyFactory";
    private static volatile ThreadPoolProxy mCommonThreadPoolProxy;
    private static volatile ThreadPoolProxy mFixedThreadPoolProxy;
    private static volatile ThreadPoolProxy mIOThreadPoolProxy;
    private static final int CPU_COUNT = Runtime.getRuntime().availableProcessors();
    private static final int FIXED_CORE_POOL_SIZE = CPU_COUNT + 9;
    private static final int FIXED_MAXIMUM_POOL_SIZE = (CPU_COUNT * 3) + 9;
    private static final int IO_CORE_POOL_SIZE = CPU_COUNT + 2;
    private static final int IO_MAXIMUM_POOL_SIZE = (CPU_COUNT * 2) + 2;

    public static ThreadPoolProxy getCommonThreadPoolProxy() {
        if (mCommonThreadPoolProxy == null) {
            synchronized (TAIThreadPoolProxyFactory.class) {
                if (mCommonThreadPoolProxy == null) {
                    mCommonThreadPoolProxy = new ThreadPoolProxy(0, Integer.MAX_VALUE, NORMAL_KEEP_ALIVE, new SynchronousQueue(), null);
                }
            }
        }
        return mCommonThreadPoolProxy;
    }

    public static ThreadPoolProxy getFixedThreadPoolProxy() {
        if (mFixedThreadPoolProxy == null) {
            synchronized (TAIThreadPoolProxyFactory.class) {
                if (mFixedThreadPoolProxy == null) {
                    mFixedThreadPoolProxy = new ThreadPoolProxy(FIXED_CORE_POOL_SIZE, FIXED_MAXIMUM_POOL_SIZE, FIXED_KEEP_ALIVE, new LinkedBlockingDeque(128), new RejectedExecutionHandler() { // from class: com.tencent.wecarbase.common.thread.TAIThreadPoolProxyFactory.1
                        @Override // java.util.concurrent.RejectedExecutionHandler
                        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                            LogUtils.e(TAIThreadPoolProxyFactory.TAG, "FixedThreadPool rejectedExecution, getActiveCount is:" + threadPoolExecutor.getActiveCount());
                        }
                    });
                }
            }
        }
        return mFixedThreadPoolProxy;
    }

    public static ThreadPoolProxy getIOPoolProxy() {
        if (mIOThreadPoolProxy == null) {
            synchronized (TAIThreadPoolProxyFactory.class) {
                if (mIOThreadPoolProxy == null) {
                    mIOThreadPoolProxy = new ThreadPoolProxy(IO_CORE_POOL_SIZE, IO_MAXIMUM_POOL_SIZE, 30000, new LinkedBlockingDeque(64), new IORejectedExecutionHandler());
                }
            }
        }
        return mIOThreadPoolProxy;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class IORejectedExecutionHandler implements RejectedExecutionHandler {
        private IORejectedExecutionHandler() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            try {
                threadPoolExecutor.getQueue().put(runnable);
            } catch (InterruptedException e) {
                Log.e(TAIThreadPoolProxyFactory.TAG, "Exception:" + Log.getStackTraceString(e));
                Thread.currentThread().interrupt();
            }
        }
    }
}
