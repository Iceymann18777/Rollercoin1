.class public Lcom/google/android/gms/internal/ads/zzkd;
.super Lcom/google/android/gms/ads/AdListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzasi:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzasi:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzasi:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

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

.method public onAdFailedToLoad(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzasi:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzasi:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

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

.method public onAdLeftApplication()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzasi:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzasi:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

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

.method public onAdLoaded()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzasi:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzasi:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

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

.method public onAdOpened()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzasi:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzasi:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

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

.method public final zza(Lcom/google/android/gms/ads/AdListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkd;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkd;->zzasi:Lcom/google/android/gms/ads/AdListener;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method
