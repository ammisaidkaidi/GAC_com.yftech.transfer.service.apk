package com.baidu.navisdk.hudsdk.socket;

import android.util.Log;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;

/* loaded from: /home/user/work/dex/classes.dex */
public class BNRemoteClientSocket {
    private static final int BUFFER_SIZE = 4096;
    private static final int SOCKET_CONNECT_TIMEOUT = 30000;
    private static final int SOCKET_READ_TIMEOUT = 90000;
    private Socket mSocket = null;
    private String mServerIP = "";
    private InetSocketAddress mRemoteAddr = null;
    private InputStream mInputStream = null;
    private OutputStream mOutputStream = null;
    private byte[] mData = null;
    private int mPortPoolIndex = 0;

    public void resetPortPoolIndex() {
        this.mPortPoolIndex = 0;
    }

    public void setServerIPAddr(String str) {
        this.mServerIP = str;
    }

    public String getServerIPAddr() {
        return this.mServerIP;
    }

    public int open(int i) {
        int[] iArr = BNRemoteConstants.NAVI_PORTS_POOL;
        int[] iArr2 = BNRemoteConstants.MAP_PORTS_POOL;
        int[] iArr3 = new int[iArr2.length + iArr.length];
        int i2 = 0;
        for (int i3 : iArr2) {
            iArr3[i2] = i3;
            i2++;
        }
        for (int i4 : iArr) {
            iArr3[i2] = i4;
            i2++;
        }
        Log.e(BNRemoteConstants.MODULE_TAG, "BNRemoteClientSocket.............open()......portPoolType = " + i);
        String str = (this.mServerIP == null || "".equalsIgnoreCase(this.mServerIP)) ? BNRemoteConstants.IPADDR : this.mServerIP;
        int i5 = this.mPortPoolIndex;
        while (true) {
            if (i5 >= iArr3.length) {
                break;
            }
            try {
                this.mSocket = new Socket();
                this.mRemoteAddr = new InetSocketAddress(str, iArr3[i5]);
                this.mSocket.setSoTimeout(90000);
                this.mSocket.setTcpNoDelay(true);
                this.mSocket.connect(this.mRemoteAddr, 30000);
                this.mInputStream = this.mSocket.getInputStream();
                this.mOutputStream = this.mSocket.getOutputStream();
                this.mData = new byte[4096];
                break;
            } catch (IOException e) {
                e.printStackTrace();
                close();
                Log.e(BNRemoteConstants.MODULE_TAG, "BNRemoteClientSocket.............open()...IOException e = " + e.toString());
                if (this.mSocket != null) {
                    this.mPortPoolIndex = i5;
                    break;
                }
                i5++;
            }
        }
        if (this.mSocket != null) {
            Log.e(BNRemoteConstants.MODULE_TAG, "BNRemoteClientSocket.............open() SUCCESS......mSocket = " + this.mSocket);
            return 0;
        }
        Log.e(BNRemoteConstants.MODULE_TAG, "BNRemoteClientSocket.............open() FAILED");
        return 1;
    }

    public void close() {
        this.mData = null;
        try {
            if (this.mInputStream != null) {
                this.mInputStream.close();
            }
            if (this.mOutputStream != null) {
                this.mOutputStream.close();
            }
            if (this.mSocket != null) {
                this.mSocket.close();
            }
        } catch (IOException unused) {
        } catch (Throwable th) {
            this.mInputStream = null;
            this.mOutputStream = null;
            this.mSocket = null;
            throw th;
        }
        this.mInputStream = null;
        this.mOutputStream = null;
        this.mSocket = null;
    }

    public boolean isConnected() {
        if (this.mSocket != null) {
            return this.mSocket.isConnected();
        }
        return false;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException, SocketTimeoutException {
        if (this.mInputStream == null) {
            throw new IOException();
        }
        int i3 = i2 - i;
        if (i3 > 4096) {
            i3 = 4096;
        }
        int read = this.mInputStream.read(this.mData, 0, i3);
        if (read > 0) {
            for (int i4 = 0; i4 < i3; i4++) {
                bArr[i4 + i] = this.mData[i4];
            }
        }
        return read;
    }

    public int read(ByteBuffer byteBuffer) throws IOException, SocketTimeoutException {
        if (this.mInputStream == null) {
            throw new IOException();
        }
        int capacity = byteBuffer.capacity() - byteBuffer.position();
        if (capacity > 4096) {
            capacity = 4096;
        }
        int read = this.mInputStream.read(this.mData, 0, capacity);
        if (read > 0) {
            byteBuffer.put(this.mData, 0, read);
        }
        return read;
    }

    public byte[] read() throws IOException, SocketTimeoutException {
        if (this.mInputStream == null) {
            throw new IOException();
        }
        int read = this.mInputStream.read(this.mData, 0, 4096);
        if (read == 4096) {
            return this.mData;
        }
        if (read <= 0) {
            return null;
        }
        byte[] bArr = new byte[read];
        for (int i = 0; i < read; i++) {
            bArr[i] = this.mData[i];
        }
        return bArr;
    }

    public int write(ByteBuffer byteBuffer) throws IOException, SocketTimeoutException {
        if (this.mOutputStream == null) {
            throw new IOException();
        }
        byteBuffer.flip();
        int limit = byteBuffer.limit();
        if (limit > 0) {
            byte[] bArr = new byte[limit];
            byteBuffer.get(bArr);
            this.mOutputStream.write(bArr, 0, limit);
        }
        return limit;
    }
}
