.class public Lcom/tencent/wecarflow/contentsdk/utils/RSAEncrypt;
.super Ljava/lang/Object;
.source "RSAEncrypt.java"


# static fields
.field private static final MAX_DECRYPT_BLOCK:I = 0x80

.field private static final MAX_ENCRYPT_BLOCK:I = 0x75

.field private static final PRIVATE_KEY:Ljava/lang/String; = "MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAJs218ub7kYV7jiw/rki/TGJtpXJvlko3NTNYnfA1C+Y5rdqXHML1UfdTSvTFgtTZDR6D0wjf9VLDCs9514ZtqUjfNq1REdHQEjZDW80fIuqvmjZx46V3H8XO5F1Hw9PxLVfWz/HB2prI5GAIBLAlU3NM5C5e+jFE5o71i+G3+RxAgMBAAECgYAPZFHkBBON6bDU+GBaNakMF47+raHtr4quo6tnGr0v9yax+58tXXgKB10WwnkGKH/gYFZSA5cyrJ2JUDs4bq5Y60meM+VE0n8lUe1pYWK035Wy3mzpeD1oszf8RAWxNZ9jqZ9a37+17cx9C8Z+HUB833QqDewNyGXT3fYzOxxrwQJBAP3Ev0j29APIXzLVg1EIUvMK3zIeDYvq8I2L9k1YmgODPjCNGqfESA2BlLZXP+dtXpkC6bxbRdH32a7zg5PsAOkCQQCclD4G+H0lI4uKxhH8vUfzRuFfgc1pUCzxQaXKYbAObZx8PyMmA7BFMbDVJav6z7HBuCLeei7jDWdMovgoYVJJAkBGQ427RDV4PqitSJUdgLKG/QGjvNJ/ZUPJzXEbJWcvhc1YYBl7TkutAa4NdscI6y2ALGBPeO4yHvA1EtPhxzzRAkARTMvBp2jkVpYPYi0QmLU/auBx1fylGyesDE3OG5cBMRkuHSe8BoJOUtwv4Laswo/oUHkBzcwqaAu2yvbSN1aJAkBTX03mMHQYYR33hDmX2vZ9X+za+rExmQsEj4WX1u6bvToTUnIMbIaDgN1KerCX7u8z4q2trSHScD4ywXtPOctL"

.field private static final PUBLIC_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCbNtfLm+5GFe44sP65Iv0xibaVyb5ZKNzUzWJ3wNQvmOa3alxzC9VH3U0r0xYLU2Q0eg9MI3/VSwwrPedeGbalI3zatURHR0BI2Q1vNHyLqr5o2ceOldx/FzuRdR8PT8S1X1s/xwdqayORgCASwJVNzTOQuXvoxROaO9Yvht/kcQIDAQAB"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCbNtfLm+5GFe44sP65Iv0xibaVyb5ZKNzUzWJ3wNQvmOa3alxzC9VH3U0r0xYLU2Q0eg9MI3/VSwwrPedeGbalI3zatURHR0BI2Q1vNHyLqr5o2ceOldx/FzuRdR8PT8S1X1s/xwdqayORgCASwJVNzTOQuXvoxROaO9Yvht/kcQIDAQAB"

    const/4 v1, 0x0

    .line 48
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v2, "RSA"

    .line 49
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 50
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    const-string v2, "RSA"

    .line 51
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    .line 52
    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 55
    array-length v0, p0

    .line 58
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v5, v1

    move v6, v5

    :goto_0
    sub-int v7, v0, v5

    if-lez v7, :cond_1

    const/16 v8, 0x75

    if-le v7, v8, :cond_0

    .line 62
    invoke-virtual {v2, p0, v5, v8}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {v2, p0, v5, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    .line 66
    :goto_1
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/2addr v6, v3

    mul-int/lit8 v5, v6, 0x75

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 71
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 72
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static genKeyPair()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "RSA"

    .line 37
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 39
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 41
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 42
    new-instance v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 43
    new-instance v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-void
.end method
