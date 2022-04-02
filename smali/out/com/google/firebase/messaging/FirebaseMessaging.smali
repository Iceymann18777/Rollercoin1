.class public Lcom/google/firebase/messaging/FirebaseMessaging;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@20.2.4"


# static fields
.field static transportFactory:Lcom/google/android/datatransport/TransportFactory;


# instance fields
.field private final context:Landroid/content/Context;

.field private final iid:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final topicsSubscriberTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/messaging/TopicsSubscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/platforminfo/UserAgentPublisher;Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/android/datatransport/TransportFactory;)V
    .registers 15

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sput-object p6, Lcom/google/firebase/messaging/FirebaseMessaging;->transportFactory:Lcom/google/android/datatransport/TransportFactory;

    .line 5
    iput-object p2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p6

    iput-object p6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    .line 7
    new-instance v2, Lcom/google/firebase/iid/Metadata;

    invoke-direct {v2, p6}, Lcom/google/firebase/iid/Metadata;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    .line 8
    invoke-static {}, Lcom/google/firebase/messaging/FcmExecutors;->newTopicsSyncExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 9
    invoke-static/range {v0 .. v7}, Lcom/google/firebase/messaging/TopicsSubscriber;->createInstance(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/Metadata;Lcom/google/firebase/platforminfo/UserAgentPublisher;Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;Lcom/google/firebase/installations/FirebaseInstallationsApi;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->topicsSubscriberTask:Lcom/google/android/gms/tasks/Task;

    .line 11
    invoke-static {}, Lcom/google/firebase/messaging/FcmExecutors;->newTopicsSyncTriggerExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance p3, Lcom/google/firebase/messaging/FirebaseMessaging$$Lambda$0;

    invoke-direct {p3, p0}, Lcom/google/firebase/messaging/FirebaseMessaging$$Lambda$0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    .line 12
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method static declared-synchronized getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .registers 2

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getTransportFactory()Lcom/google/android/datatransport/TransportFactory;
    .registers 1

    .line 32
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->transportFactory:Lcom/google/android/datatransport/TransportFactory;

    return-object v0
.end method


# virtual methods
.method public isAutoInitEnabled()Z
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->isFcmAutoInitEnabled()Z

    move-result v0

    return v0
.end method

.method final synthetic lambda$new$0$FirebaseMessaging(Lcom/google/firebase/messaging/TopicsSubscriber;)V
    .registers 3

    .line 35
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->isAutoInitEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 36
    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicsSubscriber;->startTopicsSyncIfNecessary()V

    :cond_9
    return-void
.end method
