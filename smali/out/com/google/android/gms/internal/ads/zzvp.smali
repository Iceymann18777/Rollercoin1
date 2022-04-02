.class final Lcom/google/android/gms/internal/ads/zzvp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaom;


# instance fields
.field private final synthetic zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

.field private final synthetic zzbqn:Lcom/google/android/gms/internal/ads/zzvw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvf;Lcom/google/android/gms/internal/ads/zzvw;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzbqn:Lcom/google/android/gms/internal/ads/zzvw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzvf;->zza(Lcom/google/android/gms/internal/ads/zzvf;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzvf;->zza(Lcom/google/android/gms/internal/ads/zzvf;I)I

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzbqn:Lcom/google/android/gms/internal/ads/zzvw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvw;->zzmb()V

    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method
