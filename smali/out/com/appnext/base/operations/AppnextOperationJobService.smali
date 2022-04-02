.class public abstract Lcom/appnext/base/operations/AppnextOperationJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# instance fields
.field private final ej:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/job/JobParameters;",
            "Lcom/appnext/base/operations/AsyncJobTask;",
            ">;"
        }
    .end annotation
.end field

.field private ek:Lcom/appnext/base/operations/AsyncJobTask;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appnext/base/operations/AppnextOperationJobService;->ej:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/job/JobParameters;)V
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/appnext/base/operations/AppnextOperationJobService;->ej:Ljava/util/Map;

    monitor-enter v0

    .line 51
    :try_start_3
    iget-object v1, p0, Lcom/appnext/base/operations/AppnextOperationJobService;->ej:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 53
    iget-object p1, p0, Lcom/appnext/base/operations/AppnextOperationJobService;->ek:Lcom/appnext/base/operations/AsyncJobTask;

    invoke-virtual {p1}, Lcom/appnext/base/operations/AsyncJobTask;->finishJob()V

    return-void

    :catchall_f
    move-exception p1

    .line 52
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public abstract onRunJob(Landroid/app/job/JobParameters;)I
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 5

    .line 25
    new-instance v0, Lcom/appnext/base/operations/AsyncJobTask;

    invoke-direct {v0, p0, p1}, Lcom/appnext/base/operations/AsyncJobTask;-><init>(Lcom/appnext/base/operations/AppnextOperationJobService;Landroid/app/job/JobParameters;)V

    iput-object v0, p0, Lcom/appnext/base/operations/AppnextOperationJobService;->ek:Lcom/appnext/base/operations/AsyncJobTask;

    .line 27
    iget-object v0, p0, Lcom/appnext/base/operations/AppnextOperationJobService;->ej:Ljava/util/Map;

    monitor-enter v0

    .line 28
    :try_start_a
    iget-object v1, p0, Lcom/appnext/base/operations/AppnextOperationJobService;->ej:Ljava/util/Map;

    iget-object v2, p0, Lcom/appnext/base/operations/AppnextOperationJobService;->ek:Lcom/appnext/base/operations/AsyncJobTask;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_1c

    .line 31
    iget-object p1, p0, Lcom/appnext/base/operations/AppnextOperationJobService;->ek:Lcom/appnext/base/operations/AsyncJobTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/appnext/base/operations/AsyncJobTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p1, 0x1

    return p1

    :catchall_1c
    move-exception p1

    .line 29
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 5

    .line 38
    iget-object v0, p0, Lcom/appnext/base/operations/AppnextOperationJobService;->ej:Ljava/util/Map;

    monitor-enter v0

    .line 39
    :try_start_3
    iget-object v1, p0, Lcom/appnext/base/operations/AppnextOperationJobService;->ej:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appnext/base/operations/AsyncJobTask;

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    const/4 v2, 0x1

    .line 41
    invoke-virtual {p1, v2}, Lcom/appnext/base/operations/AsyncJobTask;->cancel(Z)Z

    .line 42
    monitor-exit v0

    return v1

    .line 44
    :cond_14
    monitor-exit v0

    return v1

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method
