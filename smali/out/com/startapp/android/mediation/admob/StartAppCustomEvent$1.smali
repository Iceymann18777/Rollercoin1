.class Lcom/startapp/android/mediation/admob/StartAppCustomEvent$1;
.super Ljava/lang/Object;
.source "StartAppCustomEvent.java"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->requestInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/mediation/admob/StartAppCustomEvent;

.field final synthetic val$listener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method constructor <init>(Lcom/startapp/android/mediation/admob/StartAppCustomEvent;Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;)V
    .registers 3

    .line 52
    iput-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$1;->this$0:Lcom/startapp/android/mediation/admob/StartAppCustomEvent;

    iput-object p2, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    .line 59
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    .line 55
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    return-void
.end method
