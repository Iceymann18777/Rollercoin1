.class Lcom/mopub/mobileads/VastVideoViewController$3;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->createVideoView(Landroid/content/Context;I)Lcom/mopub/mobileads/VastVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$videoView:Lcom/mopub/mobileads/VastVideoView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;Landroid/content/Context;)V
    .registers 4

    .line 379
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->val$videoView:Lcom/mopub/mobileads/VastVideoView;

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6

    .line 382
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$1400(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 383
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->makeVideoInteractable()V

    .line 384
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoViewController;->videoCompleted(Z)V

    .line 385
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/mopub/mobileads/VastVideoViewController;->access$302(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    .line 386
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$500(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->isRewardedVideo()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 387
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    const-string v2, "com.mopub.action.rewardedvideo.complete"

    invoke-virtual {p1, v2}, Lcom/mopub/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 392
    :cond_29
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$1500(Lcom/mopub/mobileads/VastVideoViewController;)Z

    move-result p1

    if-nez p1, :cond_63

    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$500(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getRemainingProgressTrackerCount()I

    move-result p1

    if-nez p1, :cond_63

    .line 393
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$100(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_COMPLETE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 394
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$500(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/mopub/mobileads/VastVideoConfig;->handleComplete(Landroid/content/Context;I)V

    .line 397
    :cond_63
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->val$videoView:Lcom/mopub/mobileads/VastVideoView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/mopub/mobileads/VastVideoView;->setVisibility(I)V

    .line 398
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$1100(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 399
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$1600(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$1700(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->notifyVideoComplete()V

    .line 402
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$1800(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->notifyVideoComplete()V

    .line 403
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$1900(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->notifyVideoComplete()V

    .line 406
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$800(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object p1

    if-eqz p1, :cond_d3

    .line 407
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_b8

    .line 409
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$2000(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c1

    .line 411
    :cond_b8
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$2100(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 413
    :goto_c1
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$800(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v1}, Lcom/mopub/mobileads/VastVideoViewController;->access$400(Lcom/mopub/mobileads/VastVideoViewController;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->handleImpression(Landroid/content/Context;I)V

    goto :goto_e8

    .line 414
    :cond_d3
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$900(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_e8

    .line 416
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$3;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$900(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e8
    :goto_e8
    return-void
.end method
