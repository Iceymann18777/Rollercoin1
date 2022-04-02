.class public final Lcom/mopub/mobileads/MoPubRewardedVideoTwo;
.super Lcom/mopub/mobileads/MoPubRewardedAd;
.source "MoPubRewardedVideoTwo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedVideoTwo$MoPubRewardedVideoTwoListener;,
        Lcom/mopub/mobileads/MoPubRewardedVideoTwo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/mopub/mobileads/MoPubRewardedVideoTwo$Companion;

.field public static final MOPUB_REWARDED_VIDEO_TWO_ID:Ljava/lang/String; = "mopub_rewarded_video_two_id"


# instance fields
.field private rewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoTwo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo;->Companion:Lcom/mopub/mobileads/MoPubRewardedVideoTwo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubRewardedAd;-><init>()V

    .line 77
    new-instance v0, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;

    invoke-direct {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo;->rewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;

    return-void
.end method


# virtual methods
.method protected getAdNetworkId()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo;->mAdUnitId:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, "mopub_rewarded_video_two_id"

    :goto_7
    return-object v0
.end method

.method public final getRewardedVastVideoInterstitial()Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo;->rewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;

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
            "+",
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

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localExtras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverExtras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/mopub/mobileads/MoPubRewardedAd;->loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 35
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo;->rewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;

    if-eqz v0, :cond_23

    .line 36
    check-cast p1, Landroid/content/Context;

    .line 37
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoTwo$MoPubRewardedVideoTwoListener;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoTwo$MoPubRewardedVideoTwoListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideoTwo;)V

    check-cast v1, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 35
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_32

    .line 40
    :cond_23
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    check-cast p1, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "rewardedVastVideoInterstitialTwo is null. Has this class been invalidated?"

    aput-object v0, p2, p3

    .line 39
    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_32
    return-void
.end method

.method protected onInvalidate()V
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo;->rewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;->onInvalidate()V

    :cond_7
    const/4 v0, 0x0

    .line 24
    check-cast v0, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo;->rewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;

    .line 25
    invoke-super {p0}, Lcom/mopub/mobileads/MoPubRewardedAd;->onInvalidate()V

    return-void
.end method

.method public final setRewardedVastVideoInterstitial(Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo;->rewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;

    return-void
.end method

.method protected show()V
    .registers 5

    .line 46
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoTwo;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo;->rewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;

    if-eqz v0, :cond_21

    .line 47
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    check-cast v0, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Showing MoPub rewarded video."

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoTwo;->rewardedVastVideoInterstitial:Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;->showInterstitial()V

    goto :goto_2e

    .line 50
    :cond_21
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    check-cast v0, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Unable to show MoPub rewarded video"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_2e
    :goto_2e
    return-void
.end method
