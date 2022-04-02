.class final Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$also$lambda$3;
.super Ljava/lang/Object;
.source "VastVideoViewControllerTwo.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewControllerTwo;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)V
    .registers 2

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$also$lambda$3;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    const-string p1, "event"

    .line 298
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_d

    return p2

    .line 302
    :cond_d
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$also$lambda$3;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->access$isInClickExperiment$p(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$also$lambda$3;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v0, 0x1

    :goto_21
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->setClosing(Z)V

    .line 303
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$also$lambda$3;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->access$handleExitTrackers(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)V

    .line 304
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$also$lambda$3;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    return p2
.end method
