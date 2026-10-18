package com.tencent.wecar.tts.client.cloudresmanager;

/* loaded from: /home/user/work/dex/classes.dex */
public class ClientCloudManager {
    private static IClientCloudManager sCloudManager = new IClientCloudManager() { // from class: com.tencent.wecar.tts.client.cloudresmanager.ClientCloudManager.1
        @Override // com.tencent.wecar.tts.client.cloudresmanager.IClientCloudManager
        public <T> T getCloudConfig(String str, Class<T> cls, T t) {
            return t;
        }
    };

    public static void setCloudManager(IClientCloudManager iClientCloudManager) {
        sCloudManager = iClientCloudManager;
    }

    public static <T> T getCloudConfig(String str, Class<T> cls, T t) {
        return (T) sCloudManager.getCloudConfig(str, cls, t);
    }
}
