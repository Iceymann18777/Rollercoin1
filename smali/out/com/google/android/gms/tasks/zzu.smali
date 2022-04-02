.class final Lcom/google/android/gms/tasks/zzu;
.super Lcom/google/android/gms/tasks/Task;
.source "com.google.android.gms:play-services-tasks@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tasks/zzu$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/tasks/Task<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Lcom/google/android/gms/tasks/zzq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzq<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private zzc:Z

.field private volatile zzd:Z

.field private zze:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private zzf:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tasks/Task;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/tasks/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    return-void
.end method

.method private final zzb()V
    .registers 3

    .line 139
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzu;->zzc:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method private final zzc()V
    .registers 2

    .line 141
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzu;->zzc:Z

    if-nez v0, :cond_5

    return-void

    .line 142
    :cond_5
    invoke-static {p0}, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;->of(Lcom/google/android/gms/tasks/Task;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method private final zzd()V
    .registers 3

    .line 144
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzu;->zzd:Z

    if-nez v0, :cond_5

    return-void

    .line 145
    :cond_5
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zze()V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzu;->zzc:Z

    if-nez v1, :cond_9

    .line 149
    monitor-exit v0

    return-void

    .line 150
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    .line 151
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_10
    move-exception v1

    .line 150
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method


# virtual methods
.method public final addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/google/android/gms/tasks/zzh;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    .line 81
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzv;->zza(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)V

    .line 82
    iget-object p2, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/zzr;)V

    .line 83
    invoke-static {p1}, Lcom/google/android/gms/tasks/zzu$zza;->zza(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzu$zza;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/zzu$zza;->zza(Lcom/google/android/gms/tasks/zzr;)V

    .line 84
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zze()V

    return-object p0
.end method

.method public final addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    new-instance v1, Lcom/google/android/gms/tasks/zzh;

    .line 76
    invoke-static {p1}, Lcom/google/android/gms/tasks/zzv;->zza(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/zzr;)V

    .line 78
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zze()V

    return-object p0
.end method

.method public final addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/google/android/gms/tasks/zzi;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    .line 61
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzv;->zza(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/tasks/zzi;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    .line 62
    iget-object p2, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/zzr;)V

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/tasks/zzu$zza;->zza(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzu$zza;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/zzu$zza;->zza(Lcom/google/android/gms/tasks/zzr;)V

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zze()V

    return-object p0
.end method

.method public final addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    new-instance v1, Lcom/google/android/gms/tasks/zzi;

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/tasks/zzv;->zza(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/zzi;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/zzr;)V

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zze()V

    return-object p0
.end method

.method public final addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/google/android/gms/tasks/zzl;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    .line 49
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzv;->zza(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/tasks/zzl;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    .line 50
    iget-object p2, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/zzr;)V

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/tasks/zzu$zza;->zza(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzu$zza;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/zzu$zza;->zza(Lcom/google/android/gms/tasks/zzr;)V

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zze()V

    return-object p0
.end method

.method public final addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    new-instance v1, Lcom/google/android/gms/tasks/zzl;

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/tasks/zzv;->zza(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/zzl;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/zzr;)V

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zze()V

    return-object p0
.end method

.method public final addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/google/android/gms/tasks/zzm;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    .line 37
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzv;->zza(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/tasks/zzm;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    .line 38
    iget-object p2, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/zzr;)V

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/tasks/zzu$zza;->zza(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzu$zza;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/zzu$zza;->zza(Lcom/google/android/gms/tasks/zzr;)V

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zze()V

    return-object p0
.end method

.method public final addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    new-instance v1, Lcom/google/android/gms/tasks/zzm;

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/tasks/zzv;->zza(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/zzm;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/zzr;)V

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zze()V

    return-object p0
.end method

.method public final continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/google/android/gms/tasks/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzu;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    new-instance v2, Lcom/google/android/gms/tasks/zzc;

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/tasks/zzv;->zza(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/zzc;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/zzu;)V

    .line 70
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/zzr;)V

    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zze()V

    return-object v0
.end method

.method public final continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/google/android/gms/tasks/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzu;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    new-instance v2, Lcom/google/android/gms/tasks/zzd;

    .line 88
    invoke-static {p1}, Lcom/google/android/gms/tasks/zzv;->zza(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/zzd;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/zzu;)V

    .line 89
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/zzr;)V

    .line 90
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zze()V

    return-object v0
.end method

.method public final getException()Ljava/lang/Exception;
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzu;->zzf:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final getResult()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zzb()V

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zzd()V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzu;->zzf:Ljava/lang/Exception;

    if-nez v1, :cond_11

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzu;->zze:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 15
    :cond_11
    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    iget-object v2, p0, Lcom/google/android/gms/tasks/zzu;->zzf:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_19
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public final getResult(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zzb()V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zzd()V

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzu;->zzf:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/tasks/zzu;->zzf:Ljava/lang/Exception;

    if-nez p1, :cond_19

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/tasks/zzu;->zze:Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    .line 24
    :cond_19
    new-instance p1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzu;->zzf:Ljava/lang/Exception;

    invoke-direct {p1, v1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 22
    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzu;->zzf:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :catchall_2a
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public final isCanceled()Z
    .registers 2

    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzu;->zzd:Z

    return v0
.end method

.method public final isComplete()Z
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzu;->zzc:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final isSuccessful()Z
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzu;->zzc:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzu;->zzd:Z

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzu;->zzf:Ljava/lang/Exception;

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    :catchall_14
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public final onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/google/android/gms/tasks/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzu;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    new-instance v2, Lcom/google/android/gms/tasks/zzp;

    .line 94
    invoke-static {p1}, Lcom/google/android/gms/tasks/zzv;->zza(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/zzp;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/zzu;)V

    .line 95
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/zzr;)V

    .line 96
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zze()V

    return-object v0
.end method

.method public final zza(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "Exception must not be null"

    .line 114
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_8
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zzc()V

    const/4 v1, 0x1

    .line 117
    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzu;->zzc:Z

    .line 118
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzu;->zzf:Ljava/lang/Exception;

    .line 119
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_17

    .line 120
    iget-object p1, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_17
    move-exception p1

    .line 119
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public final zza(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzu;->zzc()V

    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzu;->zzc:Z

    .line 102
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzu;->zze:Ljava/lang/Object;

    .line 103
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 104
    iget-object p1, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_12
    move-exception p1

    .line 103
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final zza()Z
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzu;->zzc:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    .line 133
    monitor-exit v0

    return v1

    :cond_a
    const/4 v1, 0x1

    .line 134
    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzu;->zzc:Z

    .line 135
    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzu;->zzd:Z

    .line 136
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/Task;)V

    return v1

    :catchall_16
    move-exception v1

    .line 136
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public final zzb(Ljava/lang/Exception;)Z
    .registers 4

    const-string v0, "Exception must not be null"

    .line 122
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_8
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzu;->zzc:Z

    if-eqz v1, :cond_f

    const/4 p1, 0x0

    .line 125
    monitor-exit v0

    return p1

    :cond_f
    const/4 v1, 0x1

    .line 126
    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzu;->zzc:Z

    .line 127
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzu;->zzf:Ljava/lang/Exception;

    .line 128
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1b

    .line 129
    iget-object p1, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/Task;)V

    return v1

    :catchall_1b
    move-exception p1

    .line 128
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzu;->zzc:Z

    if-eqz v1, :cond_a

    const/4 p1, 0x0

    .line 108
    monitor-exit v0

    return p1

    :cond_a
    const/4 v1, 0x1

    .line 109
    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzu;->zzc:Z

    .line 110
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzu;->zze:Ljava/lang/Object;

    .line 111
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    .line 112
    iget-object p1, p0, Lcom/google/android/gms/tasks/zzu;->zzb:Lcom/google/android/gms/tasks/zzq;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/Task;)V

    return v1

    :catchall_16
    move-exception p1

    .line 111
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method
