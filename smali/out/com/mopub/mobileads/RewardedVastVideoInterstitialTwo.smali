.class public Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;
.super Lcom/mopub/mobileads/VastVideoInterstitialTwo;
.source "RewardedVastVideoInterstitialTwo.kt"


# annotations
.annotation runtime Lcom/mopub/mobileads/Mockable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$RewardedVideoInterstitialListenerTwo;,
        Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRewardedVastVideoInterstitialTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardedVastVideoInterstitialTwo.kt\ncom/mopub/mobileads/RewardedVastVideoInterstitialTwo\n*L\n1#1,55:1\n*E\n"
.end annotation


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String;

.field public static final Companion:Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$Companion;


# instance fields
.field private rewardedVideoBroadcastReceiver:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;->Companion:Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$Companion;

    .line 52
    const-class v0, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardedVastVideoInterst\u2026wo::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;->ADAPTER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoInterstitialTwo;-><init>()V

    return-void
.end method

.method public static final synthetic access$getADAPTER_NAME$cp()Ljava/lang/String;
    .registers 1

    .line 13
    sget-object v0, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;->ADAPTER_NAME:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getRewardedVideoBroadcastReceiver()Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;->rewardedVideoBroadcastReceiver:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;

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
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customEventInterstitialListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localExtras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverExtras"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    check-cast v0, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 29
    instance-of p3, p2, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$RewardedVideoInterstitialListenerTwo;

    if-eqz p3, :cond_3c

    .line 30
    new-instance p3, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;

    .line 31
    check-cast p2, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$RewardedVideoInterstitialListenerTwo;

    .line 32
    iget-wide v0, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;->mBroadcastIdentifier:J

    .line 30
    invoke-direct {p3, p2, v0, v1}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;-><init>(Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo$RewardedVideoInterstitialListenerTwo;J)V

    .line 34
    move-object p2, p3

    check-cast p2, Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, p2, p1}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;->register(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0, p3}, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;->setRewardedVideoBroadcastReceiver(Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;)V

    :cond_3c
    return-void
.end method

.method public onInvalidate()V
    .registers 3

    .line 46
    invoke-super {p0}, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->onInvalidate()V

    .line 47
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;->getRewardedVideoBroadcastReceiver()Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;->getRewardedVideoBroadcastReceiver()Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;->unregister(Landroid/content/BroadcastReceiver;)V

    :cond_12
    return-void
.end method

.method public onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V
    .registers 7

    .line 40
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    check-cast v0, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    if-eqz p1, :cond_14

    .line 41
    invoke-virtual {p1, v1}, Lcom/mopub/mobileads/VastVideoConfig;->setIsRewardedVideo(Z)V

    .line 42
    :cond_14
    invoke-super {p0, p1}, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    return-void
.end method

.method public setRewardedVideoBroadcastReceiver(Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedVastVideoInterstitialTwo;->rewardedVideoBroadcastReceiver:Lcom/mopub/mobileads/RewardedVideoBroadcastReceiverTwo;

    return-void
.end method
