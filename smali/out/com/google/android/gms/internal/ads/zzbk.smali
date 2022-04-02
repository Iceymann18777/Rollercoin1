.class final Lcom/google/android/gms/internal/ads/zzbk;
.super Ljava/lang/Object;


# static fields
.field private static zzhy:Z = false

.field private static zzhz:Ljava/security/MessageDigest;

.field private static final zzia:Ljava/lang/Object;

.field private static final zzib:Ljava/lang/Object;

.field static zzic:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbk;->zzia:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbk;->zzib:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbk;->zzic:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzba;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbfi;->zzb(Lcom/google/android/gms/internal/ads/zzbfi;)[B

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbay:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_48

    sget-object v0, Lcom/google/android/gms/internal/ads/zzde;->zzso:Lcom/google/android/gms/internal/ads/zzauf;

    if-eqz v0, :cond_42

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_25

    :cond_23
    new-array p1, v1, [B

    :goto_25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzde;->zzso:Lcom/google/android/gms/internal/ads/zzauf;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzauf;->zzc([B[B)[B

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbg;-><init>()V

    new-array v0, v2, [[B

    aput-object p0, v0, v1

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzbg;->zzgv:[[B

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gms/internal/ads/zzbg;->zzfe:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbfi;->zzb(Lcom/google/android/gms/internal/ads/zzbfi;)[B

    move-result-object p0

    goto :goto_9a

    :cond_42
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p0

    :cond_48
    const/16 v0, 0xff

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzbk;->zza([BI)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_57

    goto :goto_8c

    :cond_57
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbg;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbg;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [[B

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzbg;->zzgv:[[B

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_69
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5, p1, v1}, Lcom/google/android/gms/internal/ads/zzbk;->zza([BLjava/lang/String;Z)[B

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzbg;->zzgv:[[B

    add-int/lit8 v7, v4, 0x1

    aput-object v5, v6, v4

    move v4, v7

    goto :goto_69

    :cond_81
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbk;->zzb([B)[B

    move-result-object p0

    iput-object p0, v3, Lcom/google/android/gms/internal/ads/zzbg;->zzgq:[B

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbfi;->zzb(Lcom/google/android/gms/internal/ads/zzbfi;)[B

    move-result-object p0

    goto :goto_9a

    :cond_8c
    :goto_8c
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbk;->zzc(J)Lcom/google/android/gms/internal/ads/zzba;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbfi;->zzb(Lcom/google/android/gms/internal/ads/zzbfi;)[B

    move-result-object p0

    invoke-static {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzbk;->zza([BLjava/lang/String;Z)[B

    move-result-object p0

    :goto_9a
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzbi;->zza([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    .registers 1

    sput-object p0, Lcom/google/android/gms/internal/ads/zzbk;->zzhz:Ljava/security/MessageDigest;

    return-object p0
.end method

.method private static zza([BI)Ljava/util/Vector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Vector<",
            "[B>;"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p0, :cond_2c

    array-length v0, p0

    if-gtz v0, :cond_7

    goto :goto_2c

    :cond_7
    array-length v0, p0

    const/16 v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v0, :cond_2b

    mul-int/lit16 v4, v3, 0xff

    :try_start_18
    array-length v5, p0

    sub-int/2addr v5, v4

    if-le v5, v1, :cond_1f

    add-int/lit16 v5, v4, 0xff

    goto :goto_20

    :cond_1f
    array-length v5, p0

    :goto_20
    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_27} :catch_2a

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :catch_2a
    return-object p1

    :cond_2b
    return-object v2

    :cond_2c
    :goto_2c
    return-object p1
.end method

.method private static zza([BLjava/lang/String;Z)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-eqz p2, :cond_5

    const/16 v0, 0xef

    goto :goto_7

    :cond_5
    const/16 v0, 0xff

    :goto_7
    array-length v1, p0

    if-le v1, v0, :cond_14

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbk;->zzc(J)Lcom/google/android/gms/internal/ads/zzba;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbfi;->zzb(Lcom/google/android/gms/internal/ads/zzbfi;)[B

    move-result-object p0

    :cond_14
    array-length v1, p0

    if-ge v1, v0, :cond_39

    array-length v1, p0

    sub-int v1, v0, v1

    new-array v1, v1, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v2, p0

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_49

    :cond_39
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p0

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const/16 v0, 0x100

    if-eqz p2, :cond_65

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbk;->zzb([B)[B

    move-result-object p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    :cond_65
    new-array p2, v0, [B

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbn;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbn;->zzpq:[Lcom/google/android/gms/internal/ads/zzbp;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_71
    if-ge v3, v1, :cond_7b

    aget-object v4, v0, v3

    invoke-interface {v4, p0, p2}, Lcom/google/android/gms/internal/ads/zzbp;->zza([B[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    :cond_7b
    if-eqz p1, :cond_9d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_9d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x20

    if-le p0, v0, :cond_8f

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_8f
    const-string p0, "UTF-8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzazx;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzazx;-><init>([B)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzazx;->zzn([B)V

    :cond_9d
    return-object p2
.end method

.method public static zzb([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbk;->zzia:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbk;->zzw()Ljava/security/MessageDigest;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbk;->zzhz:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_17
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Cannot compute hash"

    invoke-direct {p0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method private static zzc(J)Lcom/google/android/gms/internal/ads/zzba;
    .registers 4

    new-instance p0, Lcom/google/android/gms/internal/ads/zzba;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzba;-><init>()V

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzba;->zzdu:Ljava/lang/Long;

    return-object p0
.end method

.method static zzv()V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbk;->zzib:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzbk;->zzhy:Z

    if-nez v1, :cond_18

    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzbk;->zzhy:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbm;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzbm;-><init>(Lcom/google/android/gms/internal/ads/zzbl;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private static zzw()Ljava/security/MessageDigest;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbk;->zzv()V

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbk;->zzic:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    const/4 v0, 0x0

    :goto_f
    const/4 v1, 0x0

    if-nez v0, :cond_13

    return-object v1

    :cond_13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbk;->zzhz:Ljava/security/MessageDigest;

    if-nez v0, :cond_18

    return-object v1

    :cond_18
    return-object v0
.end method
