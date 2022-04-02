.class Lcom/mopub/mobileads/StartAppCustomEventInterstitial$2;
.super Ljava/lang/Object;
.source "StartAppCustomEventInterstitial.java"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/StartAppCustomEventInterstitial;->showInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/StartAppCustomEventInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/StartAppCustomEventInterstitial;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/mopub/mobileads/StartAppCustomEventInterstitial$2;->this$0:Lcom/mopub/mobileads/StartAppCustomEventInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    .line 60
    iget-object p1, p0, Lcom/mopub/mobileads/StartAppCustomEventInterstitial$2;->this$0:Lcom/mopub/mobileads/StartAppCustomEventInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/StartAppCustomEventInterstitial;->access$000(Lcom/mopub/mobileads/StartAppCustomEventInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    return-void
.end method

.method public adDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    .line 56
    iget-object p1, p0, Lcom/mopub/mobileads/StartAppCustomEventInterstitial$2;->this$0:Lcom/mopub/mobileads/StartAppCustomEventInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/StartAppCustomEventInterstitial;->access$000(Lcom/mopub/mobileads/StartAppCustomEventInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    return-void
.end method

.method public adHidden(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    .line 52
    iget-object p1, p0, Lcom/mopub/mobileads/StartAppCustomEventInterstitial$2;->this$0:Lcom/mopub/mobileads/StartAppCustomEventInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/StartAppCustomEventInterstitial;->access$000(Lcom/mopub/mobileads/StartAppCustomEventInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    return-void
.end method

.method public adNotDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    return-void
.end method
