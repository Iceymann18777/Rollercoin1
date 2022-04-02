.class Lcom/onesignal/OSNotificationFormatHelper;
.super Ljava/lang/Object;
.source "OSNotificationFormatHelper.java"


# direct methods
.method private static getOSNotificationIdFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    .line 31
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1e

    :cond_a
    const-string v1, "custom"

    .line 34
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 36
    invoke-static {p0}, Lcom/onesignal/OSNotificationFormatHelper;->getOSNotificationIdFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 38
    :cond_17
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Not a OneSignal formatted Bundle. No \'custom\' field in the bundle."

    invoke-static {p0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method static getOSNotificationIdFromJson(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "custom"

    .line 47
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/onesignal/OSNotificationFormatHelper;->getOSNotificationIdFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getOSNotificationIdFromJsonString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "i"

    const/4 v1, 0x0

    .line 54
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 56
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :cond_13
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Not a OneSignal formatted JSON string. No \'i\' field in custom."

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_1a} :catch_1b

    goto :goto_22

    .line 60
    :catch_1b
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Not a OneSignal formatted JSON String, error parsing string as JSON."

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :goto_22
    return-object v1
.end method

.method static isOneSignalBundle(Landroid/os/Bundle;)Z
    .registers 1

    .line 26
    invoke-static {p0}, Lcom/onesignal/OSNotificationFormatHelper;->getOSNotificationIdFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static isOneSignalIntent(Landroid/content/Intent;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 21
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/onesignal/OSNotificationFormatHelper;->isOneSignalBundle(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
