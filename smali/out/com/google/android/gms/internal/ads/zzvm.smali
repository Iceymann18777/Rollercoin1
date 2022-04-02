.class final Lcom/google/android/gms/internal/ads/zzvm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbqi:Lcom/google/android/gms/internal/ads/zzvw;

.field private final synthetic zzbqj:Lcom/google/android/gms/internal/ads/zzuu;

.field private final synthetic zzbqk:Lcom/google/android/gms/internal/ads/zzvf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvf;Lcom/google/android/gms/internal/ads/zzvw;Lcom/google/android/gms/internal/ads/zzuu;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzbqi:Lcom/google/android/gms/internal/ads/zzvw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzbqj:Lcom/google/android/gms/internal/ads/zzuu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzvf;->zza(Lcom/google/android/gms/internal/ads/zzvf;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzbqi:Lcom/google/android/gms/internal/ads/zzvw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaop;->getStatus()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzbqi:Lcom/google/android/gms/internal/ads/zzvw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaop;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    goto :goto_34

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzbqi:Lcom/google/android/gms/internal/ads/zzvw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaop;->reject()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaoe;->zzcvy:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvm;->zzbqj:Lcom/google/android/gms/internal/ads/zzuu;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvn;->zza(Lcom/google/android/gms/internal/ads/zzuu;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v1
.end method
