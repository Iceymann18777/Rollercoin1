.class Lcom/mopub/mraid/MraidController$7;
.super Ljava/lang/Object;
.source "MraidController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidController;->updateScreenMetricsAsync(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidController;

.field final synthetic val$currentWebView:Landroid/view/View;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    .line 603
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    iput-object p2, p0, Lcom/mopub/mraid/MraidController$7;->val$currentWebView:Landroid/view/View;

    iput-object p3, p0, Lcom/mopub/mraid/MraidController$7;->val$successRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 606
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$800(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 607
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->access$1200(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v0}, Lcom/mopub/mraid/MraidScreenMetrics;->setScreenSize(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 611
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->access$1300(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 612
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 613
    iget-object v2, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v2}, Lcom/mopub/mraid/MraidController;->access$1200(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    aget v6, v0, v5

    .line 614
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 615
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 613
    invoke-virtual {v2, v4, v6, v7, v1}, Lcom/mopub/mraid/MraidScreenMetrics;->setRootViewPosition(IIII)V

    .line 617
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->access$200(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 618
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->access$1200(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v1

    aget v2, v0, v3

    aget v4, v0, v5

    iget-object v6, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    .line 619
    invoke-static {v6}, Lcom/mopub/mraid/MraidController;->access$200(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    .line 620
    invoke-static {v7}, Lcom/mopub/mraid/MraidController;->access$200(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    .line 618
    invoke-virtual {v1, v2, v4, v6, v7}, Lcom/mopub/mraid/MraidScreenMetrics;->setDefaultAdPosition(IIII)V

    .line 622
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->val$currentWebView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 623
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->access$1200(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v1

    aget v2, v0, v3

    aget v0, v0, v5

    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->val$currentWebView:Landroid/view/View;

    .line 624
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/mopub/mraid/MraidController$7;->val$currentWebView:Landroid/view/View;

    .line 625
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 623
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/mopub/mraid/MraidScreenMetrics;->setCurrentAdPosition(IIII)V

    .line 628
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$400(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->access$1200(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->notifyScreenMetrics(Lcom/mopub/mraid/MraidScreenMetrics;)V

    .line 629
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$300(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 630
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->access$300(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v1}, Lcom/mopub/mraid/MraidController;->access$1200(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->notifyScreenMetrics(Lcom/mopub/mraid/MraidScreenMetrics;)V

    .line 633
    :cond_b0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$7;->val$successRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_b7

    .line 634
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_b7
    return-void
.end method
