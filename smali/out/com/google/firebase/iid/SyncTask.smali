.class Lcom/google/firebase/iid/SyncTask;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/SyncTask$ConnectivityChangeReceiver;
    }
.end annotation


# instance fields
.field private final iid:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final nextDelaySeconds:J

.field private final syncWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;J)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/iid/SyncTask;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 3
    iput-wide p2, p0, Lcom/google/firebase/iid/SyncTask;->nextDelaySeconds:J

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/iid/SyncTask;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "fiid-sync"

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/SyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/iid/SyncTask;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/google/firebase/iid/SyncTask;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    return-object p0
.end method

.method private invokeOnTokenRefresh(Ljava/lang/String;)V
    .registers 6

    .line 62
    iget-object v0, p0, Lcom/google/firebase/iid/SyncTask;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "Invoking onNewToken for app: "

    .line 64
    iget-object v2, p0, Lcom/google/firebase/iid/SyncTask;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_36
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_3c
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_3f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "token"

    .line 66
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0}, Lcom/google/firebase/iid/SyncTask;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/firebase/iid/ServiceStarter;->startMessagingServiceViaReceiver(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_52
    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/google/firebase/iid/SyncTask;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method isDeviceConnected()Z
    .registers 3

    .line 71
    invoke-virtual {p0}, Lcom/google/firebase/iid/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_13

    .line 72
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_1e

    .line 73
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method maybeRefreshToken()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FirebaseInstanceId"

    .line 39
    iget-object v1, p0, Lcom/google/firebase/iid/SyncTask;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getTokenWithoutTriggeringSync()Lcom/google/firebase/iid/Store$Token;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/google/firebase/iid/SyncTask;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v2, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->tokenNeedsRefresh(Lcom/google/firebase/iid/Store$Token;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_12

    return v3

    :cond_12
    const/4 v2, 0x0

    .line 42
    :try_start_13
    iget-object v4, p0, Lcom/google/firebase/iid/SyncTask;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->blockingGetMasterToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_21

    const-string v1, "Token retrieval failed: null"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_21
    const/4 v5, 0x3

    .line 46
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2d

    const-string v5, "Token successfully retrieved"

    .line 47
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    if-eqz v1, :cond_39

    if-eqz v1, :cond_3c

    .line 48
    iget-object v1, v1, Lcom/google/firebase/iid/Store$Token;->token:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 49
    :cond_39
    invoke-direct {p0, v4}, Lcom/google/firebase/iid/SyncTask;->invokeOnTokenRefresh(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_3c} :catch_43
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_3c} :catch_3d

    :cond_3c
    return v3

    :catch_3d
    const-string v1, "Token retrieval failed with SecurityException. Will retry token retrieval"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_43
    move-exception v1

    .line 52
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/iid/GmsRpc;->isErrorMessageForRetryableError(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 53
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Token retrieval failed: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Will retry token retrieval"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 55
    :cond_76
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_82

    const-string v1, "Token retrieval failed without exception message. Will retry token retrieval"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 58
    :cond_82
    throw v1
.end method

.method public run()V
    .registers 6

    .line 8
    invoke-static {}, Lcom/google/firebase/iid/ServiceStarter;->getInstance()Lcom/google/firebase/iid/ServiceStarter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/ServiceStarter;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Lcom/google/firebase/iid/SyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_13
    const/4 v0, 0x0

    .line 10
    :try_start_14
    iget-object v1, p0, Lcom/google/firebase/iid/SyncTask;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->setSyncScheduledOrRunning(Z)V

    .line 11
    iget-object v1, p0, Lcom/google/firebase/iid/SyncTask;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->isGmsCorePresent()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 12
    iget-object v1, p0, Lcom/google/firebase/iid/SyncTask;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->setSyncScheduledOrRunning(Z)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_27} :catch_94
    .catchall {:try_start_14 .. :try_end_27} :catchall_92

    .line 13
    invoke-static {}, Lcom/google/firebase/iid/ServiceStarter;->getInstance()Lcom/google/firebase/iid/ServiceStarter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/ServiceStarter;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 14
    iget-object v0, p0, Lcom/google/firebase/iid/SyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3a
    return-void

    .line 16
    :cond_3b
    :try_start_3b
    invoke-static {}, Lcom/google/firebase/iid/ServiceStarter;->getInstance()Lcom/google/firebase/iid/ServiceStarter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/iid/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/ServiceStarter;->hasAccessNetworkStatePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 17
    invoke-virtual {p0}, Lcom/google/firebase/iid/SyncTask;->isDeviceConnected()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 18
    new-instance v1, Lcom/google/firebase/iid/SyncTask$ConnectivityChangeReceiver;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/SyncTask$ConnectivityChangeReceiver;-><init>(Lcom/google/firebase/iid/SyncTask;)V

    .line 19
    invoke-virtual {v1}, Lcom/google/firebase/iid/SyncTask$ConnectivityChangeReceiver;->registerReceiver()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_57} :catch_94
    .catchall {:try_start_3b .. :try_end_57} :catchall_92

    .line 20
    invoke-static {}, Lcom/google/firebase/iid/ServiceStarter;->getInstance()Lcom/google/firebase/iid/ServiceStarter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/ServiceStarter;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 21
    iget-object v0, p0, Lcom/google/firebase/iid/SyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6a
    return-void

    .line 23
    :cond_6b
    :try_start_6b
    invoke-virtual {p0}, Lcom/google/firebase/iid/SyncTask;->maybeRefreshToken()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 24
    iget-object v1, p0, Lcom/google/firebase/iid/SyncTask;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->setSyncScheduledOrRunning(Z)V

    goto :goto_7e

    .line 25
    :cond_77
    iget-object v1, p0, Lcom/google/firebase/iid/SyncTask;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-wide v2, p0, Lcom/google/firebase/iid/SyncTask;->nextDelaySeconds:J

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->syncWithDelaySecondsInternal(J)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_7e} :catch_94
    .catchall {:try_start_6b .. :try_end_7e} :catchall_92

    .line 26
    :goto_7e
    invoke-static {}, Lcom/google/firebase/iid/ServiceStarter;->getInstance()Lcom/google/firebase/iid/ServiceStarter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/ServiceStarter;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 27
    iget-object v0, p0, Lcom/google/firebase/iid/SyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_92
    move-exception v0

    goto :goto_d7

    :catch_94
    move-exception v1

    :try_start_95
    const-string v2, "FirebaseInstanceId"

    .line 30
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Topic sync or token retrieval failed on hard failure exceptions: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Won\'t retry the operation."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v1, p0, Lcom/google/firebase/iid/SyncTask;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->setSyncScheduledOrRunning(Z)V
    :try_end_c3
    .catchall {:try_start_95 .. :try_end_c3} :catchall_92

    .line 33
    invoke-static {}, Lcom/google/firebase/iid/ServiceStarter;->getInstance()Lcom/google/firebase/iid/ServiceStarter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/ServiceStarter;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 34
    iget-object v0, p0, Lcom/google/firebase/iid/SyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_d6
    return-void

    .line 35
    :goto_d7
    invoke-static {}, Lcom/google/firebase/iid/ServiceStarter;->getInstance()Lcom/google/firebase/iid/ServiceStarter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/iid/SyncTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/ServiceStarter;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 36
    iget-object v1, p0, Lcom/google/firebase/iid/SyncTask;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 37
    :cond_ea
    throw v0
.end method
