.class public final Lcom/google/android/gms/internal/ads/zzeb;
.super Lcom/google/android/gms/internal/ads/zzei;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzba;II)V
    .registers 14

    const/16 v6, 0x33

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzei;-><init>(Lcom/google/android/gms/internal/ads/zzcz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzba;II)V

    return-void
.end method


# virtual methods
.method protected final zzar()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeb;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeb;->zztz:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcy;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzcy;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeb;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzcy;->zzrr:Ljava/lang/Long;

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzba;->zzen:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeb;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcy;->zzrs:Ljava/lang/Long;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzba;->zzeo:Ljava/lang/Long;

    monitor-exit v0

    return-void

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method
