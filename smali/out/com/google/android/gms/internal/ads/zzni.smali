.class public final Lcom/google/android/gms/internal/ads/zzni;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzatv:Landroid/os/ConditionVariable;

.field private zzatw:Landroid/content/SharedPreferences;

.field private zzatx:Landroid/content/Context;

.field private volatile zzzv:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzatv:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzzv:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzatw:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzni;)Landroid/content/SharedPreferences;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzatw:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzzv:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzzv:Z

    if-eqz v1, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_16

    move-object v1, p1

    goto :goto_1a

    :cond_16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_1a
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzatx:Landroid/content/Context;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_53

    :try_start_1c
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2d

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_4c

    if-nez v1, :cond_2b

    goto :goto_2c

    :cond_2b
    move-object p1, v1

    :goto_2c
    move-object v1, p1

    :cond_2d
    if-nez v1, :cond_36

    :try_start_2f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzatv:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_53

    return-void

    :cond_36
    :try_start_36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzii()Lcom/google/android/gms/internal/ads/zznh;

    const-string p1, "google_ads_flags"

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzatw:Landroid/content/SharedPreferences;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzzv:Z
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_4c

    :try_start_45
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzatv:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzatv:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw p1

    :catchall_53
    move-exception p1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzna<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzatv:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzzv:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzatw:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1f

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzzv:Z

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzni;->zzatw:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1e

    goto :goto_2b

    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_31

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->zzatx:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zznj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zznj;-><init>(Lcom/google/android/gms/internal/ads/zzni;Lcom/google/android/gms/internal/ads/zzna;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaml;->zza(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzna;->zzja()Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw p1

    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Flags.initialize() was not called!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
