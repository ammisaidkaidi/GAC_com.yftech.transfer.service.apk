package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public final class Code128Reader extends OneDReader {
    private static final int CODE_CODE_A = 101;
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_A = 101;
    private static final int CODE_FNC_4_B = 100;
    static final int[][] CODE_PATTERNS = {new int[]{2, 1, 2, 2, 2, 2}, new int[]{2, 2, 2, 1, 2, 2}, new int[]{2, 2, 2, 2, 2, 1}, new int[]{1, 2, 1, 2, 2, 3}, new int[]{1, 2, 1, 3, 2, 2}, new int[]{1, 3, 1, 2, 2, 2}, new int[]{1, 2, 2, 2, 1, 3}, new int[]{1, 2, 2, 3, 1, 2}, new int[]{1, 3, 2, 2, 1, 2}, new int[]{2, 2, 1, 2, 1, 3}, new int[]{2, 2, 1, 3, 1, 2}, new int[]{2, 3, 1, 2, 1, 2}, new int[]{1, 1, 2, 2, 3, 2}, new int[]{1, 2, 2, 1, 3, 2}, new int[]{1, 2, 2, 2, 3, 1}, new int[]{1, 1, 3, 2, 2, 2}, new int[]{1, 2, 3, 1, 2, 2}, new int[]{1, 2, 3, 2, 2, 1}, new int[]{2, 2, 3, 2, 1, 1}, new int[]{2, 2, 1, 1, 3, 2}, new int[]{2, 2, 1, 2, 3, 1}, new int[]{2, 1, 3, 2, 1, 2}, new int[]{2, 2, 3, 1, 1, 2}, new int[]{3, 1, 2, 1, 3, 1}, new int[]{3, 1, 1, 2, 2, 2}, new int[]{3, 2, 1, 1, 2, 2}, new int[]{3, 2, 1, 2, 2, 1}, new int[]{3, 1, 2, 2, 1, 2}, new int[]{3, 2, 2, 1, 1, 2}, new int[]{3, 2, 2, 2, 1, 1}, new int[]{2, 1, 2, 1, 2, 3}, new int[]{2, 1, 2, 3, 2, 1}, new int[]{2, 3, 2, 1, 2, 1}, new int[]{1, 1, 1, 3, 2, 3}, new int[]{1, 3, 1, 1, 2, 3}, new int[]{1, 3, 1, 3, 2, 1}, new int[]{1, 1, 2, 3, 1, 3}, new int[]{1, 3, 2, 1, 1, 3}, new int[]{1, 3, 2, 3, 1, 1}, new int[]{2, 1, 1, 3, 1, 3}, new int[]{2, 3, 1, 1, 1, 3}, new int[]{2, 3, 1, 3, 1, 1}, new int[]{1, 1, 2, 1, 3, 3}, new int[]{1, 1, 2, 3, 3, 1}, new int[]{1, 3, 2, 1, 3, 1}, new int[]{1, 1, 3, 1, 2, 3}, new int[]{1, 1, 3, 3, 2, 1}, new int[]{1, 3, 3, 1, 2, 1}, new int[]{3, 1, 3, 1, 2, 1}, new int[]{2, 1, 1, 3, 3, 1}, new int[]{2, 3, 1, 1, 3, 1}, new int[]{2, 1, 3, 1, 1, 3}, new int[]{2, 1, 3, 3, 1, 1}, new int[]{2, 1, 3, 1, 3, 1}, new int[]{3, 1, 1, 1, 2, 3}, new int[]{3, 1, 1, 3, 2, 1}, new int[]{3, 3, 1, 1, 2, 1}, new int[]{3, 1, 2, 1, 1, 3}, new int[]{3, 1, 2, 3, 1, 1}, new int[]{3, 3, 2, 1, 1, 1}, new int[]{3, 1, 4, 1, 1, 1}, new int[]{2, 2, 1, 4, 1, 1}, new int[]{4, 3, 1, 1, 1, 1}, new int[]{1, 1, 1, 2, 2, 4}, new int[]{1, 1, 1, 4, 2, 2}, new int[]{1, 2, 1, 1, 2, 4}, new int[]{1, 2, 1, 4, 2, 1}, new int[]{1, 4, 1, 1, 2, 2}, new int[]{1, 4, 1, 2, 2, 1}, new int[]{1, 1, 2, 2, 1, 4}, new int[]{1, 1, 2, 4, 1, 2}, new int[]{1, 2, 2, 1, 1, 4}, new int[]{1, 2, 2, 4, 1, 1}, new int[]{1, 4, 2, 1, 1, 2}, new int[]{1, 4, 2, 2, 1, 1}, new int[]{2, 4, 1, 2, 1, 1}, new int[]{2, 2, 1, 1, 1, 4}, new int[]{4, 1, 3, 1, 1, 1}, new int[]{2, 4, 1, 1, 1, 2}, new int[]{1, 3, 4, 1, 1, 1}, new int[]{1, 1, 1, 2, 4, 2}, new int[]{1, 2, 1, 1, 4, 2}, new int[]{1, 2, 1, 2, 4, 1}, new int[]{1, 1, 4, 2, 1, 2}, new int[]{1, 2, 4, 1, 1, 2}, new int[]{1, 2, 4, 2, 1, 1}, new int[]{4, 1, 1, 2, 1, 2}, new int[]{4, 2, 1, 1, 1, 2}, new int[]{4, 2, 1, 2, 1, 1}, new int[]{2, 1, 2, 1, 4, 1}, new int[]{2, 1, 4, 1, 2, 1}, new int[]{4, 1, 2, 1, 2, 1}, new int[]{1, 1, 1, 1, 4, 3}, new int[]{1, 1, 1, 3, 4, 1}, new int[]{1, 3, 1, 1, 4, 1}, new int[]{1, 1, 4, 1, 1, 3}, new int[]{1, 1, 4, 3, 1, 1}, new int[]{4, 1, 1, 1, 1, 3}, new int[]{4, 1, 1, 3, 1, 1}, new int[]{1, 1, 3, 1, 4, 1}, new int[]{1, 1, 4, 1, 3, 1}, new int[]{3, 1, 1, 1, 4, 1}, new int[]{4, 1, 1, 1, 3, 1}, new int[]{2, 1, 1, 4, 1, 2}, new int[]{2, 1, 1, 2, 1, 4}, new int[]{2, 1, 1, 2, 3, 2}, new int[]{2, 3, 3, 1, 1, 1, 2}};
    private static final int CODE_SHIFT = 98;
    private static final int CODE_START_A = 103;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final float MAX_AVG_VARIANCE = 0.25f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.7f;

    private static int[] findStartPattern(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        int[] iArr = new int[6];
        boolean z = false;
        int i = 0;
        int i2 = nextSet;
        while (nextSet < size) {
            if (bitArray.get(nextSet) ^ z) {
                iArr[i] = iArr[i] + 1;
            } else {
                if (i == 5) {
                    float f = MAX_AVG_VARIANCE;
                    int i3 = -1;
                    for (int i4 = 103; i4 <= 105; i4++) {
                        float patternMatchVariance = patternMatchVariance(iArr, CODE_PATTERNS[i4], MAX_INDIVIDUAL_VARIANCE);
                        if (patternMatchVariance < f) {
                            i3 = i4;
                            f = patternMatchVariance;
                        }
                    }
                    if (i3 >= 0 && bitArray.isRange(Math.max(0, i2 - ((nextSet - i2) / 2)), i2, false)) {
                        return new int[]{i2, nextSet, i3};
                    }
                    i2 += iArr[0] + iArr[1];
                    System.arraycopy(iArr, 2, iArr, 0, 4);
                    iArr[4] = 0;
                    iArr[5] = 0;
                    i--;
                } else {
                    i++;
                }
                iArr[i] = 1;
                z = !z;
            }
            nextSet++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int decodeCode(BitArray bitArray, int[] iArr, int i) throws NotFoundException {
        recordPattern(bitArray, i, iArr);
        float f = MAX_AVG_VARIANCE;
        int i2 = -1;
        for (int i3 = 0; i3 < CODE_PATTERNS.length; i3++) {
            float patternMatchVariance = patternMatchVariance(iArr, CODE_PATTERNS[i3], MAX_INDIVIDUAL_VARIANCE);
            if (patternMatchVariance < f) {
                i2 = i3;
                f = patternMatchVariance;
            }
        }
        if (i2 >= 0) {
            return i2;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00e1, code lost:
    
        if (r5 != false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0138, code lost:
    
        r5 = false;
        r10 = 'd';
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0136, code lost:
    
        if (r5 != false) goto L82;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0082. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:54:0x00bf. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:83:0x010f. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0142 A[PHI: r19
      0x0142: PHI (r19v9 boolean) = (r19v5 boolean), (r19v17 boolean) binds: [B:83:0x010f, B:54:0x00bf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x014c A[PHI: r6 r19
      0x014c: PHI (r6v10 boolean) = 
      (r6v2 boolean)
      (r6v2 boolean)
      (r6v2 boolean)
      (r6v2 boolean)
      (r6v9 boolean)
      (r6v2 boolean)
      (r6v2 boolean)
      (r6v2 boolean)
      (r6v2 boolean)
     binds: [B:83:0x010f, B:84:0x0113, B:88:0x0121, B:87:0x011b, B:74:0x014b, B:54:0x00bf, B:55:0x00c4, B:59:0x00d3, B:58:0x00cc] A[DONT_GENERATE, DONT_INLINE]
      0x014c: PHI (r19v8 boolean) = 
      (r19v5 boolean)
      (r19v5 boolean)
      (r19v5 boolean)
      (r19v5 boolean)
      (r19v7 boolean)
      (r19v17 boolean)
      (r19v17 boolean)
      (r19v17 boolean)
      (r19v17 boolean)
     binds: [B:83:0x010f, B:84:0x0113, B:88:0x0121, B:87:0x011b, B:74:0x014b, B:54:0x00bf, B:55:0x00c4, B:59:0x00d3, B:58:0x00cc] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.zxing.oned.OneDReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException, ChecksumException {
        char c;
        char c2;
        boolean z;
        boolean z2;
        boolean z3 = map != null && map.containsKey(DecodeHintType.ASSUME_GS1);
        int[] findStartPattern = findStartPattern(bitArray);
        int i2 = findStartPattern[2];
        ArrayList arrayList = new ArrayList(20);
        arrayList.add(Byte.valueOf((byte) i2));
        switch (i2) {
            case 103:
                c = 'e';
                break;
            case 104:
                c = 'd';
                break;
            case 105:
                c = 'c';
                break;
            default:
                throw FormatException.getFormatInstance();
        }
        StringBuilder sb = new StringBuilder(20);
        int i3 = findStartPattern[0];
        int i4 = findStartPattern[1];
        int i5 = 6;
        int[] iArr = new int[6];
        boolean z4 = false;
        boolean z5 = false;
        int i6 = 0;
        int i7 = 0;
        int i8 = i2;
        int i9 = i3;
        boolean z6 = true;
        boolean z7 = false;
        boolean z8 = false;
        char c3 = c;
        int i10 = 0;
        while (!z7) {
            int decodeCode = decodeCode(bitArray, iArr, i4);
            arrayList.add(Byte.valueOf((byte) decodeCode));
            if (decodeCode != 106) {
                z6 = true;
            }
            if (decodeCode != 106) {
                i6++;
                i8 += i6 * decodeCode;
            }
            int i11 = i4;
            for (int i12 = 0; i12 < i5; i12++) {
                i11 += iArr[i12];
            }
            switch (decodeCode) {
                case 103:
                case 104:
                case 105:
                    throw FormatException.getFormatInstance();
                default:
                    switch (c3) {
                        case 'c':
                            c2 = 'd';
                            if (decodeCode >= 100) {
                                if (decodeCode != 106) {
                                    z6 = false;
                                }
                                if (decodeCode != 106) {
                                    switch (decodeCode) {
                                        case 100:
                                            z = z4;
                                            c3 = 'd';
                                            break;
                                        case 101:
                                            z = z4;
                                            c3 = 'e';
                                            break;
                                        case 102:
                                            if (z3) {
                                                if (sb.length() == 0) {
                                                    sb.append("]C1");
                                                    break;
                                                } else {
                                                    sb.append((char) 29);
                                                    break;
                                                }
                                            }
                                            break;
                                    }
                                } else {
                                    z = z4;
                                    z2 = false;
                                    z7 = true;
                                    break;
                                }
                            } else {
                                if (decodeCode < 10) {
                                    sb.append('0');
                                }
                                sb.append(decodeCode);
                            }
                            z = z4;
                            z2 = false;
                            break;
                        case 'd':
                            if (decodeCode < 96) {
                                if (z4 == z5) {
                                    sb.append((char) (decodeCode + 32));
                                } else {
                                    sb.append((char) (decodeCode + 32 + 128));
                                }
                                z2 = false;
                                c2 = 'd';
                                z = false;
                                break;
                            } else {
                                if (decodeCode != 106) {
                                    z6 = false;
                                }
                                if (decodeCode != 106) {
                                    switch (decodeCode) {
                                        case 96:
                                        case 97:
                                        default:
                                            z = z4;
                                            z2 = false;
                                            c2 = 'd';
                                            break;
                                        case 98:
                                            z = z4;
                                            c3 = 'e';
                                            z2 = true;
                                            c2 = 'd';
                                            break;
                                        case 99:
                                            z = z4;
                                            c3 = 'c';
                                            z2 = false;
                                            c2 = 'd';
                                            break;
                                        case 100:
                                            if (z5 || !z4) {
                                                if (z5) {
                                                }
                                                z2 = false;
                                                c2 = 'd';
                                                z = true;
                                                break;
                                            }
                                            z2 = false;
                                            c2 = 'd';
                                            z5 = true;
                                            z = false;
                                            break;
                                        case 101:
                                            z = z4;
                                            c3 = 'e';
                                            z2 = false;
                                            c2 = 'd';
                                            break;
                                        case 102:
                                            if (z3) {
                                                if (sb.length() == 0) {
                                                    sb.append("]C1");
                                                } else {
                                                    sb.append((char) 29);
                                                }
                                            }
                                            z = z4;
                                            z2 = false;
                                            c2 = 'd';
                                            break;
                                    }
                                }
                                z7 = true;
                                z = z4;
                                z2 = false;
                                c2 = 'd';
                            }
                            break;
                        case 'e':
                            if (decodeCode < 64) {
                                if (z4 == z5) {
                                    sb.append((char) (decodeCode + 32));
                                } else {
                                    sb.append((char) (decodeCode + 32 + 128));
                                }
                            } else if (decodeCode >= 96) {
                                if (decodeCode != 106) {
                                    z6 = false;
                                }
                                if (decodeCode != 106) {
                                    switch (decodeCode) {
                                        case 98:
                                            z = z4;
                                            c3 = 'd';
                                            z2 = true;
                                            c2 = 'd';
                                            break;
                                        case 100:
                                            z = z4;
                                            c3 = 'd';
                                            z2 = false;
                                            c2 = 'd';
                                            break;
                                        case 101:
                                            if (z5 || !z4) {
                                                if (z5) {
                                                }
                                                z2 = false;
                                                c2 = 'd';
                                                z = true;
                                                break;
                                            }
                                            z2 = false;
                                            c2 = 'd';
                                            z5 = true;
                                            z = false;
                                            break;
                                        case 102:
                                            if (z3) {
                                                if (sb.length() == 0) {
                                                    sb.append("]C1");
                                                } else {
                                                    sb.append((char) 29);
                                                }
                                            }
                                            z = z4;
                                            z2 = false;
                                            c2 = 'd';
                                            break;
                                    }
                                }
                                z7 = true;
                                z = z4;
                                z2 = false;
                                c2 = 'd';
                            } else if (z4 == z5) {
                                sb.append((char) (decodeCode - 64));
                            } else {
                                sb.append((char) (decodeCode + 64));
                            }
                            z2 = false;
                            c2 = 'd';
                            z = false;
                            break;
                        default:
                            c2 = 'd';
                            z = z4;
                            z2 = false;
                            break;
                    }
                    if (z8) {
                        c3 = c3 == 'e' ? c2 : 'e';
                    }
                    z8 = z2;
                    z4 = z;
                    i5 = 6;
                    int i13 = i10;
                    i10 = decodeCode;
                    i9 = i4;
                    i4 = i11;
                    i7 = i13;
                    break;
            }
        }
        int i14 = i4 - i9;
        int nextUnset = bitArray.getNextUnset(i4);
        if (!bitArray.isRange(nextUnset, Math.min(bitArray.getSize(), ((nextUnset - i9) / 2) + nextUnset), false)) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i15 = i7;
        if ((i8 - (i6 * i15)) % 103 != i15) {
            throw ChecksumException.getChecksumInstance();
        }
        int length = sb.length();
        if (length == 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (length > 0 && z6) {
            if (c3 == 'c') {
                sb.delete(length - 2, length);
            } else {
                sb.delete(length - 1, length);
            }
        }
        float f = (findStartPattern[1] + findStartPattern[0]) / 2.0f;
        float f2 = i9 + (i14 / 2.0f);
        int size = arrayList.size();
        byte[] bArr = new byte[size];
        for (int i16 = 0; i16 < size; i16++) {
            bArr[i16] = ((Byte) arrayList.get(i16)).byteValue();
        }
        float f3 = i;
        return new Result(sb.toString(), bArr, new ResultPoint[]{new ResultPoint(f, f3), new ResultPoint(f2, f3)}, BarcodeFormat.CODE_128);
    }
}
