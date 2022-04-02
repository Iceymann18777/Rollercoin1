.class public Lcom/google/android/gms/internal/ads/zzbcb;
.super Ljava/lang/Object;


# static fields
.field private static final zzdph:Lcom/google/android/gms/internal/ads/zzbbb;


# instance fields
.field private zzdvk:Lcom/google/android/gms/internal/ads/zzbah;

.field private volatile zzdvl:Lcom/google/android/gms/internal/ads/zzbcu;

.field private volatile zzdvm:Lcom/google/android/gms/internal/ads/zzbah;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbb;->zzacr()Lcom/google/android/gms/internal/ads/zzbbb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdph:Lcom/google/android/gms/internal/ads/zzbbb;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbcu;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvl:Lcom/google/android/gms/internal/ads/zzbcu;

    if-nez v0, :cond_1c

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvl:Lcom/google/android/gms/internal/ads/zzbcu;

    if-eqz v0, :cond_b

    :goto_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_19

    goto :goto_1c

    :cond_b
    :try_start_b
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvl:Lcom/google/android/gms/internal/ads/zzbcu;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbah;->zzdpq:Lcom/google/android/gms/internal/ads/zzbah;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvm:Lcom/google/android/gms/internal/ads/zzbah;
    :try_end_11
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_b .. :try_end_11} :catch_12
    .catchall {:try_start_b .. :try_end_11} :catchall_19

    goto :goto_9

    :catch_12
    :try_start_12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvl:Lcom/google/android/gms/internal/ads/zzbcu;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbah;->zzdpq:Lcom/google/android/gms/internal/ads/zzbah;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvm:Lcom/google/android/gms/internal/ads/zzbah;

    goto :goto_9

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw p1

    :cond_1c
    :goto_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvl:Lcom/google/android/gms/internal/ads/zzbcu;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbcb;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbcb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvl:Lcom/google/android/gms/internal/ads/zzbcu;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvl:Lcom/google/android/gms/internal/ads/zzbcu;

    if-nez v0, :cond_21

    if-nez v1, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcb;->zzaav()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcb;->zzaav()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbah;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2a
    if-eqz v0, :cond_39

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbcu;->zzadg()Lcom/google/android/gms/internal/ads/zzbcu;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzbcb;->zzk(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbcu;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_39
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbcu;->zzadg()Lcom/google/android/gms/internal/ads/zzbcu;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbcb;->zzk(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbcu;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zzaav()Lcom/google/android/gms/internal/ads/zzbah;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvm:Lcom/google/android/gms/internal/ads/zzbah;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvm:Lcom/google/android/gms/internal/ads/zzbah;

    return-object v0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvm:Lcom/google/android/gms/internal/ads/zzbah;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvm:Lcom/google/android/gms/internal/ads/zzbah;

    monitor-exit p0

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvl:Lcom/google/android/gms/internal/ads/zzbcu;

    if-nez v0, :cond_19

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbah;->zzdpq:Lcom/google/android/gms/internal/ads/zzbah;

    :goto_16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvm:Lcom/google/android/gms/internal/ads/zzbah;

    goto :goto_20

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvl:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbcu;->zzaav()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v0

    goto :goto_16

    :goto_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvm:Lcom/google/android/gms/internal/ads/zzbah;

    monitor-exit p0

    return-object v0

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    goto :goto_28

    :goto_27
    throw v0

    :goto_28
    goto :goto_27
.end method

.method public final zzacw()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvm:Lcom/google/android/gms/internal/ads/zzbah;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvm:Lcom/google/android/gms/internal/ads/zzbah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvl:Lcom/google/android/gms/internal/ads/zzbcu;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvl:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbcu;->zzacw()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbcu;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvl:Lcom/google/android/gms/internal/ads/zzbcu;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvk:Lcom/google/android/gms/internal/ads/zzbah;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvm:Lcom/google/android/gms/internal/ads/zzbah;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzdvl:Lcom/google/android/gms/internal/ads/zzbcu;

    return-object v0
.end method
