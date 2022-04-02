.class Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;
.super Ljava/lang/Object;
.source "MoPubAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mMediationInterstitialListener"
.end annotation


# instance fields
.field private mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field final synthetic this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V
    .registers 3

    .line 464
    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .registers 3

    .line 470
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .registers 3

    .line 475
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 5

    .line 481
    sget-object p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$4;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_22

    if-eq p1, p2, :cond_1a

    .line 497
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_31

    .line 492
    :cond_1a
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_31

    .line 487
    :cond_22
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, p2, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_31

    .line 483
    :cond_2a
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    :goto_31
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .registers 3

    .line 506
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .registers 3

    .line 511
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
