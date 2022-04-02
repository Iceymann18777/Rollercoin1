.class Lcom/onesignal/OSInAppMessageDummyController;
.super Lcom/onesignal/OSInAppMessageController;
.source "OSInAppMessageDummyController.java"


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalDbHelper;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageController;-><init>(Lcom/onesignal/OneSignalDbHelper;)V

    return-void
.end method


# virtual methods
.method displayPreviewMessage(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public initRedisplayData(Lcom/onesignal/OneSignalDbHelper;)V
    .registers 2

    return-void
.end method

.method initWithCachedInAppMessages()V
    .registers 1

    return-void
.end method

.method isInAppMessageShowing()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public messageTriggerConditionChanged()V
    .registers 1

    return-void
.end method

.method public messageWasDismissed(Lcom/onesignal/OSInAppMessage;)V
    .registers 2

    return-void
.end method

.method onMessageActionOccurredOnMessage(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V
    .registers 3

    return-void
.end method

.method onMessageActionOccurredOnPreview(Lcom/onesignal/OSInAppMessage;Lorg/json/JSONObject;)V
    .registers 3

    return-void
.end method

.method receivedInAppMessageJson(Lorg/json/JSONArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    return-void
.end method
