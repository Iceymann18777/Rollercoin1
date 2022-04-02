.class public final Lcom/google/android/gms/internal/ads/zzhd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final zzajq:Ljava/lang/Runnable;

.field private zzajr:Lcom/google/android/gms/internal/ads/zzhk;

.field private zzajs:Lcom/google/android/gms/internal/ads/zzho;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhe;-><init>(Lcom/google/android/gms/internal/ads/zzhd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajq:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private final connect()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v1, :cond_c

    goto :goto_2c

    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzhg;-><init>(Lcom/google/android/gms/internal/ads/zzhd;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhh;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(Lcom/google/android/gms/internal/ads/zzhd;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhd;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzez()Lcom/google/android/gms/internal/ads/zzamg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamg;->zzsa()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzhk;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhk;->checkAvailabilityAndConnect()V

    monitor-exit v0

    return-void

    :cond_2c
    :goto_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private final disconnect()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhk;->isConnected()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhk;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhk;->disconnect()V

    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajs:Lcom/google/android/gms/internal/ads/zzho;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzhd;Lcom/google/android/gms/internal/ads/zzhk;)Lcom/google/android/gms/internal/ads/zzhk;
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzhd;Lcom/google/android/gms/internal/ads/zzho;)Lcom/google/android/gms/internal/ads/zzho;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajs:Lcom/google/android/gms/internal/ads/zzho;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzhd;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhd;->disconnect()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzhd;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhd;->connect()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzhd;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhd;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzhd;)Lcom/google/android/gms/internal/ads/zzhk;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    return-object p0
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_c

    monitor-exit v0

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhd;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzbdo:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhd;->connect()V

    goto :goto_46

    :cond_28
    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzbdn:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_46

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhf;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Lcom/google/android/gms/internal/ads/zzhd;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgg;->zza(Lcom/google/android/gms/internal/ads/zzgj;)V

    :cond_46
    :goto_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_6 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhl;)Lcom/google/android/gms/internal/ads/zzhi;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajs:Lcom/google/android/gms/internal/ads/zzho;

    if-nez v1, :cond_e

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>()V

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_23

    return-object p1

    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajs:Lcom/google/android/gms/internal/ads/zzho;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzho;->zza(Lcom/google/android/gms/internal/ads/zzhl;)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_16
    .catchall {:try_start_e .. :try_end_14} :catchall_23

    :try_start_14
    monitor-exit v0

    return-object p1

    :catch_16
    move-exception p1

    const-string v1, "Unable to call into cache service."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public final zzhh()V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbdp:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhd;->connect()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajq:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajq:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/zznk;->zzbdq:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_15 .. :try_end_40} :catchall_3e

    throw v1

    :cond_41
    return-void
.end method
