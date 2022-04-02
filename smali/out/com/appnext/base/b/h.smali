.class public final Lcom/appnext/base/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final fw:Lcom/appnext/base/b/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/appnext/base/b/h;

    invoke-direct {v0}, Lcom/appnext/base/b/h;-><init>()V

    sput-object v0, Lcom/appnext/base/b/h;->fw:Lcom/appnext/base/b/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static I(Ljava/lang/String;)Ljava/lang/Long;
    .registers 4

    const/4 v0, 0x0

    .line 38
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    .line 41
    :cond_8
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/zip/CRC32;->update([B)V

    .line 43
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    return-object p0

    :catchall_1d
    return-object v0
.end method

.method public static J(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 52
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    .line 55
    :cond_8
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/zip/CRC32;->update([B)V

    .line 57
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    return-object p0

    :catchall_1d
    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 7

    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_23

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 194
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    const/16 v4, 0x30

    .line 196
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    :cond_1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 200
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B[B)[B
    .registers 7

    .line 172
    array-length v0, p1

    const/16 v1, 0x10

    add-int/2addr v0, v1

    new-array v2, v0, [B

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_17

    if-ge v3, v1, :cond_e

    .line 174
    aget-byte v4, p0, v3

    goto :goto_12

    :cond_e
    add-int/lit8 v4, v3, -0x10

    aget-byte v4, p1, v4

    :goto_12
    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_17
    return-object v2
.end method

.method public static aO()Lcom/appnext/base/b/h;
    .registers 1

    .line 29
    sget-object v0, Lcom/appnext/base/b/h;->fw:Lcom/appnext/base/b/h;

    return-object v0
.end method

.method private static aP()[B
    .registers 2

    .line 124
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-static {}, Lcom/appnext/base/b/f;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-object v0

    :catchall_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static aQ()Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "AES"

    .line 159
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x80

    .line 160
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 161
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-object v0

    :catchall_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private static init()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final K(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    .line 98
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 102
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string v2, "AES/CBC/PKCS5Padding"

    .line 103
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 105
    invoke-static {}, Lcom/appnext/base/b/h;->aP()[B

    move-result-object v3

    if-nez v3, :cond_21

    return-object v0

    :cond_21
    const/4 v4, 0x1

    .line 111
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v3, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v3, "utf-8"

    .line 112
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 113
    invoke-static {v1, p1}, Lcom/appnext/base/b/h;->a([B[B)[B

    move-result-object p1

    const/4 v1, 0x2

    .line 114
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_45

    return-object p1

    :catchall_45
    return-object v0
.end method

.method public final L(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    .line 138
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    const/4 v1, 0x2

    .line 141
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const/4 v2, 0x0

    const/16 v3, 0x10

    .line 142
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 143
    array-length v4, p1

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const-string v3, "AES/CBC/PKCS5Padding"

    .line 144
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 145
    invoke-static {}, Lcom/appnext/base/b/h;->aP()[B

    move-result-object v4

    if-nez v4, :cond_26

    return-object v0

    .line 149
    :cond_26
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v4, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v1, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 150
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_41

    return-object v1

    :catchall_41
    return-object v0
.end method

.method public final M(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    const-string v0, "SHA-256"

    .line 182
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 184
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 1192
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1193
    array-length v1, p1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_34

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 1194
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1195
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    const/16 v4, 0x30

    .line 1196
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1198
    :cond_2e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1200
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return-object p1

    :catchall_39
    const/4 p1, 0x0

    return-object p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 9

    const/4 v0, 0x0

    .line 66
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_44

    :cond_e
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 71
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string v2, "AES/CBC/PKCS5Padding"

    .line 73
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 74
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v4, 0x2

    .line 76
    invoke-static {p2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 77
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, p2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p2, 0x1

    .line 79
    invoke-virtual {v2, p2, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string p2, "UTF-8"

    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 81
    invoke-static {v1, p1}, Lcom/appnext/base/b/h;->a([B[B)[B

    move-result-object p1
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_44

    return-object p1

    :catchall_44
    :cond_44
    :goto_44
    return-object v0
.end method
