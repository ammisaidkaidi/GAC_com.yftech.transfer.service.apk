package com.tencent.wecar.tts.client.view;

import android.graphics.Bitmap;
import com.tencent.wecar.tts.client.ttslist.beans.TtsData;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPersonaliseView {
    void setAppletQRCode(Bitmap bitmap);

    void setInfo(String str);

    void showAppletQRCode(boolean z);

    void showAttentionPicture(boolean z);

    void showInfoView(ArrayList<TtsData> arrayList);

    void showLoadLinearLayout(boolean z);

    void showLoadingView(boolean z);

    void showLoginButton(boolean z);

    void showQRCodeRefreshView();

    void showRecordButton(boolean z);

    void showRetryButton(boolean z);

    void showToast(String str);

    void showTtsList(boolean z);
}
