package com.baidu.navisdk.hudsdk.socket;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.baidu.navisdk.hudsdk.util.LogUtil;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class SocketWriteHandler extends Handler {
    private ByteBuffer mBuffer;
    private boolean mIsStopped;
    private final Looper mLooper;
    private Handler mMasterHandler;
    private final BNRemoteClientSocket mSocket;

    public SocketWriteHandler(Looper looper, BNRemoteClientSocket bNRemoteClientSocket, Handler handler) {
        super(looper);
        this.mLooper = looper;
        this.mSocket = bNRemoteClientSocket;
        this.mBuffer = ByteBuffer.allocateDirect(262);
        this.mMasterHandler = handler;
        this.mIsStopped = false;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        processSendMessage(message);
    }

    public void quit() {
        try {
            this.mLooper.quit();
        } catch (Exception unused) {
        }
        if (this.mBuffer != null) {
            this.mBuffer.clear();
            this.mBuffer = null;
        }
        this.mIsStopped = true;
    }

    public void processSendMessage(Message message) {
        if (message == null) {
            return;
        }
        try {
            if (message.what == 11) {
                Bundle bundle = (Bundle) message.obj;
                packetAuthMsg(bundle.getString(BNRemoteConstants.ParamKey.KEY_AUTH_APP_VERSION), bundle.getString("packageName"), bundle.getString(BNRemoteConstants.ParamKey.KEY_AUTH_HUD_SDK_VERSION));
                this.mSocket.write(this.mBuffer);
            } else if (message.what == 10) {
                packetPingMsg();
                this.mSocket.write(this.mBuffer);
            }
        } catch (UnsupportedEncodingException unused) {
            if (this.mMasterHandler != null) {
                this.mMasterHandler.sendMessage(this.mMasterHandler.obtainMessage(SocketConstant.SOCKET_MSG_SEND, 1024));
            }
        } catch (SocketTimeoutException unused2) {
            if (this.mMasterHandler != null) {
                this.mMasterHandler.sendMessage(this.mMasterHandler.obtainMessage(SocketConstant.SOCKET_MSG_SEND, 1));
            }
        } catch (IOException unused3) {
            if (this.mIsStopped || this.mMasterHandler == null) {
                return;
            }
            this.mMasterHandler.sendMessage(this.mMasterHandler.obtainMessage(SocketConstant.SOCKET_MSG_SEND, 2));
        } catch (JSONException unused4) {
            if (this.mMasterHandler != null) {
                this.mMasterHandler.sendMessage(this.mMasterHandler.obtainMessage(SocketConstant.SOCKET_MSG_SEND, 1024));
            }
        }
    }

    private void packetAuthMsg(String str, String str2, String str3) throws JSONException, UnsupportedEncodingException {
        LogUtil.e(BNRemoteConstants.MODULE_TAG, "SocketWriterHandler.....packetAuthMsg()");
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        jSONObject2.put(BNRemoteConstants.ParamKey.KEY_MSG_TYPE, 11);
        jSONObject4.put(BNRemoteConstants.ParamKey.KEY_AUTH_APP_VERSION, str);
        jSONObject4.put("packageName", str2);
        jSONObject4.put(BNRemoteConstants.ParamKey.KEY_AUTH_HUD_SDK_VERSION, str3);
        jSONObject2.put(BNRemoteConstants.ParamKey.KEY_MSG_OBJ, jSONObject4);
        jSONObject3.put(BNRemoteConstants.ParamKey.KEY_MSG_ERROR_CODE, 0);
        jSONObject3.put(BNRemoteConstants.ParamKey.KEY_MSG_ERROR_STR, BNRemoteConstants.ERROR_DEFAULT_STR);
        jSONObject.put("data", jSONObject2);
        jSONObject.put(BNRemoteConstants.ParamKey.KEY_MSG_ERRORS, jSONObject3);
        LogUtil.e(BNRemoteConstants.MODULE_TAG, "SocketWriterHandler.....packetAuthMsg(), msgJson = " + jSONObject.toString());
        packetSocketMsgToBytes(jSONObject);
    }

    private void packetPingMsg() throws JSONException, UnsupportedEncodingException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        jSONObject2.put(BNRemoteConstants.ParamKey.KEY_MSG_TYPE, 10);
        jSONObject2.put(BNRemoteConstants.ParamKey.KEY_MSG_OBJ, jSONObject4);
        jSONObject3.put(BNRemoteConstants.ParamKey.KEY_MSG_ERROR_CODE, 0);
        jSONObject3.put(BNRemoteConstants.ParamKey.KEY_MSG_ERROR_STR, BNRemoteConstants.ERROR_DEFAULT_STR);
        jSONObject.put("data", jSONObject2);
        jSONObject.put(BNRemoteConstants.ParamKey.KEY_MSG_ERRORS, jSONObject3);
        packetSocketMsgToBytes(jSONObject);
    }

    private void packetSocketMsgToBytes(JSONObject jSONObject) throws UnsupportedEncodingException {
        LogUtil.e(BNRemoteConstants.MODULE_TAG, "SocketWriterHandler.....packetSocketMsgToBytes()...ENTER");
        byte[] bytes = jSONObject.toString().getBytes("utf-8");
        this.mBuffer.clear();
        int length = bytes.length;
        this.mBuffer.put((byte) ((length >> 24) & 255));
        this.mBuffer.put((byte) ((length >> 16) & 255));
        this.mBuffer.put((byte) ((length >> 8) & 255));
        this.mBuffer.put((byte) (length & 255));
        this.mBuffer.put(bytes, 0, length);
        this.mBuffer.put((byte) 13);
        this.mBuffer.put((byte) 10);
        LogUtil.e(BNRemoteConstants.MODULE_TAG, "SocketWriterHandler.....packetSocketMsgToBytes()...END");
    }
}
