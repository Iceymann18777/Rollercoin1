.class public final Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;
.super Landroidx/media2/player/MediaPlayer$PlayerCallback;
.source "VastVideoViewControllerTwo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastVideoViewControllerTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlayerCallback"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVastVideoViewControllerTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastVideoViewControllerTwo.kt\ncom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback\n*L\n1#1,757:1\n*E\n"
.end annotation


# instance fields
.field private complete:Z

.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 673
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer$PlayerCallback;-><init>()V

    return-void
.end method

.method private final playerStateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    const-string p1, "UNKNOWN"

    goto :goto_19

    :cond_e
    const-string p1, "PLAYER_STATE_ERROR"

    goto :goto_19

    :cond_11
    const-string p1, "PLAYER_STATE_PLAYING"

    goto :goto_19

    :cond_14
    const-string p1, "PLAYER_STATE_PAUSED"

    goto :goto_19

    :cond_17
    const-string p1, "PLAYER_STATE_IDLE"

    :goto_19
    return-object p1
.end method


# virtual methods
.method public final getComplete()Z
    .registers 2

    .line 674
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->complete:Z

    return v0
.end method

.method public onPlaybackCompleted(Landroidx/media2/common/SessionPlayer;)V
    .registers 7

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->access$stopRunnables(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)V

    .line 704
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->updateCountdown$mopub_sdk_base_release$default(Lcom/mopub/mobileads/VastVideoViewControllerTwo;ZILjava/lang/Object;)V

    .line 705
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1, v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->setComplete(Z)V

    .line 706
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->videoCompleted(Z)V

    .line 707
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfigTwo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfigTwo;->isRewarded()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 708
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    const-string v2, "com.mopub.action.rewardedvideo.complete"

    invoke-virtual {p1, v2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->broadcastAction(Ljava/lang/String;)V

    .line 711
    :cond_2f
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getVideoError()Z

    move-result p1

    const-string v2, "context"

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfigTwo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getRemainingProgressTrackerCount()I

    move-result p1

    if-nez p1, :cond_6e

    .line 712
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    .line 713
    sget-object v3, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_COMPLETE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 714
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getCurrentPosition()I

    move-result v4

    .line 712
    invoke-virtual {p1, v3, v4}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 716
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfigTwo;

    move-result-object p1

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getCurrentPosition()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/mopub/mobileads/VastVideoConfigTwo;->handleComplete(Landroid/content/Context;I)V

    .line 719
    :cond_6e
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->access$getVideoView$p(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)Landroidx/media2/widget/VideoView;

    move-result-object p1

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroidx/media2/widget/VideoView;->setVisibility(I)V

    .line 720
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object p1

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 721
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getIconView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 723
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getTopGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->notifyVideoComplete()V

    .line 724
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getBottomGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->notifyVideoComplete()V

    .line 725
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getCtaButtonWidget()Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->notifyVideoComplete()V

    .line 728
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->access$getVastCompanionAdConfig$p(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    move-result-object p1

    if-eqz p1, :cond_ef

    .line 729
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "context.resources"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v1, :cond_d3

    .line 731
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getPortraitCompanionAdView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_dc

    .line 733
    :cond_d3
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getLandscapeCompanionAdView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 735
    :goto_dc
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getDuration()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->handleImpression(Landroid/content/Context;I)V

    goto :goto_104

    .line 736
    :cond_ef
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getBlurredLastVideoFrameImageView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_104

    .line 738
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getBlurredLastVideoFrameImageView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_104
    :goto_104
    return-void
.end method

.method public onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V
    .registers 7

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    invoke-super {p0, p1, p2}, Landroidx/media2/player/MediaPlayer$PlayerCallback;->onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2e

    .line 695
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    check-cast v1, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    new-array v0, v0, [Ljava/lang/Object;

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Player state changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->playerStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    .line 694
    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_6f

    .line 680
    :cond_2e
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-static {p2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p2

    .line 681
    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->RECORD_AD_ERROR:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 682
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getCurrentPosition()I

    move-result v2

    .line 680
    invoke-virtual {p2, v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 684
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-static {p2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->access$stopRunnables(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)V

    .line 685
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->updateCountdown$mopub_sdk_base_release(Z)V

    .line 686
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->videoError(Z)V

    .line 687
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->setVideoError(Z)V

    .line 688
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfigTwo;

    move-result-object p1

    .line 689
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    sget-object v0, Lcom/mopub/mobileads/VastErrorCode;->GENERAL_LINEAR_AD_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getCurrentPosition()I

    move-result v1

    .line 688
    invoke-virtual {p1, p2, v0, v1}, Lcom/mopub/mobileads/VastVideoConfigTwo;->handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V

    :goto_6f
    return-void
.end method

.method public onSeekCompleted(Landroidx/media2/common/SessionPlayer;J)V
    .registers 4

    const-string p2, "player"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->play()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final setComplete(Z)V
    .registers 2

    .line 674
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;->complete:Z

    return-void
.end method
