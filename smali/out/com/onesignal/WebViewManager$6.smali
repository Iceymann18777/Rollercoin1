.class Lcom/onesignal/WebViewManager$6;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Lcom/onesignal/InAppMessageView$InAppMessageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/WebViewManager;->createNewInAppMessageView(Lcom/onesignal/WebViewManager$Position;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/WebViewManager;


# direct methods
.method constructor <init>(Lcom/onesignal/WebViewManager;)V
    .registers 2

    .line 343
    iput-object p1, p0, Lcom/onesignal/WebViewManager$6;->this$0:Lcom/onesignal/WebViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageWasDismissed()V
    .registers 3

    .line 352
    invoke-static {}, Lcom/onesignal/OSInAppMessageController;->getController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/WebViewManager$6;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v1}, Lcom/onesignal/WebViewManager;->access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessageController;->messageWasDismissed(Lcom/onesignal/OSInAppMessage;)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/onesignal/WebViewManager;->access$1100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/WebViewManager$6;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v1}, Lcom/onesignal/WebViewManager;->access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler;->removeActivityAvailableListener(Ljava/lang/String;)V

    return-void
.end method

.method public onMessageWasShown()V
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/onesignal/WebViewManager$6;->this$0:Lcom/onesignal/WebViewManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onesignal/WebViewManager;->access$1002(Lcom/onesignal/WebViewManager;Z)Z

    .line 347
    invoke-static {}, Lcom/onesignal/OSInAppMessageController;->getController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/WebViewManager$6;->this$0:Lcom/onesignal/WebViewManager;

    invoke-static {v1}, Lcom/onesignal/WebViewManager;->access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessageController;->onMessageWasShown(Lcom/onesignal/OSInAppMessage;)V

    return-void
.end method
