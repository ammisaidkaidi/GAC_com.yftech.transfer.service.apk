package android.hardware.audioadapter.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public final class CrashInfo {
    public int pid;
    public int signal;
    public String type = new String();
    public String processName = new String();
    public String detailinfo = new String();
    public final ArrayList<String> reserve = new ArrayList<>();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != CrashInfo.class) {
            return false;
        }
        CrashInfo crashInfo = (CrashInfo) obj;
        return HidlSupport.deepEquals(this.type, crashInfo.type) && this.pid == crashInfo.pid && this.signal == crashInfo.signal && HidlSupport.deepEquals(this.processName, crashInfo.processName) && HidlSupport.deepEquals(this.detailinfo, crashInfo.detailinfo) && HidlSupport.deepEquals(this.reserve, crashInfo.reserve);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.type)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.pid))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.signal))), Integer.valueOf(HidlSupport.deepHashCode(this.processName)), Integer.valueOf(HidlSupport.deepHashCode(this.detailinfo)), Integer.valueOf(HidlSupport.deepHashCode(this.reserve)));
    }

    public final String toString() {
        return "{.type = " + this.type + ", .pid = " + this.pid + ", .signal = " + this.signal + ", .processName = " + this.processName + ", .detailinfo = " + this.detailinfo + ", .reserve = " + this.reserve + "}";
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(72L), 0L);
    }

    public static final ArrayList<CrashInfo> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<CrashInfo> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 72, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            CrashInfo crashInfo = new CrashInfo();
            crashInfo.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 72);
            arrayList.add(crashInfo);
        }
        return arrayList;
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        long j2 = j + 0;
        this.type = hwBlob.getString(j2);
        hwParcel.readEmbeddedBuffer(this.type.getBytes().length + 1, hwBlob.handle(), j2 + 0, false);
        this.pid = hwBlob.getInt32(j + 16);
        this.signal = hwBlob.getInt32(j + 20);
        long j3 = j + 24;
        this.processName = hwBlob.getString(j3);
        hwParcel.readEmbeddedBuffer(this.processName.getBytes().length + 1, hwBlob.handle(), j3 + 0, false);
        long j4 = j + 40;
        this.detailinfo = hwBlob.getString(j4);
        hwParcel.readEmbeddedBuffer(this.detailinfo.getBytes().length + 1, hwBlob.handle(), j4 + 0, false);
        long j5 = j + 56;
        int int32 = hwBlob.getInt32(8 + j5);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 16, hwBlob.handle(), j5 + 0, true);
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

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<CrashInfo> arrayList) {
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
        hwBlob.putString(j + 0, this.type);
        hwBlob.putInt32(16 + j, this.pid);
        hwBlob.putInt32(20 + j, this.signal);
        hwBlob.putString(24 + j, this.processName);
        hwBlob.putString(40 + j, this.detailinfo);
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
