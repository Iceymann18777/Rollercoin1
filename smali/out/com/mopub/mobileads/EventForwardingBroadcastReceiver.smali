.class public Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;
.super Lcom/mopub/mobileads/BaseBroadcastReceiver;
.source "EventForwardingBroadcastReceiver.java"


# static fields
.field private static sIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private final mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;J)V
    .registers 4

    .line 25
    invoke-direct {p0, p2, p3}, Lcom/mopub/mobileads/BaseBroadcastReceiver;-><init>(J)V

    .line 26
    iput-object p1, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 27
    invoke-virtual {p0}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .line 32
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_25

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.interstitial.fail"

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.interstitial.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.interstitial.dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.interstitial.click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    :cond_25
    sget-object v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 44
    iget-object p1, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-nez p1, :cond_5

    return-void

    .line 48
    :cond_5
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->shouldConsumeBroadcast(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 52
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.mopub.action.interstitial.fail"

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 54
    iget-object p1, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_4c

    :cond_20
    const-string p2, "com.mopub.action.interstitial.show"

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 56
    iget-object p1, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    goto :goto_4c

    :cond_2e
    const-string p2, "com.mopub.action.interstitial.dismiss"

    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 58
    iget-object p1, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 59
    invoke-virtual {p0, p0}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    goto :goto_4c

    :cond_3f
    const-string p2, "com.mopub.action.interstitial.click"

    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 61
    iget-object p1, p0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    :cond_4c
    :goto_4c
    return-void
.end method
