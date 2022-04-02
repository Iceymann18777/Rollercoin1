.class Lcom/onesignal/PushRegistratorHMS;
.super Ljava/lang/Object;
.source "PushRegistratorHMS.java"

# interfaces
.implements Lcom/onesignal/PushRegistrator;


# static fields
.field private static callbackSuccessful:Z

.field private static registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/PushRegistratorHMS;Landroid/content/Context;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/onesignal/PushRegistratorHMS;->getHMSTokenTask(Landroid/content/Context;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V

    return-void
.end method

.method private static doTimeOutWait()V
    .registers 2

    const-wide/16 v0, 0x7530

    .line 78
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method private declared-synchronized getHMSTokenTask(Landroid/content/Context;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_1
    invoke-static {}, Lcom/onesignal/OSUtils;->hasAllHMSLibrariesForPushKit()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 p1, 0x0

    const/16 v0, -0x1c

    .line 59
    invoke-interface {p2, p1, v0}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_49

    .line 60
    monitor-exit p0

    return-void

    .line 63
    :cond_f
    :try_start_f
    invoke-static {p1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object v0

    const-string v1, "client/app_id"

    invoke-virtual {v0, v1}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {p1}, Lcom/huawei/hms/aaid/HmsInstanceId;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/aaid/HmsInstanceId;

    move-result-object p1

    const-string v1, "HCM"

    .line 66
    invoke-virtual {p1, v0, v1}, Lcom/huawei/hms/aaid/HmsInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 69
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device registered for HMS, push token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 70
    invoke-interface {p2, p1, v0}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    goto :goto_47

    .line 73
    :cond_44
    invoke-virtual {p0, p2}, Lcom/onesignal/PushRegistratorHMS;->waitForOnNewPushTokenEvent(Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    :try_end_47
    .catchall {:try_start_f .. :try_end_47} :catchall_49

    .line 74
    :goto_47
    monitor-exit p0

    return-void

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public registerForPush(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    .registers 5

    .line 34
    sput-object p3, Lcom/onesignal/PushRegistratorHMS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;

    .line 35
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/onesignal/PushRegistratorHMS$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/onesignal/PushRegistratorHMS$1;-><init>(Lcom/onesignal/PushRegistratorHMS;Landroid/content/Context;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V

    const-string p1, "OS_HMS_GET_TOKEN"

    invoke-direct {p2, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method waitForOnNewPushTokenEvent(Lcom/onesignal/PushRegistrator$RegisteredHandler;)V
    .registers 4

    .line 86
    invoke-static {}, Lcom/onesignal/PushRegistratorHMS;->doTimeOutWait()V

    .line 87
    sget-boolean v0, Lcom/onesignal/PushRegistratorHMS;->callbackSuccessful:Z

    if-nez v0, :cond_14

    .line 88
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "HmsMessageServiceOneSignal.onNewToken timed out."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, -0x19

    .line 89
    invoke-interface {p1, v0, v1}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    :cond_14
    return-void
.end method
