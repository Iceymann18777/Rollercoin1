.class Lcom/google/firebase/iid/MessengerIpcClient$Connection;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/MessengerIpcClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field final appMessenger:Landroid/os/Messenger;

.field gmsCoreMessenger:Lcom/google/firebase/iid/MessengerIpcClient$MessengerWrapper;

.field final requestsToBeSent:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/iid/MessengerIpcClient$Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field final requestsWaitingForResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/iid/MessengerIpcClient$Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field state:I

.field final synthetic this$0:Lcom/google/firebase/iid/MessengerIpcClient;


# direct methods
.method private constructor <init>(Lcom/google/firebase/iid/MessengerIpcClient;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    .line 3
    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/google/android/gms/internal/firebase-iid/zze;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$0;

    invoke-direct {v2, p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$0;-><init>(Lcom/google/firebase/iid/MessengerIpcClient$Connection;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-iid/zze;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->appMessenger:Landroid/os/Messenger;

    .line 5
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/iid/MessengerIpcClient;Lcom/google/firebase/iid/MessengerIpcClient$1;)V
    .registers 3

    .line 130
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;-><init>(Lcom/google/firebase/iid/MessengerIpcClient;)V

    return-void
.end method


# virtual methods
.method declared-synchronized enqueueRequest(Lcom/google/firebase/iid/MessengerIpcClient$Request;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/iid/MessengerIpcClient$Request<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    const/4 v1, 0x1

    if-eqz v0, :cond_41

    if-eq v0, v1, :cond_3a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_30

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2d

    const/4 p1, 0x4

    if-ne v0, p1, :cond_12

    goto :goto_2d

    .line 17
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    iget v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    const/16 v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown state: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_4b

    :cond_2d
    :goto_2d
    const/4 p1, 0x0

    .line 16
    monitor-exit p0

    return p1

    .line 13
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->scheduleSendingRequests()V
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_4b

    .line 15
    monitor-exit p0

    return v1

    .line 11
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_4b

    .line 12
    monitor-exit p0

    return v1

    .line 8
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->startConnection()V
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4b

    .line 10
    monitor-exit p0

    return v1

    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method failAllPendingReqests(Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;)V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/MessengerIpcClient$Request;

    .line 77
    invoke-virtual {v1, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Request;->fail(Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;)V

    goto :goto_6

    .line 79
    :cond_16
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    .line 80
    :goto_1c
    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 81
    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/MessengerIpcClient$Request;

    invoke-virtual {v1, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Request;->fail(Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 83
    :cond_32
    iget-object p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method declared-synchronized handleDisconnect(ILjava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "MessengerIpcClient"

    const-string v2, "Disconnected: "

    .line 63
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    :cond_1d
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_23
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_26
    iget v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_84

    if-eqz v0, :cond_7e

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eq v0, v2, :cond_56

    if-eq v0, v3, :cond_56

    if-eq v0, v1, :cond_52

    if-ne v0, v4, :cond_37

    .line 74
    monitor-exit p0

    return-void

    .line 75
    :cond_37
    :try_start_37
    new-instance p1, Ljava/lang/IllegalStateException;

    iget p2, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    const/16 v0, 0x1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown state: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_52
    iput v4, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I
    :try_end_54
    .catchall {:try_start_37 .. :try_end_54} :catchall_84

    .line 73
    monitor-exit p0

    return-void

    :cond_56
    :try_start_56
    const-string v0, "MessengerIpcClient"

    .line 66
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "MessengerIpcClient"

    const-string v1, "Unbinding service"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_65
    iput v4, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    .line 69
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    invoke-static {v1}, Lcom/google/firebase/iid/MessengerIpcClient;->access$100(Lcom/google/firebase/iid/MessengerIpcClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 70
    new-instance v0, Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->failAllPendingReqests(Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;)V
    :try_end_7c
    .catchall {:try_start_56 .. :try_end_7c} :catchall_84

    .line 71
    monitor-exit p0

    return-void

    .line 65
    :cond_7e
    :try_start_7e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_84

    :catchall_84
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic lambda$onServiceConnected$0$MessengerIpcClient$Connection(Landroid/os/IBinder;)V
    .registers 4

    .line 118
    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_b

    :try_start_4
    const-string p1, "Null service connection"

    .line 120
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->handleDisconnect(ILjava/lang/String;)V

    .line 121
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1a

    return-void

    .line 122
    :cond_b
    :try_start_b
    new-instance v1, Lcom/google/firebase/iid/MessengerIpcClient$MessengerWrapper;

    invoke-direct {v1, p1}, Lcom/google/firebase/iid/MessengerIpcClient$MessengerWrapper;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->gmsCoreMessenger:Lcom/google/firebase/iid/MessengerIpcClient$MessengerWrapper;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_1c
    .catchall {:try_start_b .. :try_end_12} :catchall_1a

    const/4 p1, 0x2

    .line 127
    :try_start_13
    iput p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    .line 128
    invoke-virtual {p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->scheduleSendingRequests()V

    .line 129
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    goto :goto_26

    :catch_1c
    move-exception p1

    .line 125
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->handleDisconnect(ILjava/lang/String;)V

    .line 126
    monitor-exit p0

    return-void

    .line 129
    :goto_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_1a

    throw p1
.end method

.method final synthetic lambda$onServiceDisconnected$3$MessengerIpcClient$Connection()V
    .registers 3

    const/4 v0, 0x2

    const-string v1, "Service disconnected"

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->handleDisconnect(ILjava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$scheduleSendingRequests$1$MessengerIpcClient$Connection(Lcom/google/firebase/iid/MessengerIpcClient$Request;)V
    .registers 2

    .line 117
    iget p1, p1, Lcom/google/firebase/iid/MessengerIpcClient$Request;->requestId:I

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->timeoutRequest(I)V

    return-void
.end method

.method final synthetic lambda$scheduleSendingRequests$2$MessengerIpcClient$Connection()V
    .registers 7

    .line 104
    :goto_0
    monitor-enter p0

    .line 105
    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 106
    monitor-exit p0

    return-void

    .line 107
    :cond_8
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 108
    invoke-virtual {p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->unbindIfFinished()V

    .line 109
    monitor-exit p0

    return-void

    .line 110
    :cond_15
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/MessengerIpcClient$Request;

    .line 111
    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/firebase/iid/MessengerIpcClient$Request;->requestId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    .line 113
    invoke-static {v1}, Lcom/google/firebase/iid/MessengerIpcClient;->access$200(Lcom/google/firebase/iid/MessengerIpcClient;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$5;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$5;-><init>(Lcom/google/firebase/iid/MessengerIpcClient$Connection;Lcom/google/firebase/iid/MessengerIpcClient$Request;)V

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 114
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_3b

    .line 115
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->sendRequestOverMessenger(Lcom/google/firebase/iid/MessengerIpcClient$Request;)V

    goto :goto_0

    :catchall_3b
    move-exception v0

    .line 114
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    goto :goto_3f

    :goto_3e
    throw v0

    :goto_3f
    goto :goto_3e
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Service connected"

    .line 45
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_e
    iget-object p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    invoke-static {p1}, Lcom/google/firebase/iid/MessengerIpcClient;->access$200(Lcom/google/firebase/iid/MessengerIpcClient;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$2;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$2;-><init>(Lcom/google/firebase/iid/MessengerIpcClient$Connection;Landroid/os/IBinder;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Service disconnected"

    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_e
    iget-object p1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    invoke-static {p1}, Lcom/google/firebase/iid/MessengerIpcClient;->access$200(Lcom/google/firebase/iid/MessengerIpcClient;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$4;-><init>(Lcom/google/firebase/iid/MessengerIpcClient$Connection;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method receivedResponse(Landroid/os/Message;)Z
    .registers 6

    .line 31
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "MessengerIpcClient"

    const/4 v2, 0x3

    .line 32
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "MessengerIpcClient"

    const/16 v2, 0x29

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received response to request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_23
    monitor-enter p0

    .line 35
    :try_start_24
    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/MessengerIpcClient$Request;

    const/4 v2, 0x1

    if-nez v1, :cond_49

    const-string p1, "MessengerIpcClient"

    const/16 v1, 0x32

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Received response for unknown request: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    monitor-exit p0

    return v2

    .line 39
    :cond_49
    iget-object v3, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 40
    invoke-virtual {p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->unbindIfFinished()V

    .line 41
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_24 .. :try_end_52} :catchall_5a

    .line 42
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Request;->handleResponse(Landroid/os/Bundle;)V

    return v2

    :catchall_5a
    move-exception p1

    .line 41
    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method scheduleSendingRequests()V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    invoke-static {v0}, Lcom/google/firebase/iid/MessengerIpcClient;->access$200(Lcom/google/firebase/iid/MessengerIpcClient;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$3;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$3;-><init>(Lcom/google/firebase/iid/MessengerIpcClient$Connection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method sendRequestOverMessenger(Lcom/google/firebase/iid/MessengerIpcClient$Request;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/iid/MessengerIpcClient$Request<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sending "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_2b
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    invoke-static {v0}, Lcom/google/firebase/iid/MessengerIpcClient;->access$100(Lcom/google/firebase/iid/MessengerIpcClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->appMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/iid/MessengerIpcClient$Request;->createMessage(Landroid/content/Context;Landroid/os/Messenger;)Landroid/os/Message;

    move-result-object p1

    .line 53
    :try_start_37
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->gmsCoreMessenger:Lcom/google/firebase/iid/MessengerIpcClient$MessengerWrapper;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$MessengerWrapper;->send(Landroid/os/Message;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p1

    const/4 v0, 0x2

    .line 56
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->handleDisconnect(ILjava/lang/String;)V

    return-void
.end method

.method startConnection()V
    .registers 6

    .line 18
    iget v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const/4 v0, 0x2

    const-string v3, "MessengerIpcClient"

    .line 19
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "Starting bind to GmsCore"

    .line 20
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_1a
    iput v2, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.gms"

    .line 23
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    .line 25
    invoke-static {v4}, Lcom/google/firebase/iid/MessengerIpcClient;->access$100(Lcom/google/firebase/iid/MessengerIpcClient;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0, p0, v2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "Unable to bind to service"

    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->handleDisconnect(ILjava/lang/String;)V

    return-void

    .line 28
    :cond_3e
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    .line 29
    invoke-static {v0}, Lcom/google/firebase/iid/MessengerIpcClient;->access$200(Lcom/google/firebase/iid/MessengerIpcClient;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection$$Lambda$1;-><init>(Lcom/google/firebase/iid/MessengerIpcClient$Connection;)V

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method declared-synchronized timeoutConnection()V
    .registers 3

    monitor-enter p0

    .line 93
    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const-string v0, "Timed out while binding"

    .line 94
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->handleDisconnect(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 95
    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized timeoutRequest(I)V
    .registers 6

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/MessengerIpcClient$Request;

    if-eqz v0, :cond_36

    const-string v1, "MessengerIpcClient"

    const/16 v2, 0x1f

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Timing out request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 100
    new-instance p1, Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;

    const/4 v1, 0x3

    const-string v2, "Timed out waiting for response"

    invoke-direct {p1, v1, v2}, Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/MessengerIpcClient$Request;->fail(Lcom/google/firebase/iid/MessengerIpcClient$RequestFailedException;)V

    .line 101
    invoke-virtual {p0}, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->unbindIfFinished()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 102
    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized unbindIfFinished()V
    .registers 3

    monitor-enter p0

    .line 85
    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsToBeSent:Ljava/util/Queue;

    .line 86
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->requestsWaitingForResponse:Landroid/util/SparseArray;

    .line 87
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "MessengerIpcClient"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "MessengerIpcClient"

    const-string v1, "Finished handling requests, unbinding"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v0, 0x3

    .line 90
    iput v0, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->state:I

    .line 91
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/MessengerIpcClient$Connection;->this$0:Lcom/google/firebase/iid/MessengerIpcClient;

    invoke-static {v1}, Lcom/google/firebase/iid/MessengerIpcClient;->access$100(Lcom/google/firebase/iid/MessengerIpcClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 92
    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method
