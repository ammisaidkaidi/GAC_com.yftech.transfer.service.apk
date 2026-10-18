package com.tencent.taes.remote.api.location.nmea;

import android.location.Location;

/* loaded from: /home/user/work/dex/classes.dex */
public interface NmeaLocationListener {
    void onNmeaLocationChanged(Location location, GnssStatus gnssStatus);
}
