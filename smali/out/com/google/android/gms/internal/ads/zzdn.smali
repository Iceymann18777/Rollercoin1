.class public final Lcom/google/android/gms/internal/ads/zzdn;
.super Lcom/google/android/gms/internal/ads/zzei;


# static fields
.field private static volatile zztm:Ljava/lang/String;

.field private static final zztn:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdn;->zztn:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzba;II)V
    .registers 14

    const/16 v6, 0x1d

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
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdn;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    const-string v1, "E"

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzba;->zzdx:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdn;->zztm:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_2d

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdn;->zztn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdn;->zztm:Ljava/lang/String;

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdn;->zztz:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdn;->zzps:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcz;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/google/android/gms/internal/ads/zzdn;->zztm:Ljava/lang/String;

    :cond_28
    monitor-exit v0

    goto :goto_2d

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_2a

    throw v1

    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdn;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    monitor-enter v0

    :try_start_30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdn;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdn;->zztm:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbi;->zza([BZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzba;->zzdx:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_40

    throw v1
.end method
