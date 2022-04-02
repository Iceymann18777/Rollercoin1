.class public Lcom/mopub/mobileads/VastVideoViewProgressRunnableTwo;
.super Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.source "VastVideoViewProgressRunnableTwo.kt"


# annotations
.annotation runtime Lcom/mopub/mobileads/Mockable;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVastVideoViewProgressRunnableTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastVideoViewProgressRunnableTwo.kt\ncom/mopub/mobileads/VastVideoViewProgressRunnableTwo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n1365#2,9:96\n1591#2,2:105\n1374#2:107\n*E\n*S KotlinDebug\n*F\n+ 1 VastVideoViewProgressRunnableTwo.kt\ncom/mopub/mobileads/VastVideoViewProgressRunnableTwo\n*L\n34#1,9:96\n34#1,2:105\n34#1:107\n*E\n"
.end annotation


# instance fields
.field private final vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfigTwo;

.field private final videoViewController:Lcom/mopub/mobileads/VastVideoViewControllerTwo;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastVideoViewControllerTwo;Lcom/mopub/mobileads/VastVideoConfigTwo;Landroid/os/Handler;)V
    .registers 5

    const-string v0, "videoViewController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastVideoConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnableTwo;->videoViewController:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnableTwo;->vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfigTwo;

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    check-cast p1, Ljava/util/List;

    .line 63
    new-instance p2, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    .line 64
    sget-object p3, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_STARTED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {p3}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->name()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 63
    invoke-direct {p2, p3, v0}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;-><init>(Ljava/lang/String;F)V

    .line 66
    sget-object p3, Lcom/mopub/mobileads/VastTrackerTwo$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    invoke-virtual {p2, p3}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->messageType(Lcom/mopub/mobileads/VastTrackerTwo$MessageType;)Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->build()Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;

    move-result-object p2

    .line 62
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance p2, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    .line 70
    sget-object p3, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_IMPRESSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {p3}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->name()Ljava/lang/String;

    move-result-object p3

    .line 69
    invoke-direct {p2, p3, v0}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;-><init>(Ljava/lang/String;F)V

    .line 72
    sget-object p3, Lcom/mopub/mobileads/VastTrackerTwo$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    invoke-virtual {p2, p3}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->messageType(Lcom/mopub/mobileads/VastTrackerTwo$MessageType;)Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->build()Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;

    move-result-object p2

    .line 68
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance p2, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    .line 76
    sget-object p3, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_FIRST_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {p3}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->name()Ljava/lang/String;

    move-result-object p3

    const/high16 v0, 0x3e800000    # 0.25f

    .line 75
    invoke-direct {p2, p3, v0}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;-><init>(Ljava/lang/String;F)V

    .line 78
    sget-object p3, Lcom/mopub/mobileads/VastTrackerTwo$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    invoke-virtual {p2, p3}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->messageType(Lcom/mopub/mobileads/VastTrackerTwo$MessageType;)Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->build()Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;

    move-result-object p2

    .line 74
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance p2, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    .line 82
    sget-object p3, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_MIDPOINT:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {p3}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->name()Ljava/lang/String;

    move-result-object p3

    const/high16 v0, 0x3f000000    # 0.5f

    .line 81
    invoke-direct {p2, p3, v0}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;-><init>(Ljava/lang/String;F)V

    .line 84
    sget-object p3, Lcom/mopub/mobileads/VastTrackerTwo$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    invoke-virtual {p2, p3}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->messageType(Lcom/mopub/mobileads/VastTrackerTwo$MessageType;)Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->build()Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;

    move-result-object p2

    .line 80
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance p2, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    .line 88
    sget-object p3, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_THIRD_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {p3}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->name()Ljava/lang/String;

    move-result-object p3

    const/high16 v0, 0x3f400000    # 0.75f

    .line 87
    invoke-direct {p2, p3, v0}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;-><init>(Ljava/lang/String;F)V

    .line 90
    sget-object p3, Lcom/mopub/mobileads/VastTrackerTwo$MessageType;->QUARTILE_EVENT:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    invoke-virtual {p2, p3}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->messageType(Lcom/mopub/mobileads/VastTrackerTwo$MessageType;)Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->build()Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;

    move-result-object p2

    .line 86
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnableTwo;->vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfigTwo;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoConfigTwo;->addFractionalTrackers(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .registers 9

    .line 26
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnableTwo;->videoViewController:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getDuration()I

    move-result v0

    .line 27
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnableTwo;->videoViewController:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getCurrentPosition()I

    move-result v1

    .line 28
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnableTwo;->videoViewController:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->updateProgressBar()V

    if-gtz v0, :cond_14

    return-void

    .line 34
    :cond_14
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnableTwo;->vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfigTwo;

    invoke-virtual {v2, v1, v0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 105
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 104
    check-cast v3, Lcom/mopub/mobileads/VastTrackerTwo;

    .line 35
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTrackerTwo;->setTracked()V

    .line 36
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTrackerTwo;->getMessageType()Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    move-result-object v6

    sget-object v7, Lcom/mopub/mobileads/VastVideoViewProgressRunnableTwo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Lcom/mopub/mobileads/VastTrackerTwo$MessageType;->ordinal()I

    move-result v6

    aget v6, v7, v6

    if-eq v6, v5, :cond_59

    const/4 v5, 0x2

    if-ne v6, v5, :cond_53

    .line 41
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnableTwo;->videoViewController:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTrackerTwo;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->handleViewabilityQuartileEvent$mopub_sdk_base_release(Ljava/lang/String;)V

    goto :goto_5d

    .line 42
    :cond_53
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 38
    :cond_59
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastTrackerTwo;->getContent()Ljava/lang/String;

    move-result-object v4

    :goto_5d
    if-eqz v4, :cond_27

    .line 104
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 107
    :cond_63
    check-cast v2, Ljava/util/List;

    .line 45
    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_70

    move-object v4, v2

    :cond_70
    if-eqz v4, :cond_9d

    .line 47
    new-instance v0, Lcom/mopub/mobileads/VastMacroHelper;

    invoke-direct {v0, v4}, Lcom/mopub/mobileads/VastMacroHelper;-><init>(Ljava/util/List;)V

    .line 48
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnableTwo;->videoViewController:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastMacroHelper;->withAssetUri(Ljava/lang/String;)Lcom/mopub/mobileads/VastMacroHelper;

    move-result-object v0

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastMacroHelper;->withContentPlayHead(Ljava/lang/Integer;)Lcom/mopub/mobileads/VastMacroHelper;

    move-result-object v0

    const-string v2, "VastMacroHelper(it)\n    \u2026PlayHead(currentPosition)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastMacroHelper;->getUris()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 51
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnableTwo;->videoViewController:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 46
    invoke-static {v0, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 55
    :cond_9d
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnableTwo;->videoViewController:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->handleIconDisplay(I)V

    return-void
.end method
