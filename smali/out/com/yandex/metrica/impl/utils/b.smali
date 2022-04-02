.class public Lcom/yandex/metrica/impl/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "AES/CBC/PKCS7Padding"

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 31
    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/utils/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/yandex/metrica/impl/utils/b;->a:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/yandex/metrica/impl/utils/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a([B)[B
    .registers 8

    .line 43
    :try_start_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v2, v1, [B

    new-array v1, v1, [B

    .line 46
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 47
    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string v0, "RSA"

    .line 48
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    const-string v4, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDhmH/m2qrRjxDHP794CeaZpENQNYydf8pqyXJilo6XxK+n+pvo27VxWfB3Z1yHrtKow+eZXKLQzrQ8wZMfRgADrYCQJ20y2hGZEUCN1tGSM+xqVKMeCtVi3NvQa54Cx7mT5ECVsH5DKEs/aeScDHP56FzcgEbtOSwyRZ8dsEM0wwIDAQAB"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 50
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/yandex/metrica/impl/utils/b;->a([B[B[BLjava/security/PublicKey;)[B

    move-result-object p1
    :try_end_2b
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_2b} :catch_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2b} :catch_2c

    return-object p1

    :catch_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method a([B[B[BLjava/security/PublicKey;)[B
    .registers 9

    const/4 v0, 0x0

    .line 62
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p2

    array-length v3, p3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 64
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 65
    invoke-virtual {v1, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 67
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 68
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 70
    iget-object v1, p0, Lcom/yandex/metrica/impl/utils/b;->b:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v3, 0x1

    .line 72
    invoke-virtual {v1, v3, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 74
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    array-length v3, p1

    invoke-direct {p4, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_4b
    .catchall {:try_start_1 .. :try_end_26} :catchall_46

    .line 75
    :try_start_26
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 76
    new-instance v1, Lcom/yandex/metrica/impl/utils/a;

    iget-object v2, p0, Lcom/yandex/metrica/impl/utils/b;->a:Ljava/lang/String;

    invoke-direct {v1, v2, p2, p3}, Lcom/yandex/metrica/impl/utils/a;-><init>(Ljava/lang/String;[B[B)V

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/utils/a;->a([B)[B

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 78
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3f} :catch_4c
    .catchall {:try_start_26 .. :try_end_3f} :catchall_43

    .line 82
    invoke-static {p4}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_43
    move-exception p1

    move-object v0, p4

    goto :goto_47

    :catchall_46
    move-exception p1

    :goto_47
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_4b
    move-object p4, v0

    :catch_4c
    invoke-static {p4}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    return-object v0
.end method
