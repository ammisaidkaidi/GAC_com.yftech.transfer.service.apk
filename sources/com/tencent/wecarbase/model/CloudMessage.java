package com.tencent.wecarbase.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.wecarbase.utils.ByteUtil;
import com.tencent.wecarbase.utils.CRC8;
import com.tencent.wecarbase.utils.LogUtils;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public class CloudMessage implements IMessage, Parcelable {
    public static final Parcelable.Creator<CloudMessage> CREATOR = new Parcelable.Creator<CloudMessage>() { // from class: com.tencent.wecarbase.model.CloudMessage.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CloudMessage createFromParcel(Parcel parcel) {
            return new CloudMessage(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CloudMessage[] newArray(int i) {
            return new CloudMessage[i];
        }
    };
    private static final int END_LENGTH = 9;
    private static final int HEADER_LENGTH = 5;
    private static final String TAG = "CloudMessage";
    public static final int TYPE_ACK = 255;
    public static final int TYPE_AUTH = 1;
    public static final int TYPE_CARINFO = 4;
    public static final int TYPE_CONFIG = 253;
    public static final int TYPE_HEARTBEAT = 0;
    public static final int TYPE_NOTIFY = 254;
    public static final int TYPE_NOTIFY_ACK = 2;
    public static final int TYPE_RECORD = 3;
    private static final int VERSION = 2;
    private byte checksum;
    private int cloudVersion;
    private int crypt;
    private byte[] data;
    private int length;
    private long timestamp;
    private int type;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.tencent.wecarbase.model.IMessage
    public void parse(byte[] bArr, int i, int i2) throws CloudException {
        if (!checkValid(bArr, i2)) {
            LogUtils.e(TAG, "message not valid");
            return;
        }
        this.cloudVersion = ByteUtil.byteToInt(bArr[0]);
        this.crypt = ByteUtil.byteToInt(bArr[1]);
        this.type = ByteUtil.byteToInt(bArr[4]);
        this.length = ((((bArr[2] & 255) << 8) | (bArr[3] & 255)) - 5) - 9;
        this.data = new byte[this.length];
        System.arraycopy(bArr, 5, this.data, 0, this.length);
        this.timestamp = ByteUtil.bytesToLong(bArr, this.length + 5);
        byte b = bArr[this.length + 8 + 5];
    }

    public static CloudMessage createHeartBeatMessage() {
        CloudMessage cloudMessage = new CloudMessage();
        cloudMessage.type = 0;
        cloudMessage.timestamp = System.currentTimeMillis();
        return cloudMessage;
    }

    public static CloudMessage createMessage(int i, byte[] bArr, long j) {
        CloudMessage cloudMessage = new CloudMessage();
        cloudMessage.type = i;
        cloudMessage.data = bArr;
        cloudMessage.length = bArr.length;
        cloudMessage.timestamp = j;
        return cloudMessage;
    }

    private static boolean checkValid(byte[] bArr, int i) throws CloudException {
        int i2 = (bArr[3] & 255) | ((bArr[2] & 255) << 8);
        if (i == i2) {
            return true;
        }
        LogUtils.d(TAG, "length not match, length: " + i + ", data length: " + i2);
        return false;
    }

    @Override // com.tencent.wecarbase.model.IMessage
    public byte[] toBytes() {
        int length = (this.data == null ? 0 : this.data.length) + 14;
        byte[] bArr = new byte[length];
        bArr[0] = (byte) this.cloudVersion;
        bArr[1] = (byte) this.crypt;
        bArr[2] = (byte) ((length >> 8) & 255);
        bArr[3] = (byte) (length & 255);
        int i = 5;
        bArr[4] = (byte) this.type;
        if (this.data != null) {
            System.arraycopy(this.data, 0, bArr, 5, this.data.length);
            i = 5 + this.data.length;
        }
        System.arraycopy(ByteUtil.longToBytes(this.timestamp), 0, bArr, i, 8);
        int i2 = i + 8;
        this.checksum = CRC8.calc(bArr, 0, i2 + 1);
        bArr[i2] = this.checksum;
        return bArr;
    }

    public String toString() {
        return "CloudMessage{version=" + this.cloudVersion + ", crypt=" + this.crypt + ", length=" + this.length + ", type=" + this.type + ", data=" + Arrays.toString(this.data) + ", timestamp=" + this.timestamp + ", checksum=" + ((int) this.checksum) + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.cloudVersion);
        parcel.writeInt(this.crypt);
        parcel.writeInt(this.length);
        parcel.writeInt(this.type);
        parcel.writeByteArray(this.data);
        parcel.writeLong(this.timestamp);
        parcel.writeByte(this.checksum);
    }

    public CloudMessage() {
        this.cloudVersion = 2;
        this.crypt = 0;
    }

    protected CloudMessage(Parcel parcel) {
        this.cloudVersion = 2;
        this.crypt = 0;
        this.cloudVersion = parcel.readInt();
        this.crypt = parcel.readInt();
        this.length = parcel.readInt();
        this.type = parcel.readInt();
        this.data = parcel.createByteArray();
        this.timestamp = parcel.readLong();
        this.checksum = parcel.readByte();
    }

    public int getCloudVersion() {
        return this.cloudVersion;
    }

    public void setCloudVersion(int i) {
        this.cloudVersion = i;
    }

    public int getCrypt() {
        return this.crypt;
    }

    public void setCrypt(int i) {
        this.crypt = i;
    }

    public int getLength() {
        return this.length;
    }

    public void setLength(int i) {
        this.length = i;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public byte[] getData() {
        return this.data;
    }

    public void setData(byte[] bArr) {
        this.data = bArr;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public void setTimestamp(long j) {
        this.timestamp = j;
    }

    public byte getChecksum() {
        return this.checksum;
    }

    public void setChecksum(byte b) {
        this.checksum = b;
    }
}
