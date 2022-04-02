.class final Lcom/google/android/gms/ads/internal/zzaj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzyh:Lcom/google/android/gms/internal/ads/zzjj;

.field private final synthetic zzyi:Lcom/google/android/gms/ads/internal/zzah;

.field private final synthetic zzyj:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzah;Lcom/google/android/gms/internal/ads/zzjj;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzaj;->zzyi:Lcom/google/android/gms/ads/internal/zzah;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzaj;->zzyh:Lcom/google/android/gms/internal/ads/zzjj;

    iput p3, p0, Lcom/google/android/gms/ads/internal/zzaj;->zzyj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzaj;->zzyi:Lcom/google/android/gms/ads/internal/zzah;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzah;->zza(Lcom/google/android/gms/ads/internal/zzah;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzaj;->zzyi:Lcom/google/android/gms/ads/internal/zzah;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzaj;->zzyh:Lcom/google/android/gms/internal/ads/zzjj;

    iget v3, p0, Lcom/google/android/gms/ads/internal/zzaj;->zzyj:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/zzah;->zza(Lcom/google/android/gms/ads/internal/zzah;Lcom/google/android/gms/internal/ads/zzjj;I)V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method
