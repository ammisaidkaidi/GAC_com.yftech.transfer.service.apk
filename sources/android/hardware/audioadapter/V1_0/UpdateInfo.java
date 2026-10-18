package android.hardware.audioadapter.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public final class UpdateInfo {
    public boolean isCheck;
    public int moduleType;
    public int progess;
    public int state;
    public String updateFilePath = new String();
    public String md5FilePath = new String();
    public final ArrayList<String> reserve = new ArrayList<>();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != UpdateInfo.class) {
            return false;
        }
        UpdateInfo updateInfo = (UpdateInfo) obj;
        return this.moduleType == updateInfo.moduleType && HidlSupport.deepEquals(this.updateFilePath, updateInfo.updateFilePath) && HidlSupport.deepEquals(this.md5FilePath, updateInfo.md5FilePath) && this.isCheck == updateInfo.isCheck && this.state == updateInfo.state && this.progess == updateInfo.progess && HidlSupport.deepEquals(this.reserve, updateInfo.reserve);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.moduleType))), Integer.valueOf(HidlSupport.deepHashCode(this.updateFilePath)), Integer.valueOf(HidlSupport.deepHashCode(this.md5FilePath)), Integer.valueOf(HidlSupport.deepHashCode(Boolean.valueOf(this.isCheck))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.state))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.progess))), Integer.valueOf(HidlSupport.deepHashCode(this.reserve)));
    }

    public final String toString() {
        return "{.moduleType = " + this.moduleType + ", .updateFilePath = " + this.updateFilePath + ", .md5FilePath = " + this.md5FilePath + ", .isCheck = " + this.isCheck + ", .state = " + this.state + ", .progess = " + this.progess + ", .reserve = " + this.reserve + "}";
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(72L), 0L);
    }

    public static final ArrayList<UpdateInfo> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<UpdateInfo> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 72, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            UpdateInfo updateInfo = new UpdateInfo();
            updateInfo.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 72);
            arrayList.add(updateInfo);
        }
        return arrayList;
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.moduleType = hwBlob.getInt32(j + 0);
        long j2 = j + 8;
        this.updateFilePath = hwBlob.getString(j2);
        hwParcel.readEmbeddedBuffer(this.updateFilePath.getBytes().length + 1, hwBlob.handle(), j2 + 0, false);
        long j3 = j + 24;
        this.md5FilePath = hwBlob.getString(j3);
        hwParcel.readEmbeddedBuffer(this.md5FilePath.getBytes().length + 1, hwBlob.handle(), j3 + 0, false);
        this.isCheck = hwBlob.getBool(j + 40);
        this.state = hwBlob.getInt32(j + 44);
        this.progess = hwBlob.getInt32(j + 48);
        long j4 = j + 56;
        int int32 = hwBlob.getInt32(8 + j4);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 16, hwBlob.handle(), j4 + 0, true);
        this.reserve.clear();
        for (int i = 0; i < int32; i++) {
            new String();
            String string = readEmbeddedBuffer.getString(i * 16);
            hwParcel.readEmbeddedBuffer(string.getBytes().length + 1, readEmbeddedBuffer.handle(), r4 + 0, false);
            this.reserve.add(string);
        }
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(72);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<UpdateInfo> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 72);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 72);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(j + 0, this.moduleType);
        hwBlob.putString(j + 8, this.updateFilePath);
        hwBlob.putString(24 + j, this.md5FilePath);
        hwBlob.putBool(40 + j, this.isCheck);
        hwBlob.putInt32(44 + j, this.state);
        hwBlob.putInt32(48 + j, this.progess);
        int size = this.reserve.size();
        long j2 = j + 56;
        hwBlob.putInt32(8 + j2, size);
        hwBlob.putBool(12 + j2, false);
        HwBlob hwBlob2 = new HwBlob(size * 16);
        for (int i = 0; i < size; i++) {
            hwBlob2.putString(i * 16, this.reserve.get(i));
        }
        hwBlob.putBlob(j2 + 0, hwBlob2);
    }
}
