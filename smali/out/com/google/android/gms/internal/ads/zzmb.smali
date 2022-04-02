.class public final Lcom/google/android/gms/internal/ads/zzmb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static zzate:Lcom/google/android/gms/internal/ads/zzmb;


# instance fields
.field private zzatf:Lcom/google/android/gms/internal/ads/zzlj;

.field private zzatg:Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzmb;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zziv()Lcom/google/android/gms/internal/ads/zzmb;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzmb;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzmb;->zzate:Lcom/google/android/gms/internal/ads/zzmb;

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzmb;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzmb;->zzate:Lcom/google/android/gms/internal/ads/zzmb;

    :cond_e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzmb;->zzate:Lcom/google/android/gms/internal/ads/zzmb;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public final getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzmb;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzatg:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzatg:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v0

    return-object p1

    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzxm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzxm;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzig()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjz;

    invoke-direct {v3, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzjz;-><init>(Lcom/google/android/gms/internal/ads/zzjr;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzxn;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/zzjr$zza;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzagz;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzahm;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzahm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzagz;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzatg:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v0

    return-object v2

    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public final openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzatf:Lcom/google/android/gms/internal/ads/zzlj;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "MobileAds.initialize() must be called prior to opening debug menu."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzatf:Lcom/google/android/gms/internal/ads/zzlj;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzlj;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p1

    const-string p2, "Unable to open debug menu."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setAppMuted(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzatf:Lcom/google/android/gms/internal/ads/zzlj;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "MobileAds.initialize() must be called prior to setting app muted state."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzatf:Lcom/google/android/gms/internal/ads/zzlj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzlj;->setAppMuted(Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    const-string v0, "Unable to set app mute state."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setAppVolume(F)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    const-string v3, "The app volume must be a value between 0 and 1 inclusive."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzatf:Lcom/google/android/gms/internal/ads/zzlj;

    if-eqz v2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    const-string v1, "MobileAds.initialize() must be called prior to setting the app volume."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzatf:Lcom/google/android/gms/internal/ads/zzlj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzlj;->setAppVolume(F)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    const-string v0, "Unable to set app volume."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzmd;)V
    .registers 6

    sget-object p3, Lcom/google/android/gms/internal/ads/zzmb;->sLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzatf:Lcom/google/android/gms/internal/ads/zzlj;

    if-eqz v0, :cond_9

    monitor-exit p3
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_41

    return-void

    :cond_9
    if-eqz p1, :cond_39

    :try_start_b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzig()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzjw;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzjw;-><init>(Lcom/google/android/gms/internal/ads/zzjr;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/zzjr$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzlj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzatf:Lcom/google/android/gms/internal/ads/zzlj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlj;->zza()V

    if-eqz p2, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzatf:Lcom/google/android/gms/internal/ads/zzlj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzmc;-><init>(Lcom/google/android/gms/internal/ads/zzmb;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzlj;->zza(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_30} :catch_31
    .catchall {:try_start_b .. :try_end_30} :catchall_41

    goto :goto_37

    :catch_31
    move-exception p1

    :try_start_32
    const-string p2, "MobileAdsSettingManager initialization failed"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    monitor-exit p3

    return-void

    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_41
    move-exception p1

    monitor-exit p3
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public final zzdo()F
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzatf:Lcom/google/android/gms/internal/ads/zzlj;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_7

    return v1

    :cond_7
    :try_start_7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlj;->zzdo()F

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_12

    :catch_c
    move-exception v0

    const-string v2, "Unable to get app volume."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    return v1
.end method

.method public final zzdp()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmb;->zzatf:Lcom/google/android/gms/internal/ads/zzlj;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlj;->zzdp()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception v0

    const-string v2, "Unable to get app mute state."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return v1
.end method
