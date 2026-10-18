package com.yftech.btphone.lib.rx;

import android.view.View;
import com.jakewharton.rxbinding4.view.RxView;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.concurrent.TimeUnit;

/* loaded from: /home/user/work/dex/classes.dex */
public class CompositeDisposableMgr {
    private CompositeDisposable compositeDisposable;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Callback {
        default void onCallback() {
        }

        default void start() {
        }
    }

    public void addSubscribeMainStart(long j, Callback callback) {
    }

    public void release() {
        if (this.compositeDisposable != null) {
            this.compositeDisposable.clear();
        }
        this.compositeDisposable = null;
    }

    public Disposable getPeriodlDisposable(long j, Callback callback) {
        Disposable subscribe = Observable.interval(j, TimeUnit.MILLISECONDS).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(l -> {
            if (callback != null) {
                callback.onCallback();
            }
        });
        addRxBindingSubscribe(subscribe);
        return subscribe;
    }

    public void subscribeEvent(Callback callback) {
        addRxBindingSubscribe(RxBus.getDefault().toFlowable(EventBean.class).subscribe(eventBean -> {
            eventBean.getType();
            if (callback != null) {
                callback.onCallback();
            }
        }));
    }

    public void addSubscribeViewClickSpaceTime(View view, long j, Callback callback) {
        addRxBindingSubscribe(RxView.clicks(view).throttleFirst(j, TimeUnit.MILLISECONDS).subscribe(unit -> {
            if (callback != null) {
                callback.start();
            }
        }));
    }

    public void addSubscribeDelayStart(long j, Callback callback) {
        addRxBindingSubscribe(Observable.timer(j, TimeUnit.MILLISECONDS).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(l -> {
            if (callback != null) {
                callback.start();
            }
        }));
    }

    public void addRxBindingSubscribe(Disposable disposable) {
        addSubscribe(disposable);
    }

    public void removeRxBindingSubscribe(Disposable disposable) {
        if (disposable == null) {
            return;
        }
        if (this.compositeDisposable == null) {
            this.compositeDisposable = new CompositeDisposable();
        }
        this.compositeDisposable.remove(disposable);
        disposable.dispose();
    }

    protected void addSubscribe(Disposable disposable) {
        if (this.compositeDisposable == null) {
            this.compositeDisposable = new CompositeDisposable();
        }
        this.compositeDisposable.add(disposable);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class EventBean<T> {
        private Object mObject;
        private T t;
        private int type;

        public int getType() {
            return this.type;
        }

        public void setType(int i) {
            this.type = i;
        }

        public T getT() {
            return this.t;
        }

        public void setT(T t) {
            this.t = t;
        }

        public Object getObject() {
            return this.mObject;
        }

        public void setObject(Object obj) {
            this.mObject = obj;
        }

        public EventBean() {
        }

        public EventBean(int i, T t) {
            this.type = i;
            this.t = t;
        }
    }
}
