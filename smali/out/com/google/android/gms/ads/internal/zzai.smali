.class final Lcom/google/android/gms/ads/internal/zzai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzyh:Lcom/google/android/gms/internal/ads/zzjj;

.field private final synthetic zzyi:Lcom/google/android/gms/ads/internal/zzah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzah;Lcom/google/android/gms/internal/ads/zzjj;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzai;->zzyi:Lcom/google/android/gms/ads/internal/zzah;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzai;->zzyh:Lcom/google/android/gms/internal/ads/zzjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zzyi:Lcom/google/android/gms/ads/internal/zzah;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzah;->zza(Lcom/google/android/gms/ads/internal/zzah;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzai;->zzyi:Lcom/google/android/gms/ads/internal/zzah;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzah;->zzb(Lcom/google/android/gms/ads/internal/zzah;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzai;->zzyi:Lcom/google/android/gms/ads/internal/zzah;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzai;->zzyh:Lcom/google/android/gms/internal/ads/zzjj;

    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/zzah;->zza(Lcom/google/android/gms/ads/internal/zzah;Lcom/google/android/gms/internal/ads/zzjj;)V

    goto :goto_1f

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzai;->zzyi:Lcom/google/android/gms/ads/internal/zzah;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzai;->zzyh:Lcom/google/android/gms/internal/ads/zzjj;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/zzah;->zza(Lcom/google/android/gms/ads/internal/zzah;Lcom/google/android/gms/internal/ads/zzjj;I)V

    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1
.end method
