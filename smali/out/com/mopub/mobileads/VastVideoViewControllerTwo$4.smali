.class final Lcom/mopub/mobileads/VastVideoViewControllerTwo$4;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVastVideoViewControllerTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastVideoViewControllerTwo.kt\ncom/mopub/mobileads/VastVideoViewControllerTwo$4\n*L\n1#1,757:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)V
    .registers 2

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$4;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const-string p1, "event"

    .line 157
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_81

    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$4;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getShouldAllowClose()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$4;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->access$isInClickExperiment$p(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 158
    :cond_1c
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$4;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    .line 159
    sget-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_CLICK_THRU:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 160
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$4;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getCurrentPosition()I

    move-result v1

    .line 158
    invoke-virtual {p1, v0, v1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 162
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$4;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->access$isInClickExperiment$p(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$4;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v0, 0x0

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v0, 0x1

    :goto_41
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->setClosing(Z)V

    .line 163
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$4;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    const-string v0, "com.mopub.action.interstitial.click"

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->broadcastAction(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$4;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfigTwo;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$4;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$4;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$4;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_70

    goto :goto_71

    :cond_70
    const/4 v1, 0x0

    :goto_71
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_7e

    :cond_78
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$4;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getCurrentPosition()I

    move-result v1

    .line 164
    :goto_7e
    invoke-virtual {p1, v0, v1, p2}, Lcom/mopub/mobileads/VastVideoConfigTwo;->handleClickForResult(Landroid/app/Activity;II)V

    :cond_81
    return p2
.end method
