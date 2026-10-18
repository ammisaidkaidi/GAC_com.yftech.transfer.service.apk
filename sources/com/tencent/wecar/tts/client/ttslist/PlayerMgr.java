package com.tencent.wecar.tts.client.ttslist;

import android.media.MediaPlayer;

/* loaded from: /home/user/work/dex/classes.dex */
public class PlayerMgr implements MediaPlayer.OnCompletionListener {
    private static volatile PlayerMgr mInstance;
    private PlayCallBack callBack;
    private MediaPlayer mediaPlayer = new MediaPlayer();

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface PlayCallBack {
        void onPlayEnd(MediaPlayer mediaPlayer);

        void onPlayError(Exception exc);

        void onPlayStart(String str);

        void onPlayStop();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SimplePlayCallBack implements PlayCallBack {
        @Override // com.tencent.wecar.tts.client.ttslist.PlayerMgr.PlayCallBack
        public void onPlayEnd(MediaPlayer mediaPlayer) {
        }

        @Override // com.tencent.wecar.tts.client.ttslist.PlayerMgr.PlayCallBack
        public void onPlayError(Exception exc) {
        }

        @Override // com.tencent.wecar.tts.client.ttslist.PlayerMgr.PlayCallBack
        public void onPlayStart(String str) {
        }

        @Override // com.tencent.wecar.tts.client.ttslist.PlayerMgr.PlayCallBack
        public void onPlayStop() {
        }
    }

    private PlayerMgr() {
    }

    public static PlayerMgr getInstance() {
        if (mInstance == null) {
            synchronized (PlayerMgr.class) {
                if (mInstance == null) {
                    mInstance = new PlayerMgr();
                }
            }
        }
        return mInstance;
    }

    public void play(String str, PlayCallBack playCallBack) {
        try {
            if (this.mediaPlayer == null) {
                this.mediaPlayer = new MediaPlayer();
            }
            this.mediaPlayer.reset();
            this.mediaPlayer.setDataSource(str);
            this.mediaPlayer.prepareAsync();
            this.callBack = playCallBack;
            if (playCallBack != null) {
                playCallBack.onPlayStart(str);
            }
            this.mediaPlayer.setOnCompletionListener(this);
            this.mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.tencent.wecar.tts.client.ttslist.PlayerMgr.1
                @Override // android.media.MediaPlayer.OnPreparedListener
                public void onPrepared(MediaPlayer mediaPlayer) {
                    PlayerMgr.this.mediaPlayer = mediaPlayer;
                    PlayerMgr.this.mediaPlayer.start();
                }
            });
        } catch (Exception e) {
            releasePlayer();
            if (playCallBack != null) {
                playCallBack.onPlayError(e);
            }
            e.printStackTrace();
        }
    }

    public void stop() {
        if (this.callBack != null) {
            this.callBack.onPlayStop();
        }
        if (this.mediaPlayer != null) {
            try {
                this.mediaPlayer.stop();
            } catch (Exception e) {
                if (this.callBack != null) {
                    this.callBack.onPlayError(e);
                }
                e.printStackTrace();
            }
        }
    }

    private void releasePlayer() {
        if (this.mediaPlayer != null) {
            try {
                this.mediaPlayer.reset();
                this.mediaPlayer.release();
                this.mediaPlayer = null;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        releasePlayer();
        if (this.callBack != null) {
            this.callBack.onPlayEnd(mediaPlayer);
        }
    }
}
