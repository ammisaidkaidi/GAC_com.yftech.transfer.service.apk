package com.utils;

import android.os.Environment;
import com.yftech.transfer.phonelink.consumer.ExceptionConsumer;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;

/* loaded from: /home/user/work/dex/classes.dex */
public class FileUtils {
    public static final String FMAM_PATH = Environment.getExternalStorageDirectory() + File.separator + "amfmlist.txt";

    public static void writeAppend(String str, String str2) {
        try {
            FileWriter fileWriter = new FileWriter(new File(str), true);
            fileWriter.write(str2);
            fileWriter.flush();
            fileWriter.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void write(String str, String str2) {
        try {
            FileWriter fileWriter = new FileWriter(new File(str), false);
            fileWriter.write(str2);
            fileWriter.flush();
            fileWriter.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean isFileExit(String str) {
        File file = new File(str);
        return file.exists() && file.length() > 0;
    }

    public static Disposable read(final String str, Consumer<String> consumer) {
        return Observable.create(new ObservableOnSubscribe<String>() { // from class: com.utils.FileUtils.1
            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(ObservableEmitter<String> observableEmitter) {
                try {
                    File file = new File(str);
                    if (!file.exists()) {
                        observableEmitter.onNext("");
                        return;
                    }
                    FileReader fileReader = new FileReader(file);
                    StringBuilder sb = new StringBuilder();
                    char[] cArr = new char[512];
                    while (true) {
                        int read = fileReader.read(cArr);
                        if (read != -1) {
                            sb.append(cArr, 0, read);
                        } else {
                            observableEmitter.onNext(sb.toString());
                            return;
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(consumer, new ExceptionConsumer());
    }
}
