.class Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;
.super Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;
.source "MoPubRewardedPlayable.java"

# interfaces
.implements Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedPlayable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoPubRewardedPlayableListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MoPubRewardedPlayable;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubRewardedPlayable;)V
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedPlayable;

    .line 74
    const-class v0, Lcom/mopub/mobileads/MoPubRewardedPlayable;

    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedAd;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onMraidComplete()V
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedPlayable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubRewardedPlayable;->getRewardedAdCurrencyName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    .line 80
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "No rewarded video was loaded, so no reward is possible"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_31

    .line 82
    :cond_16
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;->mCustomEventClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedPlayable;

    .line 83
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubRewardedPlayable;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedPlayable;

    .line 84
    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubRewardedPlayable;->getRewardedAdCurrencyName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedPlayable;

    .line 85
    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubRewardedPlayable;->getRewardedAdCurrencyAmount()I

    move-result v3

    .line 84
    invoke-static {v2, v3}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v2

    .line 82
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    :goto_31
    return-void
.end method
