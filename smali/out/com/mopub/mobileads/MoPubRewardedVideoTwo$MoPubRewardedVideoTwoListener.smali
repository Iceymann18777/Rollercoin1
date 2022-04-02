.class final Lcom/mopub/mobileads/MoPubRewardedVideoTwo$MoPubRewardedVideoTwoListener;
.super Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;
.source "MoPubRewardedVideoTwo.kt"

# interfaces
.implements Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$RewardedVideoInterstitialListenerTwo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MoPubRewardedVideoTwoListener"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMoPubRewardedVideoTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoPubRewardedVideoTwo.kt\ncom/mopub/mobileads/MoPubRewardedVideoTwo$MoPubRewardedVideoTwoListener\n*L\n1#1,80:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MoPubRewardedVideoTwo;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubRewardedVideoTwo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo$MoPubRewardedVideoTwoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideoTwo;

    .line 55
    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo;

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedAd;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onVideoComplete()V
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo$MoPubRewardedVideoTwoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideoTwo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoTwo;->getRewardedAdCurrencyName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 60
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo$MoPubRewardedVideoTwoListener;->mCustomEventClass:Ljava/lang/Class;

    .line 61
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo$MoPubRewardedVideoTwoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideoTwo;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubRewardedVideoTwo;->getAdNetworkId()Ljava/lang/String;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo$MoPubRewardedVideoTwoListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideoTwo;

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubRewardedVideoTwo;->getRewardedAdCurrencyAmount()I

    move-result v3

    invoke-static {v0, v3}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v0

    .line 59
    invoke-static {v1, v2, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    goto :goto_2d

    .line 66
    :cond_1e
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    check-cast v0, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "No rewarded video was loaded, so no reward is possible"

    aput-object v3, v1, v2

    .line 65
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_2d
    return-void
.end method
