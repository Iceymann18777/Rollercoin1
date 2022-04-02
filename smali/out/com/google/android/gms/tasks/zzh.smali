.class final Lcom/google/android/gms/tasks/zzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/zzr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/zzr<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Ljava/lang/Object;

.field private zzc:Lcom/google/android/gms/tasks/OnCanceledListener;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzh;->zza:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Lcom/google/android/gms/tasks/OnCanceledListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tasks/zzh;)Ljava/lang/Object;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tasks/zzh;)Lcom/google/android/gms/tasks/OnCanceledListener;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Lcom/google/android/gms/tasks/OnCanceledListener;

    return-object p0
.end method


# virtual methods
.method public final zza()V
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 14
    :try_start_4
    iput-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Lcom/google/android/gms/tasks/OnCanceledListener;

    .line 15
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/tasks/Task;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    monitor-enter p1

    .line 8
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Lcom/google/android/gms/tasks/OnCanceledListener;

    if-nez v0, :cond_f

    .line 9
    monitor-exit p1

    return-void

    .line 10
    :cond_f
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/tasks/zzh;->zza:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/tasks/zzg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tasks/zzg;-><init>(Lcom/google/android/gms/tasks/zzh;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1e

    :catchall_1b
    move-exception v0

    .line 10
    :try_start_1c
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :goto_1e
    return-void
.end method
