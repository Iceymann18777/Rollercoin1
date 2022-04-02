.class Lcom/mopub/mobileads/RewardedVastVideoInterstitial;
.super Lcom/mopub/mobileads/VastVideoInterstitial;
.source "RewardedVastVideoInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;
    }
.end annotation


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String;


# instance fields
.field private mRewardedVideoBroadcastReceiver:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method getRewardedVideoBroadcastReceiver()Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->mRewardedVideoBroadcastReceiver:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    return-object v0
.end method

.method public loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
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

    .line 33
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mopub/mobileads/VastVideoInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 36
    instance-of p3, p2, Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;

    if-eqz p3, :cond_22

    .line 37
    new-instance p3, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    check-cast p2, Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;

    iget-wide v0, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->mBroadcastIdentifier:J

    invoke-direct {p3, p2, v0, v1}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;-><init>(Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;J)V

    iput-object p3, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->mRewardedVideoBroadcastReceiver:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    .line 40
    invoke-virtual {p3, p3, p1}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->register(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    :cond_22
    return-void
.end method

.method public onInvalidate()V
    .registers 2

    .line 55
    invoke-super {p0}, Lcom/mopub/mobileads/VastVideoInterstitial;->onInvalidate()V

    .line 56
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->mRewardedVideoBroadcastReceiver:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;

    if-eqz v0, :cond_a

    .line 57
    invoke-virtual {v0, v0}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    :cond_a
    return-void
.end method

.method public onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V
    .registers 7

    .line 46
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/RewardedVastVideoInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    if-eqz p1, :cond_12

    .line 48
    invoke-virtual {p1, v1}, Lcom/mopub/mobileads/VastVideoConfig;->setIsRewardedVideo(Z)V

    .line 50
    :cond_12
    invoke-super {p0, p1}, Lcom/mopub/mobileads/VastVideoInterstitial;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    return-void
.end method
