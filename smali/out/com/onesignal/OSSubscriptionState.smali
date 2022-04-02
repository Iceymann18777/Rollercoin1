.class public Lcom/onesignal/OSSubscriptionState;
.super Ljava/lang/Object;
.source "OSSubscriptionState.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private accepted:Z

.field observable:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Ljava/lang/Object;",
            "Lcom/onesignal/OSSubscriptionState;",
            ">;"
        }
    .end annotation
.end field

.field private pushToken:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userSubscriptionSetting:Z


# direct methods
.method constructor <init>(ZZ)V
    .registers 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/onesignal/OSObservable;

    const-string v1, "changed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    if-eqz p1, :cond_39

    .line 44
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string p2, "ONESIGNAL_SUBSCRIPTION_LAST"

    invoke-static {p1, p2, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    .line 46
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string p2, "ONESIGNAL_PLAYER_ID_LAST"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    .line 48
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string p2, "ONESIGNAL_PUSH_TOKEN_LAST"

    invoke-static {p1, p2, v0}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    .line 50
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string p2, "ONESIGNAL_PERMISSION_ACCEPTED_LAST"

    invoke-static {p1, p2, v2}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    goto :goto_4d

    .line 54
    :cond_39
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserSubscribePreference()Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    .line 55
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    .line 57
    iput-boolean p2, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    :goto_4d
    return-void
.end method

.method private setAccepted(Z)V
    .registers 3

    .line 112
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->getSubscribed()Z

    move-result v0

    .line 113
    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    .line 114
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->getSubscribed()Z

    move-result p1

    if-eq v0, p1, :cond_11

    .line 115
    iget-object p1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {p1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method


# virtual methods
.method changed(Lcom/onesignal/OSPermissionState;)V
    .registers 2

    .line 67
    invoke-virtual {p1}, Lcom/onesignal/OSPermissionState;->getEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/onesignal/OSSubscriptionState;->setAccepted(Z)V

    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .registers 2

    .line 142
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscribed()Z
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method persistAsFrom()V
    .registers 4

    .line 123
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    const-string v2, "ONESIGNAL_SUBSCRIPTION_LAST"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    const-string v2, "ONESIGNAL_PLAYER_ID_LAST"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    const-string v2, "ONESIGNAL_PUSH_TOKEN_LAST"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    const-string v2, "ONESIGNAL_PERMISSION_ACCEPTED_LAST"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method setPushToken(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 90
    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 92
    iget-object p1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {p1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    :cond_14
    return-void
.end method

.method setUserId(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    .line 73
    iget-object v2, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    if-eqz v2, :cond_12

    goto :goto_13

    .line 74
    :cond_9
    iget-object v2, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 77
    :goto_13
    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 79
    iget-object p1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {p1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    :cond_1c
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 4

    .line 149
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 152
    :try_start_5
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_7} :catch_38

    const-string v2, "userId"

    if-eqz v1, :cond_11

    .line 153
    :try_start_b
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_16

    .line 155
    :cond_11
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    :goto_16
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_18} :catch_38

    const-string v2, "pushToken"

    if-eqz v1, :cond_22

    .line 158
    :try_start_1c
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_27

    .line 160
    :cond_22
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_27
    const-string v1, "userSubscriptionSetting"

    .line 162
    iget-boolean v2, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "subscribed"

    .line 163
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->getSubscribed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception v1

    .line 166
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 174
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
