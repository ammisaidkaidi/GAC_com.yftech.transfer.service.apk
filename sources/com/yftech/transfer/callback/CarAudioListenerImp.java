package com.yftech.transfer.callback;

import com.utils.LogUtil;
import com.yftech.car.audio.CarAudioManager;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarAudioListenerImp extends CarAudioManager.CarAudioCallback {
    public static final String SOURCE_AMSERVICE = "com.yftech.avmservice";
    public static final String SOURCE_BLUETOOTH = "com.yftech.service.bluetooth";
    public static final String SOURCE_CARLIFE = "com.baidu.carlifevehicle";
    public static final String SOURCE_CARPLAY = "com.autochips.carplay";
    public static final String SOURCE_HICAR = "com.yftech.hicar";
    private static final HashSet<CarAudioObservor> observors = new HashSet<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarAudioObservor {
        public void onChangedMediaSource(int i, String str, String str2) {
            LogUtil.i("CarAudioObservor onChangedMediaSource:" + i + "," + str + "," + str2);
        }
    }

    public static void registerObservor(CarAudioObservor carAudioObservor) {
        observors.add(carAudioObservor);
    }

    public static void unregisterObservor(CarAudioObservor carAudioObservor) {
        observors.remove(carAudioObservor);
    }

    public static boolean isregisterObservor(CarAudioObservor carAudioObservor) {
        return observors.contains(carAudioObservor);
    }

    public void onChangedMediaSource(int i, String str, String str2) {
        LogUtil.i("CarAudioCallback onChangedMediaSource:" + i + "," + str + "," + str2);
        Iterator<CarAudioObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onChangedMediaSource(i, str, str2);
        }
    }

    public static String getAudioSourcePackage() {
        try {
            String currentMediaSource = CarAudioManager.getInstance().getCurrentMediaSource();
            if (currentMediaSource == null) {
                return "";
            }
            String[] split = currentMediaSource.split(",");
            if (split.length != 3) {
                return "";
            }
            String str = split[1];
            return str.equals("null") ? "" : str;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getAudioSourceListener() {
        String currentMediaSource = CarAudioManager.getInstance().getCurrentMediaSource();
        if (currentMediaSource == null) {
            return "";
        }
        String[] split = currentMediaSource.split(",");
        if (split.length != 3) {
            return "";
        }
        String str = split[2];
        return str.equals("null") ? "" : str;
    }
}
