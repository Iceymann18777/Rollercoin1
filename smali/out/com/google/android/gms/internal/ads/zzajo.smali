.class final Lcom/google/android/gms/internal/ads/zzajo;
.super Lcom/google/android/gms/internal/ads/zzajx;


# instance fields
.field private final synthetic zzcpw:Lcom/google/android/gms/internal/ads/zzajm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzajm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzcpw:Lcom/google/android/gms/internal/ads/zzajm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajx;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStop()V
    .registers 1

    return-void
.end method

.method public final zzdn()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zznm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzcpw:Lcom/google/android/gms/internal/ads/zzajm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Lcom/google/android/gms/internal/ads/zzajm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzcpw:Lcom/google/android/gms/internal/ads/zzajm;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajm;->zzb(Lcom/google/android/gms/internal/ads/zzajm;)Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zznm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzcpw:Lcom/google/android/gms/internal/ads/zzajm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzajm;->zzc(Lcom/google/android/gms/internal/ads/zzajm;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzet()Lcom/google/android/gms/internal/ads/zznp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzcpw:Lcom/google/android/gms/internal/ads/zzajm;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajm;->zzd(Lcom/google/android/gms/internal/ads/zzajm;)Lcom/google/android/gms/internal/ads/zznn;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zznp;->zza(Lcom/google/android/gms/internal/ads/zznn;Lcom/google/android/gms/internal/ads/zznm;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_26} :catch_29
    .catchall {:try_start_1a .. :try_end_26} :catchall_27

    goto :goto_2f

    :catchall_27
    move-exception v0

    goto :goto_31

    :catch_29
    move-exception v0

    :try_start_2a
    const-string v2, "Cannot config CSI reporter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2f
    monitor-exit v1

    return-void

    :goto_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_27

    throw v0
.end method
