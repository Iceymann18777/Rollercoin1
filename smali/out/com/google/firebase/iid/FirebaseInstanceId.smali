.class public Lcom/google/firebase/iid/FirebaseInstanceId;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;
    }
.end annotation


# static fields
.field private static final API_KEY_FORMAT:Ljava/util/regex/Pattern;

.field private static final MAX_DELAY_SEC:J

.field private static store:Lcom/google/firebase/iid/Store;

.field static syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;

.field private final autoInit:Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;

.field final fileIoExecutor:Ljava/util/concurrent/Executor;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final metadata:Lcom/google/firebase/iid/Metadata;

.field private final requestDeduplicator:Lcom/google/firebase/iid/RequestDeduplicator;

.field private final rpc:Lcom/google/firebase/iid/GmsRpc;

.field private syncScheduledOrRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 176
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/FirebaseInstanceId;->MAX_DELAY_SEC:J

    const-string v0, "\\AA[\\w-]{38}\\z"

    .line 177
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->API_KEY_FORMAT:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/platforminfo/UserAgentPublisher;Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V
    .registers 15

    .line 4
    new-instance v2, Lcom/google/firebase/iid/Metadata;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/firebase/iid/Metadata;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/google/firebase/iid/FirebaseIidExecutors;->newCachedSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/google/firebase/iid/FirebaseIidExecutors;->newCachedSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 8
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/Metadata;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/platforminfo/UserAgentPublisher;Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/Metadata;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/platforminfo/UserAgentPublisher;Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V
    .registers 16

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->syncScheduledOrRunning:Z

    .line 12
    invoke-static {p1}, Lcom/google/firebase/iid/Metadata;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 14
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    .line 15
    :try_start_f
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lcom/google/firebase/iid/Store;

    if-nez v1, :cond_1e

    .line 16
    new-instance v1, Lcom/google/firebase/iid/Store;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/iid/Store;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lcom/google/firebase/iid/Store;

    .line 17
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_4b

    .line 18
    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    .line 19
    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->metadata:Lcom/google/firebase/iid/Metadata;

    .line 20
    new-instance v0, Lcom/google/firebase/iid/GmsRpc;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/iid/GmsRpc;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/Metadata;Lcom/google/firebase/platforminfo/UserAgentPublisher;Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->rpc:Lcom/google/firebase/iid/GmsRpc;

    .line 21
    iput-object p4, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->fileIoExecutor:Ljava/util/concurrent/Executor;

    .line 22
    new-instance p1, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;

    invoke-direct {p1, p0, p5}, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/events/Subscriber;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->autoInit:Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;

    .line 23
    new-instance p1, Lcom/google/firebase/iid/RequestDeduplicator;

    invoke-direct {p1, p3}, Lcom/google/firebase/iid/RequestDeduplicator;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->requestDeduplicator:Lcom/google/firebase/iid/RequestDeduplicator;

    .line 24
    iput-object p8, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 25
    new-instance p1, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$0;

    invoke-direct {p1, p0}, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$0;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_4b
    move-exception p1

    .line 17
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p1

    .line 13
    :cond_4e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .registers 1

    .line 175
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSyncIfNecessary()V

    return-void
.end method

.method private awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x7530

    .line 98
    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_8} :catch_11
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_8} :catch_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_8} :catch_9

    return-object p1

    .line 109
    :catch_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_11
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 101
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2c

    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "INSTANCE_ID_RESET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 103
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->resetStorageAndScheduleSync()V

    .line 104
    :cond_29
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 105
    :cond_2c
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_33

    .line 106
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 107
    :cond_33
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static awaitTaskAllowOnMainThread(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "Task must not be null"

    .line 110
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 112
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$2;->$instance:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$3;

    invoke-direct {v2, v0}, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 113
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 114
    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getResultOrThrowException(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static checkRequiredFirebaseOptions(Lcom/google/firebase/FirebaseApp;)V
    .registers 3

    .line 51
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your project ID. A valid Firebase project ID is required to communicate with Firebase server APIs: It identifies your project with Google."

    .line 52
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase."

    .line 55
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google."

    .line 58
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->isValidAppIdFormat(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 61
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->isValidApiKeyFormat(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 64
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .registers 2

    .line 2
    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->checkRequiredFirebaseOptions(Lcom/google/firebase/FirebaseApp;)V

    .line 3
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/iid/FirebaseInstanceId;

    return-object p0
.end method

.method private getInstanceId(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/iid/InstanceIdResult;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->rationaliseScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 76
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->fileIoExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$1;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private static getResultOrThrowException(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 117
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_29

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 121
    :cond_21
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string v0, "Firebase Installations getId Task has timed out."

    invoke-direct {p0, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_29
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getSubtype()Ljava/lang/String;
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, ""

    return-object v0

    .line 154
    :cond_11
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isDebugLogEnabled()Z
    .registers 4

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_18

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_16

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    :goto_18
    const/4 v0, 0x1

    return v0
.end method

.method static isValidApiKeyFormat(Ljava/lang/String;)Z
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 67
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->API_KEY_FORMAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method static isValidAppIdFormat(Ljava/lang/String;)Z
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const-string v0, ":"

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static final synthetic lambda$awaitTaskAllowOnMainThread$4$FirebaseInstanceId(Ljava/util/concurrent/CountDownLatch;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    .line 157
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static rationaliseScope(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "fcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "gcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    return-object p0

    :cond_18
    :goto_18
    const-string p0, "*"

    return-object p0
.end method

.method private startSyncIfNecessary()V
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getTokenWithoutTriggeringSync()Lcom/google/firebase/iid/Store$Token;

    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->tokenNeedsRefresh(Lcom/google/firebase/iid/Store$Token;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 29
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    :cond_d
    return-void
.end method


# virtual methods
.method blockingGetMasterToken()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/Metadata;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method enqueueTaskWithDelaySeconds(Ljava/lang/Runnable;J)V
    .registers 9

    .line 42
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_16

    .line 44
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v4, "FirebaseInstanceId"

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    :cond_16
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 46
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method forceTokenRefresh()V
    .registers 3

    .line 143
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lcom/google/firebase/iid/Store;

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/Store;->deleteTokens(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    return-void
.end method

.method getApp()Lcom/google/firebase/FirebaseApp;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->checkRequiredFirebaseOptions(Lcom/google/firebase/FirebaseApp;)V

    .line 48
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSyncIfNecessary()V

    .line 49
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getIdWithoutTriggeringSync()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getIdWithoutTriggeringSync()Ljava/lang/String;
    .registers 3

    .line 68
    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lcom/google/firebase/iid/Store;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/Store;->setCreationTime(Ljava/lang/String;)J

    .line 69
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-interface {v0}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->awaitTaskAllowOnMainThread(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInstanceId()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/iid/InstanceIdResult;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->checkRequiredFirebaseOptions(Lcom/google/firebase/FirebaseApp;)V

    .line 74
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/Metadata;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->checkRequiredFirebaseOptions(Lcom/google/firebase/FirebaseApp;)V

    .line 92
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1e

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/iid/InstanceIdResult;

    invoke-interface {p1}, Lcom/google/firebase/iid/InstanceIdResult;->getToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :cond_1e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getTokenWithoutTriggeringSync()Lcom/google/firebase/iid/Store$Token;
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->app:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/Metadata;->getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getTokenWithoutTriggeringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/Store$Token;

    move-result-object v0

    return-object v0
.end method

.method getTokenWithoutTriggeringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/Store$Token;
    .registers 5

    .line 96
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lcom/google/firebase/iid/Store;

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/iid/Store;->getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/Store$Token;

    move-result-object p1

    return-object p1
.end method

.method public isFcmAutoInitEnabled()Z
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->autoInit:Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isGmsCorePresent()Z
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->metadata:Lcom/google/firebase/iid/Metadata;

    invoke-virtual {v0}, Lcom/google/firebase/iid/Metadata;->isGmscorePresent()Z

    move-result v0

    return v0
.end method

.method final synthetic lambda$getInstanceId$1$FirebaseInstanceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lcom/google/firebase/iid/Store;

    .line 167
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getSubtype()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->metadata:Lcom/google/firebase/iid/Metadata;

    .line 168
    invoke-virtual {v2}, Lcom/google/firebase/iid/Metadata;->getAppVersionCode()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/iid/Store;->saveToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance p1, Lcom/google/firebase/iid/InstanceIdResultImpl;

    invoke-direct {p1, p3, p4}, Lcom/google/firebase/iid/InstanceIdResultImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic lambda$getInstanceId$2$FirebaseInstanceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 7

    .line 164
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->rpc:Lcom/google/firebase/iid/GmsRpc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/iid/GmsRpc;->getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->fileIoExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$5;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$5;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic lambda$getInstanceId$3$FirebaseInstanceId(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getIdWithoutTriggeringSync()Ljava/lang/String;

    move-result-object p3

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->getTokenWithoutTriggeringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/Store$Token;

    move-result-object v0

    .line 161
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->tokenNeedsRefresh(Lcom/google/firebase/iid/Store$Token;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 162
    new-instance p1, Lcom/google/firebase/iid/InstanceIdResultImpl;

    iget-object p2, v0, Lcom/google/firebase/iid/Store$Token;->token:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Lcom/google/firebase/iid/InstanceIdResultImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 163
    :cond_1a
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->requestDeduplicator:Lcom/google/firebase/iid/RequestDeduplicator;

    new-instance v1, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId$$Lambda$4;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/firebase/iid/RequestDeduplicator;->getOrStartGetTokenRequest(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/iid/RequestDeduplicator$GetTokenRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic lambda$new$0$FirebaseInstanceId()V
    .registers 2

    .line 171
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->isFcmAutoInitEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 172
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSyncIfNecessary()V

    :cond_9
    return-void
.end method

.method declared-synchronized resetStorageAndScheduleSync()V
    .registers 2

    monitor-enter p0

    .line 138
    :try_start_1
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->store:Lcom/google/firebase/iid/Store;

    invoke-virtual {v0}, Lcom/google/firebase/iid/Store;->deleteAll()V

    .line 139
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->isFcmAutoInitEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 140
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 141
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setSyncScheduledOrRunning(Z)V
    .registers 2

    monitor-enter p0

    .line 32
    :try_start_1
    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->syncScheduledOrRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 33
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized startSync()V
    .registers 3

    monitor-enter p0

    .line 34
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->syncScheduledOrRunning:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0x0

    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->syncWithDelaySecondsInternal(J)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 36
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized syncWithDelaySecondsInternal(J)V
    .registers 8

    monitor-enter p0

    const-wide/16 v0, 0x1e

    const/4 v2, 0x1

    shl-long v3, p1, v2

    .line 37
    :try_start_6
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v3, Lcom/google/firebase/iid/FirebaseInstanceId;->MAX_DELAY_SEC:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 38
    new-instance v3, Lcom/google/firebase/iid/SyncTask;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/firebase/iid/SyncTask;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;J)V

    .line 39
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->enqueueTaskWithDelaySeconds(Ljava/lang/Runnable;J)V

    .line 40
    iput-boolean v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->syncScheduledOrRunning:Z
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1c

    .line 41
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method tokenNeedsRefresh(Lcom/google/firebase/iid/Store$Token;)Z
    .registers 3

    if-eqz p1, :cond_11

    .line 156
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->metadata:Lcom/google/firebase/iid/Metadata;

    invoke-virtual {v0}, Lcom/google/firebase/iid/Metadata;->getAppVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/iid/Store$Token;->needsRefresh(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method
