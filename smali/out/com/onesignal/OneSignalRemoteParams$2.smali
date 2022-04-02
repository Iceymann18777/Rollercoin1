.class final Lcom/onesignal/OneSignalRemoteParams$2;
.super Lcom/onesignal/OneSignalRemoteParams$Params;
.source "OneSignalRemoteParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalRemoteParams;->processJson(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$responseJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 6

    .line 164
    iput-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRemoteParams$Params;-><init>()V

    .line 165
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "enterp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->enterprise:Z

    .line 166
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "use_email_auth"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->useEmailAuth:Z

    .line 167
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "chnl_lst"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->notificationChannels:Lorg/json/JSONArray;

    .line 168
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "fba"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->firebaseAnalytics:Z

    .line 169
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "restore_ttl_filter"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->restoreTTLFilter:Z

    .line 170
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "android_sender_id"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->googleProjectNumber:Ljava/lang/String;

    .line 171
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "clear_group_on_summary_click"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->clearGroupOnSummaryClick:Z

    .line 172
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "receive_receipts_enable"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->receiveReceiptEnabled:Z

    .line 174
    new-instance p1, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    invoke-direct {p1}, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;-><init>()V

    iput-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->influenceParams:Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    .line 176
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "outcomes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 177
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->influenceParams:Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    invoke-static {p1, v0}, Lcom/onesignal/OneSignalRemoteParams;->access$200(Lorg/json/JSONObject;Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V

    .line 179
    :cond_74
    new-instance p1, Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    invoke-direct {p1}, Lcom/onesignal/OneSignalRemoteParams$FCMParams;-><init>()V

    iput-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    .line 180
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "fcm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 181
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    const-string v1, "api_key"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->apiKey:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    const-string v1, "app_id"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->appId:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    const-string v1, "project_id"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->projectId:Ljava/lang/String;

    :cond_a9
    return-void
.end method
