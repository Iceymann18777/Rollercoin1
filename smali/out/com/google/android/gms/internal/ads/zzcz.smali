.class public Lcom/google/android/gms/internal/ads/zzcz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzcz$zza;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile zzqt:Z

.field protected zzrt:Landroid/content/Context;

.field private zzru:Ljava/util/concurrent/ExecutorService;

.field private zzrv:Ldalvik/system/DexClassLoader;

.field private zzrw:Lcom/google/android/gms/internal/ads/zzck;

.field private zzrx:[B

.field private volatile zzry:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private zzrz:Ljava/util/concurrent/Future;

.field private zzsa:Z

.field private volatile zzsb:Lcom/google/android/gms/internal/ads/zzba;

.field private zzsc:Ljava/util/concurrent/Future;

.field private zzsd:Lcom/google/android/gms/internal/ads/zzcc;

.field private zzse:Z

.field private zzsf:Z

.field private zzsg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeg;",
            ">;"
        }
    .end annotation
.end field

.field private zzsh:Z

.field private zzsi:Z

.field private zzsj:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcz;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzry:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzqt:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrz:Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsb:Lcom/google/android/gms/internal/ads/zzba;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsc:Ljava/util/concurrent/Future;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzse:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsf:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsh:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsi:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsj:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    :cond_21
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsa:Z

    if-eqz v1, :cond_26

    move-object p1, v2

    :cond_26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrt:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsg:Ljava/util/Map;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzba;)Lcom/google/android/gms/internal/ads/zzba;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsb:Lcom/google/android/gms/internal/ads/zzba;

    return-object p1
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzcz;
    .registers 13

    const-string v0, "%s/%s.dex"

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcz;-><init>(Landroid/content/Context;)V

    :try_start_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzda;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzda;-><init>()V

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzru:Ljava/util/concurrent/ExecutorService;

    iput-boolean p3, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzqt:Z

    if-eqz p3, :cond_23

    iget-object p0, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzru:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdb;

    invoke-direct {p3, v1}, Lcom/google/android/gms/internal/ads/zzdb;-><init>(Lcom/google/android/gms/internal/ads/zzcz;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzrz:Ljava/util/concurrent/Future;

    :cond_23
    iget-object p0, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzru:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdd;

    invoke-direct {p3, v1}, Lcom/google/android/gms/internal/ads/zzdd;-><init>(Lcom/google/android/gms/internal/ads/zzcz;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2d
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_7 .. :try_end_2d} :catch_155

    const/4 p0, 0x1

    const/4 p3, 0x0

    :try_start_2f
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzrt:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_3d

    const/4 v3, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzse:Z

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzrt:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_4a

    const/4 v2, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzsf:Z
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_4d

    :catchall_4d
    :try_start_4d
    invoke-virtual {v1, p3, p0}, Lcom/google/android/gms/internal/ads/zzcz;->zza(IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdg;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_71

    sget-object v2, Lcom/google/android/gms/internal/ads/zznk;->zzbaz:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_69

    goto :goto_71

    :cond_69
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Task Context initialization must not be called from the UI thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_71
    :goto_71
    new-instance v2, Lcom/google/android/gms/internal/ads/zzck;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzck;-><init>(Ljava/security/SecureRandom;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzrw:Lcom/google/android/gms/internal/ads/zzck;
    :try_end_79
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_4d .. :try_end_79} :catch_155

    :try_start_79
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzck;->zzl(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzrx:[B
    :try_end_7f
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_79 .. :try_end_7f} :catch_14e
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_79 .. :try_end_7f} :catch_155

    :try_start_7f
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzrt:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_98

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzrt:Landroid/content/Context;

    const-string v2, "dex"

    invoke-virtual {p1, v2, p3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_92

    goto :goto_98

    :cond_92
    new-instance p0, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>()V

    throw p0

    :cond_98
    :goto_98
    const-string v2, "1521499837408"

    new-instance v4, Ljava/io/File;

    const-string v5, "%s/%s.jar"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, p3

    aput-object v2, v7, p0

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_c9

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzrw:Lcom/google/android/gms/internal/ads/zzck;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzrx:[B

    invoke-virtual {v5, v7, p2}, Lcom/google/android/gms/internal/ads/zzck;->zza([BLjava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    array-length v7, p2

    invoke-virtual {v5, p2, p3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_c9
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_cc
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_cc} :catch_147
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_cc} :catch_140
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_7f .. :try_end_cc} :catch_139
    .catch Ljava/lang/NullPointerException; {:try_start_7f .. :try_end_cc} :catch_132
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_7f .. :try_end_cc} :catch_155

    :try_start_cc
    new-instance p2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzrt:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {p2, v5, v7, v3, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p2, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzrv:Ldalvik/system/DexClassLoader;
    :try_end_e1
    .catchall {:try_start_cc .. :try_end_e1} :catchall_11d

    :try_start_e1
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Ljava/io/File;)V

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzcz;->zza(Ljava/io/File;Ljava/lang/String;)V

    new-array p2, v6, [Ljava/lang/Object;

    aput-object p1, p2, p3

    aput-object v2, p2, p0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcz;->zzm(Ljava/lang/String;)V
    :try_end_f4
    .catch Ljava/io/FileNotFoundException; {:try_start_e1 .. :try_end_f4} :catch_147
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_f4} :catch_140
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_e1 .. :try_end_f4} :catch_139
    .catch Ljava/lang/NullPointerException; {:try_start_e1 .. :try_end_f4} :catch_132
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_e1 .. :try_end_f4} :catch_155

    :try_start_f4
    iget-boolean p1, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzsj:Z

    if-nez p1, :cond_113

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzrt:Landroid/content/Context;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcz$zza;

    invoke-direct {p3, v1, v3}, Lcom/google/android/gms/internal/ads/zzcz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzda;)V

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean p0, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzsj:Z

    :cond_113
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcc;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzcc;-><init>(Lcom/google/android/gms/internal/ads/zzcz;)V

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzsd:Lcom/google/android/gms/internal/ads/zzcc;

    iput-boolean p0, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzsh:Z
    :try_end_11c
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_f4 .. :try_end_11c} :catch_155

    goto :goto_155

    :catchall_11d
    move-exception p2

    :try_start_11e
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Ljava/io/File;)V

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzcz;->zza(Ljava/io/File;Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, p3

    aput-object v2, v3, p0

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcz;->zzm(Ljava/lang/String;)V

    throw p2
    :try_end_132
    .catch Ljava/io/FileNotFoundException; {:try_start_11e .. :try_end_132} :catch_147
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_132} :catch_140
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_11e .. :try_end_132} :catch_139
    .catch Ljava/lang/NullPointerException; {:try_start_11e .. :try_end_132} :catch_132
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_11e .. :try_end_132} :catch_155

    :catch_132
    move-exception p0

    :try_start_133
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_139
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_140
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_147
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_14e
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_155
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_133 .. :try_end_155} :catch_155

    :catch_155
    :goto_155
    return-object v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcz;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcz;->zzal()V

    return-void
.end method

.method private final zza(Ljava/io/File;Ljava/lang/String;)V
    .registers 11

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "%s/%s.tmp"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    return-void

    :cond_1b
    new-instance v2, Ljava/io/File;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_33

    return-void

    :cond_33
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-gtz p1, :cond_3e

    return-void

    :cond_3e
    long-to-int p1, v4

    new-array p1, p1, [B

    const/4 v1, 0x0

    :try_start_42
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_b3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_42 .. :try_end_47} :catch_b3
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_42 .. :try_end_47} :catch_b3
    .catchall {:try_start_42 .. :try_end_47} :catchall_a1

    :try_start_47
    invoke-virtual {v4, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4b} :catch_9e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_4b} :catch_9e
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_47 .. :try_end_4b} :catch_9e
    .catchall {:try_start_47 .. :try_end_4b} :catchall_9a

    if-gtz v5, :cond_54

    :try_start_4d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_50

    :catch_50
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Ljava/io/File;)V

    return-void

    :cond_54
    :try_start_54
    new-instance v5, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbe;-><init>()V

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/ads/zzbe;->zzgs:[B

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iput-object p2, v5, Lcom/google/android/gms/internal/ads/zzbe;->zzgr:[B

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrw:Lcom/google/android/gms/internal/ads/zzck;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrx:[B

    invoke-virtual {p2, v6, p1}, Lcom/google/android/gms/internal/ads/zzck;->zzb([B[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, v5, Lcom/google/android/gms/internal/ads/zzbe;->data:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbk;->zzb([B)[B

    move-result-object p1

    iput-object p1, v5, Lcom/google/android/gms/internal/ads/zzbe;->zzgq:[B

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_83} :catch_9e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_54 .. :try_end_83} :catch_9e
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_54 .. :try_end_83} :catch_9e
    .catchall {:try_start_54 .. :try_end_83} :catchall_9a

    :try_start_83
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbfi;->zzb(Lcom/google/android/gms/internal/ads/zzbfi;)[B

    move-result-object p2

    array-length v0, p2

    invoke-virtual {p1, p2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8e} :catch_9f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_83 .. :try_end_8e} :catch_9f
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_83 .. :try_end_8e} :catch_9f
    .catchall {:try_start_83 .. :try_end_8e} :catchall_98

    :try_start_8e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_91

    :catch_91
    :try_start_91
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_94

    :catch_94
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Ljava/io/File;)V

    return-void

    :catchall_98
    move-exception p2

    goto :goto_9c

    :catchall_9a
    move-exception p2

    move-object p1, v1

    :goto_9c
    move-object v1, v4

    goto :goto_a3

    :catch_9e
    move-object p1, v1

    :catch_9f
    move-object v1, v4

    goto :goto_b4

    :catchall_a1
    move-exception p2

    move-object p1, v1

    :goto_a3
    if-eqz v1, :cond_aa

    :try_start_a5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_aa

    :catch_a9
    nop

    :cond_aa
    :goto_aa
    if-eqz p1, :cond_af

    :try_start_ac
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_af

    :catch_af
    :cond_af
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Ljava/io/File;)V

    throw p2

    :catch_b3
    move-object p1, v1

    :goto_b4
    if-eqz v1, :cond_bb

    :try_start_b6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_bb

    :catch_ba
    nop

    :cond_bb
    :goto_bb
    if-eqz p1, :cond_c0

    :try_start_bd
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c0

    :catch_c0
    :cond_c0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Ljava/io/File;)V

    return-void
.end method

.method private static zza(ILcom/google/android/gms/internal/ads/zzba;)Z
    .registers 6

    const/4 v0, 0x4

    if-ge p0, v0, :cond_53

    const/4 p0, 0x1

    if-nez p1, :cond_7

    return p0

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbbc:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzcx:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzcx:Ljava/lang/String;

    const-string v1, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    return p0

    :cond_28
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbbd:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzfn:Lcom/google/android/gms/internal/ads/zzbf;

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzba;->zzfn:Lcom/google/android/gms/internal/ads/zzbf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbf;->zzgl:Ljava/lang/Long;

    if-eqz v0, :cond_52

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzba;->zzfn:Lcom/google/android/gms/internal/ads/zzbf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbf;->zzgl:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_53

    :cond_52
    return p0

    :cond_53
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcz;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsi:Z

    return p1
.end method

.method private final zzal()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzry:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsa:Z

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrt:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzry:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_14
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzry:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-void
.end method

.method private final zzam()Lcom/google/android/gms/internal/ads/zzba;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrt:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrt:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrt:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzatq;->zzl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzba;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    goto :goto_25

    :catchall_24
    const/4 v0, 0x0

    :goto_25
    return-object v0
.end method

.method private static zzb(Ljava/io/File;)V
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcz;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "File %s not found. No need for deletion"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static synthetic zzb(ILcom/google/android/gms/internal/ads/zzba;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzcz;->zza(ILcom/google/android/gms/internal/ads/zzba;)Z

    move-result p0

    return p0
.end method

.method private final zzb(Ljava/io/File;Ljava/lang/String;)Z
    .registers 12

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "%s/%s.tmp"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    return v3

    :cond_1b
    new-instance v2, Ljava/io/File;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_33

    return v3

    :cond_33
    const/4 p1, 0x0

    :try_start_34
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_42

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Ljava/io/File;)V

    return v3

    :cond_42
    long-to-int v1, v5

    new-array v1, v1, [B

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4a} :catch_d4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_34 .. :try_end_4a} :catch_d4
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_34 .. :try_end_4a} :catch_d4
    .catchall {:try_start_34 .. :try_end_4a} :catchall_c5

    :try_start_4a
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_5e

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcz;->TAG:Ljava/lang/String;

    const-string v1, "Cannot read the cache data."

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Ljava/io/File;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5a} :catch_c2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4a .. :try_end_5a} :catch_c2
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_4a .. :try_end_5a} :catch_c2
    .catchall {:try_start_4a .. :try_end_5a} :catchall_be

    :try_start_5a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5d

    :catch_5d
    return v3

    :cond_5e
    :try_start_5e
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbe;-><init>()V

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzbfi;->zza(Lcom/google/android/gms/internal/ads/zzbfi;[B)Lcom/google/android/gms/internal/ads/zzbfi;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbe;

    new-instance v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbe;->zzgr:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b7

    iget-object p2, v1, Lcom/google/android/gms/internal/ads/zzbe;->zzgq:[B

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbe;->data:[B

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzbk;->zzb([B)[B

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_b7

    iget-object p2, v1, Lcom/google/android/gms/internal/ads/zzbe;->zzgs:[B

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_93

    goto :goto_b7

    :cond_93
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrw:Lcom/google/android/gms/internal/ads/zzck;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrx:[B

    new-instance v6, Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbe;->data:[B

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0, v6}, Lcom/google/android/gms/internal/ads/zzck;->zza([BLjava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_aa} :catch_c2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5e .. :try_end_aa} :catch_c2
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_5e .. :try_end_aa} :catch_c2
    .catchall {:try_start_5e .. :try_end_aa} :catchall_be

    :try_start_aa
    array-length p1, p2

    invoke-virtual {v0, p2, v3, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ae} :catch_c3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_aa .. :try_end_ae} :catch_c3
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_aa .. :try_end_ae} :catch_c3
    .catchall {:try_start_aa .. :try_end_ae} :catchall_b5

    :try_start_ae
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b1

    :catch_b1
    :try_start_b1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b4

    :catch_b4
    return v4

    :catchall_b5
    move-exception p2

    goto :goto_c0

    :cond_b7
    :goto_b7
    :try_start_b7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Ljava/io/File;)V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_c2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b7 .. :try_end_ba} :catch_c2
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_b7 .. :try_end_ba} :catch_c2
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_be

    :try_start_ba
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_bd

    :catch_bd
    return v3

    :catchall_be
    move-exception p2

    move-object v0, p1

    :goto_c0
    move-object p1, v5

    goto :goto_c7

    :catch_c2
    move-object v0, p1

    :catch_c3
    move-object p1, v5

    goto :goto_d5

    :catchall_c5
    move-exception p2

    move-object v0, p1

    :goto_c7
    if-eqz p1, :cond_ce

    :try_start_c9
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_ce

    :catch_cd
    nop

    :cond_ce
    :goto_ce
    if-eqz v0, :cond_d3

    :try_start_d0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d3

    :catch_d3
    :cond_d3
    throw p2

    :catch_d4
    move-object v0, p1

    :goto_d5
    if-eqz p1, :cond_dc

    :try_start_d7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_dc

    :catch_db
    nop

    :cond_dc
    :goto_dc
    if-eqz v0, :cond_e1

    :try_start_de
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e1

    :catch_e1
    :cond_e1
    return v3
.end method

.method private static zzm(Ljava/lang/String;)V
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrt:Landroid/content/Context;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsh:Z

    return v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsg:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeg;

    if-nez p1, :cond_11

    const/4 p1, 0x0

    return-object p1

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzaw()Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method final zza(IZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsf:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzru:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdc;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdc;-><init>(Lcom/google/android/gms/internal/ads/zzcz;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p1, :cond_14

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsc:Ljava/util/concurrent/Future;

    :cond_14
    return-void
.end method

.method public final varargs zza(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsg:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsg:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeg;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(Lcom/google/android/gms/internal/ads/zzcz;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public final zzab()Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzru:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final zzac()Ldalvik/system/DexClassLoader;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrv:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public final zzad()Lcom/google/android/gms/internal/ads/zzck;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrw:Lcom/google/android/gms/internal/ads/zzck;

    return-object v0
.end method

.method public final zzae()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrx:[B

    return-object v0
.end method

.method public final zzaf()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzse:Z

    return v0
.end method

.method public final zzag()Lcom/google/android/gms/internal/ads/zzcc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsd:Lcom/google/android/gms/internal/ads/zzcc;

    return-object v0
.end method

.method public final zzah()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsf:Z

    return v0
.end method

.method public final zzai()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsi:Z

    return v0
.end method

.method public final zzaj()Lcom/google/android/gms/internal/ads/zzba;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsb:Lcom/google/android/gms/internal/ads/zzba;

    return-object v0
.end method

.method public final zzak()Ljava/util/concurrent/Future;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsc:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final zzan()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzqt:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzry:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzry:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrz:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_21

    const-wide/16 v2, 0x7d0

    :try_start_13
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrz:Ljava/util/concurrent/Future;
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_21
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_1a} :catch_21
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzrz:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :catch_21
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzry:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0
.end method

.method final zzb(IZ)Lcom/google/android/gms/internal/ads/zzba;
    .registers 3

    if-lez p1, :cond_a

    if-eqz p2, :cond_a

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    :try_start_7
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcz;->zzam()Lcom/google/android/gms/internal/ads/zzba;

    move-result-object p1

    return-object p1
.end method

.method public final zzx()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzsd:Lcom/google/android/gms/internal/ads/zzcc;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcc;->zzx()I

    move-result v0

    goto :goto_b

    :cond_9
    const/high16 v0, -0x80000000

    :goto_b
    return v0
.end method
