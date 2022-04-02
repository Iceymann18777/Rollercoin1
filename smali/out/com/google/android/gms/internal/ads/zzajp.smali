.class final Lcom/google/android/gms/internal/ads/zzajp;
.super Ljava/lang/Object;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private volatile zzcpx:I

.field private volatile zzcpy:J


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->mLock:Ljava/lang/Object;

    sget v0, Lcom/google/android/gms/internal/ads/zzajq;->zzcpz:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzcpx:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzcpy:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzajo;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajp;-><init>()V

    return-void
.end method

.method private final zzd(II)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajp;->zzqk()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzer()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzajp;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_e
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzcpx:I

    if-eq v3, p1, :cond_14

    monitor-exit v2

    return-void

    :cond_14
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzcpx:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzcpx:I

    sget p2, Lcom/google/android/gms/internal/ads/zzajq;->zzcqb:I

    if-ne p1, p2, :cond_1e

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzcpy:J

    :cond_1e
    monitor-exit v2

    return-void

    :catchall_20
    move-exception p1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_20

    throw p1
.end method

.method private final zzqk()V
    .registers 8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzer()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzajp;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzcpx:I

    sget v4, Lcom/google/android/gms/internal/ads/zzajq;->zzcqb:I

    if-ne v3, v4, :cond_2c

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzcpy:J

    sget-object v5, Lcom/google/android/gms/internal/ads/zznk;->zzbfn:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v5, v3, v0

    if-gtz v5, :cond_2c

    sget v0, Lcom/google/android/gms/internal/ads/zzajq;->zzcpz:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzcpx:I

    :cond_2c
    monitor-exit v2

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_2e

    throw v0
.end method


# virtual methods
.method public final zzaa(Z)V
    .registers 3

    if-eqz p1, :cond_a

    sget p1, Lcom/google/android/gms/internal/ads/zzajq;->zzcpz:I

    sget v0, Lcom/google/android/gms/internal/ads/zzajq;->zzcqa:I

    :goto_6
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzajp;->zzd(II)V

    return-void

    :cond_a
    sget p1, Lcom/google/android/gms/internal/ads/zzajq;->zzcqa:I

    sget v0, Lcom/google/android/gms/internal/ads/zzajq;->zzcpz:I

    goto :goto_6
.end method

.method public final zzqa()Z
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajp;->zzqk()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzcpx:I

    sget v1, Lcom/google/android/gms/internal/ads/zzajq;->zzcqa:I

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public final zzqb()Z
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajp;->zzqk()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzcpx:I

    sget v1, Lcom/google/android/gms/internal/ads/zzajq;->zzcqb:I

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public final zzqc()V
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/zzajq;->zzcqa:I

    sget v1, Lcom/google/android/gms/internal/ads/zzajq;->zzcqb:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzajp;->zzd(II)V

    return-void
.end method
