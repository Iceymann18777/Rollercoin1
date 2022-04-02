.class final Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;
.super Ljava/lang/Object;
.source "VastVideoViewControllerTwo.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewControllerTwo;->createVideoView(Landroid/content/Context;I)Landroidx/media2/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVastVideoViewControllerTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastVideoViewControllerTwo.kt\ncom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$1$1\n*L\n1#1,757:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $executor$inlined:Ljava/util/concurrent/Executor;

.field final synthetic $this_run:Landroidx/media2/player/MediaPlayer;

.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Lcom/mopub/mobileads/VastVideoViewControllerTwo;Ljava/util/concurrent/Executor;)V
    .registers 4

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->$this_run:Landroidx/media2/player/MediaPlayer;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->$executor$inlined:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 379
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->$this_run:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer;->getDuration()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->onVideoPrepared(Landroid/view/View;I)V

    .line 380
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->access$adjustSkipOffset(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)V

    .line 381
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->setPlayerVolume(F)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 383
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->access$getVastCompanionAdConfig$p(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    move-result-object v0

    if-nez v0, :cond_45

    .line 384
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfigTwo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 385
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getBlurredLastVideoFrameImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->prepareBlurredLastVideoFrame(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 388
    :cond_45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->$this_run:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->getDuration()J

    move-result-wide v1

    long-to-int v2, v1

    .line 390
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getShowCloseButtonDelay()I

    move-result v1

    .line 388
    invoke-virtual {v0, v2, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->calibrateAndMakeVisible(II)V

    .line 392
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getRadialCountdownWidget()Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getShowCloseButtonDelay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->calibrateAndMakeVisible(I)V

    .line 393
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createVideoView$$inlined$run$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->setCalibrationDone(Z)V

    return-void
.end method
