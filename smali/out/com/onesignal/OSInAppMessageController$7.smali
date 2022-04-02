.class Lcom/onesignal/OSInAppMessageController$7;
.super Lorg/json/JSONObject;
.source "OSInAppMessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSInAppMessageController;->fireRESTCallForClick(Lcom/onesignal/OSInAppMessage;Lcom/onesignal/OSInAppMessageAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSInAppMessageController;

.field final synthetic val$action:Lcom/onesignal/OSInAppMessageAction;

.field final synthetic val$clickId:Ljava/lang/String;

.field final synthetic val$variantId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessageController;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 422
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController$7;->this$0:Lcom/onesignal/OSInAppMessageController;

    iput-object p2, p0, Lcom/onesignal/OSInAppMessageController$7;->val$clickId:Ljava/lang/String;

    iput-object p3, p0, Lcom/onesignal/OSInAppMessageController$7;->val$variantId:Ljava/lang/String;

    iput-object p4, p0, Lcom/onesignal/OSInAppMessageController$7;->val$action:Lcom/onesignal/OSInAppMessageAction;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 423
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_id"

    invoke-virtual {p0, p2, p1}, Lcom/onesignal/OSInAppMessageController$7;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    new-instance p1, Lcom/onesignal/OSUtils;

    invoke-direct {p1}, Lcom/onesignal/OSUtils;-><init>()V

    invoke-virtual {p1}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result p1

    const-string p2, "device_type"

    invoke-virtual {p0, p2, p1}, Lcom/onesignal/OSInAppMessageController$7;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 425
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "player_id"

    invoke-virtual {p0, p2, p1}, Lcom/onesignal/OSInAppMessageController$7;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController$7;->val$clickId:Ljava/lang/String;

    const-string p2, "click_id"

    invoke-virtual {p0, p2, p1}, Lcom/onesignal/OSInAppMessageController$7;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController$7;->val$variantId:Ljava/lang/String;

    const-string p2, "variant_id"

    invoke-virtual {p0, p2, p1}, Lcom/onesignal/OSInAppMessageController$7;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController$7;->val$action:Lcom/onesignal/OSInAppMessageAction;

    iget-boolean p1, p1, Lcom/onesignal/OSInAppMessageAction;->firstClick:Z

    if-eqz p1, :cond_45

    const/4 p1, 0x1

    const-string p2, "first_click"

    .line 429
    invoke-virtual {p0, p2, p1}, Lcom/onesignal/OSInAppMessageController$7;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_45
    return-void
.end method
