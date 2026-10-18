package com.tencent.wecarspeech.speechcommon.doa;

/* loaded from: /home/user/work/dex/classes.dex */
public enum DoaDirectionMode {
    DIRECTION_NONE(0),
    DIRECTION_ALL(1),
    DIRECTION_LEFT(2),
    DIRECTION_RIGHT(3),
    DIRECTION_FRONT_LEFT(10),
    DIRECTION_FRONT_RIGHT(11),
    DIRECTION_MIDDLE_LEFT(12),
    DIRECTION_MIDDLE_RIGHT(13),
    DIRECTION_BEHIND_LEFT(14),
    DIRECTION_BEHIND_RIGHT(15),
    CHJ_DIRECTION_NONE(20),
    CHJ_DIRECTION_FRONT_LEFT(21),
    CHJ_DIRECTION_FRONT_RIGHT(22),
    CHJ_DIRECTION_MIDDLE_LEFT(23),
    CHJ_DIRECTION_MIDDLE_RIGHT(24),
    CHJ_DIRECTION_BEHIND_LEFT(25),
    CHJ_DIRECTION_BEHIND_RIGHT(26);

    private final int value;

    DoaDirectionMode(int i) {
        this.value = i;
    }

    public int toInt() {
        if (this.value >= 20) {
            return this.value - 20;
        }
        return this.value;
    }

    public int toIntReal() {
        return this.value;
    }

    public static DoaDirectionMode fromInt(int i) {
        switch (i) {
            case 0:
                return DIRECTION_NONE;
            case 1:
                return DIRECTION_ALL;
            case 2:
                return DIRECTION_LEFT;
            case 3:
                return DIRECTION_RIGHT;
            default:
                switch (i) {
                    case 10:
                        return DIRECTION_FRONT_LEFT;
                    case 11:
                        return DIRECTION_FRONT_RIGHT;
                    case 12:
                        return DIRECTION_MIDDLE_LEFT;
                    case 13:
                        return DIRECTION_MIDDLE_RIGHT;
                    case 14:
                        return DIRECTION_BEHIND_LEFT;
                    case 15:
                        return DIRECTION_BEHIND_RIGHT;
                    default:
                        switch (i) {
                            case 20:
                                return CHJ_DIRECTION_NONE;
                            case 21:
                                return CHJ_DIRECTION_FRONT_LEFT;
                            case 22:
                                return CHJ_DIRECTION_FRONT_RIGHT;
                            case 23:
                                return CHJ_DIRECTION_MIDDLE_LEFT;
                            case 24:
                                return CHJ_DIRECTION_MIDDLE_RIGHT;
                            case 25:
                                return CHJ_DIRECTION_BEHIND_LEFT;
                            case 26:
                                return CHJ_DIRECTION_BEHIND_RIGHT;
                            default:
                                return DIRECTION_NONE;
                        }
                }
        }
    }
}
