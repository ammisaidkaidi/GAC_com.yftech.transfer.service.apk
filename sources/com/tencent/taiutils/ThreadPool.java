package com.tencent.taiutils;

import android.support.v7.widget.ActivityChooserView;
import bolts.Continuation;
import bolts.Task;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: /home/user/work/dex/classes.dex */
public class ThreadPool {
    public static ExecutorService mHighestPriorityExecutorService = Task.BACKGROUND_EXECUTOR;
    public static ThreadPoolExecutor mHighPriorityExecutorService = new ThreadPoolExecutor(2, 10, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    public static ExecutorService mLowPriorityExecutorService = Executors.newSingleThreadScheduledExecutor();
    public static ExecutorService EXECUTOR = new ThreadPoolExecutor(5, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60, TimeUnit.SECONDS, new SynchronousQueue());

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface RunReturn {
        Object runReturn();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface RunWith {
        void runWith(Object obj);
    }

    public static void execute(Runnable runnable) {
        EXECUTOR.execute(runnable);
    }

    public static void runBackgroudTask(final Runnable runnable, ExecutorService executorService) {
        Task.call(new Callable<Object>() { // from class: com.tencent.taiutils.ThreadPool.7
            @Override // java.util.concurrent.Callable
            public Object call() {
                Runnable runnable2 = runnable;
                if (runnable2 == null) {
                    return null;
                }
                runnable2.run();
                return null;
            }
        }, executorService);
    }

    public static void runBgUITask(final RunReturn runReturn, final RunWith runWith) {
        Task.call(new Callable<Object>() { // from class: com.tencent.taiutils.ThreadPool.11
            @Override // java.util.concurrent.Callable
            public Object call() {
                RunReturn runReturn2 = RunReturn.this;
                if (runReturn2 != null) {
                    return runReturn2.runReturn();
                }
                return null;
            }
        }, Task.BACKGROUND_EXECUTOR).continueWith(new Continuation<Object, Object>() { // from class: com.tencent.taiutils.ThreadPool.10
            public Object then(Task<Object> task) {
                RunWith runWith2 = RunWith.this;
                if (runWith2 == null) {
                    return null;
                }
                runWith2.runWith(task.getResult());
                return null;
            }
        }, Task.UI_THREAD_EXECUTOR);
    }

    public static void runHighPriorityTask(final Runnable runnable) {
        Task.call(new Callable<Object>() { // from class: com.tencent.taiutils.ThreadPool.3
            @Override // java.util.concurrent.Callable
            public Object call() {
                Runnable runnable2 = runnable;
                if (runnable2 == null) {
                    return null;
                }
                runnable2.run();
                return null;
            }
        }, mHighPriorityExecutorService);
    }

    public static void runHighTaskDelay(final Runnable runnable, long j) {
        Task.delay(j).continueWith(new Continuation<Void, Object>() { // from class: com.tencent.taiutils.ThreadPool.4
            public Object then(Task<Void> task) {
                Runnable runnable2 = runnable;
                if (runnable2 == null) {
                    return null;
                }
                runnable2.run();
                return null;
            }
        }, mHighPriorityExecutorService);
    }

    public static void runHighestPriorityTask(final Runnable runnable) {
        Task.call(new Callable<Object>() { // from class: com.tencent.taiutils.ThreadPool.1
            @Override // java.util.concurrent.Callable
            public Object call() {
                Runnable runnable2 = runnable;
                if (runnable2 == null) {
                    return null;
                }
                runnable2.run();
                return null;
            }
        }, mHighestPriorityExecutorService);
    }

    public static void runHighestTaskDelay(final Runnable runnable, long j) {
        Task.delay(j).continueWith(new Continuation<Void, Object>() { // from class: com.tencent.taiutils.ThreadPool.2
            public Object then(Task<Void> task) {
                Runnable runnable2 = runnable;
                if (runnable2 == null) {
                    return null;
                }
                runnable2.run();
                return null;
            }
        }, mHighestPriorityExecutorService);
    }

    public static void runLowPriorityTask(final Runnable runnable) {
        Task.call(new Callable<Object>() { // from class: com.tencent.taiutils.ThreadPool.5
            @Override // java.util.concurrent.Callable
            public Object call() {
                Runnable runnable2 = runnable;
                if (runnable2 == null) {
                    return null;
                }
                runnable2.run();
                return null;
            }
        }, mLowPriorityExecutorService);
    }

    public static void runLowTaskDelay(final Runnable runnable, long j) {
        Task.delay(j).continueWith(new Continuation<Void, Object>() { // from class: com.tencent.taiutils.ThreadPool.6
            public Object then(Task<Void> task) {
                Runnable runnable2 = runnable;
                if (runnable2 == null) {
                    return null;
                }
                runnable2.run();
                return null;
            }
        }, mLowPriorityExecutorService);
    }

    public static void runParallelTasks(final List<Runnable> list) {
        Task.call(new Callable<List<Task<Object>>>() { // from class: com.tencent.taiutils.ThreadPool.13
            @Override // java.util.concurrent.Callable
            public List<Task<Object>> call() {
                ArrayList arrayList = new ArrayList();
                Task task = null;
                for (final Runnable runnable : list) {
                    task = Task.call(new Callable<Object>() { // from class: com.tencent.taiutils.ThreadPool.13.1
                        @Override // java.util.concurrent.Callable
                        public Object call() {
                            runnable.run();
                            return null;
                        }
                    }, Task.BACKGROUND_EXECUTOR);
                }
                arrayList.add(task);
                Task.whenAll(arrayList).waitForCompletion();
                return arrayList;
            }
        }, Task.BACKGROUND_EXECUTOR);
    }

    public static void runSerialTasks(final List<Runnable> list) {
        Task.forResult((Object) null).continueWithTask(new Continuation<Object, Task<Void>>() { // from class: com.tencent.taiutils.ThreadPool.12
            public Task<Void> then(Task<Object> task) {
                Task<Void> forResult = Task.forResult((Object) null);
                for (final Runnable runnable : list) {
                    forResult = forResult.continueWithTask(new Continuation<Void, Task<Void>>() { // from class: com.tencent.taiutils.ThreadPool.12.1
                        public Task<Void> then(Task<Void> task2) {
                            runnable.run();
                            return null;
                        }

                        /* renamed from: then, reason: collision with other method in class */
                        public /* bridge */ /* synthetic */ Object m11then(Task task2) {
                            return then((Task<Void>) task2);
                        }
                    });
                }
                return forResult;
            }

            /* renamed from: then, reason: collision with other method in class */
            public /* bridge */ /* synthetic */ Object m10then(Task task) {
                return then((Task<Object>) task);
            }
        }, Task.BACKGROUND_EXECUTOR);
    }

    public static void runUITask(final Runnable runnable) {
        Task.call(new Callable<Object>() { // from class: com.tencent.taiutils.ThreadPool.8
            @Override // java.util.concurrent.Callable
            public Object call() {
                Runnable runnable2 = runnable;
                if (runnable2 == null) {
                    return null;
                }
                runnable2.run();
                return null;
            }
        }, Task.UI_THREAD_EXECUTOR);
    }

    public static void runUITaskDelay(final Runnable runnable, long j) {
        Task.delay(j).continueWith(new Continuation<Void, Object>() { // from class: com.tencent.taiutils.ThreadPool.9
            public Object then(Task<Void> task) {
                Runnable runnable2 = runnable;
                if (runnable2 == null) {
                    return null;
                }
                runnable2.run();
                return null;
            }
        }, Task.UI_THREAD_EXECUTOR);
    }
}
