.class public final Lcom/google/android/gms/ads/VideoController;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    }
.end annotation


# static fields
.field public static final PLAYBACK_STATE_ENDED:I = 0x3

.field public static final PLAYBACK_STATE_PAUSED:I = 0x2

.field public static final PLAYBACK_STATE_PLAYING:I = 0x1

.field public static final PLAYBACK_STATE_READY:I = 0x5

.field public static final PLAYBACK_STATE_UNKNOWN:I


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzux:Lcom/google/android/gms/internal/ads/zzlo;

.field private zzuy:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAspectRatio()F
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzlo;->getAspectRatio()F

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_12
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    :try_start_10
    monitor-exit v0

    return v1

    :catch_12
    move-exception v1

    const-string v3, "Unable to call getAspectRatio on video controller."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    return v2

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final getPlaybackState()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzlo;->getPlaybackState()I

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_12
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    :try_start_10
    monitor-exit v0

    return v1

    :catch_12
    move-exception v1

    const-string v3, "Unable to call getPlaybackState on video controller."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    return v2

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final getVideoLifecycleCallbacks()Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzuy:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final hasVideoContent()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public final isClickToExpandEnabled()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzlo;->isClickToExpandEnabled()Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_12
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    :try_start_10
    monitor-exit v0

    return v1

    :catch_12
    move-exception v1

    const-string v3, "Unable to call isClickToExpandEnabled."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    return v2

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final isCustomControlsEnabled()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzlo;->isCustomControlsEnabled()Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_12
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    :try_start_10
    monitor-exit v0

    return v1

    :catch_12
    move-exception v1

    const-string v3, "Unable to call isUsingCustomPlayerControls."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    return v2

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final isMuted()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    const/4 v2, 0x1

    if-nez v1, :cond_a

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzlo;->isMuted()Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_12
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    :try_start_10
    monitor-exit v0

    return v1

    :catch_12
    move-exception v1

    const-string v3, "Unable to call isMuted on video controller."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    return v2

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final mute(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzlo;->mute(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    goto :goto_15

    :catch_f
    move-exception p1

    :try_start_10
    const-string v1, "Unable to call mute on video controller."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public final pause()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzlo;->pause()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    goto :goto_15

    :catch_f
    move-exception v1

    :try_start_10
    const-string v2, "Unable to call pause on video controller."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public final play()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzlo;->play()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    goto :goto_15

    :catch_f
    move-exception v1

    :try_start_10
    const-string v2, "Unable to call play on video controller."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public final setVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V
    .registers 5

    const-string v0, "VideoLifecycleCallbacks may not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iput-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzuy:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    if-nez v1, :cond_10

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_23

    return-void

    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzmt;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzmt;-><init>(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzlo;->zza(Lcom/google/android/gms/internal/ads/zzlr;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1b
    .catchall {:try_start_10 .. :try_end_1a} :catchall_23

    goto :goto_21

    :catch_1b
    move-exception p1

    :try_start_1c
    const-string v1, "Unable to call setVideoLifecycleCallbacks on video controller."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzlo;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    iget-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzuy:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzuy:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/VideoController;->setVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public final zzbc()Lcom/google/android/gms/internal/ads/zzlo;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzux:Lcom/google/android/gms/internal/ads/zzlo;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
