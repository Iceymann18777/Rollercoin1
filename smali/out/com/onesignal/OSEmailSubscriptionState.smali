.class public Lcom/onesignal/OSEmailSubscriptionState;
.super Ljava/lang/Object;
.source "OSEmailSubscriptionState.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private emailAddress:Ljava/lang/String;

.field private emailUserId:Ljava/lang/String;

.field observable:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Ljava/lang/Object;",
            "Lcom/onesignal/OSEmailSubscriptionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/onesignal/OSObservable;

    const-string v1, "changed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    if-eqz p1, :cond_25

    .line 42
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v0, "PREFS_ONESIGNAL_EMAIL_ID_LAST"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    .line 44
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v0, "PREFS_ONESIGNAL_EMAIL_ADDRESS_LAST"

    invoke-static {p1, v0, v1}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    goto :goto_35

    .line 48
    :cond_25
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/UserStateEmailSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    :goto_35
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 2

    .line 109
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    :catchall_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscribed()Z
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method setEmailUserId(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    .line 67
    iget-object v2, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    if-eqz v2, :cond_12

    goto :goto_13

    .line 68
    :cond_9
    iget-object v2, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 71
    :goto_13
    iput-object p1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 73
    iget-object p1, p0, Lcom/onesignal/OSEmailSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {p1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    :cond_1c
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 4

    .line 115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 118
    :try_start_5
    iget-object v1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_31

    const-string v2, "emailUserId"

    if-eqz v1, :cond_11

    .line 119
    :try_start_b
    iget-object v1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_16

    .line 121
    :cond_11
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    :goto_16
    iget-object v1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_31

    const-string v2, "emailAddress"

    if-eqz v1, :cond_22

    .line 124
    :try_start_1c
    iget-object v1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_27

    .line 126
    :cond_22
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_27
    const-string v1, "subscribed"

    .line 128
    invoke-virtual {p0}, Lcom/onesignal/OSEmailSubscriptionState;->getSubscribed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_35
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 139
    invoke-virtual {p0}, Lcom/onesignal/OSEmailSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
