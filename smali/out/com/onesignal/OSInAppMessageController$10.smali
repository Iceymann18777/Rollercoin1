.class Lcom/onesignal/OSInAppMessageController$10;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OSInAppMessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSInAppMessageController;->displayMessage(Lcom/onesignal/OSInAppMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSInAppMessageController;

.field final synthetic val$message:Lcom/onesignal/OSInAppMessage;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V
    .registers 3

    .line 650
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    iput-object p2, p0, Lcom/onesignal/OSInAppMessageController$10;->val$message:Lcom/onesignal/OSInAppMessage;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 653
    iget-object p3, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/onesignal/OSInAppMessageController;->access$802(Lcom/onesignal/OSInAppMessageController;Z)Z

    const-string p3, "html"

    .line 655
    invoke-static {p3, p1, p2}, Lcom/onesignal/OSInAppMessageController;->access$200(Ljava/lang/String;ILjava/lang/String;)V

    .line 657
    invoke-static {p1}, Lcom/onesignal/OSUtils;->shouldRetryNetworkRequest(I)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    invoke-static {p1}, Lcom/onesignal/OSInAppMessageController;->access$900(Lcom/onesignal/OSInAppMessageController;)I

    move-result p1

    sget p2, Lcom/onesignal/OSUtils;->MAX_NETWORK_REQUEST_ATTEMPT_COUNT:I

    if-lt p1, p2, :cond_1c

    goto :goto_29

    .line 665
    :cond_1c
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    invoke-static {p1}, Lcom/onesignal/OSInAppMessageController;->access$908(Lcom/onesignal/OSInAppMessageController;)I

    .line 669
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    iget-object p2, p0, Lcom/onesignal/OSInAppMessageController$10;->val$message:Lcom/onesignal/OSInAppMessage;

    invoke-static {p1, p2}, Lcom/onesignal/OSInAppMessageController;->access$1000(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessage;)V

    return-void

    .line 659
    :cond_29
    :goto_29
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    invoke-static {p1, v0}, Lcom/onesignal/OSInAppMessageController;->access$902(Lcom/onesignal/OSInAppMessageController;I)I

    .line 660
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    iget-object p2, p0, Lcom/onesignal/OSInAppMessageController$10;->val$message:Lcom/onesignal/OSInAppMessage;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/onesignal/OSInAppMessageController;->messageWasDismissed(Lcom/onesignal/OSInAppMessage;Z)V

    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .registers 5

    .line 675
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$10;->this$0:Lcom/onesignal/OSInAppMessageController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onesignal/OSInAppMessageController;->access$902(Lcom/onesignal/OSInAppMessageController;I)I

    .line 678
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "html"

    .line 679
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "display_duration"

    .line 681
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 682
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageController$10;->val$message:Lcom/onesignal/OSInAppMessage;

    invoke-virtual {v2, v0, v1}, Lcom/onesignal/OSInAppMessage;->setDisplayDuration(D)V

    .line 684
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController$10;->val$message:Lcom/onesignal/OSInAppMessage;

    iget-object v1, v1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSessionManager;->onInAppMessageReceived(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$10;->val$message:Lcom/onesignal/OSInAppMessage;

    invoke-static {v0, p1}, Lcom/onesignal/WebViewManager;->showHTMLString(Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p1

    .line 687
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_31
    return-void
.end method
