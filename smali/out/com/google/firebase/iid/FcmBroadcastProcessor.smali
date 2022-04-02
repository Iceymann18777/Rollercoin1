.class public Lcom/google/firebase/iid/FcmBroadcastProcessor;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"

# interfaces
.implements Lcom/google/firebase/iid/BroadcastProcessor;


# static fields
.field private static fcmServiceConn:Lcom/google/firebase/iid/WithinAppServiceConnection;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/FcmBroadcastProcessor;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/iid/FcmBroadcastProcessor;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/iid/FcmBroadcastProcessor;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static bindToMessagingService(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Binding to service"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    .line 20
    invoke-static {p0, v0}, Lcom/google/firebase/iid/FcmBroadcastProcessor;->getServiceConnection(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/WithinAppServiceConnection;

    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/WithinAppServiceConnection;->sendIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 22
    invoke-static {}, Lcom/google/firebase/iid/FirebaseIidExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    sget-object v0, Lcom/google/firebase/iid/FcmBroadcastProcessor$$Lambda$2;->$instance:Lcom/google/android/gms/tasks/Continuation;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private static getServiceConnection(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/WithinAppServiceConnection;
    .registers 4

    .line 24
    sget-object v0, Lcom/google/firebase/iid/FcmBroadcastProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/FcmBroadcastProcessor;->fcmServiceConn:Lcom/google/firebase/iid/WithinAppServiceConnection;

    if-nez v1, :cond_e

    .line 26
    new-instance v1, Lcom/google/firebase/iid/WithinAppServiceConnection;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/iid/WithinAppServiceConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/google/firebase/iid/FcmBroadcastProcessor;->fcmServiceConn:Lcom/google/firebase/iid/WithinAppServiceConnection;

    .line 27
    :cond_e
    sget-object p0, Lcom/google/firebase/iid/FcmBroadcastProcessor;->fcmServiceConn:Lcom/google/firebase/iid/WithinAppServiceConnection;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method static final synthetic lambda$bindToMessagingService$3$FcmBroadcastProcessor(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, -0x1

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$startMessagingService$0$FcmBroadcastProcessor(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/google/firebase/iid/ServiceStarter;->getInstance()Lcom/google/firebase/iid/ServiceStarter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/iid/ServiceStarter;->startMessagingService(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$startMessagingService$1$FcmBroadcastProcessor(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 p0, 0x193

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$startMessagingService$2$FcmBroadcastProcessor(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 34
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x192

    if-eq v0, v1, :cond_15

    goto :goto_24

    .line 36
    :cond_15
    invoke-static {p0, p1}, Lcom/google/firebase/iid/FcmBroadcastProcessor;->bindToMessagingService(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 37
    invoke-static {}, Lcom/google/firebase/iid/FirebaseIidExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    sget-object p2, Lcom/google/firebase/iid/FcmBroadcastProcessor$$Lambda$3;->$instance:Lcom/google/android/gms/tasks/Continuation;

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_24
    :goto_24
    return-object p2
.end method


# virtual methods
.method public process(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "gcm.rawData64"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "rawData"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 9
    :cond_15
    iget-object v0, p0, Lcom/google/firebase/iid/FcmBroadcastProcessor;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/iid/FcmBroadcastProcessor;->startMessagingService(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public startMessagingService(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 12
    :goto_15
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    if-eqz v0, :cond_29

    if-nez v1, :cond_29

    .line 14
    invoke-static {p1, p2}, Lcom/google/firebase/iid/FcmBroadcastProcessor;->bindToMessagingService(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 15
    :cond_29
    iget-object v0, p0, Lcom/google/firebase/iid/FcmBroadcastProcessor;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/iid/FcmBroadcastProcessor$$Lambda$0;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/iid/FcmBroadcastProcessor$$Lambda$0;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 16
    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/google/firebase/iid/FcmBroadcastProcessor;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/firebase/iid/FcmBroadcastProcessor$$Lambda$1;

    invoke-direct {v2, p1, p2}, Lcom/google/firebase/iid/FcmBroadcastProcessor$$Lambda$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
