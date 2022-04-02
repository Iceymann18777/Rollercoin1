.class public final Lcom/google/android/gms/internal/ads/zzvw;
.super Lcom/google/android/gms/internal/ads/zzaop;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzaop<",
        "Lcom/google/android/gms/internal/ads/zzuu;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzbpz:Lcom/google/android/gms/internal/ads/zzalo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzalo<",
            "Lcom/google/android/gms/internal/ads/zzuu;",
            ">;"
        }
    .end annotation
.end field

.field private zzbqt:Z

.field private zzbqu:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzalo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzalo<",
            "Lcom/google/android/gms/internal/ads/zzuu;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaop;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvw;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzbpz:Lcom/google/android/gms/internal/ads/zzalo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzbqt:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzbqu:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzvw;)Lcom/google/android/gms/internal/ads/zzalo;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzbpz:Lcom/google/android/gms/internal/ads/zzalo;

    return-object p0
.end method

.method private final zzmc()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvw;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzbqu:I

    if-ltz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzbqt:Z

    if-eqz v1, :cond_28

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzbqu:I

    if-nez v1, :cond_28

    const-string v1, "No reference is left (including root). Cleaning up engine."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzvz;-><init>(Lcom/google/android/gms/internal/ads/zzvw;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaon;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzaon;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaop;->zza(Lcom/google/android/gms/internal/ads/zzaoo;Lcom/google/android/gms/internal/ads/zzaom;)V

    goto :goto_2d

    :cond_28
    const-string v1, "There are still references to the engine. Not destroying."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method


# virtual methods
.method public final zzlz()Lcom/google/android/gms/internal/ads/zzvs;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzvs;-><init>(Lcom/google/android/gms/internal/ads/zzvw;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzvx;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzvx;-><init>(Lcom/google/android/gms/internal/ads/zzvw;Lcom/google/android/gms/internal/ads/zzvs;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzvy;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzvy;-><init>(Lcom/google/android/gms/internal/ads/zzvw;Lcom/google/android/gms/internal/ads/zzvs;)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaop;->zza(Lcom/google/android/gms/internal/ads/zzaoo;Lcom/google/android/gms/internal/ads/zzaom;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzbqu:I

    const/4 v3, 0x1

    if-ltz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzbqu:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzbqu:I

    monitor-exit v1

    return-object v0

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v0
.end method

.method protected final zzma()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvw;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzbqu:I

    const/4 v2, 0x1

    if-lez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const-string v1, "Releasing 1 reference for JS Engine"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzbqu:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzbqu:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvw;->zzmc()V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public final zzmb()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvw;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzbqu:I

    const/4 v2, 0x1

    if-ltz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const-string v1, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzbqt:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvw;->zzmc()V

    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method
