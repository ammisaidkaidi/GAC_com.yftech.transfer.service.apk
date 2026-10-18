package com.tencent.wecarbase.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.util.Log;
import com.tencent.wecarbase.utils.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class SDKController {
    private static final String ACTION_SDK_COMMAND = "com.tencent.wecarbase.ACTION_SDK_COMMAND";
    private static final String CMD_CLOSE_LOG = "close_log";
    private static final String CMD_OPEN_LOG = "open_log";
    private static final String EXTRA_COMMAND = "command";
    private static SDKController INSTANCE = new SDKController();
    private static CommandListener sCommandListener;
    private String TAG = getClass().getSimpleName();
    private CommandReceiver mCommandReceiver;
    private Context mContext;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface CommandListener {
        void onCommand(String str, Bundle bundle);
    }

    private SDKController() {
    }

    public static SDKController getInstance() {
        return INSTANCE;
    }

    public void init(Context context) {
        this.mContext = context.getApplicationContext();
        if (this.mCommandReceiver == null) {
            this.mCommandReceiver = new CommandReceiver();
        }
        this.mContext.registerReceiver(this.mCommandReceiver, new IntentFilter(ACTION_SDK_COMMAND));
    }

    public static void setCommandListener(CommandListener commandListener) {
        sCommandListener = commandListener;
    }

    public void unInit() {
        if (this.mContext != null) {
            if (this.mCommandReceiver != null) {
                try {
                    this.mContext.unregisterReceiver(this.mCommandReceiver);
                    this.mCommandReceiver = null;
                } catch (Exception e) {
                    Log.e(this.TAG, "Exception:" + Log.getStackTraceString(e));
                }
            }
            this.mContext = null;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class CommandReceiver extends BroadcastReceiver {
        private String TAG;

        private CommandReceiver() {
            this.TAG = getClass().getSimpleName();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                LogUtils.fd(this.TAG, "CommandReceiver receive action = " + action);
                if (SDKController.ACTION_SDK_COMMAND.equals(action)) {
                    String stringExtra = intent.getStringExtra(SDKController.EXTRA_COMMAND);
                    Bundle extras = intent.getExtras();
                    LogUtils.fd(this.TAG, "command = " + action);
                    char c = 65535;
                    int hashCode = stringExtra.hashCode();
                    if (hashCode != -504314929) {
                        if (hashCode == -482151299 && stringExtra.equals(SDKController.CMD_CLOSE_LOG)) {
                            c = 1;
                        }
                    } else if (stringExtra.equals(SDKController.CMD_OPEN_LOG)) {
                        c = 0;
                    }
                    switch (c) {
                        case 0:
                            handleLogCommand(true);
                            break;
                        case 1:
                            handleLogCommand(false);
                            break;
                    }
                    CommandListener commandListener = SDKController.sCommandListener;
                    if (commandListener != null) {
                        commandListener.onCommand(stringExtra, extras);
                    }
                }
            } catch (Exception e) {
                LogUtils.fe(this.TAG, e.toString(), e);
            }
        }

        private void handleLogCommand(boolean z) {
            LogUtils.fd(this.TAG, "handleLogCommand, shouldOpen = " + z);
            LogUtils.setLogEnable(z);
        }
    }
}
