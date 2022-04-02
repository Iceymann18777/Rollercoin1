.class final Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter$AdapterListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/sdk/android/TappxInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdapterListener"
.end annotation


# instance fields
.field final admobListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter$AdapterListener;->admobListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter$AdapterListener;-><init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;)V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/tappx/sdk/android/TappxInterstitial;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter$AdapterListener;->admobListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdClicked()V

    return-void
.end method

.method public onInterstitialDismissed(Lcom/tappx/sdk/android/TappxInterstitial;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter$AdapterListener;->admobListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdClosed()V

    return-void
.end method

.method public onInterstitialLoadFailed(Lcom/tappx/sdk/android/TappxInterstitial;Lcom/tappx/sdk/android/TappxAdError;)V
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Admob adapter: Interstitial load failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Tappx"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter$AdapterListener;->admobListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-static {p2}, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter;->access$100(Lcom/tappx/sdk/android/TappxAdError;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onInterstitialLoaded(Lcom/tappx/sdk/android/TappxInterstitial;)V
    .registers 3

    const-string p1, "Tappx"

    const-string v0, "Admob adapter: Interstitial loaded"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter$AdapterListener;->admobListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdLoaded()V

    return-void
.end method

.method public onInterstitialShown(Lcom/tappx/sdk/android/TappxInterstitial;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tappx/sdk/adapters/AdmobInterstitialAdapter$AdapterListener;->admobListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdOpened()V

    return-void
.end method
