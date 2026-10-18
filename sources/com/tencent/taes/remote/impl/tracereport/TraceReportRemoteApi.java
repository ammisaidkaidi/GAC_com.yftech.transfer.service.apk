package com.tencent.taes.remote.impl.tracereport;

import android.os.IBinder;
import android.os.RemoteException;
import android.util.Pair;
import com.tencent.taes.remote.ServerCompConstant;
import com.tencent.taes.remote.api.location.bean.LocationBean;
import com.tencent.taes.remote.api.tracereport.ITraceReportApi;
import com.tencent.taes.remote.api.tracereport.ITraceReportService;
import com.tencent.taes.remote.impl.BaseRemoteApi;

/* loaded from: /home/user/work/dex/classes.dex */
public class TraceReportRemoteApi extends BaseRemoteApi implements ITraceReportApi {
    private ITraceReportService mTraceReportService;

    private TraceReportRemoteApi(IBinder iBinder, IBinder iBinder2) {
        super(iBinder, iBinder2);
        this.mTraceReportService = ITraceReportService.Stub.asInterface(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public Pair<String, String> subscribeModuleBinder() {
        return new Pair<>(ServerCompConstant.TRACEREPORT, ITraceReportService.Stub.class.getName());
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderConnect(IBinder iBinder) {
        this.mTraceReportService = ITraceReportService.Stub.asInterface(iBinder);
        super.binderConnect(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderDisConnect() {
        super.binderDisConnect();
    }

    @Override // com.tencent.taes.remote.api.tracereport.ITraceReportApi
    public void startTraceReport() {
        if (this.mTraceReportService != null) {
            try {
                this.mTraceReportService.startTraceReport();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.tracereport.ITraceReportApi
    public void stopTraceReport() {
        if (this.mTraceReportService != null) {
            try {
                this.mTraceReportService.stopTraceReport();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.tracereport.ITraceReportApi
    public void setCustomTracePoint(LocationBean locationBean) {
        if (this.mTraceReportService != null) {
            try {
                this.mTraceReportService.setCustomTracePoint(locationBean);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.tracereport.ITraceReportApi
    public void setCustomDestInfo(String str) {
        if (this.mTraceReportService != null) {
            try {
                this.mTraceReportService.setCustomDestInfo(str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.tracereport.ITraceReportApi
    public void setUseCustomTrace(boolean z) {
        if (this.mTraceReportService != null) {
            try {
                this.mTraceReportService.setUseCustomTrace(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.tracereport.ITraceReportApi
    public void setExtData(String str) {
        if (this.mTraceReportService != null) {
            try {
                this.mTraceReportService.setExtData(str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }
}
