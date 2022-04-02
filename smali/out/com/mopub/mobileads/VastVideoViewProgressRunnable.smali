.class public Lcom/mopub/mobileads/VastVideoViewProgressRunnable;
.super Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.source "VastVideoViewProgressRunnable.java"


# instance fields
.field private final mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

.field private final mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoConfig;Landroid/os/Handler;)V
    .registers 6

    .line 30
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    .line 32
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    .line 35
    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance p2, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    sget-object p3, Lcom/mopub/mobileads/VastTracker$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTracker$MessageType;

    sget-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_STARTED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 41
    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, p3, v0, v1}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Lcom/mopub/mobileads/VastTracker$MessageType;Ljava/lang/String;F)V

    .line 40
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance p2, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    sget-object p3, Lcom/mopub/mobileads/VastTracker$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTracker$MessageType;

    sget-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_IMPRESSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 43
    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0, v1}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Lcom/mopub/mobileads/VastTracker$MessageType;Ljava/lang/String;F)V

    .line 42
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance p2, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    sget-object p3, Lcom/mopub/mobileads/VastTracker$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTracker$MessageType;

    sget-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_FIRST_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 45
    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {p2, p3, v0, v1}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Lcom/mopub/mobileads/VastTracker$MessageType;Ljava/lang/String;F)V

    .line 44
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance p2, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    sget-object p3, Lcom/mopub/mobileads/VastTracker$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTracker$MessageType;

    sget-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_MIDPOINT:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 47
    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p2, p3, v0, v1}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Lcom/mopub/mobileads/VastTracker$MessageType;Ljava/lang/String;F)V

    .line 46
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance p2, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    sget-object p3, Lcom/mopub/mobileads/VastTracker$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTracker$MessageType;

    sget-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_THIRD_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 49
    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p2, p3, v0, v1}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Lcom/mopub/mobileads/VastTracker$MessageType;Ljava/lang/String;F)V

    .line 48
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackers(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .registers 7

    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    .line 58
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->updateProgressBar()V

    if-lez v0, :cond_82

    .line 61
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 62
    invoke-virtual {v2, v1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7d

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/mobileads/VastTracker;

    .line 66
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTracker;->getMessageType()Lcom/mopub/mobileads/VastTracker$MessageType;

    move-result-object v4

    sget-object v5, Lcom/mopub/mobileads/VastTracker$MessageType;->TRACKING_URL:Lcom/mopub/mobileads/VastTracker$MessageType;

    if-ne v4, v5, :cond_44

    .line 67
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTracker;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 68
    :cond_44
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTracker;->getMessageType()Lcom/mopub/mobileads/VastTracker$MessageType;

    move-result-object v4

    sget-object v5, Lcom/mopub/mobileads/VastTracker$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTracker$MessageType;

    if-ne v4, v5, :cond_55

    .line 69
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTracker;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mopub/mobileads/VastVideoViewController;->handleViewabilityQuartileEvent(Ljava/lang/String;)V

    .line 71
    :cond_55
    :goto_55
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTracker;->setTracked()V

    goto :goto_28

    .line 73
    :cond_59
    new-instance v0, Lcom/mopub/mobileads/VastMacroHelper;

    invoke-direct {v0, v2}, Lcom/mopub/mobileads/VastMacroHelper;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    .line 75
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastMacroHelper;->withAssetUri(Ljava/lang/String;)Lcom/mopub/mobileads/VastMacroHelper;

    move-result-object v0

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastMacroHelper;->withContentPlayHead(Ljava/lang/Integer;)Lcom/mopub/mobileads/VastMacroHelper;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastMacroHelper;->getUris()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    .line 78
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 73
    invoke-static {v0, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 81
    :cond_7d
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->handleIconDisplay(I)V

    :cond_82
    return-void
.end method
