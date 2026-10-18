package com.tencent.wecarspeech.clientsdk.interfaces;

import android.support.annotation.Keep;
import com.tencent.wecarspeech.clientsdk.model.SemanticFilterResult;
import java.util.Map;
import java.util.Set;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface ISemanticFilter {
    SemanticFilterResult mapSemanticToEvent(long j, String str, Map<String, Set<String>> map);
}
