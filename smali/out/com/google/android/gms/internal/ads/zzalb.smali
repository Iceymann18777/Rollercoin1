.class public final Lcom/google/android/gms/internal/ads/zzalb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private zzcdn:F

.field private zzcdt:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalb;->zzcdt:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalb;->zzcdn:F

    return-void
.end method

.method public static zzay(Landroid/content/Context;)F
    .registers 4

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    :cond_c
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    if-nez v2, :cond_18

    return v0

    :cond_18
    int-to-float p0, p0

    int-to-float v0, v2

    div-float/2addr p0, v0

    return p0
.end method

.method private final declared-synchronized zzrr()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalb;->zzcdn:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit p0

    goto :goto_11

    :goto_10
    throw v0

    :goto_11
    goto :goto_10
.end method


# virtual methods
.method public final declared-synchronized setAppMuted(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzalb;->zzcdt:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setAppVolume(F)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalb;->zzcdn:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzdo()F
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzalb;->zzrr()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalb;->zzcdn:F
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    monitor-exit p0

    return v0

    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzdp()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalb;->zzcdt:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
