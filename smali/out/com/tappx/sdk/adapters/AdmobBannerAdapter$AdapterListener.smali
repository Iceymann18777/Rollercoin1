.class final Lcom/tappx/sdk/adapters/AdmobBannerAdapter$AdapterListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/sdk/android/TappxBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/sdk/adapters/AdmobBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdapterListener"
.end annotation


# instance fields
.field final admobListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tappx/sdk/adapters/AdmobBannerAdapter$AdapterListener;->admobListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Lcom/tappx/sdk/adapters/AdmobBannerAdapter$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/sdk/adapters/AdmobBannerAdapter$AdapterListener;-><init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Lcom/tappx/sdk/android/TappxBanner;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tappx/sdk/adapters/AdmobBannerAdapter$AdapterListener;->admobListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdClicked()V

    return-void
.end method

.method public onBannerCollapsed(Lcom/tappx/sdk/android/TappxBanner;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tappx/sdk/adapters/AdmobBannerAdapter$AdapterListener;->admobListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdClosed()V

    return-void
.end method

.method public onBannerExpanded(Lcom/tappx/sdk/android/TappxBanner;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tappx/sdk/adapters/AdmobBannerAdapter$AdapterListener;->admobListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdOpened()V

    return-void
.end method

.method public onBannerLoadFailed(Lcom/tappx/sdk/android/TappxBanner;Lcom/tappx/sdk/android/TappxAdError;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tappx/sdk/adapters/AdmobBannerAdapter$AdapterListener;->admobListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-static {p2}, Lcom/tappx/sdk/adapters/AdmobBannerAdapter;->access$100(Lcom/tappx/sdk/android/TappxAdError;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onBannerLoaded(Lcom/tappx/sdk/android/TappxBanner;)V
    .registers 4

    const-string v0, "Tappx"

    const-string v1, "Admob adapter: banner loaded"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/tappx/sdk/adapters/AdmobBannerAdapter$AdapterListener;->admobListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method
