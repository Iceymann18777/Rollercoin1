.class public Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;
.super Lcom/mopub/mobileads/BaseBroadcastReceiver;
.source "RewardedVideoBroadcastReceiverTwo.kt"


# annotations
.annotation runtime Lcom/mopub/mobileads/Mockable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo$Companion;

.field private static final sIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private final rewardedVideoListener:Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$RewardedVideoInterstitialListenerTwo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;->Companion:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo$Companion;

    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.rewardedvideo.complete"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;->sIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$RewardedVideoInterstitialListenerTwo;J)V
    .registers 4

    .line 17
    invoke-direct {p0, p2, p3}, Lcom/mopub/mobileads/BaseBroadcastReceiver;-><init>(J)V

    iput-object p1, p0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;->rewardedVideoListener:Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$RewardedVideoInterstitialListenerTwo;

    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 2

    .line 19
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;->sIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;->rewardedVideoListener:Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$RewardedVideoInterstitialListenerTwo;

    if-eqz p1, :cond_2c

    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;->shouldConsumeBroadcast(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_2c

    .line 24
    :cond_15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.mopub.action.rewardedvideo.complete"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 25
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;->rewardedVideoListener:Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$RewardedVideoInterstitialListenerTwo;

    invoke-interface {p1}, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$RewardedVideoInterstitialListenerTwo;->onVideoComplete()V

    .line 26
    move-object p1, p0

    check-cast p1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;->unregister(Landroid/content/BroadcastReceiver;)V

    :cond_2c
    :goto_2c
    return-void
.end method
