.class public Lcom/google/android/gms/internal/ads/zzav;
.super Lcom/google/android/gms/internal/ads/zzr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzr<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzck:Lcom/google/android/gms/internal/ads/zzz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzz<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzy;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzz<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzr;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzy;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzav;->mLock:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzav;->zzck:Lcom/google/android/gms/internal/ads/zzz;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzp;)Lcom/google/android/gms/internal/ads/zzx;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzp;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzx<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzp;->data:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzp;->zzab:Ljava/util/Map;

    const-string v3, "ISO-8859-1"

    const-string v4, "Content-Type"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3e

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_1a
    array-length v6, v2

    if-ge v5, v6, :cond_3e

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3b

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "charset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    aget-object v3, v6, v4

    goto :goto_3e

    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_3e
    :goto_3e
    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_49

    :catch_42
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzp;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_49
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzap;->zzb(Lcom/google/android/gms/internal/ads/zzp;)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzx;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzc;)Lcom/google/android/gms/internal/ads/zzx;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic zza(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzav;->zzh(Ljava/lang/String;)V

    return-void
.end method

.method protected zzh(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzav;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzav;->zzck:Lcom/google/android/gms/internal/ads/zzz;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzz;->zzb(Ljava/lang/Object;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method
