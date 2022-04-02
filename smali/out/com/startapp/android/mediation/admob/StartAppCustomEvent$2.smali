.class Lcom/startapp/android/mediation/admob/StartAppCustomEvent$2;
.super Ljava/lang/Object;
.source "StartAppCustomEvent.java"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->showInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/mediation/admob/StartAppCustomEvent;


# direct methods
.method constructor <init>(Lcom/startapp/android/mediation/admob/StartAppCustomEvent;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$2;->this$0:Lcom/startapp/android/mediation/admob/StartAppCustomEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    .line 98
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$2;->this$0:Lcom/startapp/android/mediation/admob/StartAppCustomEvent;

    invoke-static {p1}, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->access$000(Lcom/startapp/android/mediation/admob/StartAppCustomEvent;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onLeaveApplication()V

    return-void
.end method

.method public adDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    .line 94
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$2;->this$0:Lcom/startapp/android/mediation/admob/StartAppCustomEvent;

    invoke-static {p1}, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->access$000(Lcom/startapp/android/mediation/admob/StartAppCustomEvent;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    return-void
.end method

.method public adHidden(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    .line 90
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$2;->this$0:Lcom/startapp/android/mediation/admob/StartAppCustomEvent;

    invoke-static {p1}, Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->access$000(Lcom/startapp/android/mediation/admob/StartAppCustomEvent;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    return-void
.end method

.method public adNotDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    return-void
.end method
