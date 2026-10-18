package com.tencent.taes.remote.api.location.nmea;

/* loaded from: /home/user/work/dex/classes.dex */
public class GnssSatellite implements Comparable<GnssSatellite> {
    public float azimuth;
    public float elevation;
    private boolean mUsedInFix;
    private int prn;
    public float snr;
    private SatelliteSystem system;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public enum SatelliteSystem {
        GPS,
        GLONASS,
        GALILEO,
        QZSS,
        IRNASS,
        BEIDOU,
        SBS,
        UNKNOWN
    }

    @Override // java.lang.Comparable
    public int compareTo(GnssSatellite gnssSatellite) {
        return (int) (gnssSatellite.snr - this.snr);
    }

    private GnssSatellite() {
    }

    public GnssSatellite copy() {
        GnssSatellite gnssSatellite = new GnssSatellite();
        gnssSatellite.azimuth = this.azimuth;
        gnssSatellite.elevation = this.elevation;
        gnssSatellite.snr = this.snr;
        gnssSatellite.prn = this.prn;
        gnssSatellite.mUsedInFix = this.mUsedInFix;
        gnssSatellite.system = this.system;
        return gnssSatellite;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GnssSatellite(String str, int i) {
        this.prn = i;
        setSystem(str);
    }

    private void setSystem(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == 2114) {
            if (str.equals("BD")) {
                c = 5;
            }
            c = 65535;
        } else if (hashCode == 2266) {
            if (str.equals("GA")) {
                c = 3;
            }
            c = 65535;
        } else if (hashCode == 2277) {
            if (str.equals("GL")) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode == 2281) {
            if (str.equals("GP")) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode != 2601) {
            if (hashCode == 2639 && str.equals("SB")) {
                c = 4;
            }
            c = 65535;
        } else {
            if (str.equals("QZ")) {
                c = 2;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                this.system = SatelliteSystem.GPS;
                return;
            case 1:
                this.system = SatelliteSystem.GLONASS;
                return;
            case 2:
                this.system = SatelliteSystem.QZSS;
                return;
            case 3:
                this.system = SatelliteSystem.GALILEO;
                return;
            case 4:
                this.system = SatelliteSystem.SBS;
                return;
            case 5:
                this.system = SatelliteSystem.BEIDOU;
                return;
            default:
                this.system = SatelliteSystem.UNKNOWN;
                return;
        }
    }

    public int getPrn() {
        return this.prn;
    }

    boolean isprn(int i) {
        return i == this.prn;
    }

    public int hashCode() {
        return this.prn + (this.system.ordinal() * 1000);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GnssSatellite)) {
            return false;
        }
        GnssSatellite gnssSatellite = (GnssSatellite) obj;
        return gnssSatellite.getPrn() == this.prn && gnssSatellite.getSystemPrefix().equals(getSystemPrefix());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStatus(float f, float f2, float f3) {
        if (f < 0.0f) {
            this.elevation = 0.0f;
        } else if (f > 90.0f) {
            this.elevation = 90.0f;
        } else {
            this.elevation = f;
        }
        if (f2 < 0.0f) {
            this.azimuth = 0.0f;
        } else if (f2 > 360.0f) {
            this.azimuth = 0.0f;
        } else {
            this.azimuth = f2;
        }
        if (f3 < 0.0f) {
            this.snr = 0.0f;
        } else if (f3 > 99.0f) {
            this.snr = 99.0f;
        } else {
            this.snr = f3;
        }
    }

    public String getSystemPrefix() {
        return getSystemPrefix(2);
    }

    public String getSystemPrefix(int i) {
        if (i == 2) {
            switch (this.system) {
                case GPS:
                    return "GP";
                case GLONASS:
                    return "GL";
                case QZSS:
                    return "QZ";
                case GALILEO:
                    return "GA";
                case BEIDOU:
                    return "BD";
                case SBS:
                    return "SB";
                default:
                    return "UN";
            }
        }
        if (i != 1) {
            return "";
        }
        switch (this.system) {
            case GPS:
                return "G";
            case GLONASS:
                return "L";
            case QZSS:
                return "Q";
            case GALILEO:
                return "E";
            case BEIDOU:
                return "B";
            case SBS:
                return "S";
            default:
                return "U";
        }
    }

    public String getName() {
        int i;
        int i2 = AnonymousClass1.$SwitchMap$com$tencent$taes$remote$api$location$nmea$GnssSatellite$SatelliteSystem[this.system.ordinal()];
        if (i2 != 5) {
            switch (i2) {
                case 2:
                    i = this.prn - 64;
                    break;
                case 3:
                    i = this.prn - 192;
                    break;
                default:
                    i = this.prn;
                    break;
            }
        } else {
            i = this.prn - 200;
        }
        return getSystemPrefix(1) + Integer.toString(i);
    }

    public float getElevation() {
        return this.elevation;
    }

    void setElevation(float f) {
        this.elevation = f;
    }

    public float getAzimuth() {
        return this.azimuth;
    }

    void setAzimuth(float f) {
        this.azimuth = f;
    }

    public float getSnr() {
        return this.snr;
    }

    void setSnr(float f) {
        this.snr = f;
    }

    public boolean isQzss() {
        return this.system == SatelliteSystem.QZSS;
    }

    public boolean isGlonass() {
        return this.system == SatelliteSystem.GLONASS;
    }

    public boolean isGalileo() {
        return this.system == SatelliteSystem.GALILEO;
    }

    public boolean isGps() {
        return this.system == SatelliteSystem.GPS;
    }

    public boolean isSBS() {
        return this.system == SatelliteSystem.SBS;
    }

    public boolean isBeidou() {
        return this.system == SatelliteSystem.BEIDOU;
    }

    public boolean usedInFix() {
        return this.mUsedInFix;
    }

    public void setUsedInFix(boolean z) {
        this.mUsedInFix = z;
    }

    public String toString() {
        return "[system:" + this.system + ",prn:" + this.prn + ",snr:" + this.snr + ",elevation:" + this.elevation + ",azimuth:" + this.azimuth + "]";
    }
}
