.class Lcom/mopub/mobileads/VastVideoViewController$5;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->addCloseButtonWidget(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;)V
    .registers 2

    .line 512
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 516
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_8

    return p2

    .line 520
    :cond_8
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1, p2}, Lcom/mopub/mobileads/VastVideoViewController;->access$202(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    .line 521
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$2200(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 522
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    return p2
.end method
