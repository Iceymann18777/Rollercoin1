.class Lcom/onesignal/UserStateSynchronizer$5;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "UserStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/UserStateSynchronizer;->doCreateOrNewSession(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/UserStateSynchronizer;

.field final synthetic val$dependDiff:Lorg/json/JSONObject;

.field final synthetic val$jsonBody:Lorg/json/JSONObject;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onesignal/UserStateSynchronizer;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    .line 362
    iput-object p1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iput-object p2, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$dependDiff:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$jsonBody:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    .line 365
    iget-object p3, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object p3, p3, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter p3

    .line 366
    :try_start_5
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/onesignal/UserStateSynchronizer;->waitingForSessionResponse:Z

    .line 367
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed last request. statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nresponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    const-string v1, "not a valid device_type"

    invoke-static {v0, p1, p2, v1}, Lcom/onesignal/UserStateSynchronizer;->access$200(Lcom/onesignal/UserStateSynchronizer;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 370
    iget-object p1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {p1}, Lcom/onesignal/UserStateSynchronizer;->access$400(Lcom/onesignal/UserStateSynchronizer;)V

    goto :goto_3d

    .line 372
    :cond_38
    iget-object p2, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-static {p2, p1}, Lcom/onesignal/UserStateSynchronizer;->access$500(Lcom/onesignal/UserStateSynchronizer;I)V

    .line 373
    :goto_3d
    monitor-exit p3

    return-void

    :catchall_3f
    move-exception p1

    monitor-exit p3
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method onSuccess(Ljava/lang/String;)V
    .registers 8

    .line 378
    iget-object v0, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v0, v0, Lcom/onesignal/UserStateSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_5
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/onesignal/UserStateSynchronizer;->waitingForSessionResponse:Z

    .line 380
    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v1, v1, Lcom/onesignal/UserStateSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$dependDiff:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v1, v3, v4}, Lcom/onesignal/UserState;->persistStateAfterSync(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_af

    .line 383
    :try_start_15
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doCreateOrNewSession:response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 384
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 386
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5a

    const-string p1, "id"

    .line 387
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 388
    iget-object v3, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-virtual {v3, p1}, Lcom/onesignal/UserStateSynchronizer;->updateIdDependents(Ljava/lang/String;)V

    .line 389
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device registered, UserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_72

    .line 392
    :cond_5a
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session sent, UserId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 394
    :goto_72
    iget-object p1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-virtual {p1}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object p1

    iget-object p1, p1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v3, "session"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 395
    iget-object p1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    invoke-virtual {p1}, Lcom/onesignal/UserStateSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/UserState;->persistState()V

    const-string p1, "in_app_messages"

    .line 398
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 399
    invoke-static {}, Lcom/onesignal/OSInAppMessageController;->getController()Lcom/onesignal/OSInAppMessageController;

    move-result-object p1

    const-string v2, "in_app_messages"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onesignal/OSInAppMessageController;->receivedInAppMessageJson(Lorg/json/JSONArray;)V

    .line 401
    :cond_9d
    iget-object p1, p0, Lcom/onesignal/UserStateSynchronizer$5;->this$0:Lcom/onesignal/UserStateSynchronizer;

    iget-object v1, p0, Lcom/onesignal/UserStateSynchronizer$5;->val$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lcom/onesignal/UserStateSynchronizer;->onSuccessfulSync(Lorg/json/JSONObject;)V
    :try_end_a4
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_a4} :catch_a5
    .catchall {:try_start_15 .. :try_end_a4} :catchall_af

    goto :goto_ad

    :catch_a5
    move-exception p1

    .line 403
    :try_start_a6
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "ERROR parsing on_session or create JSON Response."

    invoke-static {v1, v2, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 405
    :goto_ad
    monitor-exit v0

    return-void

    :catchall_af
    move-exception p1

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_a6 .. :try_end_b1} :catchall_af

    throw p1
.end method
