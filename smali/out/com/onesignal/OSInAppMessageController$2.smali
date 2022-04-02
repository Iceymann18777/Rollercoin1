.class Lcom/onesignal/OSInAppMessageController$2;
.super Lorg/json/JSONObject;
.source "OSInAppMessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSInAppMessageController;->onMessageWasShown(Lcom/onesignal/OSInAppMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSInAppMessageController;

.field final synthetic val$variantId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessageController;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController$2;->this$0:Lcom/onesignal/OSInAppMessageController;

    iput-object p2, p0, Lcom/onesignal/OSInAppMessageController$2;->val$variantId:Ljava/lang/String;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 245
    sget-object p1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    const-string p2, "app_id"

    invoke-virtual {p0, p2, p1}, Lcom/onesignal/OSInAppMessageController$2;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "player_id"

    invoke-virtual {p0, p2, p1}, Lcom/onesignal/OSInAppMessageController$2;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController$2;->val$variantId:Ljava/lang/String;

    const-string p2, "variant_id"

    invoke-virtual {p0, p2, p1}, Lcom/onesignal/OSInAppMessageController$2;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    new-instance p1, Lcom/onesignal/OSUtils;

    invoke-direct {p1}, Lcom/onesignal/OSUtils;-><init>()V

    invoke-virtual {p1}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result p1

    const-string p2, "device_type"

    invoke-virtual {p0, p2, p1}, Lcom/onesignal/OSInAppMessageController$2;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "first_impression"

    const/4 p2, 0x1

    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/onesignal/OSInAppMessageController$2;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method
