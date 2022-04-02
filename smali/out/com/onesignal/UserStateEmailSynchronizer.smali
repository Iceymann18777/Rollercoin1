.class Lcom/onesignal/UserStateEmailSynchronizer;
.super Lcom/onesignal/UserStateSynchronizer;
.source "UserStateEmailSynchronizer.java"


# direct methods
.method constructor <init>()V
    .registers 2

    .line 13
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->EMAIL:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-direct {p0, v0}, Lcom/onesignal/UserStateSynchronizer;-><init>(Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;)V

    return-void
.end method


# virtual methods
.method protected addOnSessionOrCreateExtras(Lorg/json/JSONObject;)V
    .registers 4

    :try_start_0
    const-string v0, "device_type"

    const/16 v1, 0xb

    .line 126
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "device_player_id"

    .line 127
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p1

    .line 129
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_15
    return-void
.end method

.method protected fireEventsForUpdateFailure(Lorg/json/JSONObject;)V
    .registers 3

    const-string v0, "identifier"

    .line 149
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 150
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateFailure()V

    :cond_b
    return-void
.end method

.method protected getId()Ljava/lang/String;
    .registers 2

    .line 115
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLogLevel()Lcom/onesignal/OneSignal$LOG_LEVEL;
    .registers 2

    .line 23
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0
.end method

.method getSubscribed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method protected newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;
    .registers 4

    .line 18
    new-instance v0, Lcom/onesignal/UserStateEmail;

    invoke-direct {v0, p1, p2}, Lcom/onesignal/UserStateEmail;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onSuccessfulSync(Lorg/json/JSONObject;)V
    .registers 3

    const-string v0, "identifier"

    .line 155
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 156
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateSuccess()V

    :cond_b
    return-void
.end method

.method refresh()V
    .registers 1

    .line 62
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->scheduleSyncToServer()V

    return-void
.end method

.method protected scheduleSyncToServer()V
    .registers 3

    .line 68
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_24

    .line 69
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_24

    .line 72
    :cond_19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/UserStateEmailSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->runNewJobDelayed()V

    :cond_24
    :goto_24
    return-void
.end method

.method updateIdDependents(Ljava/lang/String;)V
    .registers 2

    .line 120
    invoke-static {p1}, Lcom/onesignal/OneSignal;->updateEmailIdDependents(Ljava/lang/String;)V

    return-void
.end method

.method updateState(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method
