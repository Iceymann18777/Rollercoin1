.class Lcom/onesignal/UserStatePushSynchronizer;
.super Lcom/onesignal/UserStateSynchronizer;
.source "UserStatePushSynchronizer.java"


# static fields
.field private static serverSuccess:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 13
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->PUSH:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-direct {p0, v0}, Lcom/onesignal/UserStateSynchronizer;-><init>(Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;)V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 10
    sput-boolean p0, Lcom/onesignal/UserStatePushSynchronizer;->serverSuccess:Z

    return p0
.end method


# virtual methods
.method protected addOnSessionOrCreateExtras(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method protected fireEventsForUpdateFailure(Lorg/json/JSONObject;)V
    .registers 3

    const-string v0, "email"

    .line 179
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 180
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateFailure()V

    :cond_b
    return-void
.end method

.method protected getId()Ljava/lang/String;
    .registers 2

    .line 157
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLogLevel()Lcom/onesignal/OneSignal$LOG_LEVEL;
    .registers 2

    .line 23
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object v0
.end method

.method getSubscribed()Z
    .registers 2

    .line 28
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserState;->isSubscribed()Z

    move-result v0

    return v0
.end method

.method getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    .registers 6

    if-eqz p1, :cond_2d

    .line 36
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "players/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?app_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/onesignal/UserStatePushSynchronizer$1;

    invoke-direct {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer$1;-><init>(Lcom/onesignal/UserStatePushSynchronizer;)V

    const-string v1, "CACHE_KEY_GET_TAGS"

    invoke-static {p1, v0, v1}, Lcom/onesignal/OneSignalRestClient;->getSync(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    .line 74
    :cond_2d
    iget-object p1, p0, Lcom/onesignal/UserStatePushSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter p1

    .line 75
    :try_start_30
    new-instance v0, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;

    sget-boolean v1, Lcom/onesignal/UserStatePushSynchronizer;->serverSuccess:Z

    iget-object v2, p0, Lcom/onesignal/UserStatePushSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v2, v2, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "tags"

    invoke-static {v2, v3}, Lcom/onesignal/JSONUtils;->getJSONObjectWithoutBlankValues(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;-><init>(ZLorg/json/JSONObject;)V

    monitor-exit p1

    return-object v0

    :catchall_43
    move-exception v0

    .line 76
    monitor-exit p1
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public getUserSubscribePreference()Z
    .registers 4

    .line 143
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "userSubscribePref"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;
    .registers 4

    .line 18
    new-instance v0, Lcom/onesignal/UserStatePush;

    invoke-direct {v0, p1, p2}, Lcom/onesignal/UserStatePush;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onSuccessfulSync(Lorg/json/JSONObject;)V
    .registers 3

    const-string v0, "email"

    .line 185
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 186
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateSuccess()V

    :cond_b
    const-string v0, "identifier"

    .line 187
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 188
    invoke-static {}, Lcom/onesignal/OneSignal;->fireIdsAvailableCallback()V

    :cond_16
    return-void
.end method

.method protected scheduleSyncToServer()V
    .registers 2

    const/4 v0, 0x0

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/UserStatePushSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->runNewJobDelayed()V

    return-void
.end method

.method public setPermission(Z)V
    .registers 4

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    const-string v1, "androidPermission"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p1

    .line 151
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_10
    return-void
.end method

.method updateIdDependents(Ljava/lang/String;)V
    .registers 2

    .line 162
    invoke-static {p1}, Lcom/onesignal/OneSignal;->updateUserIdDependents(Ljava/lang/String;)V

    return-void
.end method

.method updateState(Lorg/json/JSONObject;)V
    .registers 10

    const-string v0, "parent_player_id"

    const-string v1, "identifier"

    const-string v2, "androidPermission"

    const-string v3, "device_type"

    const-string v4, "subscribableStatus"

    const/4 v5, 0x0

    .line 94
    :try_start_b
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 95
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 97
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    :cond_24
    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    .line 100
    invoke-virtual {p0, v0, v6, v0, v5}, Lcom/onesignal/UserStatePushSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception v0

    .line 102
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 106
    :goto_39
    :try_start_39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 108
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    :cond_4b
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 110
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 111
    :cond_58
    invoke-virtual {p0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object p1

    iget-object p1, p1, Lcom/onesignal/UserState;->dependValues:Lorg/json/JSONObject;

    .line 112
    invoke-virtual {p0, p1, v0, p1, v5}, Lcom/onesignal/UserStatePushSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_61} :catch_62

    goto :goto_66

    :catch_62
    move-exception p1

    .line 114
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_66
    return-void
.end method
