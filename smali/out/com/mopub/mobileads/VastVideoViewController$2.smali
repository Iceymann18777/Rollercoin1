.class Lcom/mopub/mobileads/VastVideoViewController$2;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

.field final synthetic val$videoView:Lcom/mopub/mobileads/VastVideoView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;)V
    .registers 3

    .line 359
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->val$videoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 365
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$600(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->getDuration()I

    move-result v0

    invoke-static {p1, v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$402(Lcom/mopub/mobileads/VastVideoViewController;I)I

    .line 366
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$100(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v1}, Lcom/mopub/mobileads/VastVideoViewController;->access$400(Lcom/mopub/mobileads/VastVideoViewController;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->onVideoPrepared(Landroid/view/View;I)V

    .line 367
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$700(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 368
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$800(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object p1

    if-nez p1, :cond_44

    .line 369
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->val$videoView:Lcom/mopub/mobileads/VastVideoView;

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$900(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    .line 370
    invoke-static {v1}, Lcom/mopub/mobileads/VastVideoViewController;->access$500(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-virtual {p1, v0, v1}, Lcom/mopub/mobileads/VastVideoView;->prepareBlurredLastVideoFrame(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 372
    :cond_44
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$1100(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v1}, Lcom/mopub/mobileads/VastVideoViewController;->access$1000(Lcom/mopub/mobileads/VastVideoViewController;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->calibrateAndMakeVisible(II)V

    .line 373
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$1200(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1000(Lcom/mopub/mobileads/VastVideoViewController;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->calibrateAndMakeVisible(I)V

    .line 374
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$1302(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    return-void
.end method
