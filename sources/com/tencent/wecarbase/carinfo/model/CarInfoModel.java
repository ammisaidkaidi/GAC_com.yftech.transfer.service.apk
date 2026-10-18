package com.tencent.wecarbase.carinfo.model;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarInfoModel implements Serializable {
    private static final long serialVersionUID = -4364455816327457455L;
    private MileageModel mileage_info;
    private FuelModel oil_info;
    private String title = "empty";

    public MileageModel getMileage_info() {
        return this.mileage_info;
    }

    public void setMileage_info(MileageModel mileageModel) {
        this.mileage_info = mileageModel;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public FuelModel getOil_info() {
        return this.oil_info;
    }

    public void setOil_info(FuelModel fuelModel) {
        this.oil_info = fuelModel;
    }
}
