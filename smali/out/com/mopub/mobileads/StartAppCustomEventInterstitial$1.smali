.class Lcom/mopub/mobileads/StartAppCustomEventInterstitial$1;
.super Ljava/lang/Object;
.source "StartAppCustomEventInterstitial.java"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/StartAppCustomEventInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/StartAppCustomEventInterstitial;

.field final synthetic val$listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/StartAppCustomEventInterstitial;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .registers 3

    .line 34
    iput-object p1, p0, Lcom/mopub/mobileads/StartAppCustomEventInterstitial$1;->this$0:Lcom/mopub/mobileads/StartAppCustomEventInterstitial;

    iput-object p2, p0, Lcom/mopub/mobileads/StartAppCustomEventInterstitial$1;->val$listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 3

    .line 41
    iget-object p1, p0, Lcom/mopub/mobileads/StartAppCustomEventInterstitial$1;->val$listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    .line 37
    iget-object p1, p0, Lcom/mopub/mobileads/StartAppCustomEventInterstitial$1;->val$listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    return-void
.end method
