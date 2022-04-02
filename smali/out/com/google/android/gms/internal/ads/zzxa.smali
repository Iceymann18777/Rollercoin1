.class public final Lcom/google/android/gms/internal/ads/zzxa;
.super Lcom/google/android/gms/internal/ads/zzxu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzbtf:Lcom/google/android/gms/internal/ads/zzxf;

.field private zzbtg:Lcom/google/android/gms/internal/ads/zzwz;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxu;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxa;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxa;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzwz;->zzce()V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final onAdClosed()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxa;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzwz;->zzcf()V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final onAdFailedToLoad(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxa;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtf:Lcom/google/android/gms/internal/ads/zzxf;

    if-eqz v1, :cond_15

    const/4 v1, 0x3

    if-ne p1, v1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x2

    :goto_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtf:Lcom/google/android/gms/internal/ads/zzxf;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzxf;->zzx(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtf:Lcom/google/android/gms/internal/ads/zzxf;

    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public final onAdImpression()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxa;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzwz;->zzcj()V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final onAdLeftApplication()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxa;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzwz;->zzcg()V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final onAdLoaded()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxa;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtf:Lcom/google/android/gms/internal/ads/zzxf;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtf:Lcom/google/android/gms/internal/ads/zzxf;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzxf;->zzx(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtf:Lcom/google/android/gms/internal/ads/zzxf;

    monitor-exit v0

    return-void

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzwz;->zzci()V

    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public final onAdOpened()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxa;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzwz;->zzch()V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxa;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzwz;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public final onVideoEnd()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxa;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzwz;->zzcd()V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwz;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxa;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxf;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxa;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtf:Lcom/google/android/gms/internal/ads/zzxf;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxw;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxa;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtf:Lcom/google/android/gms/internal/ads/zzxf;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtf:Lcom/google/android/gms/internal/ads/zzxf;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzxf;->zza(ILcom/google/android/gms/internal/ads/zzxw;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtf:Lcom/google/android/gms/internal/ads/zzxf;

    monitor-exit v0

    return-void

    :cond_12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwz;->zzci()V

    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzqs;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxa;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzbtg:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzwz;->zza(Lcom/google/android/gms/internal/ads/zzqs;Ljava/lang/String;)V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public final zzbj(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
