.class Lcom/mopub/mraid/MraidController$4;
.super Ljava/lang/Object;
.source "MraidController.java"

# interfaces
.implements Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidController;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->handleClose()V

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->handleConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onExpand(Ljava/net/URI;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->handleExpand(Ljava/net/URI;Z)V

    return-void
.end method

.method public onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->handleJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onOpen(Ljava/net/URI;)V
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->handleOpen(Ljava/lang/String;)V

    return-void
.end method

.method public onPageFailedToLoad()V
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidController$MraidListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 230
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidController$MraidListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mraid/MraidController$MraidListener;->onFailedToLoad()V

    :cond_11
    return-void
.end method

.method public onPageLoaded()V
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->handlePageLoad()V

    .line 222
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidController$MraidListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 223
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidController$MraidListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->access$200(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mraid/MraidController$MraidListener;->onLoaded(Landroid/view/View;)V

    :cond_1c
    return-void
.end method

.method public onPlayVideo(Ljava/net/URI;)V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->handleShowVideo(Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->handleRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mopub/mraid/MraidController;->handleResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V

    return-void
.end method

.method public onSetOrientationProperties(ZLcom/mopub/mraid/MraidOrientation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->handleSetOrientationProperties(ZLcom/mopub/mraid/MraidOrientation;)V

    return-void
.end method

.method public onUseCustomClose(Z)V
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->handleCustomClose(Z)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$300(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->isAttached()Z

    move-result v0

    if-nez v0, :cond_15

    .line 243
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$4;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$400(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->notifyViewability(Z)V

    :cond_15
    return-void
.end method
