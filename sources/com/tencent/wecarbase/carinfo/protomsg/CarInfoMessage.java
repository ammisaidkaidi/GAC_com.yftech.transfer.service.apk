package com.tencent.wecarbase.carinfo.protomsg;

import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import com.tencent.tai.pal.audio.IAudio;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;

/* loaded from: /home/user/work/dex/classes.dex */
public final class CarInfoMessage {
    private static Descriptors.FileDescriptor descriptor;
    private static final Descriptors.Descriptor internal_static_com_wecar_carinfo_AirConditionModel_descriptor;
    private static GeneratedMessage.FieldAccessorTable internal_static_com_wecar_carinfo_AirConditionModel_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_com_wecar_carinfo_DoorStatusModel_descriptor;
    private static GeneratedMessage.FieldAccessorTable internal_static_com_wecar_carinfo_DoorStatusModel_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_com_wecar_carinfo_FuelModel_descriptor;
    private static GeneratedMessage.FieldAccessorTable internal_static_com_wecar_carinfo_FuelModel_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_com_wecar_carinfo_LampModel_descriptor;
    private static GeneratedMessage.FieldAccessorTable internal_static_com_wecar_carinfo_LampModel_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_com_wecar_carinfo_WeCarCarInfo_descriptor;
    private static GeneratedMessage.FieldAccessorTable internal_static_com_wecar_carinfo_WeCarCarInfo_fieldAccessorTable;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface AirConditionModelOrBuilder extends MessageOrBuilder {
        ACState getAC();

        CommonStateModel getAuto();

        ACCycleModel getCycleModel();

        DualZoneSupport getDualZone();

        CommonStateModel getFrontDefog();

        ByteString getLeftTemp();

        CommonStateModel getMBackDefog();

        ByteString getRightTemp();

        TempUnit getTemperatureUnitType();

        ACWindDirectionModel getWindDirection();

        int getWindLevel();

        boolean hasAC();

        boolean hasAuto();

        boolean hasCycleModel();

        boolean hasDualZone();

        boolean hasFrontDefog();

        boolean hasLeftTemp();

        boolean hasMBackDefog();

        boolean hasRightTemp();

        boolean hasTemperatureUnitType();

        boolean hasWindDirection();

        boolean hasWindLevel();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface DoorStatusModelOrBuilder extends MessageOrBuilder {
        CommonStateModel getEngineCover();

        CommonStateModel getFrontLeftDoor();

        CommonStateModel getFrontRightDoor();

        CommonStateModel getRearLeftDoor();

        CommonStateModel getRearRightDoor();

        CommonStateModel getSkylight();

        CommonStateModel getTank();

        CommonStateModel getTrunk();

        CommonStateModel getWindShield();

        boolean hasEngineCover();

        boolean hasFrontLeftDoor();

        boolean hasFrontRightDoor();

        boolean hasRearLeftDoor();

        boolean hasRearRightDoor();

        boolean hasSkylight();

        boolean hasTank();

        boolean hasTrunk();

        boolean hasWindShield();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface FuelModelOrBuilder extends MessageOrBuilder {
        ByteString getAverageFuelConsumption();

        FuelStateWArnningModel getFuelStateWarning();

        ByteString getInstantaneousFuelConsumption();

        int getMRemainFuel();

        boolean hasAverageFuelConsumption();

        boolean hasFuelStateWarning();

        boolean hasInstantaneousFuelConsumption();

        boolean hasMRemainFuel();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface LampModelOrBuilder extends MessageOrBuilder {
        CommonStateModel getBackLamp();

        CommonStateModel getDayLamp();

        CommonStateModel getEmergencyLamp();

        CommonStateModel getFarLamp();

        CommonStateModel getForkLamp();

        CommonStateModel getLeftLamp();

        CommonStateModel getNearLamp();

        CommonStateModel getRightLamp();

        CommonStateModel getStopLamp();

        CommonStateModel getWidthLamp();

        boolean hasBackLamp();

        boolean hasDayLamp();

        boolean hasEmergencyLamp();

        boolean hasFarLamp();

        boolean hasForkLamp();

        boolean hasLeftLamp();

        boolean hasNearLamp();

        boolean hasRightLamp();

        boolean hasStopLamp();

        boolean hasWidthLamp();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface WeCarCarInfoOrBuilder extends MessageOrBuilder {
        CommonStateModel getAcc();

        AirConditionModel getAirCondition();

        AirConditionModelOrBuilder getAirConditionOrBuilder();

        ByteString getBatteryVoltage();

        BrakeStateModel getBrakeState();

        ByteString getCarSpeed();

        DoorStatusModel getDoorStatus();

        DoorStatusModelOrBuilder getDoorStatusOrBuilder();

        int getEnduranceMileage();

        ByteString getEngineSpeed();

        FuelModel getFuel();

        FuelModelOrBuilder getFuelOrBuilder();

        GearModel getGear();

        LampModel getLampStatusChanged();

        LampModelOrBuilder getLampStatusChangedOrBuilder();

        LeanWaterModel getLeanWater();

        ByteString getOutsideTemperature();

        SeatBeltModel getSeatBelt();

        int getTotalMileage();

        boolean hasAcc();

        boolean hasAirCondition();

        boolean hasBatteryVoltage();

        boolean hasBrakeState();

        boolean hasCarSpeed();

        boolean hasDoorStatus();

        boolean hasEnduranceMileage();

        boolean hasEngineSpeed();

        boolean hasFuel();

        boolean hasGear();

        boolean hasLampStatusChanged();

        boolean hasLeanWater();

        boolean hasOutsideTemperature();

        boolean hasSeatBelt();

        boolean hasTotalMileage();
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
    }

    private CarInfoMessage() {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum CommonStateModel implements ProtocolMessageEnum {
        COMMON_STATE_NONE(0, 0),
        COMMON_STATE_CLOSE(1, 1),
        COMMON_STATE_OPEN(2, 2);

        public static final int COMMON_STATE_CLOSE_VALUE = 1;
        public static final int COMMON_STATE_NONE_VALUE = 0;
        public static final int COMMON_STATE_OPEN_VALUE = 2;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<CommonStateModel> internalValueMap = new Internal.EnumLiteMap<CommonStateModel>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.CommonStateModel.1
            public CommonStateModel findValueByNumber(int i) {
                return CommonStateModel.valueOf(i);
            }
        };
        private static final CommonStateModel[] VALUES = values();

        public final int getNumber() {
            return this.value;
        }

        public static CommonStateModel valueOf(int i) {
            switch (i) {
                case 0:
                    return COMMON_STATE_NONE;
                case 1:
                    return COMMON_STATE_CLOSE;
                case 2:
                    return COMMON_STATE_OPEN;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<CommonStateModel> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return (Descriptors.EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return (Descriptors.EnumDescriptor) CarInfoMessage.getDescriptor().getEnumTypes().get(0);
        }

        public static CommonStateModel valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        CommonStateModel(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum BrakeStateModel implements ProtocolMessageEnum {
        BRAKE_STATE_NONE(0, 0),
        BRAKE_STATE_UP(1, 1),
        BRAKE_STATE_DOWN(2, 2);

        public static final int BRAKE_STATE_DOWN_VALUE = 2;
        public static final int BRAKE_STATE_NONE_VALUE = 0;
        public static final int BRAKE_STATE_UP_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<BrakeStateModel> internalValueMap = new Internal.EnumLiteMap<BrakeStateModel>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.BrakeStateModel.1
            public BrakeStateModel findValueByNumber(int i) {
                return BrakeStateModel.valueOf(i);
            }
        };
        private static final BrakeStateModel[] VALUES = values();

        public final int getNumber() {
            return this.value;
        }

        public static BrakeStateModel valueOf(int i) {
            switch (i) {
                case 0:
                    return BRAKE_STATE_NONE;
                case 1:
                    return BRAKE_STATE_UP;
                case 2:
                    return BRAKE_STATE_DOWN;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<BrakeStateModel> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return (Descriptors.EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return (Descriptors.EnumDescriptor) CarInfoMessage.getDescriptor().getEnumTypes().get(1);
        }

        public static BrakeStateModel valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        BrakeStateModel(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum SeatBeltModel implements ProtocolMessageEnum {
        SEAT_BELT_STATE_NONE(0, 0),
        SEAT_BELT_STATE_OFF(1, 1),
        SEAT_BELT_STATE_ON(2, 2);

        public static final int SEAT_BELT_STATE_NONE_VALUE = 0;
        public static final int SEAT_BELT_STATE_OFF_VALUE = 1;
        public static final int SEAT_BELT_STATE_ON_VALUE = 2;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<SeatBeltModel> internalValueMap = new Internal.EnumLiteMap<SeatBeltModel>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.SeatBeltModel.1
            public SeatBeltModel findValueByNumber(int i) {
                return SeatBeltModel.valueOf(i);
            }
        };
        private static final SeatBeltModel[] VALUES = values();

        public final int getNumber() {
            return this.value;
        }

        public static SeatBeltModel valueOf(int i) {
            switch (i) {
                case 0:
                    return SEAT_BELT_STATE_NONE;
                case 1:
                    return SEAT_BELT_STATE_OFF;
                case 2:
                    return SEAT_BELT_STATE_ON;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<SeatBeltModel> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return (Descriptors.EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return (Descriptors.EnumDescriptor) CarInfoMessage.getDescriptor().getEnumTypes().get(2);
        }

        public static SeatBeltModel valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        SeatBeltModel(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum GearModel implements ProtocolMessageEnum {
        GEAR_STATE_NONE(0, 0),
        GEAR_STATE_P(1, 1),
        GEAR_STATE_R(2, 2),
        GEAR_STATE_N(3, 3),
        GEAR_STATE_D(4, 4),
        GEAR_STATE_S(5, 5),
        GEAR_STATE_D1(6, 6),
        GEAR_STATE_D2(7, 7),
        GEAR_STATE_D3(8, 8),
        GEAR_STATE_D4(9, 9),
        GEAR_STATE_D5(10, 10),
        GEAR_STATE_D6(11, 11);

        public static final int GEAR_STATE_D1_VALUE = 6;
        public static final int GEAR_STATE_D2_VALUE = 7;
        public static final int GEAR_STATE_D3_VALUE = 8;
        public static final int GEAR_STATE_D4_VALUE = 9;
        public static final int GEAR_STATE_D5_VALUE = 10;
        public static final int GEAR_STATE_D6_VALUE = 11;
        public static final int GEAR_STATE_D_VALUE = 4;
        public static final int GEAR_STATE_NONE_VALUE = 0;
        public static final int GEAR_STATE_N_VALUE = 3;
        public static final int GEAR_STATE_P_VALUE = 1;
        public static final int GEAR_STATE_R_VALUE = 2;
        public static final int GEAR_STATE_S_VALUE = 5;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<GearModel> internalValueMap = new Internal.EnumLiteMap<GearModel>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.GearModel.1
            public GearModel findValueByNumber(int i) {
                return GearModel.valueOf(i);
            }
        };
        private static final GearModel[] VALUES = values();

        public final int getNumber() {
            return this.value;
        }

        public static GearModel valueOf(int i) {
            switch (i) {
                case 0:
                    return GEAR_STATE_NONE;
                case 1:
                    return GEAR_STATE_P;
                case 2:
                    return GEAR_STATE_R;
                case 3:
                    return GEAR_STATE_N;
                case 4:
                    return GEAR_STATE_D;
                case 5:
                    return GEAR_STATE_S;
                case 6:
                    return GEAR_STATE_D1;
                case 7:
                    return GEAR_STATE_D2;
                case 8:
                    return GEAR_STATE_D3;
                case 9:
                    return GEAR_STATE_D4;
                case 10:
                    return GEAR_STATE_D5;
                case 11:
                    return GEAR_STATE_D6;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<GearModel> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return (Descriptors.EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return (Descriptors.EnumDescriptor) CarInfoMessage.getDescriptor().getEnumTypes().get(3);
        }

        public static GearModel valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        GearModel(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum AccModel implements ProtocolMessageEnum {
        ACC_STATE_NONE(0, 0),
        ACC_STATE_OFF(1, 1),
        ACC_STATE_ON(2, 2);

        public static final int ACC_STATE_NONE_VALUE = 0;
        public static final int ACC_STATE_OFF_VALUE = 1;
        public static final int ACC_STATE_ON_VALUE = 2;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<AccModel> internalValueMap = new Internal.EnumLiteMap<AccModel>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AccModel.1
            public AccModel findValueByNumber(int i) {
                return AccModel.valueOf(i);
            }
        };
        private static final AccModel[] VALUES = values();

        public final int getNumber() {
            return this.value;
        }

        public static AccModel valueOf(int i) {
            switch (i) {
                case 0:
                    return ACC_STATE_NONE;
                case 1:
                    return ACC_STATE_OFF;
                case 2:
                    return ACC_STATE_ON;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<AccModel> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return (Descriptors.EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return (Descriptors.EnumDescriptor) CarInfoMessage.getDescriptor().getEnumTypes().get(4);
        }

        public static AccModel valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        AccModel(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum FuelStateWArnningModel implements ProtocolMessageEnum {
        STATE_WARNING_NONE(0, 0),
        STATE_WARNING_NORMAL(1, 1),
        STATE_WARNING_LOW(2, 2);

        public static final int STATE_WARNING_LOW_VALUE = 2;
        public static final int STATE_WARNING_NONE_VALUE = 0;
        public static final int STATE_WARNING_NORMAL_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<FuelStateWArnningModel> internalValueMap = new Internal.EnumLiteMap<FuelStateWArnningModel>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelStateWArnningModel.1
            public FuelStateWArnningModel findValueByNumber(int i) {
                return FuelStateWArnningModel.valueOf(i);
            }
        };
        private static final FuelStateWArnningModel[] VALUES = values();

        public final int getNumber() {
            return this.value;
        }

        public static FuelStateWArnningModel valueOf(int i) {
            switch (i) {
                case 0:
                    return STATE_WARNING_NONE;
                case 1:
                    return STATE_WARNING_NORMAL;
                case 2:
                    return STATE_WARNING_LOW;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<FuelStateWArnningModel> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return (Descriptors.EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return (Descriptors.EnumDescriptor) CarInfoMessage.getDescriptor().getEnumTypes().get(5);
        }

        public static FuelStateWArnningModel valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        FuelStateWArnningModel(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum LeanWaterModel implements ProtocolMessageEnum {
        LEAN_WATER_STATE_NONE(0, 0),
        LEAN_WATER_STATE_LOW(1, 1),
        LEAN_WATER_STATE_NORMAL(2, 2);

        public static final int LEAN_WATER_STATE_LOW_VALUE = 1;
        public static final int LEAN_WATER_STATE_NONE_VALUE = 0;
        public static final int LEAN_WATER_STATE_NORMAL_VALUE = 2;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<LeanWaterModel> internalValueMap = new Internal.EnumLiteMap<LeanWaterModel>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LeanWaterModel.1
            public LeanWaterModel findValueByNumber(int i) {
                return LeanWaterModel.valueOf(i);
            }
        };
        private static final LeanWaterModel[] VALUES = values();

        public final int getNumber() {
            return this.value;
        }

        public static LeanWaterModel valueOf(int i) {
            switch (i) {
                case 0:
                    return LEAN_WATER_STATE_NONE;
                case 1:
                    return LEAN_WATER_STATE_LOW;
                case 2:
                    return LEAN_WATER_STATE_NORMAL;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<LeanWaterModel> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return (Descriptors.EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return (Descriptors.EnumDescriptor) CarInfoMessage.getDescriptor().getEnumTypes().get(6);
        }

        public static LeanWaterModel valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        LeanWaterModel(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum TempUnit implements ProtocolMessageEnum {
        TEMP_UNIT_CELSIUS(0, 0),
        TEMP_UNIT_FAHRENHEIT(1, 1);

        public static final int TEMP_UNIT_CELSIUS_VALUE = 0;
        public static final int TEMP_UNIT_FAHRENHEIT_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<TempUnit> internalValueMap = new Internal.EnumLiteMap<TempUnit>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.TempUnit.1
            public TempUnit findValueByNumber(int i) {
                return TempUnit.valueOf(i);
            }
        };
        private static final TempUnit[] VALUES = values();

        public final int getNumber() {
            return this.value;
        }

        public static TempUnit valueOf(int i) {
            switch (i) {
                case 0:
                    return TEMP_UNIT_CELSIUS;
                case 1:
                    return TEMP_UNIT_FAHRENHEIT;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<TempUnit> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return (Descriptors.EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return (Descriptors.EnumDescriptor) CarInfoMessage.getDescriptor().getEnumTypes().get(7);
        }

        public static TempUnit valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        TempUnit(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum ACState implements ProtocolMessageEnum {
        AC_STATE_NONE(0, 0),
        AC_STATE_WIND(1, 1),
        AC_STATE_FREEZE(2, 2);

        public static final int AC_STATE_FREEZE_VALUE = 2;
        public static final int AC_STATE_NONE_VALUE = 0;
        public static final int AC_STATE_WIND_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<ACState> internalValueMap = new Internal.EnumLiteMap<ACState>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.ACState.1
            public ACState findValueByNumber(int i) {
                return ACState.valueOf(i);
            }
        };
        private static final ACState[] VALUES = values();

        public final int getNumber() {
            return this.value;
        }

        public static ACState valueOf(int i) {
            switch (i) {
                case 0:
                    return AC_STATE_NONE;
                case 1:
                    return AC_STATE_WIND;
                case 2:
                    return AC_STATE_FREEZE;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<ACState> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return (Descriptors.EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return (Descriptors.EnumDescriptor) CarInfoMessage.getDescriptor().getEnumTypes().get(8);
        }

        public static ACState valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        ACState(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum ACWindDirectionModel implements ProtocolMessageEnum {
        WIND_DIRECTION_NONE(0, 0),
        WIND_DIRECTION_FACE(1, 1),
        WIND_DIRECTION_FACE_AND_LEG(2, 2),
        WIND_DIRECTION_LEG(3, 3),
        WIND_DIRECTION_FRONT_GLASS_AND_LEG(4, 4),
        WIND_DIRECTION_FRONT_GLASS(5, 5),
        WIND_DIRECTION_FRONT_GLASS_AND_FACE(6, 6),
        WIND_DIRECTION_ALL(7, 7);

        public static final int WIND_DIRECTION_ALL_VALUE = 7;
        public static final int WIND_DIRECTION_FACE_AND_LEG_VALUE = 2;
        public static final int WIND_DIRECTION_FACE_VALUE = 1;
        public static final int WIND_DIRECTION_FRONT_GLASS_AND_FACE_VALUE = 6;
        public static final int WIND_DIRECTION_FRONT_GLASS_AND_LEG_VALUE = 4;
        public static final int WIND_DIRECTION_FRONT_GLASS_VALUE = 5;
        public static final int WIND_DIRECTION_LEG_VALUE = 3;
        public static final int WIND_DIRECTION_NONE_VALUE = 0;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<ACWindDirectionModel> internalValueMap = new Internal.EnumLiteMap<ACWindDirectionModel>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.ACWindDirectionModel.1
            public ACWindDirectionModel findValueByNumber(int i) {
                return ACWindDirectionModel.valueOf(i);
            }
        };
        private static final ACWindDirectionModel[] VALUES = values();

        public final int getNumber() {
            return this.value;
        }

        public static ACWindDirectionModel valueOf(int i) {
            switch (i) {
                case 0:
                    return WIND_DIRECTION_NONE;
                case 1:
                    return WIND_DIRECTION_FACE;
                case 2:
                    return WIND_DIRECTION_FACE_AND_LEG;
                case 3:
                    return WIND_DIRECTION_LEG;
                case 4:
                    return WIND_DIRECTION_FRONT_GLASS_AND_LEG;
                case 5:
                    return WIND_DIRECTION_FRONT_GLASS;
                case 6:
                    return WIND_DIRECTION_FRONT_GLASS_AND_FACE;
                case 7:
                    return WIND_DIRECTION_ALL;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<ACWindDirectionModel> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return (Descriptors.EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return (Descriptors.EnumDescriptor) CarInfoMessage.getDescriptor().getEnumTypes().get(9);
        }

        public static ACWindDirectionModel valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        ACWindDirectionModel(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum ACCycleModel implements ProtocolMessageEnum {
        CYCLE_MODEL_NONE(0, 0),
        CYCLE_MODEL_INSIDE(1, 1),
        CYCLE_MODEL_OUTSIDE(2, 2),
        CYCLE_MODEL_INSIDE_AUTO(3, 3);

        public static final int CYCLE_MODEL_INSIDE_AUTO_VALUE = 3;
        public static final int CYCLE_MODEL_INSIDE_VALUE = 1;
        public static final int CYCLE_MODEL_NONE_VALUE = 0;
        public static final int CYCLE_MODEL_OUTSIDE_VALUE = 2;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<ACCycleModel> internalValueMap = new Internal.EnumLiteMap<ACCycleModel>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.ACCycleModel.1
            public ACCycleModel findValueByNumber(int i) {
                return ACCycleModel.valueOf(i);
            }
        };
        private static final ACCycleModel[] VALUES = values();

        public final int getNumber() {
            return this.value;
        }

        public static ACCycleModel valueOf(int i) {
            switch (i) {
                case 0:
                    return CYCLE_MODEL_NONE;
                case 1:
                    return CYCLE_MODEL_INSIDE;
                case 2:
                    return CYCLE_MODEL_OUTSIDE;
                case 3:
                    return CYCLE_MODEL_INSIDE_AUTO;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<ACCycleModel> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return (Descriptors.EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return (Descriptors.EnumDescriptor) CarInfoMessage.getDescriptor().getEnumTypes().get(10);
        }

        public static ACCycleModel valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        ACCycleModel(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum DualZoneSupport implements ProtocolMessageEnum {
        DUAL_ZONE_NOT_SUPPORT(0, 0),
        DUAL_ZONE_SUPPORT(1, 1);

        public static final int DUAL_ZONE_NOT_SUPPORT_VALUE = 0;
        public static final int DUAL_ZONE_SUPPORT_VALUE = 1;
        private final int index;
        private final int value;
        private static Internal.EnumLiteMap<DualZoneSupport> internalValueMap = new Internal.EnumLiteMap<DualZoneSupport>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DualZoneSupport.1
            public DualZoneSupport findValueByNumber(int i) {
                return DualZoneSupport.valueOf(i);
            }
        };
        private static final DualZoneSupport[] VALUES = values();

        public final int getNumber() {
            return this.value;
        }

        public static DualZoneSupport valueOf(int i) {
            switch (i) {
                case 0:
                    return DUAL_ZONE_NOT_SUPPORT;
                case 1:
                    return DUAL_ZONE_SUPPORT;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<DualZoneSupport> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            return (Descriptors.EnumValueDescriptor) getDescriptor().getValues().get(this.index);
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return (Descriptors.EnumDescriptor) CarInfoMessage.getDescriptor().getEnumTypes().get(11);
        }

        public static DualZoneSupport valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        DualZoneSupport(int i, int i2) {
            this.index = i;
            this.value = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class FuelModel extends GeneratedMessage implements FuelModelOrBuilder {
        public static final int AVERAGEFUELCONSUMPTION_FIELD_NUMBER = 4;
        public static final int FUELSTATEWARNING_FIELD_NUMBER = 1;
        public static final int INSTANTANEOUSFUELCONSUMPTION_FIELD_NUMBER = 3;
        public static final int MREMAINFUEL_FIELD_NUMBER = 2;
        public static Parser<FuelModel> PARSER = new AbstractParser<FuelModel>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModel.1
            /* renamed from: parsePartialFrom, reason: merged with bridge method [inline-methods] */
            public FuelModel m87parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new FuelModel(codedInputStream, extensionRegistryLite);
            }
        };
        private static final FuelModel defaultInstance = new FuelModel(true);
        private static final long serialVersionUID = 0;
        private ByteString averageFuelConsumption_;
        private int bitField0_;
        private FuelStateWArnningModel fuelStateWarning_;
        private ByteString instantaneousFuelConsumption_;
        private int mRemainFuel_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private final UnknownFieldSet unknownFields;

        private FuelModel(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private FuelModel(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static FuelModel getDefaultInstance() {
            return defaultInstance;
        }

        /* renamed from: getDefaultInstanceForType, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public FuelModel m80getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private FuelModel(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                int readEnum = codedInputStream.readEnum();
                                FuelStateWArnningModel valueOf = FuelStateWArnningModel.valueOf(readEnum);
                                if (valueOf == null) {
                                    newBuilder.mergeVarintField(1, readEnum);
                                } else {
                                    this.bitField0_ |= 1;
                                    this.fuelStateWarning_ = valueOf;
                                }
                            } else if (readTag == 16) {
                                this.bitField0_ |= 2;
                                this.mRemainFuel_ = codedInputStream.readInt32();
                            } else if (readTag == 26) {
                                this.bitField0_ |= 4;
                                this.instantaneousFuelConsumption_ = codedInputStream.readBytes();
                            } else if (readTag != 34) {
                                if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            } else {
                                this.bitField0_ |= 8;
                                this.averageFuelConsumption_ = codedInputStream.readBytes();
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return CarInfoMessage.internal_static_com_wecar_carinfo_FuelModel_descriptor;
        }

        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return CarInfoMessage.internal_static_com_wecar_carinfo_FuelModel_fieldAccessorTable.ensureFieldAccessorsInitialized(FuelModel.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<FuelModel> getParserForType() {
            return PARSER;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
        public boolean hasFuelStateWarning() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
        public FuelStateWArnningModel getFuelStateWarning() {
            return this.fuelStateWarning_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
        public boolean hasMRemainFuel() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
        public int getMRemainFuel() {
            return this.mRemainFuel_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
        public boolean hasInstantaneousFuelConsumption() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
        public ByteString getInstantaneousFuelConsumption() {
            return this.instantaneousFuelConsumption_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
        public boolean hasAverageFuelConsumption() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
        public ByteString getAverageFuelConsumption() {
            return this.averageFuelConsumption_;
        }

        private void initFields() {
            this.fuelStateWarning_ = FuelStateWArnningModel.STATE_WARNING_NONE;
            this.mRemainFuel_ = 0;
            this.instantaneousFuelConsumption_ = ByteString.EMPTY;
            this.averageFuelConsumption_ = ByteString.EMPTY;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeEnum(1, this.fuelStateWarning_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeInt32(2, this.mRemainFuel_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeBytes(3, this.instantaneousFuelConsumption_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeBytes(4, this.averageFuelConsumption_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeEnumSize(1, this.fuelStateWarning_.getNumber()) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeEnumSize += CodedOutputStream.computeInt32Size(2, this.mRemainFuel_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeEnumSize += CodedOutputStream.computeBytesSize(3, this.instantaneousFuelConsumption_);
            }
            if ((this.bitField0_ & 8) == 8) {
                computeEnumSize += CodedOutputStream.computeBytesSize(4, this.averageFuelConsumption_);
            }
            int serializedSize = computeEnumSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        protected Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static FuelModel parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (FuelModel) PARSER.parseFrom(byteString);
        }

        public static FuelModel parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FuelModel) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static FuelModel parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (FuelModel) PARSER.parseFrom(bArr);
        }

        public static FuelModel parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (FuelModel) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static FuelModel parseFrom(InputStream inputStream) throws IOException {
            return (FuelModel) PARSER.parseFrom(inputStream);
        }

        public static FuelModel parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FuelModel) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static FuelModel parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FuelModel) PARSER.parseDelimitedFrom(inputStream);
        }

        public static FuelModel parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FuelModel) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static FuelModel parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (FuelModel) PARSER.parseFrom(codedInputStream);
        }

        public static FuelModel parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (FuelModel) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.access$300();
        }

        /* renamed from: newBuilderForType, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m82newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(FuelModel fuelModel) {
            return newBuilder().mergeFrom(fuelModel);
        }

        /* renamed from: toBuilder, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m85toBuilder() {
            return newBuilder(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements FuelModelOrBuilder {
            private ByteString averageFuelConsumption_;
            private int bitField0_;
            private FuelStateWArnningModel fuelStateWarning_;
            private ByteString instantaneousFuelConsumption_;
            private int mRemainFuel_;

            public final boolean isInitialized() {
                return true;
            }

            static /* synthetic */ Builder access$300() {
                return create();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return CarInfoMessage.internal_static_com_wecar_carinfo_FuelModel_descriptor;
            }

            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return CarInfoMessage.internal_static_com_wecar_carinfo_FuelModel_fieldAccessorTable.ensureFieldAccessorsInitialized(FuelModel.class, Builder.class);
            }

            private Builder() {
                this.fuelStateWarning_ = FuelStateWArnningModel.STATE_WARNING_NONE;
                this.instantaneousFuelConsumption_ = ByteString.EMPTY;
                this.averageFuelConsumption_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.fuelStateWarning_ = FuelStateWArnningModel.STATE_WARNING_NONE;
                this.instantaneousFuelConsumption_ = ByteString.EMPTY;
                this.averageFuelConsumption_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = FuelModel.alwaysUseFieldBuilders;
            }

            private static Builder create() {
                return new Builder();
            }

            /* renamed from: clear, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m94clear() {
                super.clear();
                this.fuelStateWarning_ = FuelStateWArnningModel.STATE_WARNING_NONE;
                this.bitField0_ &= -2;
                this.mRemainFuel_ = 0;
                this.bitField0_ &= -3;
                this.instantaneousFuelConsumption_ = ByteString.EMPTY;
                this.bitField0_ &= -5;
                this.averageFuelConsumption_ = ByteString.EMPTY;
                this.bitField0_ &= -9;
                return this;
            }

            /* renamed from: clone, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m101clone() {
                return create().mergeFrom(m90buildPartial());
            }

            public Descriptors.Descriptor getDescriptorForType() {
                return CarInfoMessage.internal_static_com_wecar_carinfo_FuelModel_descriptor;
            }

            /* renamed from: getDefaultInstanceForType, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public FuelModel m102getDefaultInstanceForType() {
                return FuelModel.getDefaultInstance();
            }

            /* renamed from: build, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public FuelModel m88build() {
                FuelModel m90buildPartial = m90buildPartial();
                if (m90buildPartial.isInitialized()) {
                    return m90buildPartial;
                }
                throw newUninitializedMessageException(m90buildPartial);
            }

            /* renamed from: buildPartial, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public FuelModel m90buildPartial() {
                FuelModel fuelModel = new FuelModel(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                fuelModel.fuelStateWarning_ = this.fuelStateWarning_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                fuelModel.mRemainFuel_ = this.mRemainFuel_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                fuelModel.instantaneousFuelConsumption_ = this.instantaneousFuelConsumption_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                fuelModel.averageFuelConsumption_ = this.averageFuelConsumption_;
                fuelModel.bitField0_ = i2;
                onBuilt();
                return fuelModel;
            }

            /* renamed from: mergeFrom, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m106mergeFrom(Message message) {
                if (message instanceof FuelModel) {
                    return mergeFrom((FuelModel) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(FuelModel fuelModel) {
                if (fuelModel == FuelModel.getDefaultInstance()) {
                    return this;
                }
                if (fuelModel.hasFuelStateWarning()) {
                    setFuelStateWarning(fuelModel.getFuelStateWarning());
                }
                if (fuelModel.hasMRemainFuel()) {
                    setMRemainFuel(fuelModel.getMRemainFuel());
                }
                if (fuelModel.hasInstantaneousFuelConsumption()) {
                    setInstantaneousFuelConsumption(fuelModel.getInstantaneousFuelConsumption());
                }
                if (fuelModel.hasAverageFuelConsumption()) {
                    setAverageFuelConsumption(fuelModel.getAverageFuelConsumption());
                }
                mergeUnknownFields(fuelModel.getUnknownFields());
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            /* renamed from: mergeFrom, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder m107mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                FuelModel fuelModel = null;
                try {
                    try {
                        FuelModel fuelModel2 = (FuelModel) FuelModel.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (fuelModel2 != null) {
                            mergeFrom(fuelModel2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        FuelModel fuelModel3 = (FuelModel) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            fuelModel = fuelModel3;
                            if (fuelModel != null) {
                                mergeFrom(fuelModel);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (fuelModel != null) {
                    }
                    throw th;
                }
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
            public boolean hasFuelStateWarning() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
            public FuelStateWArnningModel getFuelStateWarning() {
                return this.fuelStateWarning_;
            }

            public Builder setFuelStateWarning(FuelStateWArnningModel fuelStateWArnningModel) {
                if (fuelStateWArnningModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.fuelStateWarning_ = fuelStateWArnningModel;
                onChanged();
                return this;
            }

            public Builder clearFuelStateWarning() {
                this.bitField0_ &= -2;
                this.fuelStateWarning_ = FuelStateWArnningModel.STATE_WARNING_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
            public boolean hasMRemainFuel() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
            public int getMRemainFuel() {
                return this.mRemainFuel_;
            }

            public Builder setMRemainFuel(int i) {
                this.bitField0_ |= 2;
                this.mRemainFuel_ = i;
                onChanged();
                return this;
            }

            public Builder clearMRemainFuel() {
                this.bitField0_ &= -3;
                this.mRemainFuel_ = 0;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
            public boolean hasInstantaneousFuelConsumption() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
            public ByteString getInstantaneousFuelConsumption() {
                return this.instantaneousFuelConsumption_;
            }

            public Builder setInstantaneousFuelConsumption(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.instantaneousFuelConsumption_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearInstantaneousFuelConsumption() {
                this.bitField0_ &= -5;
                this.instantaneousFuelConsumption_ = FuelModel.getDefaultInstance().getInstantaneousFuelConsumption();
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
            public boolean hasAverageFuelConsumption() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.FuelModelOrBuilder
            public ByteString getAverageFuelConsumption() {
                return this.averageFuelConsumption_;
            }

            public Builder setAverageFuelConsumption(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.averageFuelConsumption_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearAverageFuelConsumption() {
                this.bitField0_ &= -9;
                this.averageFuelConsumption_ = FuelModel.getDefaultInstance().getAverageFuelConsumption();
                onChanged();
                return this;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class DoorStatusModel extends GeneratedMessage implements DoorStatusModelOrBuilder {
        public static final int ENGINECOVER_FIELD_NUMBER = 6;
        public static final int FRONTLEFTDOOR_FIELD_NUMBER = 1;
        public static final int FRONTRIGHTDOOR_FIELD_NUMBER = 2;
        public static final int REARLEFTDOOR_FIELD_NUMBER = 3;
        public static final int REARRIGHTDOOR_FIELD_NUMBER = 4;
        public static final int SKYLIGHT_FIELD_NUMBER = 5;
        public static final int TANK_FIELD_NUMBER = 8;
        public static final int TRUNK_FIELD_NUMBER = 7;
        public static final int WINDSHIELD_FIELD_NUMBER = 9;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private CommonStateModel engineCover_;
        private CommonStateModel frontLeftDoor_;
        private CommonStateModel frontRightDoor_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private CommonStateModel rearLeftDoor_;
        private CommonStateModel rearRightDoor_;
        private CommonStateModel skylight_;
        private CommonStateModel tank_;
        private CommonStateModel trunk_;
        private final UnknownFieldSet unknownFields;
        private CommonStateModel windShield_;
        public static Parser<DoorStatusModel> PARSER = new AbstractParser<DoorStatusModel>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModel.1
            /* renamed from: parsePartialFrom, reason: merged with bridge method [inline-methods] */
            public DoorStatusModel m56parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new DoorStatusModel(codedInputStream, extensionRegistryLite);
            }
        };
        private static final DoorStatusModel defaultInstance = new DoorStatusModel(true);

        private DoorStatusModel(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private DoorStatusModel(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static DoorStatusModel getDefaultInstance() {
            return defaultInstance;
        }

        /* renamed from: getDefaultInstanceForType, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public DoorStatusModel m49getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private DoorStatusModel(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 8) {
                                int readEnum = codedInputStream.readEnum();
                                CommonStateModel valueOf = CommonStateModel.valueOf(readEnum);
                                if (valueOf == null) {
                                    newBuilder.mergeVarintField(1, readEnum);
                                } else {
                                    this.bitField0_ |= 1;
                                    this.frontLeftDoor_ = valueOf;
                                }
                            } else if (readTag == 16) {
                                int readEnum2 = codedInputStream.readEnum();
                                CommonStateModel valueOf2 = CommonStateModel.valueOf(readEnum2);
                                if (valueOf2 == null) {
                                    newBuilder.mergeVarintField(2, readEnum2);
                                } else {
                                    this.bitField0_ |= 2;
                                    this.frontRightDoor_ = valueOf2;
                                }
                            } else if (readTag == 24) {
                                int readEnum3 = codedInputStream.readEnum();
                                CommonStateModel valueOf3 = CommonStateModel.valueOf(readEnum3);
                                if (valueOf3 == null) {
                                    newBuilder.mergeVarintField(3, readEnum3);
                                } else {
                                    this.bitField0_ |= 4;
                                    this.rearLeftDoor_ = valueOf3;
                                }
                            } else if (readTag == 32) {
                                int readEnum4 = codedInputStream.readEnum();
                                CommonStateModel valueOf4 = CommonStateModel.valueOf(readEnum4);
                                if (valueOf4 == null) {
                                    newBuilder.mergeVarintField(4, readEnum4);
                                } else {
                                    this.bitField0_ |= 8;
                                    this.rearRightDoor_ = valueOf4;
                                }
                            } else if (readTag == 40) {
                                int readEnum5 = codedInputStream.readEnum();
                                CommonStateModel valueOf5 = CommonStateModel.valueOf(readEnum5);
                                if (valueOf5 == null) {
                                    newBuilder.mergeVarintField(5, readEnum5);
                                } else {
                                    this.bitField0_ |= 16;
                                    this.skylight_ = valueOf5;
                                }
                            } else if (readTag == 48) {
                                int readEnum6 = codedInputStream.readEnum();
                                CommonStateModel valueOf6 = CommonStateModel.valueOf(readEnum6);
                                if (valueOf6 == null) {
                                    newBuilder.mergeVarintField(6, readEnum6);
                                } else {
                                    this.bitField0_ |= 32;
                                    this.engineCover_ = valueOf6;
                                }
                            } else if (readTag == 56) {
                                int readEnum7 = codedInputStream.readEnum();
                                CommonStateModel valueOf7 = CommonStateModel.valueOf(readEnum7);
                                if (valueOf7 == null) {
                                    newBuilder.mergeVarintField(7, readEnum7);
                                } else {
                                    this.bitField0_ |= 64;
                                    this.trunk_ = valueOf7;
                                }
                            } else if (readTag == 64) {
                                int readEnum8 = codedInputStream.readEnum();
                                CommonStateModel valueOf8 = CommonStateModel.valueOf(readEnum8);
                                if (valueOf8 == null) {
                                    newBuilder.mergeVarintField(8, readEnum8);
                                } else {
                                    this.bitField0_ |= 128;
                                    this.tank_ = valueOf8;
                                }
                            } else if (readTag != 72) {
                                if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            } else {
                                int readEnum9 = codedInputStream.readEnum();
                                CommonStateModel valueOf9 = CommonStateModel.valueOf(readEnum9);
                                if (valueOf9 == null) {
                                    newBuilder.mergeVarintField(9, readEnum9);
                                } else {
                                    this.bitField0_ |= 256;
                                    this.windShield_ = valueOf9;
                                }
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return CarInfoMessage.internal_static_com_wecar_carinfo_DoorStatusModel_descriptor;
        }

        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return CarInfoMessage.internal_static_com_wecar_carinfo_DoorStatusModel_fieldAccessorTable.ensureFieldAccessorsInitialized(DoorStatusModel.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<DoorStatusModel> getParserForType() {
            return PARSER;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public boolean hasFrontLeftDoor() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public CommonStateModel getFrontLeftDoor() {
            return this.frontLeftDoor_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public boolean hasFrontRightDoor() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public CommonStateModel getFrontRightDoor() {
            return this.frontRightDoor_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public boolean hasRearLeftDoor() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public CommonStateModel getRearLeftDoor() {
            return this.rearLeftDoor_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public boolean hasRearRightDoor() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public CommonStateModel getRearRightDoor() {
            return this.rearRightDoor_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public boolean hasSkylight() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public CommonStateModel getSkylight() {
            return this.skylight_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public boolean hasEngineCover() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public CommonStateModel getEngineCover() {
            return this.engineCover_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public boolean hasTrunk() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public CommonStateModel getTrunk() {
            return this.trunk_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public boolean hasTank() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public CommonStateModel getTank() {
            return this.tank_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public boolean hasWindShield() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
        public CommonStateModel getWindShield() {
            return this.windShield_;
        }

        private void initFields() {
            this.frontLeftDoor_ = CommonStateModel.COMMON_STATE_NONE;
            this.frontRightDoor_ = CommonStateModel.COMMON_STATE_NONE;
            this.rearLeftDoor_ = CommonStateModel.COMMON_STATE_NONE;
            this.rearRightDoor_ = CommonStateModel.COMMON_STATE_NONE;
            this.skylight_ = CommonStateModel.COMMON_STATE_NONE;
            this.engineCover_ = CommonStateModel.COMMON_STATE_NONE;
            this.trunk_ = CommonStateModel.COMMON_STATE_NONE;
            this.tank_ = CommonStateModel.COMMON_STATE_NONE;
            this.windShield_ = CommonStateModel.COMMON_STATE_NONE;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeEnum(1, this.frontLeftDoor_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeEnum(2, this.frontRightDoor_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeEnum(3, this.rearLeftDoor_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeEnum(4, this.rearRightDoor_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeEnum(5, this.skylight_.getNumber());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeEnum(6, this.engineCover_.getNumber());
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeEnum(7, this.trunk_.getNumber());
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeEnum(8, this.tank_.getNumber());
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeEnum(9, this.windShield_.getNumber());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeEnumSize(1, this.frontLeftDoor_.getNumber()) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeEnumSize += CodedOutputStream.computeEnumSize(2, this.frontRightDoor_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                computeEnumSize += CodedOutputStream.computeEnumSize(3, this.rearLeftDoor_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                computeEnumSize += CodedOutputStream.computeEnumSize(4, this.rearRightDoor_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                computeEnumSize += CodedOutputStream.computeEnumSize(5, this.skylight_.getNumber());
            }
            if ((this.bitField0_ & 32) == 32) {
                computeEnumSize += CodedOutputStream.computeEnumSize(6, this.engineCover_.getNumber());
            }
            if ((this.bitField0_ & 64) == 64) {
                computeEnumSize += CodedOutputStream.computeEnumSize(7, this.trunk_.getNumber());
            }
            if ((this.bitField0_ & 128) == 128) {
                computeEnumSize += CodedOutputStream.computeEnumSize(8, this.tank_.getNumber());
            }
            if ((this.bitField0_ & 256) == 256) {
                computeEnumSize += CodedOutputStream.computeEnumSize(9, this.windShield_.getNumber());
            }
            int serializedSize = computeEnumSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        protected Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static DoorStatusModel parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (DoorStatusModel) PARSER.parseFrom(byteString);
        }

        public static DoorStatusModel parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (DoorStatusModel) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static DoorStatusModel parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (DoorStatusModel) PARSER.parseFrom(bArr);
        }

        public static DoorStatusModel parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (DoorStatusModel) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static DoorStatusModel parseFrom(InputStream inputStream) throws IOException {
            return (DoorStatusModel) PARSER.parseFrom(inputStream);
        }

        public static DoorStatusModel parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DoorStatusModel) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static DoorStatusModel parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DoorStatusModel) PARSER.parseDelimitedFrom(inputStream);
        }

        public static DoorStatusModel parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DoorStatusModel) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static DoorStatusModel parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (DoorStatusModel) PARSER.parseFrom(codedInputStream);
        }

        public static DoorStatusModel parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DoorStatusModel) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.access$1500();
        }

        /* renamed from: newBuilderForType, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m51newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(DoorStatusModel doorStatusModel) {
            return newBuilder().mergeFrom(doorStatusModel);
        }

        /* renamed from: toBuilder, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m54toBuilder() {
            return newBuilder(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements DoorStatusModelOrBuilder {
            private int bitField0_;
            private CommonStateModel engineCover_;
            private CommonStateModel frontLeftDoor_;
            private CommonStateModel frontRightDoor_;
            private CommonStateModel rearLeftDoor_;
            private CommonStateModel rearRightDoor_;
            private CommonStateModel skylight_;
            private CommonStateModel tank_;
            private CommonStateModel trunk_;
            private CommonStateModel windShield_;

            public final boolean isInitialized() {
                return true;
            }

            static /* synthetic */ Builder access$1500() {
                return create();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return CarInfoMessage.internal_static_com_wecar_carinfo_DoorStatusModel_descriptor;
            }

            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return CarInfoMessage.internal_static_com_wecar_carinfo_DoorStatusModel_fieldAccessorTable.ensureFieldAccessorsInitialized(DoorStatusModel.class, Builder.class);
            }

            private Builder() {
                this.frontLeftDoor_ = CommonStateModel.COMMON_STATE_NONE;
                this.frontRightDoor_ = CommonStateModel.COMMON_STATE_NONE;
                this.rearLeftDoor_ = CommonStateModel.COMMON_STATE_NONE;
                this.rearRightDoor_ = CommonStateModel.COMMON_STATE_NONE;
                this.skylight_ = CommonStateModel.COMMON_STATE_NONE;
                this.engineCover_ = CommonStateModel.COMMON_STATE_NONE;
                this.trunk_ = CommonStateModel.COMMON_STATE_NONE;
                this.tank_ = CommonStateModel.COMMON_STATE_NONE;
                this.windShield_ = CommonStateModel.COMMON_STATE_NONE;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.frontLeftDoor_ = CommonStateModel.COMMON_STATE_NONE;
                this.frontRightDoor_ = CommonStateModel.COMMON_STATE_NONE;
                this.rearLeftDoor_ = CommonStateModel.COMMON_STATE_NONE;
                this.rearRightDoor_ = CommonStateModel.COMMON_STATE_NONE;
                this.skylight_ = CommonStateModel.COMMON_STATE_NONE;
                this.engineCover_ = CommonStateModel.COMMON_STATE_NONE;
                this.trunk_ = CommonStateModel.COMMON_STATE_NONE;
                this.tank_ = CommonStateModel.COMMON_STATE_NONE;
                this.windShield_ = CommonStateModel.COMMON_STATE_NONE;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = DoorStatusModel.alwaysUseFieldBuilders;
            }

            private static Builder create() {
                return new Builder();
            }

            /* renamed from: clear, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m63clear() {
                super.clear();
                this.frontLeftDoor_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -2;
                this.frontRightDoor_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -3;
                this.rearLeftDoor_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -5;
                this.rearRightDoor_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -9;
                this.skylight_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -17;
                this.engineCover_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -33;
                this.trunk_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -65;
                this.tank_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -129;
                this.windShield_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -257;
                return this;
            }

            /* renamed from: clone, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m70clone() {
                return create().mergeFrom(m59buildPartial());
            }

            public Descriptors.Descriptor getDescriptorForType() {
                return CarInfoMessage.internal_static_com_wecar_carinfo_DoorStatusModel_descriptor;
            }

            /* renamed from: getDefaultInstanceForType, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public DoorStatusModel m71getDefaultInstanceForType() {
                return DoorStatusModel.getDefaultInstance();
            }

            /* renamed from: build, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public DoorStatusModel m57build() {
                DoorStatusModel m59buildPartial = m59buildPartial();
                if (m59buildPartial.isInitialized()) {
                    return m59buildPartial;
                }
                throw newUninitializedMessageException(m59buildPartial);
            }

            /* renamed from: buildPartial, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public DoorStatusModel m59buildPartial() {
                DoorStatusModel doorStatusModel = new DoorStatusModel(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                doorStatusModel.frontLeftDoor_ = this.frontLeftDoor_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                doorStatusModel.frontRightDoor_ = this.frontRightDoor_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                doorStatusModel.rearLeftDoor_ = this.rearLeftDoor_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                doorStatusModel.rearRightDoor_ = this.rearRightDoor_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                doorStatusModel.skylight_ = this.skylight_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                doorStatusModel.engineCover_ = this.engineCover_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                doorStatusModel.trunk_ = this.trunk_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                doorStatusModel.tank_ = this.tank_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                doorStatusModel.windShield_ = this.windShield_;
                doorStatusModel.bitField0_ = i2;
                onBuilt();
                return doorStatusModel;
            }

            /* renamed from: mergeFrom, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m75mergeFrom(Message message) {
                if (message instanceof DoorStatusModel) {
                    return mergeFrom((DoorStatusModel) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(DoorStatusModel doorStatusModel) {
                if (doorStatusModel == DoorStatusModel.getDefaultInstance()) {
                    return this;
                }
                if (doorStatusModel.hasFrontLeftDoor()) {
                    setFrontLeftDoor(doorStatusModel.getFrontLeftDoor());
                }
                if (doorStatusModel.hasFrontRightDoor()) {
                    setFrontRightDoor(doorStatusModel.getFrontRightDoor());
                }
                if (doorStatusModel.hasRearLeftDoor()) {
                    setRearLeftDoor(doorStatusModel.getRearLeftDoor());
                }
                if (doorStatusModel.hasRearRightDoor()) {
                    setRearRightDoor(doorStatusModel.getRearRightDoor());
                }
                if (doorStatusModel.hasSkylight()) {
                    setSkylight(doorStatusModel.getSkylight());
                }
                if (doorStatusModel.hasEngineCover()) {
                    setEngineCover(doorStatusModel.getEngineCover());
                }
                if (doorStatusModel.hasTrunk()) {
                    setTrunk(doorStatusModel.getTrunk());
                }
                if (doorStatusModel.hasTank()) {
                    setTank(doorStatusModel.getTank());
                }
                if (doorStatusModel.hasWindShield()) {
                    setWindShield(doorStatusModel.getWindShield());
                }
                mergeUnknownFields(doorStatusModel.getUnknownFields());
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            /* renamed from: mergeFrom, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder m76mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                DoorStatusModel doorStatusModel = null;
                try {
                    try {
                        DoorStatusModel doorStatusModel2 = (DoorStatusModel) DoorStatusModel.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (doorStatusModel2 != null) {
                            mergeFrom(doorStatusModel2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        DoorStatusModel doorStatusModel3 = (DoorStatusModel) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            doorStatusModel = doorStatusModel3;
                            if (doorStatusModel != null) {
                                mergeFrom(doorStatusModel);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (doorStatusModel != null) {
                    }
                    throw th;
                }
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public boolean hasFrontLeftDoor() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public CommonStateModel getFrontLeftDoor() {
                return this.frontLeftDoor_;
            }

            public Builder setFrontLeftDoor(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.frontLeftDoor_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearFrontLeftDoor() {
                this.bitField0_ &= -2;
                this.frontLeftDoor_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public boolean hasFrontRightDoor() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public CommonStateModel getFrontRightDoor() {
                return this.frontRightDoor_;
            }

            public Builder setFrontRightDoor(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.frontRightDoor_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearFrontRightDoor() {
                this.bitField0_ &= -3;
                this.frontRightDoor_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public boolean hasRearLeftDoor() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public CommonStateModel getRearLeftDoor() {
                return this.rearLeftDoor_;
            }

            public Builder setRearLeftDoor(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.rearLeftDoor_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearRearLeftDoor() {
                this.bitField0_ &= -5;
                this.rearLeftDoor_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public boolean hasRearRightDoor() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public CommonStateModel getRearRightDoor() {
                return this.rearRightDoor_;
            }

            public Builder setRearRightDoor(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.rearRightDoor_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearRearRightDoor() {
                this.bitField0_ &= -9;
                this.rearRightDoor_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public boolean hasSkylight() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public CommonStateModel getSkylight() {
                return this.skylight_;
            }

            public Builder setSkylight(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.skylight_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearSkylight() {
                this.bitField0_ &= -17;
                this.skylight_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public boolean hasEngineCover() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public CommonStateModel getEngineCover() {
                return this.engineCover_;
            }

            public Builder setEngineCover(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.engineCover_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearEngineCover() {
                this.bitField0_ &= -33;
                this.engineCover_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public boolean hasTrunk() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public CommonStateModel getTrunk() {
                return this.trunk_;
            }

            public Builder setTrunk(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.trunk_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearTrunk() {
                this.bitField0_ &= -65;
                this.trunk_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public boolean hasTank() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public CommonStateModel getTank() {
                return this.tank_;
            }

            public Builder setTank(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.tank_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearTank() {
                this.bitField0_ &= -129;
                this.tank_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public boolean hasWindShield() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.DoorStatusModelOrBuilder
            public CommonStateModel getWindShield() {
                return this.windShield_;
            }

            public Builder setWindShield(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 256;
                this.windShield_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearWindShield() {
                this.bitField0_ &= -257;
                this.windShield_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class LampModel extends GeneratedMessage implements LampModelOrBuilder {
        public static final int BACKLAMP_FIELD_NUMBER = 10;
        public static final int DAYLAMP_FIELD_NUMBER = 8;
        public static final int EMERGENCYLAMP_FIELD_NUMBER = 4;
        public static final int FARLAMP_FIELD_NUMBER = 6;
        public static final int FORKLAMP_FIELD_NUMBER = 5;
        public static final int LEFTLAMP_FIELD_NUMBER = 1;
        public static final int NEARLAMP_FIELD_NUMBER = 7;
        public static final int RIGHTLAMP_FIELD_NUMBER = 2;
        public static final int STOPLAMP_FIELD_NUMBER = 9;
        public static final int WIDTHLAMP_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private CommonStateModel backLamp_;
        private int bitField0_;
        private CommonStateModel dayLamp_;
        private CommonStateModel emergencyLamp_;
        private CommonStateModel farLamp_;
        private CommonStateModel forkLamp_;
        private CommonStateModel leftLamp_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private CommonStateModel nearLamp_;
        private CommonStateModel rightLamp_;
        private CommonStateModel stopLamp_;
        private final UnknownFieldSet unknownFields;
        private CommonStateModel widthLamp_;
        public static Parser<LampModel> PARSER = new AbstractParser<LampModel>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModel.1
            /* renamed from: parsePartialFrom, reason: merged with bridge method [inline-methods] */
            public LampModel m119parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new LampModel(codedInputStream, extensionRegistryLite);
            }
        };
        private static final LampModel defaultInstance = new LampModel(true);

        private LampModel(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private LampModel(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static LampModel getDefaultInstance() {
            return defaultInstance;
        }

        /* renamed from: getDefaultInstanceForType, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public LampModel m112getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001a. Please report as an issue. */
        private LampModel(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            switch (readTag) {
                                case 0:
                                    z = true;
                                case 8:
                                    int readEnum = codedInputStream.readEnum();
                                    CommonStateModel valueOf = CommonStateModel.valueOf(readEnum);
                                    if (valueOf == null) {
                                        newBuilder.mergeVarintField(1, readEnum);
                                    } else {
                                        this.bitField0_ |= 1;
                                        this.leftLamp_ = valueOf;
                                    }
                                case 16:
                                    int readEnum2 = codedInputStream.readEnum();
                                    CommonStateModel valueOf2 = CommonStateModel.valueOf(readEnum2);
                                    if (valueOf2 == null) {
                                        newBuilder.mergeVarintField(2, readEnum2);
                                    } else {
                                        this.bitField0_ |= 2;
                                        this.rightLamp_ = valueOf2;
                                    }
                                case 24:
                                    int readEnum3 = codedInputStream.readEnum();
                                    CommonStateModel valueOf3 = CommonStateModel.valueOf(readEnum3);
                                    if (valueOf3 == null) {
                                        newBuilder.mergeVarintField(3, readEnum3);
                                    } else {
                                        this.bitField0_ |= 4;
                                        this.widthLamp_ = valueOf3;
                                    }
                                case 32:
                                    int readEnum4 = codedInputStream.readEnum();
                                    CommonStateModel valueOf4 = CommonStateModel.valueOf(readEnum4);
                                    if (valueOf4 == null) {
                                        newBuilder.mergeVarintField(4, readEnum4);
                                    } else {
                                        this.bitField0_ |= 8;
                                        this.emergencyLamp_ = valueOf4;
                                    }
                                case 40:
                                    int readEnum5 = codedInputStream.readEnum();
                                    CommonStateModel valueOf5 = CommonStateModel.valueOf(readEnum5);
                                    if (valueOf5 == null) {
                                        newBuilder.mergeVarintField(5, readEnum5);
                                    } else {
                                        this.bitField0_ |= 16;
                                        this.forkLamp_ = valueOf5;
                                    }
                                case 48:
                                    int readEnum6 = codedInputStream.readEnum();
                                    CommonStateModel valueOf6 = CommonStateModel.valueOf(readEnum6);
                                    if (valueOf6 == null) {
                                        newBuilder.mergeVarintField(6, readEnum6);
                                    } else {
                                        this.bitField0_ |= 32;
                                        this.farLamp_ = valueOf6;
                                    }
                                case 56:
                                    int readEnum7 = codedInputStream.readEnum();
                                    CommonStateModel valueOf7 = CommonStateModel.valueOf(readEnum7);
                                    if (valueOf7 == null) {
                                        newBuilder.mergeVarintField(7, readEnum7);
                                    } else {
                                        this.bitField0_ |= 64;
                                        this.nearLamp_ = valueOf7;
                                    }
                                case 64:
                                    int readEnum8 = codedInputStream.readEnum();
                                    CommonStateModel valueOf8 = CommonStateModel.valueOf(readEnum8);
                                    if (valueOf8 == null) {
                                        newBuilder.mergeVarintField(8, readEnum8);
                                    } else {
                                        this.bitField0_ |= 128;
                                        this.dayLamp_ = valueOf8;
                                    }
                                case 72:
                                    int readEnum9 = codedInputStream.readEnum();
                                    CommonStateModel valueOf9 = CommonStateModel.valueOf(readEnum9);
                                    if (valueOf9 == null) {
                                        newBuilder.mergeVarintField(9, readEnum9);
                                    } else {
                                        this.bitField0_ |= 256;
                                        this.stopLamp_ = valueOf9;
                                    }
                                case 80:
                                    int readEnum10 = codedInputStream.readEnum();
                                    CommonStateModel valueOf10 = CommonStateModel.valueOf(readEnum10);
                                    if (valueOf10 == null) {
                                        newBuilder.mergeVarintField(10, readEnum10);
                                    } else {
                                        this.bitField0_ |= 512;
                                        this.backLamp_ = valueOf10;
                                    }
                                default:
                                    if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                        z = true;
                                    }
                            }
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return CarInfoMessage.internal_static_com_wecar_carinfo_LampModel_descriptor;
        }

        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return CarInfoMessage.internal_static_com_wecar_carinfo_LampModel_fieldAccessorTable.ensureFieldAccessorsInitialized(LampModel.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<LampModel> getParserForType() {
            return PARSER;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public boolean hasLeftLamp() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public CommonStateModel getLeftLamp() {
            return this.leftLamp_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public boolean hasRightLamp() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public CommonStateModel getRightLamp() {
            return this.rightLamp_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public boolean hasWidthLamp() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public CommonStateModel getWidthLamp() {
            return this.widthLamp_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public boolean hasEmergencyLamp() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public CommonStateModel getEmergencyLamp() {
            return this.emergencyLamp_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public boolean hasForkLamp() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public CommonStateModel getForkLamp() {
            return this.forkLamp_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public boolean hasFarLamp() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public CommonStateModel getFarLamp() {
            return this.farLamp_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public boolean hasNearLamp() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public CommonStateModel getNearLamp() {
            return this.nearLamp_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public boolean hasDayLamp() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public CommonStateModel getDayLamp() {
            return this.dayLamp_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public boolean hasStopLamp() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public CommonStateModel getStopLamp() {
            return this.stopLamp_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public boolean hasBackLamp() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
        public CommonStateModel getBackLamp() {
            return this.backLamp_;
        }

        private void initFields() {
            this.leftLamp_ = CommonStateModel.COMMON_STATE_NONE;
            this.rightLamp_ = CommonStateModel.COMMON_STATE_NONE;
            this.widthLamp_ = CommonStateModel.COMMON_STATE_NONE;
            this.emergencyLamp_ = CommonStateModel.COMMON_STATE_NONE;
            this.forkLamp_ = CommonStateModel.COMMON_STATE_NONE;
            this.farLamp_ = CommonStateModel.COMMON_STATE_NONE;
            this.nearLamp_ = CommonStateModel.COMMON_STATE_NONE;
            this.dayLamp_ = CommonStateModel.COMMON_STATE_NONE;
            this.stopLamp_ = CommonStateModel.COMMON_STATE_NONE;
            this.backLamp_ = CommonStateModel.COMMON_STATE_NONE;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeEnum(1, this.leftLamp_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeEnum(2, this.rightLamp_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeEnum(3, this.widthLamp_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeEnum(4, this.emergencyLamp_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeEnum(5, this.forkLamp_.getNumber());
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeEnum(6, this.farLamp_.getNumber());
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeEnum(7, this.nearLamp_.getNumber());
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeEnum(8, this.dayLamp_.getNumber());
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeEnum(9, this.stopLamp_.getNumber());
            }
            if ((this.bitField0_ & 512) == 512) {
                codedOutputStream.writeEnum(10, this.backLamp_.getNumber());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeEnumSize(1, this.leftLamp_.getNumber()) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeEnumSize += CodedOutputStream.computeEnumSize(2, this.rightLamp_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                computeEnumSize += CodedOutputStream.computeEnumSize(3, this.widthLamp_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                computeEnumSize += CodedOutputStream.computeEnumSize(4, this.emergencyLamp_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                computeEnumSize += CodedOutputStream.computeEnumSize(5, this.forkLamp_.getNumber());
            }
            if ((this.bitField0_ & 32) == 32) {
                computeEnumSize += CodedOutputStream.computeEnumSize(6, this.farLamp_.getNumber());
            }
            if ((this.bitField0_ & 64) == 64) {
                computeEnumSize += CodedOutputStream.computeEnumSize(7, this.nearLamp_.getNumber());
            }
            if ((this.bitField0_ & 128) == 128) {
                computeEnumSize += CodedOutputStream.computeEnumSize(8, this.dayLamp_.getNumber());
            }
            if ((this.bitField0_ & 256) == 256) {
                computeEnumSize += CodedOutputStream.computeEnumSize(9, this.stopLamp_.getNumber());
            }
            if ((this.bitField0_ & 512) == 512) {
                computeEnumSize += CodedOutputStream.computeEnumSize(10, this.backLamp_.getNumber());
            }
            int serializedSize = computeEnumSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        protected Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static LampModel parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (LampModel) PARSER.parseFrom(byteString);
        }

        public static LampModel parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (LampModel) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static LampModel parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (LampModel) PARSER.parseFrom(bArr);
        }

        public static LampModel parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (LampModel) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static LampModel parseFrom(InputStream inputStream) throws IOException {
            return (LampModel) PARSER.parseFrom(inputStream);
        }

        public static LampModel parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (LampModel) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static LampModel parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (LampModel) PARSER.parseDelimitedFrom(inputStream);
        }

        public static LampModel parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (LampModel) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static LampModel parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (LampModel) PARSER.parseFrom(codedInputStream);
        }

        public static LampModel parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (LampModel) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.access$3200();
        }

        /* renamed from: newBuilderForType, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m114newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(LampModel lampModel) {
            return newBuilder().mergeFrom(lampModel);
        }

        /* renamed from: toBuilder, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m117toBuilder() {
            return newBuilder(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements LampModelOrBuilder {
            private CommonStateModel backLamp_;
            private int bitField0_;
            private CommonStateModel dayLamp_;
            private CommonStateModel emergencyLamp_;
            private CommonStateModel farLamp_;
            private CommonStateModel forkLamp_;
            private CommonStateModel leftLamp_;
            private CommonStateModel nearLamp_;
            private CommonStateModel rightLamp_;
            private CommonStateModel stopLamp_;
            private CommonStateModel widthLamp_;

            public final boolean isInitialized() {
                return true;
            }

            static /* synthetic */ Builder access$3200() {
                return create();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return CarInfoMessage.internal_static_com_wecar_carinfo_LampModel_descriptor;
            }

            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return CarInfoMessage.internal_static_com_wecar_carinfo_LampModel_fieldAccessorTable.ensureFieldAccessorsInitialized(LampModel.class, Builder.class);
            }

            private Builder() {
                this.leftLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.rightLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.widthLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.emergencyLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.forkLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.farLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.nearLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.dayLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.stopLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.backLamp_ = CommonStateModel.COMMON_STATE_NONE;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.leftLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.rightLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.widthLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.emergencyLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.forkLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.farLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.nearLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.dayLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.stopLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.backLamp_ = CommonStateModel.COMMON_STATE_NONE;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = LampModel.alwaysUseFieldBuilders;
            }

            private static Builder create() {
                return new Builder();
            }

            /* renamed from: clear, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m126clear() {
                super.clear();
                this.leftLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -2;
                this.rightLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -3;
                this.widthLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -5;
                this.emergencyLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -9;
                this.forkLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -17;
                this.farLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -33;
                this.nearLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -65;
                this.dayLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -129;
                this.stopLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -257;
                this.backLamp_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -513;
                return this;
            }

            /* renamed from: clone, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m133clone() {
                return create().mergeFrom(m122buildPartial());
            }

            public Descriptors.Descriptor getDescriptorForType() {
                return CarInfoMessage.internal_static_com_wecar_carinfo_LampModel_descriptor;
            }

            /* renamed from: getDefaultInstanceForType, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public LampModel m134getDefaultInstanceForType() {
                return LampModel.getDefaultInstance();
            }

            /* renamed from: build, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public LampModel m120build() {
                LampModel m122buildPartial = m122buildPartial();
                if (m122buildPartial.isInitialized()) {
                    return m122buildPartial;
                }
                throw newUninitializedMessageException(m122buildPartial);
            }

            /* renamed from: buildPartial, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public LampModel m122buildPartial() {
                LampModel lampModel = new LampModel(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                lampModel.leftLamp_ = this.leftLamp_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                lampModel.rightLamp_ = this.rightLamp_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                lampModel.widthLamp_ = this.widthLamp_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                lampModel.emergencyLamp_ = this.emergencyLamp_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                lampModel.forkLamp_ = this.forkLamp_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                lampModel.farLamp_ = this.farLamp_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                lampModel.nearLamp_ = this.nearLamp_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                lampModel.dayLamp_ = this.dayLamp_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                lampModel.stopLamp_ = this.stopLamp_;
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                lampModel.backLamp_ = this.backLamp_;
                lampModel.bitField0_ = i2;
                onBuilt();
                return lampModel;
            }

            /* renamed from: mergeFrom, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m138mergeFrom(Message message) {
                if (message instanceof LampModel) {
                    return mergeFrom((LampModel) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(LampModel lampModel) {
                if (lampModel == LampModel.getDefaultInstance()) {
                    return this;
                }
                if (lampModel.hasLeftLamp()) {
                    setLeftLamp(lampModel.getLeftLamp());
                }
                if (lampModel.hasRightLamp()) {
                    setRightLamp(lampModel.getRightLamp());
                }
                if (lampModel.hasWidthLamp()) {
                    setWidthLamp(lampModel.getWidthLamp());
                }
                if (lampModel.hasEmergencyLamp()) {
                    setEmergencyLamp(lampModel.getEmergencyLamp());
                }
                if (lampModel.hasForkLamp()) {
                    setForkLamp(lampModel.getForkLamp());
                }
                if (lampModel.hasFarLamp()) {
                    setFarLamp(lampModel.getFarLamp());
                }
                if (lampModel.hasNearLamp()) {
                    setNearLamp(lampModel.getNearLamp());
                }
                if (lampModel.hasDayLamp()) {
                    setDayLamp(lampModel.getDayLamp());
                }
                if (lampModel.hasStopLamp()) {
                    setStopLamp(lampModel.getStopLamp());
                }
                if (lampModel.hasBackLamp()) {
                    setBackLamp(lampModel.getBackLamp());
                }
                mergeUnknownFields(lampModel.getUnknownFields());
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            /* renamed from: mergeFrom, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder m139mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                LampModel lampModel = null;
                try {
                    try {
                        LampModel lampModel2 = (LampModel) LampModel.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (lampModel2 != null) {
                            mergeFrom(lampModel2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        LampModel lampModel3 = (LampModel) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            lampModel = lampModel3;
                            if (lampModel != null) {
                                mergeFrom(lampModel);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (lampModel != null) {
                    }
                    throw th;
                }
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public boolean hasLeftLamp() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public CommonStateModel getLeftLamp() {
                return this.leftLamp_;
            }

            public Builder setLeftLamp(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.leftLamp_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearLeftLamp() {
                this.bitField0_ &= -2;
                this.leftLamp_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public boolean hasRightLamp() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public CommonStateModel getRightLamp() {
                return this.rightLamp_;
            }

            public Builder setRightLamp(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.rightLamp_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearRightLamp() {
                this.bitField0_ &= -3;
                this.rightLamp_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public boolean hasWidthLamp() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public CommonStateModel getWidthLamp() {
                return this.widthLamp_;
            }

            public Builder setWidthLamp(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.widthLamp_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearWidthLamp() {
                this.bitField0_ &= -5;
                this.widthLamp_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public boolean hasEmergencyLamp() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public CommonStateModel getEmergencyLamp() {
                return this.emergencyLamp_;
            }

            public Builder setEmergencyLamp(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.emergencyLamp_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearEmergencyLamp() {
                this.bitField0_ &= -9;
                this.emergencyLamp_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public boolean hasForkLamp() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public CommonStateModel getForkLamp() {
                return this.forkLamp_;
            }

            public Builder setForkLamp(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16;
                this.forkLamp_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearForkLamp() {
                this.bitField0_ &= -17;
                this.forkLamp_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public boolean hasFarLamp() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public CommonStateModel getFarLamp() {
                return this.farLamp_;
            }

            public Builder setFarLamp(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.farLamp_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearFarLamp() {
                this.bitField0_ &= -33;
                this.farLamp_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public boolean hasNearLamp() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public CommonStateModel getNearLamp() {
                return this.nearLamp_;
            }

            public Builder setNearLamp(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.nearLamp_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearNearLamp() {
                this.bitField0_ &= -65;
                this.nearLamp_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public boolean hasDayLamp() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public CommonStateModel getDayLamp() {
                return this.dayLamp_;
            }

            public Builder setDayLamp(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.dayLamp_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearDayLamp() {
                this.bitField0_ &= -129;
                this.dayLamp_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public boolean hasStopLamp() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public CommonStateModel getStopLamp() {
                return this.stopLamp_;
            }

            public Builder setStopLamp(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 256;
                this.stopLamp_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearStopLamp() {
                this.bitField0_ &= -257;
                this.stopLamp_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public boolean hasBackLamp() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.LampModelOrBuilder
            public CommonStateModel getBackLamp() {
                return this.backLamp_;
            }

            public Builder setBackLamp(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 512;
                this.backLamp_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearBackLamp() {
                this.bitField0_ &= -513;
                this.backLamp_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class AirConditionModel extends GeneratedMessage implements AirConditionModelOrBuilder {
        public static final int AC_FIELD_NUMBER = 6;
        public static final int AUTO_FIELD_NUMBER = 7;
        public static final int CYCLEMODEL_FIELD_NUMBER = 8;
        public static final int DUALZONE_FIELD_NUMBER = 9;
        public static final int FRONTDEFOG_FIELD_NUMBER = 10;
        public static final int LEFTTEMP_FIELD_NUMBER = 1;
        public static final int MBACKDEFOG_FIELD_NUMBER = 11;
        public static final int RIGHTTEMP_FIELD_NUMBER = 2;
        public static final int TEMPERATUREUNITTYPE_FIELD_NUMBER = 3;
        public static final int WINDDIRECTION_FIELD_NUMBER = 4;
        public static final int WINDLEVEL_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private ACState aC_;
        private CommonStateModel auto_;
        private int bitField0_;
        private ACCycleModel cycleModel_;
        private DualZoneSupport dualZone_;
        private CommonStateModel frontDefog_;
        private ByteString leftTemp_;
        private CommonStateModel mBackDefog_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private ByteString rightTemp_;
        private TempUnit temperatureUnitType_;
        private final UnknownFieldSet unknownFields;
        private ACWindDirectionModel windDirection_;
        private int windLevel_;
        public static Parser<AirConditionModel> PARSER = new AbstractParser<AirConditionModel>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModel.1
            /* renamed from: parsePartialFrom, reason: merged with bridge method [inline-methods] */
            public AirConditionModel m24parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new AirConditionModel(codedInputStream, extensionRegistryLite);
            }
        };
        private static final AirConditionModel defaultInstance = new AirConditionModel(true);

        private AirConditionModel(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private AirConditionModel(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static AirConditionModel getDefaultInstance() {
            return defaultInstance;
        }

        /* renamed from: getDefaultInstanceForType, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public AirConditionModel m17getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001a. Please report as an issue. */
        private AirConditionModel(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            switch (readTag) {
                                case 0:
                                    z = true;
                                case 10:
                                    this.bitField0_ |= 1;
                                    this.leftTemp_ = codedInputStream.readBytes();
                                case 18:
                                    this.bitField0_ |= 2;
                                    this.rightTemp_ = codedInputStream.readBytes();
                                case 24:
                                    int readEnum = codedInputStream.readEnum();
                                    TempUnit valueOf = TempUnit.valueOf(readEnum);
                                    if (valueOf == null) {
                                        newBuilder.mergeVarintField(3, readEnum);
                                    } else {
                                        this.bitField0_ |= 4;
                                        this.temperatureUnitType_ = valueOf;
                                    }
                                case 32:
                                    int readEnum2 = codedInputStream.readEnum();
                                    ACWindDirectionModel valueOf2 = ACWindDirectionModel.valueOf(readEnum2);
                                    if (valueOf2 == null) {
                                        newBuilder.mergeVarintField(4, readEnum2);
                                    } else {
                                        this.bitField0_ |= 8;
                                        this.windDirection_ = valueOf2;
                                    }
                                case 40:
                                    this.bitField0_ |= 16;
                                    this.windLevel_ = codedInputStream.readInt32();
                                case 48:
                                    int readEnum3 = codedInputStream.readEnum();
                                    ACState valueOf3 = ACState.valueOf(readEnum3);
                                    if (valueOf3 == null) {
                                        newBuilder.mergeVarintField(6, readEnum3);
                                    } else {
                                        this.bitField0_ |= 32;
                                        this.aC_ = valueOf3;
                                    }
                                case 56:
                                    int readEnum4 = codedInputStream.readEnum();
                                    CommonStateModel valueOf4 = CommonStateModel.valueOf(readEnum4);
                                    if (valueOf4 == null) {
                                        newBuilder.mergeVarintField(7, readEnum4);
                                    } else {
                                        this.bitField0_ |= 64;
                                        this.auto_ = valueOf4;
                                    }
                                case 64:
                                    int readEnum5 = codedInputStream.readEnum();
                                    ACCycleModel valueOf5 = ACCycleModel.valueOf(readEnum5);
                                    if (valueOf5 == null) {
                                        newBuilder.mergeVarintField(8, readEnum5);
                                    } else {
                                        this.bitField0_ |= 128;
                                        this.cycleModel_ = valueOf5;
                                    }
                                case 72:
                                    int readEnum6 = codedInputStream.readEnum();
                                    DualZoneSupport valueOf6 = DualZoneSupport.valueOf(readEnum6);
                                    if (valueOf6 == null) {
                                        newBuilder.mergeVarintField(9, readEnum6);
                                    } else {
                                        this.bitField0_ |= 256;
                                        this.dualZone_ = valueOf6;
                                    }
                                case 80:
                                    int readEnum7 = codedInputStream.readEnum();
                                    CommonStateModel valueOf7 = CommonStateModel.valueOf(readEnum7);
                                    if (valueOf7 == null) {
                                        newBuilder.mergeVarintField(10, readEnum7);
                                    } else {
                                        this.bitField0_ |= 512;
                                        this.frontDefog_ = valueOf7;
                                    }
                                case 88:
                                    int readEnum8 = codedInputStream.readEnum();
                                    CommonStateModel valueOf8 = CommonStateModel.valueOf(readEnum8);
                                    if (valueOf8 == null) {
                                        newBuilder.mergeVarintField(11, readEnum8);
                                    } else {
                                        this.bitField0_ |= 1024;
                                        this.mBackDefog_ = valueOf8;
                                    }
                                default:
                                    if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                        z = true;
                                    }
                            }
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return CarInfoMessage.internal_static_com_wecar_carinfo_AirConditionModel_descriptor;
        }

        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return CarInfoMessage.internal_static_com_wecar_carinfo_AirConditionModel_fieldAccessorTable.ensureFieldAccessorsInitialized(AirConditionModel.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<AirConditionModel> getParserForType() {
            return PARSER;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public boolean hasLeftTemp() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public ByteString getLeftTemp() {
            return this.leftTemp_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public boolean hasRightTemp() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public ByteString getRightTemp() {
            return this.rightTemp_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public boolean hasTemperatureUnitType() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public TempUnit getTemperatureUnitType() {
            return this.temperatureUnitType_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public boolean hasWindDirection() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public ACWindDirectionModel getWindDirection() {
            return this.windDirection_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public boolean hasWindLevel() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public int getWindLevel() {
            return this.windLevel_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public boolean hasAC() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public ACState getAC() {
            return this.aC_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public boolean hasAuto() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public CommonStateModel getAuto() {
            return this.auto_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public boolean hasCycleModel() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public ACCycleModel getCycleModel() {
            return this.cycleModel_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public boolean hasDualZone() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public DualZoneSupport getDualZone() {
            return this.dualZone_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public boolean hasFrontDefog() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public CommonStateModel getFrontDefog() {
            return this.frontDefog_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public boolean hasMBackDefog() {
            return (this.bitField0_ & 1024) == 1024;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
        public CommonStateModel getMBackDefog() {
            return this.mBackDefog_;
        }

        private void initFields() {
            this.leftTemp_ = ByteString.EMPTY;
            this.rightTemp_ = ByteString.EMPTY;
            this.temperatureUnitType_ = TempUnit.TEMP_UNIT_CELSIUS;
            this.windDirection_ = ACWindDirectionModel.WIND_DIRECTION_NONE;
            this.windLevel_ = 0;
            this.aC_ = ACState.AC_STATE_NONE;
            this.auto_ = CommonStateModel.COMMON_STATE_NONE;
            this.cycleModel_ = ACCycleModel.CYCLE_MODEL_NONE;
            this.dualZone_ = DualZoneSupport.DUAL_ZONE_NOT_SUPPORT;
            this.frontDefog_ = CommonStateModel.COMMON_STATE_NONE;
            this.mBackDefog_ = CommonStateModel.COMMON_STATE_NONE;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeBytes(1, this.leftTemp_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeBytes(2, this.rightTemp_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeEnum(3, this.temperatureUnitType_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeEnum(4, this.windDirection_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeInt32(5, this.windLevel_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeEnum(6, this.aC_.getNumber());
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeEnum(7, this.auto_.getNumber());
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeEnum(8, this.cycleModel_.getNumber());
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeEnum(9, this.dualZone_.getNumber());
            }
            if ((this.bitField0_ & 512) == 512) {
                codedOutputStream.writeEnum(10, this.frontDefog_.getNumber());
            }
            if ((this.bitField0_ & 1024) == 1024) {
                codedOutputStream.writeEnum(11, this.mBackDefog_.getNumber());
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeBytesSize = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeBytesSize(1, this.leftTemp_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeBytesSize += CodedOutputStream.computeBytesSize(2, this.rightTemp_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeBytesSize += CodedOutputStream.computeEnumSize(3, this.temperatureUnitType_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                computeBytesSize += CodedOutputStream.computeEnumSize(4, this.windDirection_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                computeBytesSize += CodedOutputStream.computeInt32Size(5, this.windLevel_);
            }
            if ((this.bitField0_ & 32) == 32) {
                computeBytesSize += CodedOutputStream.computeEnumSize(6, this.aC_.getNumber());
            }
            if ((this.bitField0_ & 64) == 64) {
                computeBytesSize += CodedOutputStream.computeEnumSize(7, this.auto_.getNumber());
            }
            if ((this.bitField0_ & 128) == 128) {
                computeBytesSize += CodedOutputStream.computeEnumSize(8, this.cycleModel_.getNumber());
            }
            if ((this.bitField0_ & 256) == 256) {
                computeBytesSize += CodedOutputStream.computeEnumSize(9, this.dualZone_.getNumber());
            }
            if ((this.bitField0_ & 512) == 512) {
                computeBytesSize += CodedOutputStream.computeEnumSize(10, this.frontDefog_.getNumber());
            }
            if ((this.bitField0_ & 1024) == 1024) {
                computeBytesSize += CodedOutputStream.computeEnumSize(11, this.mBackDefog_.getNumber());
            }
            int serializedSize = computeBytesSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        protected Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static AirConditionModel parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (AirConditionModel) PARSER.parseFrom(byteString);
        }

        public static AirConditionModel parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AirConditionModel) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static AirConditionModel parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (AirConditionModel) PARSER.parseFrom(bArr);
        }

        public static AirConditionModel parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AirConditionModel) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static AirConditionModel parseFrom(InputStream inputStream) throws IOException {
            return (AirConditionModel) PARSER.parseFrom(inputStream);
        }

        public static AirConditionModel parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AirConditionModel) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static AirConditionModel parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AirConditionModel) PARSER.parseDelimitedFrom(inputStream);
        }

        public static AirConditionModel parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AirConditionModel) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static AirConditionModel parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (AirConditionModel) PARSER.parseFrom(codedInputStream);
        }

        public static AirConditionModel parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AirConditionModel) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.access$5000();
        }

        /* renamed from: newBuilderForType, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m19newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(AirConditionModel airConditionModel) {
            return newBuilder().mergeFrom(airConditionModel);
        }

        /* renamed from: toBuilder, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m22toBuilder() {
            return newBuilder(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements AirConditionModelOrBuilder {
            private ACState aC_;
            private CommonStateModel auto_;
            private int bitField0_;
            private ACCycleModel cycleModel_;
            private DualZoneSupport dualZone_;
            private CommonStateModel frontDefog_;
            private ByteString leftTemp_;
            private CommonStateModel mBackDefog_;
            private ByteString rightTemp_;
            private TempUnit temperatureUnitType_;
            private ACWindDirectionModel windDirection_;
            private int windLevel_;

            public final boolean isInitialized() {
                return true;
            }

            static /* synthetic */ Builder access$5000() {
                return create();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return CarInfoMessage.internal_static_com_wecar_carinfo_AirConditionModel_descriptor;
            }

            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return CarInfoMessage.internal_static_com_wecar_carinfo_AirConditionModel_fieldAccessorTable.ensureFieldAccessorsInitialized(AirConditionModel.class, Builder.class);
            }

            private Builder() {
                this.leftTemp_ = ByteString.EMPTY;
                this.rightTemp_ = ByteString.EMPTY;
                this.temperatureUnitType_ = TempUnit.TEMP_UNIT_CELSIUS;
                this.windDirection_ = ACWindDirectionModel.WIND_DIRECTION_NONE;
                this.aC_ = ACState.AC_STATE_NONE;
                this.auto_ = CommonStateModel.COMMON_STATE_NONE;
                this.cycleModel_ = ACCycleModel.CYCLE_MODEL_NONE;
                this.dualZone_ = DualZoneSupport.DUAL_ZONE_NOT_SUPPORT;
                this.frontDefog_ = CommonStateModel.COMMON_STATE_NONE;
                this.mBackDefog_ = CommonStateModel.COMMON_STATE_NONE;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.leftTemp_ = ByteString.EMPTY;
                this.rightTemp_ = ByteString.EMPTY;
                this.temperatureUnitType_ = TempUnit.TEMP_UNIT_CELSIUS;
                this.windDirection_ = ACWindDirectionModel.WIND_DIRECTION_NONE;
                this.aC_ = ACState.AC_STATE_NONE;
                this.auto_ = CommonStateModel.COMMON_STATE_NONE;
                this.cycleModel_ = ACCycleModel.CYCLE_MODEL_NONE;
                this.dualZone_ = DualZoneSupport.DUAL_ZONE_NOT_SUPPORT;
                this.frontDefog_ = CommonStateModel.COMMON_STATE_NONE;
                this.mBackDefog_ = CommonStateModel.COMMON_STATE_NONE;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = AirConditionModel.alwaysUseFieldBuilders;
            }

            private static Builder create() {
                return new Builder();
            }

            /* renamed from: clear, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m31clear() {
                super.clear();
                this.leftTemp_ = ByteString.EMPTY;
                this.bitField0_ &= -2;
                this.rightTemp_ = ByteString.EMPTY;
                this.bitField0_ &= -3;
                this.temperatureUnitType_ = TempUnit.TEMP_UNIT_CELSIUS;
                this.bitField0_ &= -5;
                this.windDirection_ = ACWindDirectionModel.WIND_DIRECTION_NONE;
                this.bitField0_ &= -9;
                this.windLevel_ = 0;
                this.bitField0_ &= -17;
                this.aC_ = ACState.AC_STATE_NONE;
                this.bitField0_ &= -33;
                this.auto_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -65;
                this.cycleModel_ = ACCycleModel.CYCLE_MODEL_NONE;
                this.bitField0_ &= -129;
                this.dualZone_ = DualZoneSupport.DUAL_ZONE_NOT_SUPPORT;
                this.bitField0_ &= -257;
                this.frontDefog_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -513;
                this.mBackDefog_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -1025;
                return this;
            }

            /* renamed from: clone, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m38clone() {
                return create().mergeFrom(m27buildPartial());
            }

            public Descriptors.Descriptor getDescriptorForType() {
                return CarInfoMessage.internal_static_com_wecar_carinfo_AirConditionModel_descriptor;
            }

            /* renamed from: getDefaultInstanceForType, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public AirConditionModel m39getDefaultInstanceForType() {
                return AirConditionModel.getDefaultInstance();
            }

            /* renamed from: build, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public AirConditionModel m25build() {
                AirConditionModel m27buildPartial = m27buildPartial();
                if (m27buildPartial.isInitialized()) {
                    return m27buildPartial;
                }
                throw newUninitializedMessageException(m27buildPartial);
            }

            /* renamed from: buildPartial, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public AirConditionModel m27buildPartial() {
                AirConditionModel airConditionModel = new AirConditionModel(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                airConditionModel.leftTemp_ = this.leftTemp_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                airConditionModel.rightTemp_ = this.rightTemp_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                airConditionModel.temperatureUnitType_ = this.temperatureUnitType_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                airConditionModel.windDirection_ = this.windDirection_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                airConditionModel.windLevel_ = this.windLevel_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                airConditionModel.aC_ = this.aC_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                airConditionModel.auto_ = this.auto_;
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                airConditionModel.cycleModel_ = this.cycleModel_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                airConditionModel.dualZone_ = this.dualZone_;
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                airConditionModel.frontDefog_ = this.frontDefog_;
                if ((i & 1024) == 1024) {
                    i2 |= 1024;
                }
                airConditionModel.mBackDefog_ = this.mBackDefog_;
                airConditionModel.bitField0_ = i2;
                onBuilt();
                return airConditionModel;
            }

            /* renamed from: mergeFrom, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m43mergeFrom(Message message) {
                if (message instanceof AirConditionModel) {
                    return mergeFrom((AirConditionModel) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(AirConditionModel airConditionModel) {
                if (airConditionModel == AirConditionModel.getDefaultInstance()) {
                    return this;
                }
                if (airConditionModel.hasLeftTemp()) {
                    setLeftTemp(airConditionModel.getLeftTemp());
                }
                if (airConditionModel.hasRightTemp()) {
                    setRightTemp(airConditionModel.getRightTemp());
                }
                if (airConditionModel.hasTemperatureUnitType()) {
                    setTemperatureUnitType(airConditionModel.getTemperatureUnitType());
                }
                if (airConditionModel.hasWindDirection()) {
                    setWindDirection(airConditionModel.getWindDirection());
                }
                if (airConditionModel.hasWindLevel()) {
                    setWindLevel(airConditionModel.getWindLevel());
                }
                if (airConditionModel.hasAC()) {
                    setAC(airConditionModel.getAC());
                }
                if (airConditionModel.hasAuto()) {
                    setAuto(airConditionModel.getAuto());
                }
                if (airConditionModel.hasCycleModel()) {
                    setCycleModel(airConditionModel.getCycleModel());
                }
                if (airConditionModel.hasDualZone()) {
                    setDualZone(airConditionModel.getDualZone());
                }
                if (airConditionModel.hasFrontDefog()) {
                    setFrontDefog(airConditionModel.getFrontDefog());
                }
                if (airConditionModel.hasMBackDefog()) {
                    setMBackDefog(airConditionModel.getMBackDefog());
                }
                mergeUnknownFields(airConditionModel.getUnknownFields());
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            /* renamed from: mergeFrom, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder m44mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                AirConditionModel airConditionModel = null;
                try {
                    try {
                        AirConditionModel airConditionModel2 = (AirConditionModel) AirConditionModel.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (airConditionModel2 != null) {
                            mergeFrom(airConditionModel2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        AirConditionModel airConditionModel3 = (AirConditionModel) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            airConditionModel = airConditionModel3;
                            if (airConditionModel != null) {
                                mergeFrom(airConditionModel);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (airConditionModel != null) {
                    }
                    throw th;
                }
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public boolean hasLeftTemp() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public ByteString getLeftTemp() {
                return this.leftTemp_;
            }

            public Builder setLeftTemp(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.leftTemp_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearLeftTemp() {
                this.bitField0_ &= -2;
                this.leftTemp_ = AirConditionModel.getDefaultInstance().getLeftTemp();
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public boolean hasRightTemp() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public ByteString getRightTemp() {
                return this.rightTemp_;
            }

            public Builder setRightTemp(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.rightTemp_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearRightTemp() {
                this.bitField0_ &= -3;
                this.rightTemp_ = AirConditionModel.getDefaultInstance().getRightTemp();
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public boolean hasTemperatureUnitType() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public TempUnit getTemperatureUnitType() {
                return this.temperatureUnitType_;
            }

            public Builder setTemperatureUnitType(TempUnit tempUnit) {
                if (tempUnit == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.temperatureUnitType_ = tempUnit;
                onChanged();
                return this;
            }

            public Builder clearTemperatureUnitType() {
                this.bitField0_ &= -5;
                this.temperatureUnitType_ = TempUnit.TEMP_UNIT_CELSIUS;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public boolean hasWindDirection() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public ACWindDirectionModel getWindDirection() {
                return this.windDirection_;
            }

            public Builder setWindDirection(ACWindDirectionModel aCWindDirectionModel) {
                if (aCWindDirectionModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.windDirection_ = aCWindDirectionModel;
                onChanged();
                return this;
            }

            public Builder clearWindDirection() {
                this.bitField0_ &= -9;
                this.windDirection_ = ACWindDirectionModel.WIND_DIRECTION_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public boolean hasWindLevel() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public int getWindLevel() {
                return this.windLevel_;
            }

            public Builder setWindLevel(int i) {
                this.bitField0_ |= 16;
                this.windLevel_ = i;
                onChanged();
                return this;
            }

            public Builder clearWindLevel() {
                this.bitField0_ &= -17;
                this.windLevel_ = 0;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public boolean hasAC() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public ACState getAC() {
                return this.aC_;
            }

            public Builder setAC(ACState aCState) {
                if (aCState == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 32;
                this.aC_ = aCState;
                onChanged();
                return this;
            }

            public Builder clearAC() {
                this.bitField0_ &= -33;
                this.aC_ = ACState.AC_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public boolean hasAuto() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public CommonStateModel getAuto() {
                return this.auto_;
            }

            public Builder setAuto(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 64;
                this.auto_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearAuto() {
                this.bitField0_ &= -65;
                this.auto_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public boolean hasCycleModel() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public ACCycleModel getCycleModel() {
                return this.cycleModel_;
            }

            public Builder setCycleModel(ACCycleModel aCCycleModel) {
                if (aCCycleModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.cycleModel_ = aCCycleModel;
                onChanged();
                return this;
            }

            public Builder clearCycleModel() {
                this.bitField0_ &= -129;
                this.cycleModel_ = ACCycleModel.CYCLE_MODEL_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public boolean hasDualZone() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public DualZoneSupport getDualZone() {
                return this.dualZone_;
            }

            public Builder setDualZone(DualZoneSupport dualZoneSupport) {
                if (dualZoneSupport == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 256;
                this.dualZone_ = dualZoneSupport;
                onChanged();
                return this;
            }

            public Builder clearDualZone() {
                this.bitField0_ &= -257;
                this.dualZone_ = DualZoneSupport.DUAL_ZONE_NOT_SUPPORT;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public boolean hasFrontDefog() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public CommonStateModel getFrontDefog() {
                return this.frontDefog_;
            }

            public Builder setFrontDefog(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 512;
                this.frontDefog_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearFrontDefog() {
                this.bitField0_ &= -513;
                this.frontDefog_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public boolean hasMBackDefog() {
                return (this.bitField0_ & 1024) == 1024;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.AirConditionModelOrBuilder
            public CommonStateModel getMBackDefog() {
                return this.mBackDefog_;
            }

            public Builder setMBackDefog(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1024;
                this.mBackDefog_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearMBackDefog() {
                this.bitField0_ &= -1025;
                this.mBackDefog_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class WeCarCarInfo extends GeneratedMessage implements WeCarCarInfoOrBuilder {
        public static final int ACC_FIELD_NUMBER = 4;
        public static final int AIRCONDITION_FIELD_NUMBER = 14;
        public static final int BATTERYVOLTAGE_FIELD_NUMBER = 15;
        public static final int BRAKESTATE_FIELD_NUMBER = 1;
        public static final int CARSPEED_FIELD_NUMBER = 9;
        public static final int DOORSTATUS_FIELD_NUMBER = 11;
        public static final int ENDURANCEMILEAGE_FIELD_NUMBER = 6;
        public static final int ENGINESPEED_FIELD_NUMBER = 10;
        public static final int FUEL_FIELD_NUMBER = 7;
        public static final int GEAR_FIELD_NUMBER = 3;
        public static final int LAMPSTATUSCHANGED_FIELD_NUMBER = 12;
        public static final int LEANWATER_FIELD_NUMBER = 8;
        public static final int OUTSIDETEMPERATURE_FIELD_NUMBER = 13;
        public static final int SEATBELT_FIELD_NUMBER = 2;
        public static final int TOTALMILEAGE_FIELD_NUMBER = 5;
        private static final long serialVersionUID = 0;
        private CommonStateModel acc_;
        private AirConditionModel airCondition_;
        private ByteString batteryVoltage_;
        private int bitField0_;
        private BrakeStateModel brakeState_;
        private ByteString carSpeed_;
        private DoorStatusModel doorStatus_;
        private int enduranceMileage_;
        private ByteString engineSpeed_;
        private FuelModel fuel_;
        private GearModel gear_;
        private LampModel lampStatusChanged_;
        private LeanWaterModel leanWater_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private ByteString outsideTemperature_;
        private SeatBeltModel seatBelt_;
        private int totalMileage_;
        private final UnknownFieldSet unknownFields;
        public static Parser<WeCarCarInfo> PARSER = new AbstractParser<WeCarCarInfo>() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfo.1
            /* renamed from: parsePartialFrom, reason: merged with bridge method [inline-methods] */
            public WeCarCarInfo m152parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new WeCarCarInfo(codedInputStream, extensionRegistryLite);
            }
        };
        private static final WeCarCarInfo defaultInstance = new WeCarCarInfo(true);

        private WeCarCarInfo(GeneratedMessage.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private WeCarCarInfo(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = UnknownFieldSet.getDefaultInstance();
        }

        public static WeCarCarInfo getDefaultInstance() {
            return defaultInstance;
        }

        /* renamed from: getDefaultInstanceForType, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public WeCarCarInfo m145getDefaultInstanceForType() {
            return defaultInstance;
        }

        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001b. Please report as an issue. */
        private WeCarCarInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            switch (readTag) {
                                case 0:
                                    z = true;
                                case 8:
                                    int readEnum = codedInputStream.readEnum();
                                    BrakeStateModel valueOf = BrakeStateModel.valueOf(readEnum);
                                    if (valueOf == null) {
                                        newBuilder.mergeVarintField(1, readEnum);
                                    } else {
                                        this.bitField0_ |= 1;
                                        this.brakeState_ = valueOf;
                                    }
                                case 16:
                                    int readEnum2 = codedInputStream.readEnum();
                                    SeatBeltModel valueOf2 = SeatBeltModel.valueOf(readEnum2);
                                    if (valueOf2 == null) {
                                        newBuilder.mergeVarintField(2, readEnum2);
                                    } else {
                                        this.bitField0_ |= 2;
                                        this.seatBelt_ = valueOf2;
                                    }
                                case 24:
                                    int readEnum3 = codedInputStream.readEnum();
                                    GearModel valueOf3 = GearModel.valueOf(readEnum3);
                                    if (valueOf3 == null) {
                                        newBuilder.mergeVarintField(3, readEnum3);
                                    } else {
                                        this.bitField0_ |= 4;
                                        this.gear_ = valueOf3;
                                    }
                                case 32:
                                    int readEnum4 = codedInputStream.readEnum();
                                    CommonStateModel valueOf4 = CommonStateModel.valueOf(readEnum4);
                                    if (valueOf4 == null) {
                                        newBuilder.mergeVarintField(4, readEnum4);
                                    } else {
                                        this.bitField0_ |= 8;
                                        this.acc_ = valueOf4;
                                    }
                                case 40:
                                    this.bitField0_ |= 16;
                                    this.totalMileage_ = codedInputStream.readInt32();
                                case 48:
                                    this.bitField0_ |= 32;
                                    this.enduranceMileage_ = codedInputStream.readInt32();
                                case 58:
                                    FuelModel.Builder m85toBuilder = (this.bitField0_ & 64) == 64 ? this.fuel_.m85toBuilder() : null;
                                    this.fuel_ = codedInputStream.readMessage(FuelModel.PARSER, extensionRegistryLite);
                                    if (m85toBuilder != null) {
                                        m85toBuilder.mergeFrom(this.fuel_);
                                        this.fuel_ = m85toBuilder.m90buildPartial();
                                    }
                                    this.bitField0_ |= 64;
                                case 64:
                                    int readEnum5 = codedInputStream.readEnum();
                                    LeanWaterModel valueOf5 = LeanWaterModel.valueOf(readEnum5);
                                    if (valueOf5 == null) {
                                        newBuilder.mergeVarintField(8, readEnum5);
                                    } else {
                                        this.bitField0_ |= 128;
                                        this.leanWater_ = valueOf5;
                                    }
                                case 74:
                                    this.bitField0_ |= 256;
                                    this.carSpeed_ = codedInputStream.readBytes();
                                case 82:
                                    this.bitField0_ |= 512;
                                    this.engineSpeed_ = codedInputStream.readBytes();
                                case 90:
                                    DoorStatusModel.Builder m54toBuilder = (this.bitField0_ & 1024) == 1024 ? this.doorStatus_.m54toBuilder() : null;
                                    this.doorStatus_ = codedInputStream.readMessage(DoorStatusModel.PARSER, extensionRegistryLite);
                                    if (m54toBuilder != null) {
                                        m54toBuilder.mergeFrom(this.doorStatus_);
                                        this.doorStatus_ = m54toBuilder.m59buildPartial();
                                    }
                                    this.bitField0_ |= 1024;
                                case 98:
                                    LampModel.Builder m117toBuilder = (this.bitField0_ & 2048) == 2048 ? this.lampStatusChanged_.m117toBuilder() : null;
                                    this.lampStatusChanged_ = codedInputStream.readMessage(LampModel.PARSER, extensionRegistryLite);
                                    if (m117toBuilder != null) {
                                        m117toBuilder.mergeFrom(this.lampStatusChanged_);
                                        this.lampStatusChanged_ = m117toBuilder.m122buildPartial();
                                    }
                                    this.bitField0_ |= 2048;
                                case 106:
                                    this.bitField0_ |= 4096;
                                    this.outsideTemperature_ = codedInputStream.readBytes();
                                case 114:
                                    AirConditionModel.Builder m22toBuilder = (this.bitField0_ & 8192) == 8192 ? this.airCondition_.m22toBuilder() : null;
                                    this.airCondition_ = codedInputStream.readMessage(AirConditionModel.PARSER, extensionRegistryLite);
                                    if (m22toBuilder != null) {
                                        m22toBuilder.mergeFrom(this.airCondition_);
                                        this.airCondition_ = m22toBuilder.m27buildPartial();
                                    }
                                    this.bitField0_ |= 8192;
                                case IAudio.TX_BT_PHONE /* 122 */:
                                    this.bitField0_ |= 16384;
                                    this.batteryVoltage_ = codedInputStream.readBytes();
                                default:
                                    if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                        z = true;
                                    }
                            }
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return CarInfoMessage.internal_static_com_wecar_carinfo_WeCarCarInfo_descriptor;
        }

        protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
            return CarInfoMessage.internal_static_com_wecar_carinfo_WeCarCarInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(WeCarCarInfo.class, Builder.class);
        }

        static {
            defaultInstance.initFields();
        }

        public Parser<WeCarCarInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public boolean hasBrakeState() {
            return (this.bitField0_ & 1) == 1;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public BrakeStateModel getBrakeState() {
            return this.brakeState_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public boolean hasSeatBelt() {
            return (this.bitField0_ & 2) == 2;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public SeatBeltModel getSeatBelt() {
            return this.seatBelt_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public boolean hasGear() {
            return (this.bitField0_ & 4) == 4;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public GearModel getGear() {
            return this.gear_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public boolean hasAcc() {
            return (this.bitField0_ & 8) == 8;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public CommonStateModel getAcc() {
            return this.acc_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public boolean hasTotalMileage() {
            return (this.bitField0_ & 16) == 16;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public int getTotalMileage() {
            return this.totalMileage_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public boolean hasEnduranceMileage() {
            return (this.bitField0_ & 32) == 32;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public int getEnduranceMileage() {
            return this.enduranceMileage_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public boolean hasFuel() {
            return (this.bitField0_ & 64) == 64;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public FuelModel getFuel() {
            return this.fuel_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public FuelModelOrBuilder getFuelOrBuilder() {
            return this.fuel_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public boolean hasLeanWater() {
            return (this.bitField0_ & 128) == 128;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public LeanWaterModel getLeanWater() {
            return this.leanWater_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public boolean hasCarSpeed() {
            return (this.bitField0_ & 256) == 256;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public ByteString getCarSpeed() {
            return this.carSpeed_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public boolean hasEngineSpeed() {
            return (this.bitField0_ & 512) == 512;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public ByteString getEngineSpeed() {
            return this.engineSpeed_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public boolean hasDoorStatus() {
            return (this.bitField0_ & 1024) == 1024;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public DoorStatusModel getDoorStatus() {
            return this.doorStatus_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public DoorStatusModelOrBuilder getDoorStatusOrBuilder() {
            return this.doorStatus_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public boolean hasLampStatusChanged() {
            return (this.bitField0_ & 2048) == 2048;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public LampModel getLampStatusChanged() {
            return this.lampStatusChanged_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public LampModelOrBuilder getLampStatusChangedOrBuilder() {
            return this.lampStatusChanged_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public boolean hasOutsideTemperature() {
            return (this.bitField0_ & 4096) == 4096;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public ByteString getOutsideTemperature() {
            return this.outsideTemperature_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public boolean hasAirCondition() {
            return (this.bitField0_ & 8192) == 8192;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public AirConditionModel getAirCondition() {
            return this.airCondition_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public AirConditionModelOrBuilder getAirConditionOrBuilder() {
            return this.airCondition_;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public boolean hasBatteryVoltage() {
            return (this.bitField0_ & 16384) == 16384;
        }

        @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
        public ByteString getBatteryVoltage() {
            return this.batteryVoltage_;
        }

        private void initFields() {
            this.brakeState_ = BrakeStateModel.BRAKE_STATE_NONE;
            this.seatBelt_ = SeatBeltModel.SEAT_BELT_STATE_NONE;
            this.gear_ = GearModel.GEAR_STATE_NONE;
            this.acc_ = CommonStateModel.COMMON_STATE_NONE;
            this.totalMileage_ = 0;
            this.enduranceMileage_ = 0;
            this.fuel_ = FuelModel.getDefaultInstance();
            this.leanWater_ = LeanWaterModel.LEAN_WATER_STATE_NONE;
            this.carSpeed_ = ByteString.EMPTY;
            this.engineSpeed_ = ByteString.EMPTY;
            this.doorStatus_ = DoorStatusModel.getDefaultInstance();
            this.lampStatusChanged_ = LampModel.getDefaultInstance();
            this.outsideTemperature_ = ByteString.EMPTY;
            this.airCondition_ = AirConditionModel.getDefaultInstance();
            this.batteryVoltage_ = ByteString.EMPTY;
        }

        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeEnum(1, this.brakeState_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeEnum(2, this.seatBelt_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeEnum(3, this.gear_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.writeEnum(4, this.acc_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.writeInt32(5, this.totalMileage_);
            }
            if ((this.bitField0_ & 32) == 32) {
                codedOutputStream.writeInt32(6, this.enduranceMileage_);
            }
            if ((this.bitField0_ & 64) == 64) {
                codedOutputStream.writeMessage(7, this.fuel_);
            }
            if ((this.bitField0_ & 128) == 128) {
                codedOutputStream.writeEnum(8, this.leanWater_.getNumber());
            }
            if ((this.bitField0_ & 256) == 256) {
                codedOutputStream.writeBytes(9, this.carSpeed_);
            }
            if ((this.bitField0_ & 512) == 512) {
                codedOutputStream.writeBytes(10, this.engineSpeed_);
            }
            if ((this.bitField0_ & 1024) == 1024) {
                codedOutputStream.writeMessage(11, this.doorStatus_);
            }
            if ((this.bitField0_ & 2048) == 2048) {
                codedOutputStream.writeMessage(12, this.lampStatusChanged_);
            }
            if ((this.bitField0_ & 4096) == 4096) {
                codedOutputStream.writeBytes(13, this.outsideTemperature_);
            }
            if ((this.bitField0_ & 8192) == 8192) {
                codedOutputStream.writeMessage(14, this.airCondition_);
            }
            if ((this.bitField0_ & 16384) == 16384) {
                codedOutputStream.writeBytes(15, this.batteryVoltage_);
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeEnumSize(1, this.brakeState_.getNumber()) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeEnumSize += CodedOutputStream.computeEnumSize(2, this.seatBelt_.getNumber());
            }
            if ((this.bitField0_ & 4) == 4) {
                computeEnumSize += CodedOutputStream.computeEnumSize(3, this.gear_.getNumber());
            }
            if ((this.bitField0_ & 8) == 8) {
                computeEnumSize += CodedOutputStream.computeEnumSize(4, this.acc_.getNumber());
            }
            if ((this.bitField0_ & 16) == 16) {
                computeEnumSize += CodedOutputStream.computeInt32Size(5, this.totalMileage_);
            }
            if ((this.bitField0_ & 32) == 32) {
                computeEnumSize += CodedOutputStream.computeInt32Size(6, this.enduranceMileage_);
            }
            if ((this.bitField0_ & 64) == 64) {
                computeEnumSize += CodedOutputStream.computeMessageSize(7, this.fuel_);
            }
            if ((this.bitField0_ & 128) == 128) {
                computeEnumSize += CodedOutputStream.computeEnumSize(8, this.leanWater_.getNumber());
            }
            if ((this.bitField0_ & 256) == 256) {
                computeEnumSize += CodedOutputStream.computeBytesSize(9, this.carSpeed_);
            }
            if ((this.bitField0_ & 512) == 512) {
                computeEnumSize += CodedOutputStream.computeBytesSize(10, this.engineSpeed_);
            }
            if ((this.bitField0_ & 1024) == 1024) {
                computeEnumSize += CodedOutputStream.computeMessageSize(11, this.doorStatus_);
            }
            if ((this.bitField0_ & 2048) == 2048) {
                computeEnumSize += CodedOutputStream.computeMessageSize(12, this.lampStatusChanged_);
            }
            if ((this.bitField0_ & 4096) == 4096) {
                computeEnumSize += CodedOutputStream.computeBytesSize(13, this.outsideTemperature_);
            }
            if ((this.bitField0_ & 8192) == 8192) {
                computeEnumSize += CodedOutputStream.computeMessageSize(14, this.airCondition_);
            }
            if ((this.bitField0_ & 16384) == 16384) {
                computeEnumSize += CodedOutputStream.computeBytesSize(15, this.batteryVoltage_);
            }
            int serializedSize = computeEnumSize + getUnknownFields().getSerializedSize();
            this.memoizedSerializedSize = serializedSize;
            return serializedSize;
        }

        protected Object writeReplace() throws ObjectStreamException {
            return super.writeReplace();
        }

        public static WeCarCarInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (WeCarCarInfo) PARSER.parseFrom(byteString);
        }

        public static WeCarCarInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (WeCarCarInfo) PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static WeCarCarInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (WeCarCarInfo) PARSER.parseFrom(bArr);
        }

        public static WeCarCarInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (WeCarCarInfo) PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static WeCarCarInfo parseFrom(InputStream inputStream) throws IOException {
            return (WeCarCarInfo) PARSER.parseFrom(inputStream);
        }

        public static WeCarCarInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (WeCarCarInfo) PARSER.parseFrom(inputStream, extensionRegistryLite);
        }

        public static WeCarCarInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (WeCarCarInfo) PARSER.parseDelimitedFrom(inputStream);
        }

        public static WeCarCarInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (WeCarCarInfo) PARSER.parseDelimitedFrom(inputStream, extensionRegistryLite);
        }

        public static WeCarCarInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (WeCarCarInfo) PARSER.parseFrom(codedInputStream);
        }

        public static WeCarCarInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (WeCarCarInfo) PARSER.parseFrom(codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return Builder.access$6900();
        }

        /* renamed from: newBuilderForType, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m147newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(WeCarCarInfo weCarCarInfo) {
            return newBuilder().mergeFrom(weCarCarInfo);
        }

        /* renamed from: toBuilder, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Builder m150toBuilder() {
            return newBuilder(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Builder newBuilderForType(GeneratedMessage.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static final class Builder extends GeneratedMessage.Builder<Builder> implements WeCarCarInfoOrBuilder {
            private CommonStateModel acc_;
            private SingleFieldBuilder<AirConditionModel, AirConditionModel.Builder, AirConditionModelOrBuilder> airConditionBuilder_;
            private AirConditionModel airCondition_;
            private ByteString batteryVoltage_;
            private int bitField0_;
            private BrakeStateModel brakeState_;
            private ByteString carSpeed_;
            private SingleFieldBuilder<DoorStatusModel, DoorStatusModel.Builder, DoorStatusModelOrBuilder> doorStatusBuilder_;
            private DoorStatusModel doorStatus_;
            private int enduranceMileage_;
            private ByteString engineSpeed_;
            private SingleFieldBuilder<FuelModel, FuelModel.Builder, FuelModelOrBuilder> fuelBuilder_;
            private FuelModel fuel_;
            private GearModel gear_;
            private SingleFieldBuilder<LampModel, LampModel.Builder, LampModelOrBuilder> lampStatusChangedBuilder_;
            private LampModel lampStatusChanged_;
            private LeanWaterModel leanWater_;
            private ByteString outsideTemperature_;
            private SeatBeltModel seatBelt_;
            private int totalMileage_;

            public final boolean isInitialized() {
                return true;
            }

            static /* synthetic */ Builder access$6900() {
                return create();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return CarInfoMessage.internal_static_com_wecar_carinfo_WeCarCarInfo_descriptor;
            }

            protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable() {
                return CarInfoMessage.internal_static_com_wecar_carinfo_WeCarCarInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(WeCarCarInfo.class, Builder.class);
            }

            private Builder() {
                this.brakeState_ = BrakeStateModel.BRAKE_STATE_NONE;
                this.seatBelt_ = SeatBeltModel.SEAT_BELT_STATE_NONE;
                this.gear_ = GearModel.GEAR_STATE_NONE;
                this.acc_ = CommonStateModel.COMMON_STATE_NONE;
                this.fuel_ = FuelModel.getDefaultInstance();
                this.leanWater_ = LeanWaterModel.LEAN_WATER_STATE_NONE;
                this.carSpeed_ = ByteString.EMPTY;
                this.engineSpeed_ = ByteString.EMPTY;
                this.doorStatus_ = DoorStatusModel.getDefaultInstance();
                this.lampStatusChanged_ = LampModel.getDefaultInstance();
                this.outsideTemperature_ = ByteString.EMPTY;
                this.airCondition_ = AirConditionModel.getDefaultInstance();
                this.batteryVoltage_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessage.BuilderParent builderParent) {
                super(builderParent);
                this.brakeState_ = BrakeStateModel.BRAKE_STATE_NONE;
                this.seatBelt_ = SeatBeltModel.SEAT_BELT_STATE_NONE;
                this.gear_ = GearModel.GEAR_STATE_NONE;
                this.acc_ = CommonStateModel.COMMON_STATE_NONE;
                this.fuel_ = FuelModel.getDefaultInstance();
                this.leanWater_ = LeanWaterModel.LEAN_WATER_STATE_NONE;
                this.carSpeed_ = ByteString.EMPTY;
                this.engineSpeed_ = ByteString.EMPTY;
                this.doorStatus_ = DoorStatusModel.getDefaultInstance();
                this.lampStatusChanged_ = LampModel.getDefaultInstance();
                this.outsideTemperature_ = ByteString.EMPTY;
                this.airCondition_ = AirConditionModel.getDefaultInstance();
                this.batteryVoltage_ = ByteString.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                if (WeCarCarInfo.alwaysUseFieldBuilders) {
                    getFuelFieldBuilder();
                    getDoorStatusFieldBuilder();
                    getLampStatusChangedFieldBuilder();
                    getAirConditionFieldBuilder();
                }
            }

            private static Builder create() {
                return new Builder();
            }

            /* renamed from: clear, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m159clear() {
                super.clear();
                this.brakeState_ = BrakeStateModel.BRAKE_STATE_NONE;
                this.bitField0_ &= -2;
                this.seatBelt_ = SeatBeltModel.SEAT_BELT_STATE_NONE;
                this.bitField0_ &= -3;
                this.gear_ = GearModel.GEAR_STATE_NONE;
                this.bitField0_ &= -5;
                this.acc_ = CommonStateModel.COMMON_STATE_NONE;
                this.bitField0_ &= -9;
                this.totalMileage_ = 0;
                this.bitField0_ &= -17;
                this.enduranceMileage_ = 0;
                this.bitField0_ &= -33;
                if (this.fuelBuilder_ == null) {
                    this.fuel_ = FuelModel.getDefaultInstance();
                } else {
                    this.fuelBuilder_.clear();
                }
                this.bitField0_ &= -65;
                this.leanWater_ = LeanWaterModel.LEAN_WATER_STATE_NONE;
                this.bitField0_ &= -129;
                this.carSpeed_ = ByteString.EMPTY;
                this.bitField0_ &= -257;
                this.engineSpeed_ = ByteString.EMPTY;
                this.bitField0_ &= -513;
                if (this.doorStatusBuilder_ == null) {
                    this.doorStatus_ = DoorStatusModel.getDefaultInstance();
                } else {
                    this.doorStatusBuilder_.clear();
                }
                this.bitField0_ &= -1025;
                if (this.lampStatusChangedBuilder_ == null) {
                    this.lampStatusChanged_ = LampModel.getDefaultInstance();
                } else {
                    this.lampStatusChangedBuilder_.clear();
                }
                this.bitField0_ &= -2049;
                this.outsideTemperature_ = ByteString.EMPTY;
                this.bitField0_ &= -4097;
                if (this.airConditionBuilder_ == null) {
                    this.airCondition_ = AirConditionModel.getDefaultInstance();
                } else {
                    this.airConditionBuilder_.clear();
                }
                this.bitField0_ &= -8193;
                this.batteryVoltage_ = ByteString.EMPTY;
                this.bitField0_ &= -16385;
                return this;
            }

            /* renamed from: clone, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m166clone() {
                return create().mergeFrom(m155buildPartial());
            }

            public Descriptors.Descriptor getDescriptorForType() {
                return CarInfoMessage.internal_static_com_wecar_carinfo_WeCarCarInfo_descriptor;
            }

            /* renamed from: getDefaultInstanceForType, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public WeCarCarInfo m167getDefaultInstanceForType() {
                return WeCarCarInfo.getDefaultInstance();
            }

            /* renamed from: build, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public WeCarCarInfo m153build() {
                WeCarCarInfo m155buildPartial = m155buildPartial();
                if (m155buildPartial.isInitialized()) {
                    return m155buildPartial;
                }
                throw newUninitializedMessageException(m155buildPartial);
            }

            /* renamed from: buildPartial, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public WeCarCarInfo m155buildPartial() {
                WeCarCarInfo weCarCarInfo = new WeCarCarInfo(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                weCarCarInfo.brakeState_ = this.brakeState_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                weCarCarInfo.seatBelt_ = this.seatBelt_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                weCarCarInfo.gear_ = this.gear_;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                weCarCarInfo.acc_ = this.acc_;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                weCarCarInfo.totalMileage_ = this.totalMileage_;
                if ((i & 32) == 32) {
                    i2 |= 32;
                }
                weCarCarInfo.enduranceMileage_ = this.enduranceMileage_;
                if ((i & 64) == 64) {
                    i2 |= 64;
                }
                if (this.fuelBuilder_ == null) {
                    weCarCarInfo.fuel_ = this.fuel_;
                } else {
                    weCarCarInfo.fuel_ = (FuelModel) this.fuelBuilder_.build();
                }
                if ((i & 128) == 128) {
                    i2 |= 128;
                }
                weCarCarInfo.leanWater_ = this.leanWater_;
                if ((i & 256) == 256) {
                    i2 |= 256;
                }
                weCarCarInfo.carSpeed_ = this.carSpeed_;
                if ((i & 512) == 512) {
                    i2 |= 512;
                }
                weCarCarInfo.engineSpeed_ = this.engineSpeed_;
                if ((i & 1024) == 1024) {
                    i2 |= 1024;
                }
                if (this.doorStatusBuilder_ == null) {
                    weCarCarInfo.doorStatus_ = this.doorStatus_;
                } else {
                    weCarCarInfo.doorStatus_ = (DoorStatusModel) this.doorStatusBuilder_.build();
                }
                if ((i & 2048) == 2048) {
                    i2 |= 2048;
                }
                if (this.lampStatusChangedBuilder_ == null) {
                    weCarCarInfo.lampStatusChanged_ = this.lampStatusChanged_;
                } else {
                    weCarCarInfo.lampStatusChanged_ = (LampModel) this.lampStatusChangedBuilder_.build();
                }
                if ((i & 4096) == 4096) {
                    i2 |= 4096;
                }
                weCarCarInfo.outsideTemperature_ = this.outsideTemperature_;
                if ((i & 8192) == 8192) {
                    i2 |= 8192;
                }
                if (this.airConditionBuilder_ == null) {
                    weCarCarInfo.airCondition_ = this.airCondition_;
                } else {
                    weCarCarInfo.airCondition_ = (AirConditionModel) this.airConditionBuilder_.build();
                }
                if ((i & 16384) == 16384) {
                    i2 |= 16384;
                }
                weCarCarInfo.batteryVoltage_ = this.batteryVoltage_;
                weCarCarInfo.bitField0_ = i2;
                onBuilt();
                return weCarCarInfo;
            }

            /* renamed from: mergeFrom, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            public Builder m171mergeFrom(Message message) {
                if (message instanceof WeCarCarInfo) {
                    return mergeFrom((WeCarCarInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(WeCarCarInfo weCarCarInfo) {
                if (weCarCarInfo == WeCarCarInfo.getDefaultInstance()) {
                    return this;
                }
                if (weCarCarInfo.hasBrakeState()) {
                    setBrakeState(weCarCarInfo.getBrakeState());
                }
                if (weCarCarInfo.hasSeatBelt()) {
                    setSeatBelt(weCarCarInfo.getSeatBelt());
                }
                if (weCarCarInfo.hasGear()) {
                    setGear(weCarCarInfo.getGear());
                }
                if (weCarCarInfo.hasAcc()) {
                    setAcc(weCarCarInfo.getAcc());
                }
                if (weCarCarInfo.hasTotalMileage()) {
                    setTotalMileage(weCarCarInfo.getTotalMileage());
                }
                if (weCarCarInfo.hasEnduranceMileage()) {
                    setEnduranceMileage(weCarCarInfo.getEnduranceMileage());
                }
                if (weCarCarInfo.hasFuel()) {
                    mergeFuel(weCarCarInfo.getFuel());
                }
                if (weCarCarInfo.hasLeanWater()) {
                    setLeanWater(weCarCarInfo.getLeanWater());
                }
                if (weCarCarInfo.hasCarSpeed()) {
                    setCarSpeed(weCarCarInfo.getCarSpeed());
                }
                if (weCarCarInfo.hasEngineSpeed()) {
                    setEngineSpeed(weCarCarInfo.getEngineSpeed());
                }
                if (weCarCarInfo.hasDoorStatus()) {
                    mergeDoorStatus(weCarCarInfo.getDoorStatus());
                }
                if (weCarCarInfo.hasLampStatusChanged()) {
                    mergeLampStatusChanged(weCarCarInfo.getLampStatusChanged());
                }
                if (weCarCarInfo.hasOutsideTemperature()) {
                    setOutsideTemperature(weCarCarInfo.getOutsideTemperature());
                }
                if (weCarCarInfo.hasAirCondition()) {
                    mergeAirCondition(weCarCarInfo.getAirCondition());
                }
                if (weCarCarInfo.hasBatteryVoltage()) {
                    setBatteryVoltage(weCarCarInfo.getBatteryVoltage());
                }
                mergeUnknownFields(weCarCarInfo.getUnknownFields());
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
            /* renamed from: mergeFrom, reason: collision with other method in class and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Builder m172mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                WeCarCarInfo weCarCarInfo = null;
                try {
                    try {
                        WeCarCarInfo weCarCarInfo2 = (WeCarCarInfo) WeCarCarInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (weCarCarInfo2 != null) {
                            mergeFrom(weCarCarInfo2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        WeCarCarInfo weCarCarInfo3 = (WeCarCarInfo) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            weCarCarInfo = weCarCarInfo3;
                            if (weCarCarInfo != null) {
                                mergeFrom(weCarCarInfo);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (weCarCarInfo != null) {
                    }
                    throw th;
                }
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public boolean hasBrakeState() {
                return (this.bitField0_ & 1) == 1;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public BrakeStateModel getBrakeState() {
                return this.brakeState_;
            }

            public Builder setBrakeState(BrakeStateModel brakeStateModel) {
                if (brakeStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 1;
                this.brakeState_ = brakeStateModel;
                onChanged();
                return this;
            }

            public Builder clearBrakeState() {
                this.bitField0_ &= -2;
                this.brakeState_ = BrakeStateModel.BRAKE_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public boolean hasSeatBelt() {
                return (this.bitField0_ & 2) == 2;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public SeatBeltModel getSeatBelt() {
                return this.seatBelt_;
            }

            public Builder setSeatBelt(SeatBeltModel seatBeltModel) {
                if (seatBeltModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 2;
                this.seatBelt_ = seatBeltModel;
                onChanged();
                return this;
            }

            public Builder clearSeatBelt() {
                this.bitField0_ &= -3;
                this.seatBelt_ = SeatBeltModel.SEAT_BELT_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public boolean hasGear() {
                return (this.bitField0_ & 4) == 4;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public GearModel getGear() {
                return this.gear_;
            }

            public Builder setGear(GearModel gearModel) {
                if (gearModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4;
                this.gear_ = gearModel;
                onChanged();
                return this;
            }

            public Builder clearGear() {
                this.bitField0_ &= -5;
                this.gear_ = GearModel.GEAR_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public boolean hasAcc() {
                return (this.bitField0_ & 8) == 8;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public CommonStateModel getAcc() {
                return this.acc_;
            }

            public Builder setAcc(CommonStateModel commonStateModel) {
                if (commonStateModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 8;
                this.acc_ = commonStateModel;
                onChanged();
                return this;
            }

            public Builder clearAcc() {
                this.bitField0_ &= -9;
                this.acc_ = CommonStateModel.COMMON_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public boolean hasTotalMileage() {
                return (this.bitField0_ & 16) == 16;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public int getTotalMileage() {
                return this.totalMileage_;
            }

            public Builder setTotalMileage(int i) {
                this.bitField0_ |= 16;
                this.totalMileage_ = i;
                onChanged();
                return this;
            }

            public Builder clearTotalMileage() {
                this.bitField0_ &= -17;
                this.totalMileage_ = 0;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public boolean hasEnduranceMileage() {
                return (this.bitField0_ & 32) == 32;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public int getEnduranceMileage() {
                return this.enduranceMileage_;
            }

            public Builder setEnduranceMileage(int i) {
                this.bitField0_ |= 32;
                this.enduranceMileage_ = i;
                onChanged();
                return this;
            }

            public Builder clearEnduranceMileage() {
                this.bitField0_ &= -33;
                this.enduranceMileage_ = 0;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public boolean hasFuel() {
                return (this.bitField0_ & 64) == 64;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public FuelModel getFuel() {
                if (this.fuelBuilder_ == null) {
                    return this.fuel_;
                }
                return (FuelModel) this.fuelBuilder_.getMessage();
            }

            public Builder setFuel(FuelModel fuelModel) {
                if (this.fuelBuilder_ != null) {
                    this.fuelBuilder_.setMessage(fuelModel);
                } else {
                    if (fuelModel == null) {
                        throw new NullPointerException();
                    }
                    this.fuel_ = fuelModel;
                    onChanged();
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder setFuel(FuelModel.Builder builder) {
                if (this.fuelBuilder_ == null) {
                    this.fuel_ = builder.m88build();
                    onChanged();
                } else {
                    this.fuelBuilder_.setMessage(builder.m88build());
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder mergeFuel(FuelModel fuelModel) {
                if (this.fuelBuilder_ == null) {
                    if ((this.bitField0_ & 64) == 64 && this.fuel_ != FuelModel.getDefaultInstance()) {
                        this.fuel_ = FuelModel.newBuilder(this.fuel_).mergeFrom(fuelModel).m90buildPartial();
                    } else {
                        this.fuel_ = fuelModel;
                    }
                    onChanged();
                } else {
                    this.fuelBuilder_.mergeFrom(fuelModel);
                }
                this.bitField0_ |= 64;
                return this;
            }

            public Builder clearFuel() {
                if (this.fuelBuilder_ == null) {
                    this.fuel_ = FuelModel.getDefaultInstance();
                    onChanged();
                } else {
                    this.fuelBuilder_.clear();
                }
                this.bitField0_ &= -65;
                return this;
            }

            public FuelModel.Builder getFuelBuilder() {
                this.bitField0_ |= 64;
                onChanged();
                return (FuelModel.Builder) getFuelFieldBuilder().getBuilder();
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public FuelModelOrBuilder getFuelOrBuilder() {
                if (this.fuelBuilder_ != null) {
                    return (FuelModelOrBuilder) this.fuelBuilder_.getMessageOrBuilder();
                }
                return this.fuel_;
            }

            private SingleFieldBuilder<FuelModel, FuelModel.Builder, FuelModelOrBuilder> getFuelFieldBuilder() {
                if (this.fuelBuilder_ == null) {
                    this.fuelBuilder_ = new SingleFieldBuilder<>(getFuel(), getParentForChildren(), isClean());
                    this.fuel_ = null;
                }
                return this.fuelBuilder_;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public boolean hasLeanWater() {
                return (this.bitField0_ & 128) == 128;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public LeanWaterModel getLeanWater() {
                return this.leanWater_;
            }

            public Builder setLeanWater(LeanWaterModel leanWaterModel) {
                if (leanWaterModel == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 128;
                this.leanWater_ = leanWaterModel;
                onChanged();
                return this;
            }

            public Builder clearLeanWater() {
                this.bitField0_ &= -129;
                this.leanWater_ = LeanWaterModel.LEAN_WATER_STATE_NONE;
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public boolean hasCarSpeed() {
                return (this.bitField0_ & 256) == 256;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public ByteString getCarSpeed() {
                return this.carSpeed_;
            }

            public Builder setCarSpeed(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 256;
                this.carSpeed_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearCarSpeed() {
                this.bitField0_ &= -257;
                this.carSpeed_ = WeCarCarInfo.getDefaultInstance().getCarSpeed();
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public boolean hasEngineSpeed() {
                return (this.bitField0_ & 512) == 512;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public ByteString getEngineSpeed() {
                return this.engineSpeed_;
            }

            public Builder setEngineSpeed(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 512;
                this.engineSpeed_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearEngineSpeed() {
                this.bitField0_ &= -513;
                this.engineSpeed_ = WeCarCarInfo.getDefaultInstance().getEngineSpeed();
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public boolean hasDoorStatus() {
                return (this.bitField0_ & 1024) == 1024;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public DoorStatusModel getDoorStatus() {
                if (this.doorStatusBuilder_ == null) {
                    return this.doorStatus_;
                }
                return (DoorStatusModel) this.doorStatusBuilder_.getMessage();
            }

            public Builder setDoorStatus(DoorStatusModel doorStatusModel) {
                if (this.doorStatusBuilder_ != null) {
                    this.doorStatusBuilder_.setMessage(doorStatusModel);
                } else {
                    if (doorStatusModel == null) {
                        throw new NullPointerException();
                    }
                    this.doorStatus_ = doorStatusModel;
                    onChanged();
                }
                this.bitField0_ |= 1024;
                return this;
            }

            public Builder setDoorStatus(DoorStatusModel.Builder builder) {
                if (this.doorStatusBuilder_ == null) {
                    this.doorStatus_ = builder.m57build();
                    onChanged();
                } else {
                    this.doorStatusBuilder_.setMessage(builder.m57build());
                }
                this.bitField0_ |= 1024;
                return this;
            }

            public Builder mergeDoorStatus(DoorStatusModel doorStatusModel) {
                if (this.doorStatusBuilder_ == null) {
                    if ((this.bitField0_ & 1024) == 1024 && this.doorStatus_ != DoorStatusModel.getDefaultInstance()) {
                        this.doorStatus_ = DoorStatusModel.newBuilder(this.doorStatus_).mergeFrom(doorStatusModel).m59buildPartial();
                    } else {
                        this.doorStatus_ = doorStatusModel;
                    }
                    onChanged();
                } else {
                    this.doorStatusBuilder_.mergeFrom(doorStatusModel);
                }
                this.bitField0_ |= 1024;
                return this;
            }

            public Builder clearDoorStatus() {
                if (this.doorStatusBuilder_ == null) {
                    this.doorStatus_ = DoorStatusModel.getDefaultInstance();
                    onChanged();
                } else {
                    this.doorStatusBuilder_.clear();
                }
                this.bitField0_ &= -1025;
                return this;
            }

            public DoorStatusModel.Builder getDoorStatusBuilder() {
                this.bitField0_ |= 1024;
                onChanged();
                return (DoorStatusModel.Builder) getDoorStatusFieldBuilder().getBuilder();
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public DoorStatusModelOrBuilder getDoorStatusOrBuilder() {
                if (this.doorStatusBuilder_ != null) {
                    return (DoorStatusModelOrBuilder) this.doorStatusBuilder_.getMessageOrBuilder();
                }
                return this.doorStatus_;
            }

            private SingleFieldBuilder<DoorStatusModel, DoorStatusModel.Builder, DoorStatusModelOrBuilder> getDoorStatusFieldBuilder() {
                if (this.doorStatusBuilder_ == null) {
                    this.doorStatusBuilder_ = new SingleFieldBuilder<>(getDoorStatus(), getParentForChildren(), isClean());
                    this.doorStatus_ = null;
                }
                return this.doorStatusBuilder_;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public boolean hasLampStatusChanged() {
                return (this.bitField0_ & 2048) == 2048;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public LampModel getLampStatusChanged() {
                if (this.lampStatusChangedBuilder_ == null) {
                    return this.lampStatusChanged_;
                }
                return (LampModel) this.lampStatusChangedBuilder_.getMessage();
            }

            public Builder setLampStatusChanged(LampModel lampModel) {
                if (this.lampStatusChangedBuilder_ != null) {
                    this.lampStatusChangedBuilder_.setMessage(lampModel);
                } else {
                    if (lampModel == null) {
                        throw new NullPointerException();
                    }
                    this.lampStatusChanged_ = lampModel;
                    onChanged();
                }
                this.bitField0_ |= 2048;
                return this;
            }

            public Builder setLampStatusChanged(LampModel.Builder builder) {
                if (this.lampStatusChangedBuilder_ == null) {
                    this.lampStatusChanged_ = builder.m120build();
                    onChanged();
                } else {
                    this.lampStatusChangedBuilder_.setMessage(builder.m120build());
                }
                this.bitField0_ |= 2048;
                return this;
            }

            public Builder mergeLampStatusChanged(LampModel lampModel) {
                if (this.lampStatusChangedBuilder_ == null) {
                    if ((this.bitField0_ & 2048) == 2048 && this.lampStatusChanged_ != LampModel.getDefaultInstance()) {
                        this.lampStatusChanged_ = LampModel.newBuilder(this.lampStatusChanged_).mergeFrom(lampModel).m122buildPartial();
                    } else {
                        this.lampStatusChanged_ = lampModel;
                    }
                    onChanged();
                } else {
                    this.lampStatusChangedBuilder_.mergeFrom(lampModel);
                }
                this.bitField0_ |= 2048;
                return this;
            }

            public Builder clearLampStatusChanged() {
                if (this.lampStatusChangedBuilder_ == null) {
                    this.lampStatusChanged_ = LampModel.getDefaultInstance();
                    onChanged();
                } else {
                    this.lampStatusChangedBuilder_.clear();
                }
                this.bitField0_ &= -2049;
                return this;
            }

            public LampModel.Builder getLampStatusChangedBuilder() {
                this.bitField0_ |= 2048;
                onChanged();
                return (LampModel.Builder) getLampStatusChangedFieldBuilder().getBuilder();
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public LampModelOrBuilder getLampStatusChangedOrBuilder() {
                if (this.lampStatusChangedBuilder_ != null) {
                    return (LampModelOrBuilder) this.lampStatusChangedBuilder_.getMessageOrBuilder();
                }
                return this.lampStatusChanged_;
            }

            private SingleFieldBuilder<LampModel, LampModel.Builder, LampModelOrBuilder> getLampStatusChangedFieldBuilder() {
                if (this.lampStatusChangedBuilder_ == null) {
                    this.lampStatusChangedBuilder_ = new SingleFieldBuilder<>(getLampStatusChanged(), getParentForChildren(), isClean());
                    this.lampStatusChanged_ = null;
                }
                return this.lampStatusChangedBuilder_;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public boolean hasOutsideTemperature() {
                return (this.bitField0_ & 4096) == 4096;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public ByteString getOutsideTemperature() {
                return this.outsideTemperature_;
            }

            public Builder setOutsideTemperature(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 4096;
                this.outsideTemperature_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearOutsideTemperature() {
                this.bitField0_ &= -4097;
                this.outsideTemperature_ = WeCarCarInfo.getDefaultInstance().getOutsideTemperature();
                onChanged();
                return this;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public boolean hasAirCondition() {
                return (this.bitField0_ & 8192) == 8192;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public AirConditionModel getAirCondition() {
                if (this.airConditionBuilder_ == null) {
                    return this.airCondition_;
                }
                return (AirConditionModel) this.airConditionBuilder_.getMessage();
            }

            public Builder setAirCondition(AirConditionModel airConditionModel) {
                if (this.airConditionBuilder_ != null) {
                    this.airConditionBuilder_.setMessage(airConditionModel);
                } else {
                    if (airConditionModel == null) {
                        throw new NullPointerException();
                    }
                    this.airCondition_ = airConditionModel;
                    onChanged();
                }
                this.bitField0_ |= 8192;
                return this;
            }

            public Builder setAirCondition(AirConditionModel.Builder builder) {
                if (this.airConditionBuilder_ == null) {
                    this.airCondition_ = builder.m25build();
                    onChanged();
                } else {
                    this.airConditionBuilder_.setMessage(builder.m25build());
                }
                this.bitField0_ |= 8192;
                return this;
            }

            public Builder mergeAirCondition(AirConditionModel airConditionModel) {
                if (this.airConditionBuilder_ == null) {
                    if ((this.bitField0_ & 8192) == 8192 && this.airCondition_ != AirConditionModel.getDefaultInstance()) {
                        this.airCondition_ = AirConditionModel.newBuilder(this.airCondition_).mergeFrom(airConditionModel).m27buildPartial();
                    } else {
                        this.airCondition_ = airConditionModel;
                    }
                    onChanged();
                } else {
                    this.airConditionBuilder_.mergeFrom(airConditionModel);
                }
                this.bitField0_ |= 8192;
                return this;
            }

            public Builder clearAirCondition() {
                if (this.airConditionBuilder_ == null) {
                    this.airCondition_ = AirConditionModel.getDefaultInstance();
                    onChanged();
                } else {
                    this.airConditionBuilder_.clear();
                }
                this.bitField0_ &= -8193;
                return this;
            }

            public AirConditionModel.Builder getAirConditionBuilder() {
                this.bitField0_ |= 8192;
                onChanged();
                return (AirConditionModel.Builder) getAirConditionFieldBuilder().getBuilder();
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public AirConditionModelOrBuilder getAirConditionOrBuilder() {
                if (this.airConditionBuilder_ != null) {
                    return (AirConditionModelOrBuilder) this.airConditionBuilder_.getMessageOrBuilder();
                }
                return this.airCondition_;
            }

            private SingleFieldBuilder<AirConditionModel, AirConditionModel.Builder, AirConditionModelOrBuilder> getAirConditionFieldBuilder() {
                if (this.airConditionBuilder_ == null) {
                    this.airConditionBuilder_ = new SingleFieldBuilder<>(getAirCondition(), getParentForChildren(), isClean());
                    this.airCondition_ = null;
                }
                return this.airConditionBuilder_;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public boolean hasBatteryVoltage() {
                return (this.bitField0_ & 16384) == 16384;
            }

            @Override // com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.WeCarCarInfoOrBuilder
            public ByteString getBatteryVoltage() {
                return this.batteryVoltage_;
            }

            public Builder setBatteryVoltage(ByteString byteString) {
                if (byteString == null) {
                    throw new NullPointerException();
                }
                this.bitField0_ |= 16384;
                this.batteryVoltage_ = byteString;
                onChanged();
                return this;
            }

            public Builder clearBatteryVoltage() {
                this.bitField0_ &= -16385;
                this.batteryVoltage_ = WeCarCarInfo.getDefaultInstance().getBatteryVoltage();
                onChanged();
                return this;
            }
        }
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\rcarinfo.proto\u0012\u0011com.wecar.carinfo\"¿\u0001\n\tFuelModel\u0012W\n\u0010FuelStateWarning\u0018\u0001 \u0001(\u000e2).com.wecar.carinfo.FuelStateWArnningModel:\u0012STATE_WARNING_NONE\u0012\u0013\n\u000bmRemainFuel\u0018\u0002 \u0001(\u0005\u0012$\n\u001cInstantaneousFuelConsumption\u0018\u0003 \u0001(\f\u0012\u001e\n\u0016AverageFuelConsumption\u0018\u0004 \u0001(\f\"½\u0005\n\u000fDoorStatusModel\u0012M\n\rFrontLeftDoor\u0018\u0001 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012N\n\u000eFrontRightDoor\u0018\u0002 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STA", "TE_NONE\u0012L\n\fRearLeftDoor\u0018\u0003 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012M\n\rRearRightDoor\u0018\u0004 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012H\n\bSkylight\u0018\u0005 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012K\n\u000bEngineCover\u0018\u0006 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012E\n\u0005Trunk\u0018\u0007 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012D\n\u0004Tank\u0018\b \u0001(\u000e", "2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012J\n\nWindShield\u0018\t \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\"ô\u0005\n\tLampModel\u0012H\n\bLeftLamp\u0018\u0001 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012I\n\tRightLamp\u0018\u0002 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012I\n\tWidthLamp\u0018\u0003 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012M\n\rEmergencyLamp\u0018\u0004 \u0001(\u000e2#.com.", "wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012H\n\bForkLamp\u0018\u0005 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012G\n\u0007FarLamp\u0018\u0006 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012H\n\bNearLamp\u0018\u0007 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012G\n\u0007DayLamp\u0018\b \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012H\n\bStopLamp\u0018\t \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011", "COMMON_STATE_NONE\u0012H\n\bBackLamp\u0018\n \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\"\u0099\u0005\n\u0011AirConditionModel\u0012\u0010\n\bLeftTemp\u0018\u0001 \u0001(\f\u0012\u0011\n\tRightTemp\u0018\u0002 \u0001(\f\u0012K\n\u0013TemperatureUnitType\u0018\u0003 \u0001(\u000e2\u001b.com.wecar.carinfo.TempUnit:\u0011TEMP_UNIT_CELSIUS\u0012S\n\rWindDirection\u0018\u0004 \u0001(\u000e2'.com.wecar.carinfo.ACWindDirectionModel:\u0013WIND_DIRECTION_NONE\u0012\u0014\n\tWindLevel\u0018\u0005 \u0001(\u0005:\u00010\u00125\n\u0002AC\u0018\u0006 \u0001(\u000e2\u001a.com.wecar.carinfo.ACState:\rAC_STATE_NONE\u0012D\n\u0004Auto\u0018\u0007 ", "\u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012E\n\nCycleModel\u0018\b \u0001(\u000e2\u001f.com.wecar.carinfo.ACCycleModel:\u0010CYCLE_MODEL_NONE\u0012K\n\bDualZone\u0018\t \u0001(\u000e2\".com.wecar.carinfo.DualZoneSupport:\u0015DUAL_ZONE_NOT_SUPPORT\u0012J\n\nFrontDefog\u0018\n \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012J\n\nmBackDefog\u0018\u000b \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\"Õ\u0005\n\fWeCarCarInfo\u0012H\n\nBrakeState\u0018\u0001 \u0001(\u000e2\".c", "om.wecar.carinfo.BrakeStateModel:\u0010BRAKE_STATE_NONE\u0012H\n\bSeatBelt\u0018\u0002 \u0001(\u000e2 .com.wecar.carinfo.SeatBeltModel:\u0014SEAT_BELT_STATE_NONE\u0012;\n\u0004Gear\u0018\u0003 \u0001(\u000e2\u001c.com.wecar.carinfo.GearModel:\u000fGEAR_STATE_NONE\u0012C\n\u0003Acc\u0018\u0004 \u0001(\u000e2#.com.wecar.carinfo.CommonStateModel:\u0011COMMON_STATE_NONE\u0012\u0014\n\fTotalMileage\u0018\u0005 \u0001(\u0005\u0012\u0018\n\u0010EnduranceMileage\u0018\u0006 \u0001(\u0005\u0012*\n\u0004Fuel\u0018\u0007 \u0001(\u000b2\u001c.com.wecar.carinfo.FuelModel\u0012K\n\tLeanWater\u0018\b \u0001(\u000e2!.com.wecar.carinfo.LeanWaterModel", ":\u0015LEAN_WATER_STATE_NONE\u0012\u0010\n\bCarSpeed\u0018\t \u0001(\f\u0012\u0013\n\u000bEngineSpeed\u0018\n \u0001(\f\u00126\n\nDoorStatus\u0018\u000b \u0001(\u000b2\".com.wecar.carinfo.DoorStatusModel\u00127\n\u0011LampStatusChanged\u0018\f \u0001(\u000b2\u001c.com.wecar.carinfo.LampModel\u0012\u001a\n\u0012OutsideTemperature\u0018\r \u0001(\f\u0012:\n\fAirCondition\u0018\u000e \u0001(\u000b2$.com.wecar.carinfo.AirConditionModel\u0012\u0016\n\u000eBatteryVoltage\u0018\u000f \u0001(\f*X\n\u0010CommonStateModel\u0012\u0015\n\u0011COMMON_STATE_NONE\u0010\u0000\u0012\u0016\n\u0012COMMON_STATE_CLOSE\u0010\u0001\u0012\u0015\n\u0011COMMON_STATE_OPEN\u0010\u0002*Q\n\u000fBrakeStateModel\u0012\u0014\n\u0010", "BRAKE_STATE_NONE\u0010\u0000\u0012\u0012\n\u000eBRAKE_STATE_UP\u0010\u0001\u0012\u0014\n\u0010BRAKE_STATE_DOWN\u0010\u0002*Z\n\rSeatBeltModel\u0012\u0018\n\u0014SEAT_BELT_STATE_NONE\u0010\u0000\u0012\u0017\n\u0013SEAT_BELT_STATE_OFF\u0010\u0001\u0012\u0016\n\u0012SEAT_BELT_STATE_ON\u0010\u0002*ì\u0001\n\tGearModel\u0012\u0013\n\u000fGEAR_STATE_NONE\u0010\u0000\u0012\u0010\n\fGEAR_STATE_P\u0010\u0001\u0012\u0010\n\fGEAR_STATE_R\u0010\u0002\u0012\u0010\n\fGEAR_STATE_N\u0010\u0003\u0012\u0010\n\fGEAR_STATE_D\u0010\u0004\u0012\u0010\n\fGEAR_STATE_S\u0010\u0005\u0012\u0011\n\rGEAR_STATE_D1\u0010\u0006\u0012\u0011\n\rGEAR_STATE_D2\u0010\u0007\u0012\u0011\n\rGEAR_STATE_D3\u0010\b\u0012\u0011\n\rGEAR_STATE_D4\u0010\t\u0012\u0011\n\rGEAR_STATE_D5\u0010\n\u0012\u0011\n\rGEAR_STATE_D6\u0010\u000b*C\n\bAccMo", "del\u0012\u0012\n\u000eACC_STATE_NONE\u0010\u0000\u0012\u0011\n\rACC_STATE_OFF\u0010\u0001\u0012\u0010\n\fACC_STATE_ON\u0010\u0002*a\n\u0016FuelStateWArnningModel\u0012\u0016\n\u0012STATE_WARNING_NONE\u0010\u0000\u0012\u0018\n\u0014STATE_WARNING_NORMAL\u0010\u0001\u0012\u0015\n\u0011STATE_WARNING_LOW\u0010\u0002*b\n\u000eLeanWaterModel\u0012\u0019\n\u0015LEAN_WATER_STATE_NONE\u0010\u0000\u0012\u0018\n\u0014LEAN_WATER_STATE_LOW\u0010\u0001\u0012\u001b\n\u0017LEAN_WATER_STATE_NORMAL\u0010\u0002*;\n\bTempUnit\u0012\u0015\n\u0011TEMP_UNIT_CELSIUS\u0010\u0000\u0012\u0018\n\u0014TEMP_UNIT_FAHRENHEIT\u0010\u0001*D\n\u0007ACState\u0012\u0011\n\rAC_STATE_NONE\u0010\u0000\u0012\u0011\n\rAC_STATE_WIND\u0010\u0001\u0012\u0013\n\u000fAC_STATE_FREEZE\u0010\u0002*\u008a\u0002\n\u0014ACWin", "dDirectionModel\u0012\u0017\n\u0013WIND_DIRECTION_NONE\u0010\u0000\u0012\u0017\n\u0013WIND_DIRECTION_FACE\u0010\u0001\u0012\u001f\n\u001bWIND_DIRECTION_FACE_AND_LEG\u0010\u0002\u0012\u0016\n\u0012WIND_DIRECTION_LEG\u0010\u0003\u0012&\n\"WIND_DIRECTION_FRONT_GLASS_AND_LEG\u0010\u0004\u0012\u001e\n\u001aWIND_DIRECTION_FRONT_GLASS\u0010\u0005\u0012'\n#WIND_DIRECTION_FRONT_GLASS_AND_FACE\u0010\u0006\u0012\u0016\n\u0012WIND_DIRECTION_ALL\u0010\u0007*r\n\fACCycleModel\u0012\u0014\n\u0010CYCLE_MODEL_NONE\u0010\u0000\u0012\u0016\n\u0012CYCLE_MODEL_INSIDE\u0010\u0001\u0012\u0017\n\u0013CYCLE_MODEL_OUTSIDE\u0010\u0002\u0012\u001b\n\u0017CYCLE_MODEL_INSIDE_AUTO\u0010\u0003*C\n\u000fDualZoneSupport\u0012\u0019\n\u0015DU", "AL_ZONE_NOT_SUPPORT\u0010\u0000\u0012\u0015\n\u0011DUAL_ZONE_SUPPORT\u0010\u0001B1\n\u001fcom.tencent.wecarbase.carinfo.protomsgB\u000eCarInfoMessage"}, new Descriptors.FileDescriptor[0], new Descriptors.FileDescriptor.InternalDescriptorAssigner() { // from class: com.tencent.wecarbase.carinfo.protomsg.CarInfoMessage.1
            public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor fileDescriptor) {
                Descriptors.FileDescriptor unused = CarInfoMessage.descriptor = fileDescriptor;
                return null;
            }
        });
        internal_static_com_wecar_carinfo_FuelModel_descriptor = (Descriptors.Descriptor) getDescriptor().getMessageTypes().get(0);
        internal_static_com_wecar_carinfo_FuelModel_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_wecar_carinfo_FuelModel_descriptor, new String[]{"FuelStateWarning", "MRemainFuel", "InstantaneousFuelConsumption", "AverageFuelConsumption"});
        internal_static_com_wecar_carinfo_DoorStatusModel_descriptor = (Descriptors.Descriptor) getDescriptor().getMessageTypes().get(1);
        internal_static_com_wecar_carinfo_DoorStatusModel_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_wecar_carinfo_DoorStatusModel_descriptor, new String[]{"FrontLeftDoor", "FrontRightDoor", "RearLeftDoor", "RearRightDoor", "Skylight", "EngineCover", "Trunk", "Tank", "WindShield"});
        internal_static_com_wecar_carinfo_LampModel_descriptor = (Descriptors.Descriptor) getDescriptor().getMessageTypes().get(2);
        internal_static_com_wecar_carinfo_LampModel_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_wecar_carinfo_LampModel_descriptor, new String[]{"LeftLamp", "RightLamp", "WidthLamp", "EmergencyLamp", "ForkLamp", "FarLamp", "NearLamp", "DayLamp", "StopLamp", "BackLamp"});
        internal_static_com_wecar_carinfo_AirConditionModel_descriptor = (Descriptors.Descriptor) getDescriptor().getMessageTypes().get(3);
        internal_static_com_wecar_carinfo_AirConditionModel_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_wecar_carinfo_AirConditionModel_descriptor, new String[]{"LeftTemp", "RightTemp", "TemperatureUnitType", "WindDirection", "WindLevel", "AC", "Auto", "CycleModel", "DualZone", "FrontDefog", "MBackDefog"});
        internal_static_com_wecar_carinfo_WeCarCarInfo_descriptor = (Descriptors.Descriptor) getDescriptor().getMessageTypes().get(4);
        internal_static_com_wecar_carinfo_WeCarCarInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_wecar_carinfo_WeCarCarInfo_descriptor, new String[]{"BrakeState", "SeatBelt", "Gear", "Acc", "TotalMileage", "EnduranceMileage", "Fuel", "LeanWater", "CarSpeed", "EngineSpeed", "DoorStatus", "LampStatusChanged", "OutsideTemperature", "AirCondition", "BatteryVoltage"});
    }
}
