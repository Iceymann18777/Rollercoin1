.class public Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;
.super Lcom/mopub/mobileads/BaseBroadcastReceiver;
.source "RewardedVideoBroadcastReceiver.java"


# static fields
.field private static sIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mRewardedVideoListener:Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;J)V
    .registers 4

    .line 26
    invoke-direct {p0, p2, p3}, Lcom/mopub/mobileads/BaseBroadcastReceiver;-><init>(J)V

    .line 27
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->mRewardedVideoListener:Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;

    .line 28
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .line 33
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_10

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.rewardedvideo.complete"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    :cond_10
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 42
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->mRewardedVideoListener:Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;

    if-nez p1, :cond_b

    return-void

    .line 49
    :cond_b
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->shouldConsumeBroadcast(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_12

    return-void

    .line 53
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.mopub.action.rewardedvideo.complete"

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 55
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->mRewardedVideoListener:Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial$RewardedVideoInterstitialListener;->onVideoComplete()V

    .line 56
    invoke-virtual {p0, p0}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    :cond_26
    return-void
.end method
