.class Lcom/onesignal/OneSignalStateSynchronizer;
.super Ljava/lang/Object;
.source "OneSignalStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;
    }
.end annotation


# static fields
.field private static userStateSynchronizers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;",
            "Lcom/onesignal/UserStateSynchronizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    return-void
.end method

.method static getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;
    .registers 3

    .line 71
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->EMAIL:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->EMAIL:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_20

    .line 72
    :cond_14
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->EMAIL:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    new-instance v2, Lcom/onesignal/UserStateEmailSynchronizer;

    invoke-direct {v2}, Lcom/onesignal/UserStateEmailSynchronizer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_20
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->EMAIL:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/UserStateEmailSynchronizer;

    return-object v0
.end method

.method static getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;
    .registers 3

    .line 63
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->PUSH:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->PUSH:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_20

    .line 64
    :cond_14
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->PUSH:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    new-instance v2, Lcom/onesignal/UserStatePushSynchronizer;

    invoke-direct {v2}, Lcom/onesignal/UserStatePushSynchronizer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_20
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateSynchronizers:Ljava/util/HashMap;

    sget-object v1, Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;->PUSH:Lcom/onesignal/OneSignalStateSynchronizer$UserStateSynchronizerType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/UserStatePushSynchronizer;

    return-object v0
.end method

.method static getRegistrationId()Ljava/lang/String;
    .registers 1

    .line 152
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSubscribed()Z
    .registers 1

    .line 148
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getSubscribed()Z

    move-result v0

    return v0
.end method

.method static getSyncAsNewSession()Z
    .registers 1

    .line 188
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getSyncAsNewSession()Z

    move-result v0

    if-nez v0, :cond_17

    .line 189
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->getSyncAsNewSession()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method static getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    .registers 2

    .line 156
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;

    move-result-object p0

    return-object p0
.end method

.method static getUserSubscribePreference()Z
    .registers 1

    .line 135
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserSubscribePreference()Z

    move-result v0

    return v0
.end method

.method static initUserState()V
    .registers 1

    .line 92
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->initUserState()V

    .line 93
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->initUserState()V

    return-void
.end method

.method static persist()Z
    .registers 4

    .line 78
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->persist()Z

    move-result v0

    .line 79
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/UserStateEmailSynchronizer;->persist()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_21

    .line 81
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/UserStateEmailSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :cond_21
    :goto_21
    if-nez v0, :cond_25

    if-eqz v1, :cond_26

    :cond_25
    const/4 v2, 0x1

    :cond_26
    return v2
.end method

.method static readyToUpdate(Z)V
    .registers 2

    .line 247
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->readyToUpdate(Z)V

    .line 248
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->readyToUpdate(Z)V

    return-void
.end method

.method static refreshEmailState()V
    .registers 1

    .line 179
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->refresh()V

    return-void
.end method

.method static resetCurrentState()V
    .registers 2

    .line 160
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->resetCurrentState()V

    .line 161
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->resetCurrentState()V

    const/4 v0, 0x0

    .line 163
    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveUserId(Ljava/lang/String;)V

    .line 164
    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveEmailId(Ljava/lang/String;)V

    const-wide/16 v0, -0xe4c

    .line 166
    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    return-void
.end method

.method static sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .registers 6

    .line 103
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tags"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 104
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/UserStatePushSynchronizer;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    .line 105
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/UserStateEmailSynchronizer;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_4a

    :catch_1a
    move-exception p0

    if-eqz p1, :cond_47

    .line 108
    new-instance v0, Lcom/onesignal/OneSignal$SendTagsError;

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered an error attempting to serialize your tags into JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OneSignal$SendTagsError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$SendTagsError;)V

    .line 109
    :cond_47
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4a
    return-void
.end method

.method static setNewSession()V
    .registers 1

    .line 183
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->setNewSession()V

    .line 184
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->setNewSession()V

    return-void
.end method

.method static setNewSessionForEmail()V
    .registers 1

    .line 193
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->setNewSession()V

    return-void
.end method

.method static setPermission(Z)V
    .registers 2

    .line 139
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->setPermission(Z)V

    return-void
.end method

.method static syncUserState(Z)V
    .registers 2

    .line 97
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->syncUserState(Z)V

    .line 98
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->syncUserState(Z)V

    return-void
.end method

.method static updateDeviceInfo(Lorg/json/JSONObject;)V
    .registers 2

    .line 170
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->updateDeviceInfo(Lorg/json/JSONObject;)V

    .line 171
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->updateDeviceInfo(Lorg/json/JSONObject;)V

    return-void
.end method

.method static updateLocation(Lcom/onesignal/LocationController$LocationPoint;)V
    .registers 2

    .line 143
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->updateLocation(Lcom/onesignal/LocationController$LocationPoint;)V

    .line 144
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->updateLocation(Lcom/onesignal/LocationController$LocationPoint;)V

    return-void
.end method

.method static updatePushState(Lorg/json/JSONObject;)V
    .registers 2

    .line 175
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->updateState(Lorg/json/JSONObject;)V

    return-void
.end method
