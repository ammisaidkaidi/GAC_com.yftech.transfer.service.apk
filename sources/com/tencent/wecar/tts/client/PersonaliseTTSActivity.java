package com.tencent.wecar.tts.client;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.wecar.tts.R;
import com.tencent.wecar.tts.client.presenter.PersonaliseTTSPresenter;
import com.tencent.wecar.tts.client.ttslist.CustomDividerItemDecoration;
import com.tencent.wecar.tts.client.ttslist.TtsItemsAdapter;
import com.tencent.wecar.tts.client.ttslist.beans.TtsData;
import com.tencent.wecar.tts.client.view.IPersonaliseView;
import com.tencent.wecar.tts.client.view.RoundImageView;
import com.tencent.wecar.tts.larklite.utils.DisplayMetricsUtil;
import com.tencent.wecar.tts.log.TtsLog;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class PersonaliseTTSActivity extends AppCompatActivity implements IPersonaliseView, View.OnClickListener {
    private static final String TAG = "PersonaliseTTSActivity";
    private RoundImageView mAppletsView;
    private ImageView mAttentionView;
    private ImageButton mExitButton;
    private TextView mInfoView;
    private AnimationDrawable mLoadingBigAnima;
    private ImageView mLoadingBigView;
    private LinearLayout mLoadingLayout;
    private AnimationDrawable mLoadingSmallAnima;
    private ImageView mLoadingSmallView;
    private Button mLoginButton;
    private Button mRecordButton;
    private Button mRetryButton;
    private RecyclerView mTtsRv;
    private PersonaliseTTSPresenter mPersonaliseTTSPresenter = null;
    private TtsItemsAdapter mttsItemsAdapter = null;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DisplayMetricsUtil.setDisplayMetrics(this, getApplication());
        setContentView(R.layout.activity_personalise_tts);
        this.mExitButton = (ImageButton) findViewById(R.id.ib_exit);
        this.mExitButton.setOnClickListener(this);
        this.mRecordButton = (Button) findViewById(R.id.bt_record);
        this.mRecordButton.setOnClickListener(this);
        this.mLoginButton = (Button) findViewById(R.id.bt_login);
        this.mTtsRv = findViewById(R.id.rv);
        this.mLoginButton.setOnClickListener(this);
        this.mInfoView = (TextView) findViewById(R.id.tv_info);
        this.mAttentionView = (ImageView) findViewById(R.id.iv_attention);
        this.mAppletsView = (RoundImageView) findViewById(R.id.iv_applets);
        this.mAppletsView.setOnClickListener(this);
        this.mLoadingBigView = (ImageView) findViewById(R.id.iv_loading_big);
        this.mLoadingLayout = (LinearLayout) findViewById(R.id.ll_loading);
        this.mLoadingSmallView = (ImageView) findViewById(R.id.iv_loading_small);
        this.mRetryButton = (Button) findViewById(R.id.bt_retry);
        this.mRetryButton.setOnClickListener(this);
        this.mPersonaliseTTSPresenter = new PersonaliseTTSPresenter(this);
        this.mPersonaliseTTSPresenter.init();
        if (getIntent() != null) {
            switchSkin(getIntent().getIntExtra("skinMode", 0));
        }
        TtsManagerInner.getInstance().bindService(this);
    }

    @Override // com.tencent.wecar.tts.client.view.IPersonaliseView
    public void showAttentionPicture(boolean z) {
        if (z) {
            this.mAttentionView.setVisibility(0);
        } else {
            this.mAttentionView.setVisibility(8);
        }
    }

    @Override // com.tencent.wecar.tts.client.view.IPersonaliseView
    public void showRecordButton(boolean z) {
        if (z) {
            this.mRecordButton.setVisibility(0);
        } else {
            this.mRecordButton.setVisibility(8);
        }
    }

    @Override // com.tencent.wecar.tts.client.view.IPersonaliseView
    public void showLoginButton(boolean z) {
        if (z) {
            this.mLoginButton.setVisibility(0);
        } else {
            this.mLoginButton.setVisibility(8);
        }
    }

    @Override // com.tencent.wecar.tts.client.view.IPersonaliseView
    public void showInfoView(ArrayList<TtsData> arrayList) {
        showLoadingView(false);
        if (arrayList == null || arrayList.size() < 1) {
            showAttentionPicture(true);
            setInfo("无自制语音");
        } else {
            showTtsList(arrayList);
        }
    }

    private void showTtsList(ArrayList<TtsData> arrayList) {
        this.mTtsRv.setLayoutManager(new LinearLayoutManager(this));
        CustomDividerItemDecoration customDividerItemDecoration = new CustomDividerItemDecoration(this, 1);
        customDividerItemDecoration.setDrawable(getResources().getDrawable(R.drawable.divider));
        this.mTtsRv.addItemDecoration(customDividerItemDecoration);
        this.mttsItemsAdapter = new TtsItemsAdapter(arrayList, this);
        this.mTtsRv.setAdapter(this.mttsItemsAdapter);
        showLoginButton(false);
        this.mInfoView.setVisibility(8);
        this.mAttentionView.setVisibility(8);
    }

    @Override // com.tencent.wecar.tts.client.view.IPersonaliseView
    public void showTtsList(boolean z) {
        if (z) {
            this.mTtsRv.setVisibility(0);
        } else {
            this.mTtsRv.setVisibility(8);
        }
    }

    @Override // com.tencent.wecar.tts.client.view.IPersonaliseView
    public void setInfo(String str) {
        this.mInfoView.setText(str);
        this.mInfoView.setVisibility(0);
    }

    @Override // com.tencent.wecar.tts.client.view.IPersonaliseView
    public void showAppletQRCode(boolean z) {
        if (z) {
            this.mAppletsView.setVisibility(0);
        } else {
            this.mAppletsView.setVisibility(8);
        }
    }

    @Override // com.tencent.wecar.tts.client.view.IPersonaliseView
    public void setAppletQRCode(Bitmap bitmap) {
        this.mAppletsView.setImageBitmap(bitmap);
        this.mAppletsView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.mAppletsView.setVisibility(0);
        this.mAppletsView.setEnabled(false);
    }

    @Override // com.tencent.wecar.tts.client.view.IPersonaliseView
    public void showLoadingView(boolean z) {
        if (z) {
            this.mLoadingBigView.setVisibility(0);
            if (this.mLoadingBigAnima == null) {
                this.mLoadingBigAnima = (AnimationDrawable) this.mLoadingBigView.getBackground();
            }
            if (this.mLoadingBigAnima.isRunning()) {
                return;
            }
            this.mLoadingBigAnima.start();
            return;
        }
        this.mLoadingBigView.setVisibility(8);
        if (this.mLoadingBigAnima == null || !this.mLoadingBigAnima.isRunning()) {
            return;
        }
        this.mLoadingBigAnima.stop();
    }

    @Override // com.tencent.wecar.tts.client.view.IPersonaliseView
    public void showLoadLinearLayout(boolean z) {
        if (z) {
            this.mLoadingLayout.setVisibility(0);
            if (this.mLoadingSmallAnima == null) {
                this.mLoadingSmallAnima = (AnimationDrawable) this.mLoadingSmallView.getBackground();
            }
            if (this.mLoadingSmallAnima.isRunning()) {
                return;
            }
            this.mLoadingSmallAnima.start();
            return;
        }
        this.mLoadingLayout.setVisibility(8);
        if (this.mLoadingSmallAnima == null || !this.mLoadingSmallAnima.isRunning()) {
            return;
        }
        this.mLoadingSmallAnima.stop();
    }

    @Override // com.tencent.wecar.tts.client.view.IPersonaliseView
    public void showRetryButton(boolean z) {
        if (z) {
            this.mRetryButton.setVisibility(0);
        } else {
            this.mRetryButton.setVisibility(8);
        }
    }

    @Override // com.tencent.wecar.tts.client.view.IPersonaliseView
    public void showToast(String str) {
        Toast.makeText(this, str, 0).show();
    }

    @Override // com.tencent.wecar.tts.client.view.IPersonaliseView
    public void showQRCodeRefreshView() {
        this.mAppletsView.setImageResource(R.drawable.icon_refresh);
        this.mAppletsView.setScaleType(ImageView.ScaleType.CENTER);
        this.mAppletsView.setBackgroundResource(R.drawable.bg_refresh);
        this.mAppletsView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        switchSkin(intent.getIntExtra("skinMode", 0));
    }

    private void switchSkin(int i) {
        TtsLog.d(TAG, "skinMode=" + i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.ib_exit) {
            finish();
            return;
        }
        if (id == R.id.bt_login) {
            this.mPersonaliseTTSPresenter.login();
            return;
        }
        if (id == R.id.bt_record || id == R.id.iv_applets) {
            this.mPersonaliseTTSPresenter.recordVoice();
        } else if (id == R.id.bt_retry) {
            this.mPersonaliseTTSPresenter.retry();
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mPersonaliseTTSPresenter.onDestroy();
        if (this.mttsItemsAdapter != null) {
            this.mttsItemsAdapter.removePlayingListener();
        }
        if (this.mLoadingBigAnima != null && this.mLoadingBigAnima.isRunning()) {
            this.mLoadingBigAnima.stop();
        }
        if (this.mLoadingSmallAnima == null || !this.mLoadingSmallAnima.isRunning()) {
            return;
        }
        this.mLoadingSmallAnima.stop();
    }
}
