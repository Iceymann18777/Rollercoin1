.class public Lcom/mopub/nativeads/FacebookTemplateRenderer;
.super Ljava/lang/Object;
.source "FacebookTemplateRenderer.java"

# interfaces
.implements Lcom/mopub/nativeads/MoPubAdRenderer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/nativeads/MoPubAdRenderer<",
        "Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field private mTemplateAttributes:Lcom/facebook/ads/NativeAdViewAttributes;

.field private mViewType:Lcom/facebook/ads/NativeBannerAdView$Type;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/NativeAdViewAttributes;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mopub/nativeads/FacebookTemplateRenderer;->mTemplateAttributes:Lcom/facebook/ads/NativeAdViewAttributes;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/NativeAdViewAttributes;Lcom/facebook/ads/NativeBannerAdView$Type;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lcom/mopub/nativeads/FacebookTemplateRenderer;->mTemplateAttributes:Lcom/facebook/ads/NativeAdViewAttributes;

    .line 36
    iput-object p2, p0, Lcom/mopub/nativeads/FacebookTemplateRenderer;->mViewType:Lcom/facebook/ads/NativeBannerAdView$Type;

    return-void
.end method


# virtual methods
.method public createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    .line 42
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method public bridge synthetic renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BaseNativeAd;)V
    .registers 3

    .line 21
    check-cast p2, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/FacebookTemplateRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;)V

    return-void
.end method

.method public renderAdView(Landroid/view/View;Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;)V
    .registers 6

    .line 48
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p2}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->getFacebookNativeAd()Lcom/facebook/ads/NativeAdBase;

    move-result-object p2

    .line 54
    instance-of v0, p2, Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_1b

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p2, Lcom/facebook/ads/NativeAd;

    iget-object v1, p0, Lcom/mopub/nativeads/FacebookTemplateRenderer;->mTemplateAttributes:Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-static {v0, p2, v1}, Lcom/facebook/ads/NativeAdView;->render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object p2

    goto :goto_2f

    .line 58
    :cond_1b
    instance-of v0, p2, Lcom/facebook/ads/NativeBannerAd;

    if-eqz v0, :cond_2e

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p2, Lcom/facebook/ads/NativeBannerAd;

    iget-object v1, p0, Lcom/mopub/nativeads/FacebookTemplateRenderer;->mViewType:Lcom/facebook/ads/NativeBannerAdView$Type;

    iget-object v2, p0, Lcom/mopub/nativeads/FacebookTemplateRenderer;->mTemplateAttributes:Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-static {v0, p2, v1, v2}, Lcom/facebook/ads/NativeBannerAdView;->render(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object p2

    goto :goto_2f

    :cond_2e
    const/4 p2, 0x0

    .line 63
    :goto_2f
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 65
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public supports(Lcom/mopub/nativeads/BaseNativeAd;)Z
    .registers 2

    .line 70
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    instance-of p1, p1, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;

    return p1
.end method
