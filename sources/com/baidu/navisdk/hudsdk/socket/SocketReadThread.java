package com.baidu.navisdk.hudsdk.socket;

import android.os.Handler;
import android.os.Message;
import android.support.v4.view.ViewCompat;
import com.baidu.navisdk.hudsdk.util.LogUtil;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.SocketTimeoutException;

/* loaded from: /home/user/work/dex/classes.dex */
public class SocketReadThread extends Thread {
    private Handler mMasterHandler;
    private BNRemoteClientSocket mSocket;
    private boolean mStopped = false;
    private int mRecvBufMaxLen = 3145734;
    private int mMsgTotalLen = 0;
    private int mRecvDataLen = 0;
    private byte[] mRecvDataBuf = new byte[this.mRecvBufMaxLen];
    private boolean mIsMsgDataRecvComplete = true;

    public SocketReadThread(BNRemoteClientSocket bNRemoteClientSocket, Handler handler) {
        this.mSocket = bNRemoteClientSocket;
        this.mMasterHandler = handler;
    }

    private void sendMessage(int i, int i2, Object obj) {
        if (this.mMasterHandler != null) {
            Message obtainMessage = this.mMasterHandler.obtainMessage();
            obtainMessage.what = i;
            obtainMessage.arg1 = i2;
            obtainMessage.obj = obj;
            this.mMasterHandler.sendMessage(obtainMessage);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (!this.mStopped) {
            try {
                int read = this.mSocket.read(this.mRecvDataBuf, this.mRecvDataLen, this.mRecvBufMaxLen);
                if (read > 0) {
                    this.mRecvDataLen += read;
                    consumeData();
                } else {
                    sendMessage(SocketConstant.SOCKET_MSG_READ, 18, null);
                    this.mStopped = true;
                }
            } catch (SocketChannelException e) {
                sendMessage(SocketConstant.SOCKET_MSG_READ, e.getExceptionCode(), e.getExceptionReason());
            } catch (UnsupportedEncodingException e2) {
                sendMessage(SocketConstant.SOCKET_MSG_READ, 1024, e2.getMessage());
            } catch (SocketTimeoutException e3) {
                sendMessage(SocketConstant.SOCKET_MSG_READ, 17, e3);
            } catch (IOException e4) {
                if (!this.mStopped) {
                    sendMessage(SocketConstant.SOCKET_MSG_READ, 19, e4);
                    this.mStopped = true;
                }
            }
        }
    }

    public void quit() {
        this.mStopped = true;
        this.mMasterHandler = null;
    }

    private void consumeData() throws SocketChannelException {
        while (this.mRecvDataBuf != null && this.mRecvDataLen > 0) {
            if (this.mIsMsgDataRecvComplete) {
                if (this.mRecvDataLen >= 4) {
                    this.mMsgTotalLen = ((this.mRecvDataBuf[0] << 24) & ViewCompat.MEASURED_STATE_MASK) | (16711680 & (this.mRecvDataBuf[1] << 16)) | (65280 & (this.mRecvDataBuf[2] << 8)) | (this.mRecvDataBuf[3] & 255);
                    LogUtil.e("enlarge", "mMsgTotalLen = " + this.mMsgTotalLen + ", mRecvDataLen = " + this.mRecvDataLen);
                    int i = this.mMsgTotalLen + 4 + 2;
                    if (this.mRecvDataLen >= i) {
                        LogUtil.e("enlarge", "Excellent");
                        int i2 = this.mMsgTotalLen + 4;
                        if (this.mRecvDataBuf[i2] == 13 && this.mRecvDataBuf[i2 + 1] == 10) {
                            byte[] bArr = new byte[this.mMsgTotalLen];
                            for (int i3 = 0; i3 < this.mMsgTotalLen; i3++) {
                                bArr[i3] = this.mRecvDataBuf[i3 + 4];
                            }
                            sendMessage(SocketConstant.SOCKET_MSG_READ, 16, bArr);
                            if (this.mRecvDataLen > i) {
                                int i4 = this.mRecvDataLen - i;
                                if (i4 > 0) {
                                    for (int i5 = 0; i5 < i4; i5++) {
                                        this.mRecvDataBuf[i5] = this.mRecvDataBuf[i5 + i];
                                    }
                                }
                                this.mRecvDataLen = i4;
                            } else {
                                this.mRecvDataLen = 0;
                                return;
                            }
                        } else {
                            LogUtil.e("enlarge", "protocol error");
                            LogUtil.f("enlarge", "protocol error");
                            throw new SocketChannelException(1024, "socket protocol error!!!");
                        }
                    } else {
                        if (this.mRecvDataLen == this.mRecvBufMaxLen) {
                            LogUtil.e("enlarge", "msg is too long");
                            LogUtil.f("enlarge", "msg is too long");
                            throw new SocketChannelException(1025, "msg is too long");
                        }
                        this.mIsMsgDataRecvComplete = false;
                        return;
                    }
                } else {
                    this.mIsMsgDataRecvComplete = false;
                    return;
                }
            } else {
                if (this.mRecvDataLen < 4) {
                    return;
                }
                this.mMsgTotalLen = ((this.mRecvDataBuf[0] << 24) & ViewCompat.MEASURED_STATE_MASK) | (16711680 & (this.mRecvDataBuf[1] << 16)) | (65280 & (this.mRecvDataBuf[2] << 8)) | (this.mRecvDataBuf[3] & 255);
                if (this.mRecvDataLen < this.mMsgTotalLen + 4 + 2) {
                    return;
                } else {
                    this.mIsMsgDataRecvComplete = true;
                }
            }
        }
    }
}
