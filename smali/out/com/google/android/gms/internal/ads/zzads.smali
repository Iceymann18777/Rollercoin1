.class final Lcom/google/android/gms/internal/ads/zzads;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzccn:Lcom/google/android/gms/internal/ads/zzadk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzadk;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzads;->zzccn:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzads;->zzccn:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzadk;->zza(Lcom/google/android/gms/internal/ads/zzadk;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzads;->zzccn:Lcom/google/android/gms/internal/ads/zzadk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzadk;->zzccj:Lcom/google/android/gms/internal/ads/zzalc;

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzads;->zzccn:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzajx;->onStop()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzads;->zzccn:Lcom/google/android/gms/internal/ads/zzadk;

    const/4 v2, 0x2

    const-string v3, "Timed out waiting for ad response."

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadk;->zza(Lcom/google/android/gms/internal/ads/zzadk;ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1
.end method
