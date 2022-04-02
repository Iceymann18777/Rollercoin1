.class public Lcom/mopub/nativeads/FacebookAdRenderer;
.super Ljava/lang/Object;
.source "FacebookAdRenderer.java"

# interfaces
.implements Lcom/mopub/nativeads/MoPubAdRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;,
        Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/nativeads/MoPubAdRenderer<",
        "Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field private final mViewBinder:Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;

.field final mViewHolderMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->mViewBinder:Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;

    .line 39
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->mViewHolderMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private update(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;)V
    .registers 7

    .line 76
    invoke-virtual {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 77
    invoke-virtual {p2}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->getCallToActionView()Landroid/widget/TextView;

    move-result-object v0

    .line 80
    invoke-virtual {p2}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->getAdvertiserNameView()Landroid/widget/TextView;

    move-result-object v0

    .line 82
    invoke-virtual {p2}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->getAdvertiserName()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->getSponsoredLabelView()Landroid/widget/TextView;

    move-result-object v0

    .line 84
    invoke-virtual {p2}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->getSponsoredName()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->getAdChoicesContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->getMainView()Landroid/view/View;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->getMediaView()Lcom/facebook/ads/MediaView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->getAdIconView()Lcom/facebook/ads/MediaView;

    move-result-object v3

    .line 88
    invoke-virtual {p2, v1, v2, v3}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->registerChildViewsForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V

    if-eqz v0, :cond_8c

    .line 91
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const/4 v1, 0x0

    .line 93
    invoke-static {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->access$000(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/facebook/ads/NativeAdLayout;

    if-eqz v2, :cond_5f

    .line 94
    invoke-static {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->access$000(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/facebook/ads/NativeAdLayout;

    .line 96
    :cond_5f
    new-instance p1, Lcom/facebook/ads/AdOptionsView;

    .line 98
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 99
    invoke-virtual {p2}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->getFacebookNativeAd()Lcom/facebook/ads/NativeAdBase;

    move-result-object p2

    invoke-direct {p1, v2, p2, v1}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 101
    invoke-virtual {p1}, Lcom/facebook/ads/AdOptionsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 102
    instance-of v1, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_89

    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_82

    .line 104
    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x15

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_89

    .line 107
    :cond_82
    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 111
    :cond_89
    :goto_89
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_8c
    return-void
.end method


# virtual methods
.method public createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 44
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->mViewBinder:Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;

    iget v0, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->layoutId:I

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BaseNativeAd;)V
    .registers 3

    .line 24
    check-cast p2, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/FacebookAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;)V

    return-void
.end method

.method public renderAdView(Landroid/view/View;Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;)V
    .registers 5

    .line 53
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->mViewHolderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;

    if-nez v0, :cond_1b

    .line 58
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->mViewBinder:Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;

    invoke-static {p1, v0}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->fromViewBinder(Landroid/view/View;Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->mViewHolderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_1b
    invoke-direct {p0, v0, p2}, Lcom/mopub/nativeads/FacebookAdRenderer;->update(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;)V

    .line 63
    invoke-virtual {v0}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookNativeViewHolder;->getMainView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer;->mViewBinder:Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;

    iget-object v0, v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->extras:Ljava/util/Map;

    .line 65
    invoke-virtual {p2}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->getExtras()Ljava/util/Map;

    move-result-object p2

    .line 63
    invoke-static {p1, v0, p2}, Lcom/mopub/nativeads/NativeRendererHelper;->updateExtras(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

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
