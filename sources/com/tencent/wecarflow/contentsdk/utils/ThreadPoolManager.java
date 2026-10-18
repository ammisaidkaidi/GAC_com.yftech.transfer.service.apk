package com.tencent.wecarflow.contentsdk.utils;

import java.util.TimerTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: /home/user/work/dex/classes.dex */
public class ThreadPoolManager {
    private static final int THREAD_SIZE = 10;
    private ThreadPoolExecutor threadService;
    private ScheduledExecutorService timerService;

    private ThreadPoolManager() {
        this.threadService = null;
        this.timerService = null;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class Holder {
        private static ThreadPoolManager sInstance = new ThreadPoolManager();

        private Holder() {
        }
    }

    public static ThreadPoolManager getInstance() {
        return Holder.sInstance;
    }

    private ThreadPoolExecutor getThreadService() {
        if (!isThreadServiceEnable()) {
            this.threadService = new ThreadPoolExecutor(10, 10, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
        }
        return this.threadService;
    }

    public void addThreadTask(Runnable runnable) {
        getThreadService().submit(runnable);
    }

    public void shutDownThreadService() {
        if (isThreadServiceEnable()) {
            getThreadService().shutdown();
        }
    }

    public void shutDownNowThreadService() {
        if (isThreadServiceEnable()) {
            getThreadService().shutdownNow();
        }
    }

    private boolean isThreadServiceEnable() {
        return (this.threadService == null || this.threadService.isShutdown() || this.threadService.isTerminated()) ? false : true;
    }

    private ScheduledExecutorService getTimerService() {
        if (!isTimerServiceEnable()) {
            this.timerService = new ScheduledThreadPoolExecutor(10);
        }
        return this.timerService;
    }

    public ScheduledFuture<?> addTimerTask(TimerTask timerTask, long j, long j2, TimeUnit timeUnit) {
        return getTimerService().scheduleAtFixedRate(timerTask, j, j2, timeUnit);
    }

    public void shutDownTimerService() {
        if (isTimerServiceEnable()) {
            getTimerService().shutdown();
        }
    }

    public void shutDownNowTimerService() {
        if (isTimerServiceEnable()) {
            getTimerService().shutdownNow();
        }
    }

    private boolean isTimerServiceEnable() {
        return (this.timerService == null || this.timerService.isShutdown() || this.timerService.isTerminated()) ? false : true;
    }
}
