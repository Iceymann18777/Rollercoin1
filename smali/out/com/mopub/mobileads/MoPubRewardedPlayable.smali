.class public Lcom/mopub/mobileads/MoPubRewardedPlayable;
.super Lcom/mopub/mobileads/MoPubRewardedAd;
.source "MoPubRewardedPlayable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;
    }
.end annotation


# static fields
.field static final MOPUB_REWARDED_PLAYABLE_ID:Ljava/lang/String; = "mopub_rewarded_playable_id"


# instance fields
.field private mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubRewardedAd;-><init>()V

    .line 29
    new-instance v0, Lcom/mopub/mraid/RewardedMraidInterstitial;

    invoke-direct {v0}, Lcom/mopub/mraid/RewardedMraidInterstitial;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    return-void
.end method


# virtual methods
.method protected getAdNetworkId()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mAdUnitId:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mAdUnitId:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, "mopub_rewarded_playable_id"

    :goto_9
    return-object v0
.end method

.method getRewardedMraidInterstitial()Lcom/mopub/mraid/RewardedMraidInterstitial;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    return-object v0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/mopub/mobileads/MoPubRewardedAd;->loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 38
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    if-nez v0, :cond_15

    .line 39
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "mRewardedMraidInterstitial is null. Has this class been invalidated?"

    aput-object v0, p2, p3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 42
    :cond_15
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MoPubRewardedPlayable$MoPubRewardedPlayableListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedPlayable;)V

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/mopub/mraid/RewardedMraidInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method protected onInvalidate()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    if-eqz v0, :cond_7

    .line 55
    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidInterstitial;->onInvalidate()V

    :cond_7
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    .line 58
    invoke-super {p0}, Lcom/mopub/mobileads/MoPubRewardedAd;->onInvalidate()V

    return-void
.end method

.method setRewardedMraidInterstitial(Lcom/mopub/mraid/RewardedMraidInterstitial;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    return-void
.end method

.method protected show()V
    .registers 5

    .line 63
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubRewardedPlayable;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    if-eqz v0, :cond_1d

    .line 64
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Showing MoPub rewarded playable."

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedPlayable;->mRewardedMraidInterstitial:Lcom/mopub/mraid/RewardedMraidInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidInterstitial;->showInterstitial()V

    goto :goto_28

    .line 67
    :cond_1d
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MoPub rewarded playable not loaded. Unable to show playable."

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_28
    return-void
.end method
