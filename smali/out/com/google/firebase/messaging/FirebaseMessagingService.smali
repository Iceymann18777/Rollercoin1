.class public Lcom/google/firebase/messaging/FirebaseMessagingService;
.super Lcom/google/firebase/messaging/EnhancedIntentService;
.source "com.google.firebase:firebase-messaging@@20.2.4"


# static fields
.field private static final recentlyReceivedMessageIds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 109
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/EnhancedIntentService;-><init>()V

    return-void
.end method

.method private ackMessage(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    .line 98
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 99
    :cond_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "google.message_id"

    .line 100
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p0}, Lcom/google/firebase/iid/MessengerIpcClient;->getInstance(Landroid/content/Context;)Lcom/google/firebase/iid/MessengerIpcClient;

    move-result-object p1

    const/4 v1, 0x2

    .line 102
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/iid/MessengerIpcClient;->sendOneWayRequest(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private alreadyReceivedMessage(Ljava/lang/String;)Z
    .registers 5

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 89
    :cond_8
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    .line 90
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "Received duplicate message: "

    .line 91
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2f

    :cond_2a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2f
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 p1, 0x1

    return p1

    .line 93
    :cond_34
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_43

    .line 94
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 95
    :cond_43
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method private dispatchMessage(Landroid/content/Intent;)V
    .registers 6

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_b

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_b
    const-string v1, "androidx.content.wakelockid"

    .line 71
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 72
    invoke-static {v0}, Lcom/google/firebase/messaging/NotificationParams;->isNotification(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 73
    new-instance v1, Lcom/google/firebase/messaging/NotificationParams;

    invoke-direct {v1, v0}, Lcom/google/firebase/messaging/NotificationParams;-><init>(Landroid/os/Bundle;)V

    .line 74
    invoke-static {}, Lcom/google/firebase/messaging/FcmExecutors;->newNetworkIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 75
    new-instance v3, Lcom/google/firebase/messaging/DisplayNotification;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/firebase/messaging/DisplayNotification;-><init>(Landroid/content/Context;Lcom/google/firebase/messaging/NotificationParams;Ljava/util/concurrent/Executor;)V

    .line 76
    :try_start_24
    invoke-virtual {v3}, Lcom/google/firebase/messaging/DisplayNotification;->handleNotification()Z

    move-result v1
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_3b

    if-eqz v1, :cond_2e

    .line 77
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    .line 79
    :cond_2e
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 83
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadScionMetrics(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 84
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->logNotificationForeground(Landroid/content/Intent;)V

    goto :goto_40

    :catchall_3b
    move-exception p1

    .line 81
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 82
    throw p1

    .line 85
    :cond_40
    :goto_40
    new-instance p1, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-direct {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void
.end method

.method private getMessageId(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    const-string v0, "google.message_id"

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "message_id"

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method private handleMessageIntent(Landroid/content/Intent;)V
    .registers 6

    const-string v0, "google.message_id"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->ackMessage(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 33
    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->alreadyReceivedMessage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 34
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->passMessageIntentToSdk(Landroid/content/Intent;)V

    .line 35
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->getAckTimeoutMillis()J

    move-result-wide v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, p1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_1c} :catch_21
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1c} :catch_1f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_13 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p1

    goto :goto_22

    :catch_1f
    move-exception p1

    goto :goto_22

    :catch_21
    move-exception p1

    .line 38
    :goto_22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Message ack failed: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirebaseMessaging"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleNotificationOpen(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "pending_intent"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_15

    .line 14
    :try_start_a
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_15

    :catch_e
    const-string v0, "FirebaseMessaging"

    const-string v1, "Notification pending intent canceled"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_15
    :goto_15
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadScionMetrics(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 19
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->logNotificationOpen(Landroid/content/Intent;)V

    :cond_1e
    return-void
.end method

.method private passMessageIntentToSdk(Landroid/content/Intent;)V
    .registers 9

    const-string v0, "message_type"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcm"

    if-nez v0, :cond_b

    move-object v0, v1

    :cond_b
    const/4 v2, -0x1

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_b6

    goto :goto_3c

    :sswitch_17
    const-string v1, "send_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v2, 0x2

    goto :goto_3c

    :sswitch_21
    const-string v1, "send_error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v2, 0x3

    goto :goto_3c

    :sswitch_2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v2, 0x0

    goto :goto_3c

    :sswitch_33
    const-string v1, "deleted_messages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v2, 0x1

    :cond_3c
    :goto_3c
    const-string v1, "FirebaseMessaging"

    if-eqz v2, :cond_82

    if-eq v2, v6, :cond_7e

    if-eq v2, v5, :cond_74

    if-eq v2, v4, :cond_61

    const-string p1, "Received message with unknown type: "

    .line 66
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5d

    :cond_57
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_5d
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_61
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->getMessageId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/messaging/SendException;

    const-string v2, "error"

    .line 63
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/firebase/messaging/SendException;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_74
    const-string v0, "google.message_id"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageSent(Ljava/lang/String;)V

    return-void

    .line 57
    :cond_7e
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onDeletedMessages()V

    return-void

    .line 44
    :cond_82
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadScionMetrics(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const/4 v0, 0x0

    .line 45
    invoke-static {p1, v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->logNotificationReceived(Landroid/content/Intent;Lcom/google/android/datatransport/Transport;)V

    .line 46
    :cond_8c
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadFirelogAnalytics(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 47
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getTransportFactory()Lcom/google/android/datatransport/TransportFactory;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 49
    const-class v1, Ljava/lang/String;

    const-string v2, "json"

    .line 50
    invoke-static {v2}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/messaging/FirebaseMessagingService$$Lambda$0;->$instance:Lcom/google/android/datatransport/Transformer;

    const-string v4, "FCM_CLIENT_EVENT_LOGGING"

    .line 51
    invoke-interface {v0, v4, v1, v2, v3}, Lcom/google/android/datatransport/TransportFactory;->getTransport(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    move-result-object v0

    .line 52
    invoke-static {p1, v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->logNotificationReceived(Landroid/content/Intent;Lcom/google/android/datatransport/Transport;)V

    goto :goto_b1

    :cond_ac
    const-string v0, "TransportFactory is null. Skip exporting message delivery metrics to Big Query"

    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_b1
    :goto_b1
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->dispatchMessage(Landroid/content/Intent;)V

    return-void

    nop

    :sswitch_data_b6
    .sparse-switch
        -0x7aedf14e -> :sswitch_33
        0x18f11 -> :sswitch_2b
        0x308f3e91 -> :sswitch_21
        0x3090df23 -> :sswitch_17
    .end sparse-switch
.end method


# virtual methods
.method getAckTimeoutMillis()J
    .registers 4

    .line 108
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    .line 7
    invoke-static {}, Lcom/google/firebase/iid/ServiceStarter;->getInstance()Lcom/google/firebase/iid/ServiceStarter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/iid/ServiceStarter;->getMessagingEvent()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 4

    .line 21
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_59

    :cond_15
    const-string v1, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 25
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadScionMetrics(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 26
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->logNotificationDismiss(Landroid/content/Intent;)V

    return-void

    :cond_27
    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "token"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    return-void

    :cond_39
    const-string v0, "Unknown intent action: "

    .line 29
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_53

    :cond_4e
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_53
    const-string v0, "FirebaseMessaging"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return-void

    .line 23
    :cond_59
    :goto_59
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->handleMessageIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public handleIntentOnMainThread(Landroid/content/Intent;)Z
    .registers 4

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.firebase.messaging.NOTIFICATION_OPEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 9
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->handleNotificationOpen(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public onDeletedMessages()V
    .registers 1

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .registers 2

    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method
