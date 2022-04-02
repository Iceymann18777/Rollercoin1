.class Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;
.super Ljava/lang/Object;
.source "MoPubAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MBannerListener"
.end annotation


# instance fields
.field private mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

.field final synthetic this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V
    .registers 3

    .line 371
    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    return-void
.end method


# virtual methods
.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .registers 3

    .line 377
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .registers 3

    .line 382
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .registers 3

    .line 387
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 5

    .line 393
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

    .line 407
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    goto :goto_31

    .line 403
    :cond_1a
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    goto :goto_31

    .line 399
    :cond_22
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, p2, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    goto :goto_31

    .line 395
    :cond_2a
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    :goto_31
    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .registers 4

    .line 415
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-static {v0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->access$300(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getAdWidth()I

    move-result v1

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    .line 416
    invoke-static {v0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->access$300(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getAdHeight()I

    move-result p1

    if-eq v0, p1, :cond_27

    .line 417
    :cond_20
    sget-object p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->TAG:Ljava/lang/String;

    const-string v0, "The banner ad size loaded does not match the request size. Update the ad size on your MoPub UI to match the request size."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_27
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method
