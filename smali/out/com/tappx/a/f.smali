.class public Lcom/tappx/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Lcom/tappx/a/f;

.field private static final d:[B

.field private static final e:[B


# instance fields
.field private a:Ljavax/crypto/Cipher;

.field private b:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_12

    sput-object v0, Lcom/tappx/a/f;->d:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_20

    sput-object v0, Lcom/tappx/a/f;->e:[B

    return-void

    :array_12
    .array-data 1
        0x51t
        0x50t
        0x37t
        0x44t
        0x6dt
        0x74t
        0x74t
        0x34t
        0x36t
        0x43t
        0x68t
        0x63t
        0x47t
        0x6ct
        0x34t
        0x51t
        0x43t
        0x66t
        0x64t
        0x56t
    .end array-data

    :array_20
    .array-data 1
        -0x1et
        0x1ft
        0xbt
        0x25t
        0x17t
        0x58t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/a/f;->d:[B

    sget-object v1, Lcom/tappx/a/f;->e:[B

    invoke-direct {p0, v0, v1}, Lcom/tappx/a/f;-><init>([B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    sget-object v0, Lcom/tappx/a/f;->e:[B

    invoke-direct {p0, p1, v0}, Lcom/tappx/a/f;-><init>([B[B)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .registers 5

    const-string v0, "AES"

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    :try_start_5
    invoke-static {p1, p2}, Lcom/tappx/a/f;->a([B[B)[B

    move-result-object p1

    .line 6
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 7
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/f;->a:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 9
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/f;->b:Ljavax/crypto/Cipher;

    const/4 v0, 0x2

    .line 10
    invoke-virtual {p1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_22

    :catch_22
    return-void
.end method

.method public static a()Lcom/tappx/a/f;
    .registers 2

    .line 1
    sget-object v0, Lcom/tappx/a/f;->c:Lcom/tappx/a/f;

    if-nez v0, :cond_17

    .line 3
    const-class v1, Lcom/tappx/a/f;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lcom/tappx/a/f;->c:Lcom/tappx/a/f;

    if-nez v0, :cond_12

    .line 6
    new-instance v0, Lcom/tappx/a/f;

    invoke-direct {v0}, Lcom/tappx/a/f;-><init>()V

    .line 7
    sput-object v0, Lcom/tappx/a/f;->c:Lcom/tappx/a/f;

    .line 9
    :cond_12
    monitor-exit v1

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :goto_17
    return-object v0
.end method

.method private static a([B[B)[B
    .registers 6

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    return-object p0

    :cond_6
    const/16 v0, 0x18

    new-array v1, v0, [B

    .line 11
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    array-length v2, p0

    array-length p0, p0

    sub-int/2addr v0, p0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/tappx/a/f;->a()Lcom/tappx/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tappx/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const/4 v0, 0x0

    .line 13
    :try_start_5
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/tappx/a/f;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 15
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    const-string p1, ""

    return-object p1
.end method
