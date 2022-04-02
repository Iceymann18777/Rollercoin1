.class Lcom/google/android/gms/tasks/zzu$zza;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.source "com.google.android.gms:play-services-tasks@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tasks/zzu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/tasks/zzr<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzu$zza;->zza:Ljava/util/List;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/tasks/zzu$zza;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v0, "TaskOnStopCallback"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static zza(Landroid/app/Activity;)Lcom/google/android/gms/tasks/zzu$zza;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/tasks/zzu$zza;->getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object p0

    .line 2
    const-class v0, Lcom/google/android/gms/tasks/zzu$zza;

    const-string v1, "TaskOnStopCallback"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/zzu$zza;

    if-nez v0, :cond_15

    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/zzu$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tasks/zzu$zza;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    :cond_15
    return-object v0
.end method


# virtual methods
.method public onStop()V
    .registers 4

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu$zza;->zza:Ljava/util/List;

    monitor-enter v0

    .line 15
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzu$zza;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/zzr;

    if-eqz v2, :cond_9

    .line 18
    invoke-interface {v2}, Lcom/google/android/gms/tasks/zzr;->zza()V

    goto :goto_9

    .line 20
    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzu$zza;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 21
    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    goto :goto_2c

    :goto_2b
    throw v1

    :goto_2c
    goto :goto_2b
.end method

.method public final zza(Lcom/google/android/gms/tasks/zzr;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/zzr<",
            "TT;>;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzu$zza;->zza:Ljava/util/List;

    monitor-enter v0

    .line 12
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzu$zza;->zza:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method
