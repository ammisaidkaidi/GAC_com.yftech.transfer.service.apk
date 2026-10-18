package com.tencent.wecarbase.common.thread;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: /home/user/work/dex/classes.dex */
public class ThreadPoolProxy {
    private int mCorePoolSize;
    private volatile ThreadPoolExecutor mExt;
    private int mKeepAliveTime;
    private int mMaximumPoolSize;
    private RejectedExecutionHandler mRejectHandler;
    private BlockingQueue<Runnable> mWorkQueue;

    public ThreadPoolProxy(int i, int i2, int i3, BlockingQueue<Runnable> blockingQueue, RejectedExecutionHandler rejectedExecutionHandler) {
        this.mCorePoolSize = i;
        this.mMaximumPoolSize = i2;
        this.mKeepAliveTime = i3;
        this.mWorkQueue = blockingQueue;
        this.mRejectHandler = rejectedExecutionHandler;
    }

    private void initThreadPoolExecutor() {
        if (this.mExt == null || this.mExt.isShutdown() || this.mExt.isTerminated()) {
            synchronized (ThreadPoolProxy.class) {
                if (this.mExt == null || this.mExt.isShutdown() || this.mExt.isTerminated()) {
                    long j = this.mKeepAliveTime;
                    TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                    ThreadFactory defaultThreadFactory = Executors.defaultThreadFactory();
                    if (this.mRejectHandler == null) {
                        this.mRejectHandler = new ThreadPoolExecutor.DiscardPolicy();
                    }
                    this.mExt = new ThreadPoolExecutor(this.mCorePoolSize, this.mMaximumPoolSize, j, timeUnit, this.mWorkQueue, defaultThreadFactory, this.mRejectHandler);
                }
            }
        }
    }

    public void execute(Runnable runnable) {
        initThreadPoolExecutor();
        this.mExt.execute(runnable);
    }

    public Future submit(Runnable runnable) {
        initThreadPoolExecutor();
        return this.mExt.submit(runnable);
    }

    public void remove(Runnable runnable) {
        initThreadPoolExecutor();
        this.mExt.remove(runnable);
    }
}
