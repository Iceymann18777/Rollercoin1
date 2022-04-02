.class public Lcom/google/firebase/iid/WithinAppServiceConnection;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;
    }
.end annotation


# instance fields
.field private binder:Lcom/google/firebase/iid/WithinAppServiceBinder;

.field private connectionInProgress:Z

.field private final connectionIntent:Landroid/content/Intent;

.field private final context:Landroid/content/Context;

.field private final intentQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v2, "Firebase-FirebaseInstanceIdServiceConnection"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/iid/WithinAppServiceConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->intentQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->connectionInProgress:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->context:Landroid/content/Context;

    .line 7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->connectionIntent:Landroid/content/Intent;

    .line 8
    iput-object p3, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private finishAllInQueue()V
    .registers 2

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->intentQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 47
    iget-object v0, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->intentQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;

    invoke-virtual {v0}, Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;->finish()V

    goto :goto_0

    :cond_14
    return-void
.end method

.method private declared-synchronized flushQueue()V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "FirebaseInstanceId"

    const-string v2, "flush queue called"

    .line 18
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->intentQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    const-string v0, "FirebaseInstanceId"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "FirebaseInstanceId"

    const-string v2, "found intent to be delivered"

    .line 21
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_28
    iget-object v0, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->binder:Lcom/google/firebase/iid/WithinAppServiceBinder;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->binder:Lcom/google/firebase/iid/WithinAppServiceBinder;

    invoke-virtual {v0}, Lcom/google/firebase/iid/WithinAppServiceBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "FirebaseInstanceId"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "FirebaseInstanceId"

    const-string v2, "binder is alive, sending the intent."

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_43
    iget-object v0, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->intentQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;

    .line 26
    iget-object v2, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->binder:Lcom/google/firebase/iid/WithinAppServiceBinder;

    invoke-virtual {v2, v0}, Lcom/google/firebase/iid/WithinAppServiceBinder;->send(Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;)V

    goto :goto_11

    .line 28
    :cond_51
    invoke-direct {p0}, Lcom/google/firebase/iid/WithinAppServiceConnection;->startConnectionIfNeeded()V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_58

    .line 29
    monitor-exit p0

    return-void

    .line 30
    :cond_56
    monitor-exit p0

    return-void

    :catchall_58
    move-exception v0

    monitor-exit p0

    goto :goto_5c

    :goto_5b
    throw v0

    :goto_5c
    goto :goto_5b
.end method

.method private startConnectionIfNeeded()V
    .registers 6

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    .line 32
    iget-boolean v1, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->connectionInProgress:Z

    xor-int/2addr v1, v2

    const/16 v3, 0x27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "binder is dead. start connection? "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_23
    iget-boolean v1, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->connectionInProgress:Z

    if-eqz v1, :cond_28

    return-void

    .line 35
    :cond_28
    iput-boolean v2, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->connectionInProgress:Z

    .line 36
    :try_start_2a
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->connectionIntent:Landroid/content/Intent;

    const/16 v4, 0x41

    .line 37
    invoke-virtual {v1, v2, v3, p0, v4}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    return-void

    :cond_3b
    const-string v1, "binding to the service failed"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_40} :catch_41

    goto :goto_47

    :catch_41
    move-exception v1

    const-string v2, "Exception while binding the service"

    .line 42
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->connectionInProgress:Z

    .line 44
    invoke-direct {p0}, Lcom/google/firebase/iid/WithinAppServiceConnection;->finishAllInQueue()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "FirebaseInstanceId"

    .line 50
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onServiceConnected: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->connectionInProgress:Z

    .line 52
    instance-of p1, p2, Lcom/google/firebase/iid/WithinAppServiceBinder;

    if-nez p1, :cond_5e

    const-string p1, "FirebaseInstanceId"

    .line 53
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid service connection: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct {p0}, Lcom/google/firebase/iid/WithinAppServiceConnection;->finishAllInQueue()V
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_67

    .line 55
    monitor-exit p0

    return-void

    .line 56
    :cond_5e
    :try_start_5e
    check-cast p2, Lcom/google/firebase/iid/WithinAppServiceBinder;

    iput-object p2, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->binder:Lcom/google/firebase/iid/WithinAppServiceBinder;

    .line 57
    invoke-direct {p0}, Lcom/google/firebase/iid/WithinAppServiceConnection;->flushQueue()V
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_67

    .line 58
    monitor-exit p0

    return-void

    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 60
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onServiceDisconnected: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_2b
    invoke-direct {p0}, Lcom/google/firebase/iid/WithinAppServiceConnection;->flushQueue()V

    return-void
.end method

.method public declared-synchronized sendIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "FirebaseInstanceId"

    const-string v1, "new intent queued in the bind-strategy delivery"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_11
    new-instance v0, Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;

    invoke-direct {v0, p1}, Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;-><init>(Landroid/content/Intent;)V

    .line 13
    iget-object p1, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;->arrangeTimeout(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 14
    iget-object p1, p0, Lcom/google/firebase/iid/WithinAppServiceConnection;->intentQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/iid/WithinAppServiceConnection;->flushQueue()V

    .line 16
    invoke-virtual {v0}, Lcom/google/firebase/iid/WithinAppServiceConnection$BindRequest;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-object p1

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method
