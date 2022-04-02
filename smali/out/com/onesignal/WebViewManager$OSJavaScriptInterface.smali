.class Lcom/onesignal/WebViewManager$OSJavaScriptInterface;
.super Ljava/lang/Object;
.source "WebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/WebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OSJavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/WebViewManager;


# direct methods
.method constructor <init>(Lcom/onesignal/WebViewManager;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDisplayLocation(Lorg/json/JSONObject;)Lcom/onesignal/WebViewManager$Position;
    .registers 6

    const-string v0, "displayLocation"

    .line 195
    sget-object v1, Lcom/onesignal/WebViewManager$Position;->FULL_SCREEN:Lcom/onesignal/WebViewManager$Position;

    .line 197
    :try_start_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "FULL_SCREEN"

    .line 198
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onesignal/WebViewManager$Position;->valueOf(Ljava/lang/String;)Lcom/onesignal/WebViewManager$Position;

    move-result-object p1
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_24} :catch_26

    move-object v1, p1

    goto :goto_2a

    :catch_26
    move-exception p1

    .line 200
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2a
    :goto_2a
    return-object v1
.end method

.method private getPageHeightData(Lorg/json/JSONObject;)I
    .registers 4

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v0}, Lcom/onesignal/WebViewManager;->access$400(Lcom/onesignal/WebViewManager;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "pageMetaData"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onesignal/WebViewManager;->access$500(Landroid/app/Activity;Lorg/json/JSONObject;)I

    move-result p1
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_10} :catch_11

    return p1

    :catch_11
    const/4 p1, -0x1

    return p1
.end method

.method private handleActionTaken(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "body"

    .line 206
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "id"

    const/4 v1, 0x0

    .line 207
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v2, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v2}, Lcom/onesignal/WebViewManager;->access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;

    move-result-object v2

    iget-boolean v2, v2, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    if-eqz v2, :cond_25

    .line 209
    invoke-static {}, Lcom/onesignal/OSInAppMessageController;->getController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    iget-object v2, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v2}, Lcom/onesignal/WebViewManager;->access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/onesignal/OSInAppMessageController;->onMessageActionOccurredOnPreview(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V

    goto :goto_34

    :cond_25
    if-eqz v0, :cond_34

    .line 211
    invoke-static {}, Lcom/onesignal/OSInAppMessageController;->getController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    iget-object v2, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v2}, Lcom/onesignal/WebViewManager;->access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/onesignal/OSInAppMessageController;->onMessageActionOccurredOnMessage(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V

    :cond_34
    :goto_34
    const-string v0, "close"

    .line 214
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 216
    iget-object p1, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-virtual {p1, v1}, Lcom/onesignal/WebViewManager;->dismissAndAwaitNextMessage(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    :cond_41
    return-void
.end method

.method private handleRenderComplete(Lorg/json/JSONObject;)V
    .registers 4

    .line 181
    invoke-direct {p0, p1}, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->getDisplayLocation(Lorg/json/JSONObject;)Lcom/onesignal/WebViewManager$Position;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/onesignal/WebViewManager$Position;->FULL_SCREEN:Lcom/onesignal/WebViewManager$Position;

    if-ne v0, v1, :cond_a

    const/4 p1, -0x1

    goto :goto_e

    :cond_a
    invoke-direct {p0, p1}, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->getPageHeightData(Lorg/json/JSONObject;)I

    move-result p1

    .line 183
    :goto_e
    iget-object v1, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v1, v0, p1}, Lcom/onesignal/WebViewManager;->access$300(Lcom/onesignal/WebViewManager;Lcom/onesignal/WebViewManager$Position;I)V

    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 164
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSJavaScriptInterface:postMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 166
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    .line 167
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "rendering_complete"

    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 170
    invoke-direct {p0, v0}, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->handleRenderComplete(Lorg/json/JSONObject;)V

    goto :goto_49

    :cond_2d
    const-string v1, "action_taken"

    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {p1}, Lcom/onesignal/WebViewManager;->access$200(Lcom/onesignal/WebViewManager;)Lcom/onesignal/InAppMessageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/InAppMessageView;->isDragging()Z

    move-result p1

    if-nez p1, :cond_49

    .line 173
    invoke-direct {p0, v0}, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;->handleActionTaken(Lorg/json/JSONObject;)V
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception p1

    .line 176
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_49
    :goto_49
    return-void
.end method
