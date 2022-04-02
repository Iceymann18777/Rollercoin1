.class Lcom/google/firebase/iid/Rpc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"


# static fields
.field private static appPendingIntent:Landroid/app/PendingIntent;

.field private static requestId:I


# instance fields
.field private final context:Landroid/content/Context;

.field private final metadata:Lcom/google/firebase/iid/Metadata;

.field private outgoingMessenger:Landroid/os/Messenger;

.field private outgoingMessengerCompat:Lcom/google/firebase/iid/FirebaseIidMessengerCompat;

.field private final responseCallbacks:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private responseMessenger:Landroid/os/Messenger;

.field private final timeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/iid/Metadata;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/Rpc;->responseCallbacks:Landroidx/collection/SimpleArrayMap;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/iid/Rpc;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/iid/Rpc;->metadata:Lcom/google/firebase/iid/Metadata;

    .line 5
    new-instance p1, Landroid/os/Messenger;

    new-instance p2, Lcom/google/firebase/iid/Rpc$1;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/google/firebase/iid/Rpc$1;-><init>(Lcom/google/firebase/iid/Rpc;Landroid/os/Looper;)V

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/firebase/iid/Rpc;->responseMessenger:Landroid/os/Messenger;

    .line 7
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 9
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 10
    iput-object p1, p0, Lcom/google/firebase/iid/Rpc;->timeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/iid/Rpc;Landroid/os/Message;)V
    .registers 2

    .line 163
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/Rpc;->handleIncomingMessage(Landroid/os/Message;)V

    return-void
.end method

.method private static gmsCoreRespondedWithMessenger(Landroid/os/Bundle;)Z
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, "google.messenger"

    .line 124
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private handleIidResponse(Landroid/content/Intent;)V
    .registers 8

    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const-string v3, "FirebaseInstanceId"

    if-nez v1, :cond_30

    .line 90
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2f

    const-string p1, "Unexpected response action: "

    .line 91
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    :cond_26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_2c
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void

    :cond_30
    const-string v0, "registration_id"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3e

    const-string v1, "unregistered"

    .line 95
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3e
    if-nez v1, :cond_44

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/Rpc;->processError(Landroid/content/Intent;)V

    return-void

    :cond_44
    const-string v4, "\\|ID\\|([^|]+)\\|:?+(.*)"

    .line 99
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 100
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_75

    .line 102
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_74

    const-string p1, "Unexpected response string: "

    .line 103
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6b

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_71

    :cond_6b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_71
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    return-void

    :cond_75
    const/4 v1, 0x1

    .line 105
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 106
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 108
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v1, p1}, Lcom/google/firebase/iid/Rpc;->setResponse(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private handleIncomingMessage(Landroid/os/Message;)V
    .registers 5

    if-eqz p1, :cond_39

    .line 12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_39

    .line 13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 14
    new-instance v1, Lcom/google/firebase/iid/FirebaseIidMessengerCompat$HandleOldParcelNameClassLoader;

    invoke-direct {v1}, Lcom/google/firebase/iid/FirebaseIidMessengerCompat$HandleOldParcelNameClassLoader;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "google.messenger"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;

    if-eqz v1, :cond_29

    .line 18
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;

    iput-object v1, p0, Lcom/google/firebase/iid/Rpc;->outgoingMessengerCompat:Lcom/google/firebase/iid/FirebaseIidMessengerCompat;

    .line 19
    :cond_29
    instance-of v1, v0, Landroid/os/Messenger;

    if-eqz v1, :cond_31

    .line 20
    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/google/firebase/iid/Rpc;->outgoingMessenger:Landroid/os/Messenger;

    .line 21
    :cond_31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/Rpc;->handleIidResponse(Landroid/content/Intent;)V

    return-void

    :cond_39
    const-string p1, "FirebaseInstanceId"

    const-string v0, "Dropping invalid message"

    .line 23
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static final synthetic lambda$registerRpc$0$Rpc(Lcom/google/android/gms/tasks/Task;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_d
    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    .line 160
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 161
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Error making request: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_3c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final synthetic lambda$registerRpcInternal$3$Rpc(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    .line 144
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "FirebaseInstanceId"

    const-string v0, "No response"

    .line 145
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method static final synthetic lambda$registerRpcViaIntent$1$Rpc(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    invoke-static {p0}, Lcom/google/firebase/iid/Rpc;->gmsCoreRespondedWithMessenger(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    .line 156
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 157
    :cond_c
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized nextId()Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/google/firebase/iid/Rpc;

    monitor-enter v0

    .line 125
    :try_start_3
    sget v1, Lcom/google/firebase/iid/Rpc;->requestId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/google/firebase/iid/Rpc;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private registerRpcInternal(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-static {}, Lcom/google/firebase/iid/Rpc;->nextId()Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 128
    iget-object v2, p0, Lcom/google/firebase/iid/Rpc;->responseCallbacks:Landroidx/collection/SimpleArrayMap;

    monitor-enter v2

    .line 129
    :try_start_c
    iget-object v3, p0, Lcom/google/firebase/iid/Rpc;->responseCallbacks:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3, v0, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_39

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/iid/Rpc;->startRegisterRpc(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/google/firebase/iid/Rpc;->timeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/firebase/iid/Rpc$$Lambda$2;

    invoke-direct {v2, v1}, Lcom/google/firebase/iid/Rpc$$Lambda$2;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 133
    invoke-interface {p1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 135
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 136
    invoke-static {}, Lcom/google/firebase/iid/FirebaseIidExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/iid/Rpc$$Lambda$3;

    invoke-direct {v4, p0, v0, p1}, Lcom/google/firebase/iid/Rpc$$Lambda$3;-><init>(Lcom/google/firebase/iid/Rpc;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V

    .line 137
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 138
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catchall_39
    move-exception p1

    .line 130
    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method private registerRpcViaIntent(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/google/firebase/iid/Rpc;->metadata:Lcom/google/firebase/iid/Metadata;

    invoke-virtual {v0}, Lcom/google/firebase/iid/Metadata;->isGmscorePresent()Z

    move-result v0

    if-nez v0, :cond_14

    .line 119
    new-instance p1, Ljava/io/IOException;

    const-string v0, "MISSING_INSTANCEID_SERVICE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 120
    :cond_14
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/Rpc;->registerRpcInternal(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/google/firebase/iid/FirebaseIidExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/iid/Rpc$$Lambda$1;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/iid/Rpc$$Lambda$1;-><init>(Lcom/google/firebase/iid/Rpc;Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized setPendingIntentExtra(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-class v0, Lcom/google/firebase/iid/Rpc;

    monitor-enter v0

    .line 25
    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/Rpc;->appPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_18

    .line 26
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.example.invalidpackage"

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 28
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sput-object p0, Lcom/google/firebase/iid/Rpc;->appPendingIntent:Landroid/app/PendingIntent;

    :cond_18
    const-string p0, "app"

    .line 29
    sget-object v1, Lcom/google/firebase/iid/Rpc;->appPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    .line 30
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setResponse(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 81
    iget-object v0, p0, Lcom/google/firebase/iid/Rpc;->responseCallbacks:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 82
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/iid/Rpc;->responseCallbacks:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-nez v1, :cond_2a

    const-string p2, "FirebaseInstanceId"

    const-string v1, "Missing callback for "

    .line 84
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_20
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_25
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    monitor-exit v0

    return-void

    .line 86
    :cond_2a
    invoke-virtual {v1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 87
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method private startRegisterRpc(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6

    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    iget-object v1, p0, Lcom/google/firebase/iid/Rpc;->metadata:Lcom/google/firebase/iid/Metadata;

    invoke-virtual {v1}, Lcom/google/firebase/iid/Metadata;->getIidImplementation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    const-string v1, "com.google.iid.TOKEN_REQUEST"

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1e

    :cond_19
    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    :goto_1e
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 37
    iget-object p1, p0, Lcom/google/firebase/iid/Rpc;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/google/firebase/iid/Rpc;->setPendingIntentExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/iid/Rpc;->sendRequest(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final synthetic lambda$registerRpcInternal$4$Rpc(Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;Lcom/google/android/gms/tasks/Task;)V
    .registers 5

    .line 139
    iget-object p3, p0, Lcom/google/firebase/iid/Rpc;->responseCallbacks:Landroidx/collection/SimpleArrayMap;

    monitor-enter p3

    .line 140
    :try_start_3
    iget-object v0, p0, Lcom/google/firebase/iid/Rpc;->responseCallbacks:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    monitor-exit p3
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    const/4 p1, 0x0

    .line 142
    invoke-interface {p2, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void

    :catchall_e
    move-exception p1

    .line 141
    :try_start_f
    monitor-exit p3
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method final synthetic lambda$registerRpcViaIntent$2$Rpc(Landroid/os/Bundle;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p2

    .line 149
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/firebase/iid/Rpc;->gmsCoreRespondedWithMessenger(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_14

    return-object p2

    .line 151
    :cond_14
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/Rpc;->registerRpcInternal(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 152
    invoke-static {}, Lcom/google/firebase/iid/FirebaseIidExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    sget-object v0, Lcom/google/firebase/iid/Rpc$$Lambda$4;->$instance:Lcom/google/android/gms/tasks/SuccessContinuation;

    .line 153
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method processError(Landroid/content/Intent;)V
    .registers 9

    const-string v0, "error"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    const-string v0, "FirebaseInstanceId"

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected response, no error or registration id "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    const-string v1, "FirebaseInstanceId"

    const/4 v2, 0x3

    .line 62
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_56

    const-string v1, "FirebaseInstanceId"

    const-string v3, "Received InstanceID error "

    .line 63
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4d

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_53

    :cond_4d
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_53
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    const-string v1, "|"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    const-string v1, "\\|"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 67
    array-length v3, v1

    const/4 v4, 0x2

    if-le v3, v4, :cond_92

    const-string v3, "ID"

    const/4 v5, 0x1

    aget-object v6, v1, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    goto :goto_92

    .line 70
    :cond_74
    aget-object v0, v1, v4

    .line 71
    aget-object v1, v1, v2

    const-string v2, ":"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 73
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_84
    const-string v2, "error"

    .line 74
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/iid/Rpc;->setResponse(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_92
    :goto_92
    const-string p1, "FirebaseInstanceId"

    const-string v1, "Unexpected structured response "

    .line 68
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a5

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_aa

    :cond_a5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_aa
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_ae
    iget-object v0, p0, Lcom/google/firebase/iid/Rpc;->responseCallbacks:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    const/4 v1, 0x0

    .line 77
    :goto_b2
    :try_start_b2
    iget-object v2, p0, Lcom/google/firebase/iid/Rpc;->responseCallbacks:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_cc

    .line 78
    iget-object v2, p0, Lcom/google/firebase/iid/Rpc;->responseCallbacks:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/iid/Rpc;->setResponse(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    .line 80
    :cond_cc
    monitor-exit v0

    return-void

    :catchall_ce
    move-exception p1

    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_b2 .. :try_end_d0} :catchall_ce

    goto :goto_d2

    :goto_d1
    throw p1

    :goto_d2
    goto :goto_d1
.end method

.method registerRpc(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/firebase/iid/Rpc;->metadata:Lcom/google/firebase/iid/Metadata;

    invoke-virtual {v0}, Lcom/google/firebase/iid/Metadata;->getGmsVersionCode()I

    move-result v0

    const v1, 0xb71b00

    if-lt v0, v1, :cond_21

    .line 112
    iget-object v0, p0, Lcom/google/firebase/iid/Rpc;->context:Landroid/content/Context;

    .line 113
    invoke-static {v0}, Lcom/google/firebase/iid/MessengerIpcClient;->getInstance(Landroid/content/Context;)Lcom/google/firebase/iid/MessengerIpcClient;

    move-result-object v0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/MessengerIpcClient;->sendRequestForResponse(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 115
    invoke-static {}, Lcom/google/firebase/iid/FirebaseIidExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/iid/Rpc$$Lambda$0;->$instance:Lcom/google/android/gms/tasks/Continuation;

    .line 116
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 117
    :cond_21
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/Rpc;->registerRpcViaIntent(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method protected sendRequest(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7

    .line 40
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "|ID|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "kid"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "FirebaseInstanceId"

    const/4 v0, 0x3

    .line 41
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_54
    iget-object v1, p0, Lcom/google/firebase/iid/Rpc;->responseMessenger:Landroid/os/Messenger;

    const-string v2, "google.messenger"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lcom/google/firebase/iid/Rpc;->outgoingMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_63

    iget-object v1, p0, Lcom/google/firebase/iid/Rpc;->outgoingMessengerCompat:Lcom/google/firebase/iid/FirebaseIidMessengerCompat;

    if-eqz v1, :cond_85

    .line 45
    :cond_63
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 46
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    :try_start_69
    iget-object v2, p0, Lcom/google/firebase/iid/Rpc;->outgoingMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_73

    .line 48
    iget-object v2, p0, Lcom/google/firebase/iid/Rpc;->outgoingMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void

    .line 49
    :cond_73
    iget-object v2, p0, Lcom/google/firebase/iid/Rpc;->outgoingMessengerCompat:Lcom/google/firebase/iid/FirebaseIidMessengerCompat;

    invoke-virtual {v2, v1}, Lcom/google/firebase/iid/FirebaseIidMessengerCompat;->send(Landroid/os/Message;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_78} :catch_79

    return-void

    :catch_79
    nop

    .line 52
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_85

    const-string v0, "Messenger failed, fallback to startService"

    .line 53
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_85
    iget-object p2, p0, Lcom/google/firebase/iid/Rpc;->metadata:Lcom/google/firebase/iid/Metadata;

    invoke-virtual {p2}, Lcom/google/firebase/iid/Metadata;->getIidImplementation()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_94

    .line 55
    iget-object p2, p0, Lcom/google/firebase/iid/Rpc;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 56
    :cond_94
    iget-object p2, p0, Lcom/google/firebase/iid/Rpc;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
