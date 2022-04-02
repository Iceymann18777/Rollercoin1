.class Lcom/mopub/mobileads/AdLoaderRewardedVideo;
.super Lcom/mopub/network/AdLoader;
.source "AdLoaderRewardedVideo.java"


# instance fields
.field private mClickTrackerFired:Z

.field private mImpressionTrackerFired:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V
    .registers 6

    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/mopub/network/AdLoader;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mImpressionTrackerFired:Z

    .line 33
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mClickTrackerFired:Z

    return-void
.end method


# virtual methods
.method getClickUrl()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_b

    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method getFailurl()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    if-eqz v0, :cond_b

    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/MultiAdResponse;->getFailURL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method getImpressionUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_b

    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrls()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 49
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getLastDeliveredResponse()Lcom/mopub/network/AdResponse;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    return-object v0
.end method

.method trackClick(Landroid/content/Context;)V
    .registers 3

    .line 82
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mClickTrackerFired:Z

    if-eqz v0, :cond_c

    goto :goto_16

    :cond_c
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mClickTrackerFired:Z

    .line 90
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0, p1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    :cond_16
    :goto_16
    return-void
.end method

.method trackImpression(Landroid/content/Context;)V
    .registers 4

    .line 66
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mImpressionTrackerFired:Z

    if-eqz v0, :cond_c

    goto :goto_2a

    :cond_c
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mImpressionTrackerFired:Z

    .line 74
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->getImpressionUrls()Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-static {v0, p1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 77
    iget-object p1, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    .line 78
    new-instance v0, Lcom/mopub/network/SingleImpression;

    iget-object v1, p0, Lcom/mopub/mobileads/AdLoaderRewardedVideo;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getImpressionData()Lcom/mopub/network/ImpressionData;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/mopub/network/SingleImpression;-><init>(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V

    invoke-virtual {v0}, Lcom/mopub/network/SingleImpression;->sendImpression()V

    :cond_2a
    :goto_2a
    return-void
.end method
