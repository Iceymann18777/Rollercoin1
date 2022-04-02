.class public Lcom/onesignal/OneSignalRemoteParams;
.super Ljava/lang/Object;
.source "OneSignalRemoteParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalRemoteParams$CallBack;,
        Lcom/onesignal/OneSignalRemoteParams$Params;,
        Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;,
        Lcom/onesignal/OneSignalRemoteParams$FCMParams;
    }
.end annotation


# static fields
.field private static androidParamsRetries:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 12
    sget v0, Lcom/onesignal/OneSignalRemoteParams;->androidParamsRetries:I

    return v0
.end method

.method static synthetic access$008()I
    .registers 2

    .line 12
    sget v0, Lcom/onesignal/OneSignalRemoteParams;->androidParamsRetries:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/onesignal/OneSignalRemoteParams;->androidParamsRetries:I

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
    .registers 2

    .line 12
    invoke-static {p0, p1}, Lcom/onesignal/OneSignalRemoteParams;->processJson(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V

    return-void
.end method

.method static synthetic access$200(Lorg/json/JSONObject;Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V
    .registers 2

    .line 12
    invoke-static {p0, p1}, Lcom/onesignal/OneSignalRemoteParams;->processOutcomeJson(Lorg/json/JSONObject;Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V

    return-void
.end method

.method static makeAndroidParamsRequest(Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
    .registers 4

    .line 116
    new-instance v0, Lcom/onesignal/OneSignalRemoteParams$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignalRemoteParams$1;-><init>(Lcom/onesignal/OneSignalRemoteParams$CallBack;)V

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apps/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/android_params.js"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?player_id="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 149
    :cond_37
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Starting request to get Android parameters."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const-string v1, "CACHE_KEY_REMOTE_PARAMS"

    .line 150
    invoke-static {p0, v0, v1}, Lcom/onesignal/OneSignalRestClient;->get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    return-void
.end method

.method private static processJson(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
    .registers 4

    .line 156
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_e

    .line 164
    new-instance p0, Lcom/onesignal/OneSignalRemoteParams$2;

    invoke-direct {p0, v0}, Lcom/onesignal/OneSignalRemoteParams$2;-><init>(Lorg/json/JSONObject;)V

    .line 188
    invoke-interface {p1, p0}, Lcom/onesignal/OneSignalRemoteParams$CallBack;->complete(Lcom/onesignal/OneSignalRemoteParams$Params;)V

    return-void

    :catch_e
    move-exception p1

    goto :goto_11

    :catch_10
    move-exception p1

    .line 159
    :goto_11
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Error parsing android_params!: "

    invoke-static {v0, v1, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response that errored from android_params!: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method private static processOutcomeJson(Lorg/json/JSONObject;Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V
    .registers 10

    const-string v0, "v2_enabled"

    .line 192
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 193
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->outcomesV2ServiceEnabled:Z

    :cond_e
    const-string v0, "direct"

    .line 195
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "enabled"

    if-eqz v1, :cond_22

    .line 196
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 197
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->directEnabled:Z

    :cond_22
    const-string v0, "indirect"

    .line 199
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 200
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->indirectEnabled:Z

    const-string v1, "notification_attribution"

    .line 203
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0xa

    const-string v5, "limit"

    const/16 v6, 0x5a0

    const-string v7, "minutes_since_displayed"

    if-eqz v3, :cond_54

    .line 204
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 205
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->indirectNotificationAttributionWindow:I

    .line 206
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->notificationLimit:I

    :cond_54
    const-string v1, "in_app_message_attribution"

    .line 209
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 210
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 211
    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->indirectIAMAttributionWindow:I

    .line 212
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->iamLimit:I

    :cond_6c
    const-string v0, "unattributed"

    .line 215
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 216
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 217
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;->unattributedEnabled:Z

    :cond_7e
    return-void
.end method
