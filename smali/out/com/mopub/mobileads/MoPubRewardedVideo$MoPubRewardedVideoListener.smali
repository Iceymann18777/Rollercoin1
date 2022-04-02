.class Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;
.super Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;
.source "MoPubRewardedVideo.java"

# interfaces
.implements Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoPubRewardedVideoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubRewardedVideo;)V
    .registers 3

    .line 74
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;

    .line 75
    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedAd;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onVideoComplete()V
    .registers 5

    .line 81
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubRewardedVideo;->getRewardedAdCurrencyName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    .line 82
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "No rewarded video was loaded, so no reward is possible"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_31

    .line 84
    :cond_16
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->mCustomEventClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;

    .line 85
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;

    .line 86
    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubRewardedVideo;->getRewardedAdCurrencyName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$MoPubRewardedVideoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideo;

    .line 87
    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubRewardedVideo;->getRewardedAdCurrencyAmount()I

    move-result v3

    .line 86
    invoke-static {v2, v3}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v2

    .line 84
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    :goto_31
    return-void
.end method
