.class public final Lcom/google/android/gms/internal/ads/zzdu;
.super Lcom/google/android/gms/internal/ads/zzei;


# static fields
.field private static final zztn:Ljava/lang/Object;

.field private static volatile zztr:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdu;->zztn:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzba;II)V
    .registers 14

    const/16 v6, 0x16

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdu;->zztr:Ljava/lang/Long;

    if-nez v0, :cond_1e

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdu;->zztn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdu;->zztr:Ljava/lang/Long;

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdu;->zztz:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdu;->zztr:Ljava/lang/Long;

    :cond_19
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1

    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdu;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    monitor-enter v0

    :try_start_21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdu;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdu;->zztr:Ljava/lang/Long;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzba;->zzdv:Ljava/lang/Long;

    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw v1
.end method
