.class public Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;
.super Ljava/lang/Object;
.source "MoPubVideoNativeAdRenderer.java"

# interfaces
.implements Lcom/mopub/nativeads/MoPubAdRenderer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/nativeads/MoPubAdRenderer<",
        "Lcom/mopub/nativeads/VideoNativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMediaViewBinder:Lcom/mopub/nativeads/MediaViewBinder;

.field final mMediaViewHolderMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/MediaViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/MediaViewBinder;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;->mMediaViewBinder:Lcom/mopub/nativeads/MediaViewBinder;

    .line 37
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;->mMediaViewHolderMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private setViewVisibility(Lcom/mopub/nativeads/MediaViewHolder;I)V
    .registers 4

    .line 95
    iget-object v0, p1, Lcom/mopub/nativeads/MediaViewHolder;->mainView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 96
    iget-object p1, p1, Lcom/mopub/nativeads/MediaViewHolder;->mainView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private update(Lcom/mopub/nativeads/MediaViewHolder;Lcom/mopub/nativeads/VideoNativeAd;)V
    .registers 6

    .line 73
    iget-object v0, p1, Lcom/mopub/nativeads/MediaViewHolder;->titleView:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p2}, Lcom/mopub/nativeads/VideoNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 75
    iget-object v0, p1, Lcom/mopub/nativeads/MediaViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mopub/nativeads/VideoNativeAd;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 76
    iget-object v0, p1, Lcom/mopub/nativeads/MediaViewHolder;->callToActionView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/mopub/nativeads/MediaViewHolder;->mainView:Landroid/view/View;

    .line 77
    invoke-virtual {p2}, Lcom/mopub/nativeads/VideoNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v0, v1, v2}, Lcom/mopub/nativeads/NativeRendererHelper;->addCtaButton(Landroid/widget/TextView;Landroid/view/View;Ljava/lang/String;)V

    .line 79
    iget-object v0, p1, Lcom/mopub/nativeads/MediaViewHolder;->mediaLayout:Lcom/mopub/nativeads/MediaLayout;

    if-eqz v0, :cond_2e

    .line 80
    invoke-virtual {p2}, Lcom/mopub/nativeads/VideoNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/mopub/nativeads/MediaViewHolder;->mediaLayout:Lcom/mopub/nativeads/MediaLayout;

    .line 81
    invoke-virtual {v1}, Lcom/mopub/nativeads/MediaLayout;->getMainImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 83
    :cond_2e
    invoke-virtual {p2}, Lcom/mopub/nativeads/VideoNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/mopub/nativeads/MediaViewHolder;->iconImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 85
    iget-object v0, p1, Lcom/mopub/nativeads/MediaViewHolder;->privacyInformationIconImageView:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {p2}, Lcom/mopub/nativeads/VideoNativeAd;->getPrivacyInformationIconImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p2}, Lcom/mopub/nativeads/VideoNativeAd;->getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v0, v1, v2}, Lcom/mopub/nativeads/NativeRendererHelper;->addPrivacyInformationIcon(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Lcom/mopub/nativeads/VideoNativeAd;->getSponsored()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/mopub/nativeads/MediaViewHolder;->sponsoredTextView:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/mopub/nativeads/NativeRendererHelper;->addSponsoredView(Ljava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;->mMediaViewBinder:Lcom/mopub/nativeads/MediaViewBinder;

    iget v0, v0, Lcom/mopub/nativeads/MediaViewBinder;->layoutId:I

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BaseNativeAd;)V
    .registers 3

    .line 22
    check-cast p2, Lcom/mopub/nativeads/VideoNativeAd;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/VideoNativeAd;)V

    return-void
.end method

.method public renderAdView(Landroid/view/View;Lcom/mopub/nativeads/VideoNativeAd;)V
    .registers 7

    .line 51
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;->mMediaViewHolderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/MediaViewHolder;

    if-nez v0, :cond_15

    .line 53
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;->mMediaViewBinder:Lcom/mopub/nativeads/MediaViewBinder;

    invoke-static {p1, v0}, Lcom/mopub/nativeads/MediaViewHolder;->fromViewBinder(Landroid/view/View;Lcom/mopub/nativeads/MediaViewBinder;)Lcom/mopub/nativeads/MediaViewHolder;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;->mMediaViewHolderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_15
    invoke-direct {p0, v0, p2}, Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;->update(Lcom/mopub/nativeads/MediaViewHolder;Lcom/mopub/nativeads/VideoNativeAd;)V

    .line 58
    iget-object v1, v0, Lcom/mopub/nativeads/MediaViewHolder;->mainView:Landroid/view/View;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;->mMediaViewBinder:Lcom/mopub/nativeads/MediaViewBinder;

    iget-object v2, v2, Lcom/mopub/nativeads/MediaViewBinder;->extras:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/mopub/nativeads/VideoNativeAd;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mopub/nativeads/NativeRendererHelper;->updateExtras(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;->setViewVisibility(Lcom/mopub/nativeads/MediaViewHolder;I)V

    .line 61
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;->mMediaViewBinder:Lcom/mopub/nativeads/MediaViewBinder;

    iget v0, v0, Lcom/mopub/nativeads/MediaViewBinder;->mediaLayoutId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mopub/nativeads/MediaLayout;

    .line 62
    invoke-virtual {p2, p1}, Lcom/mopub/nativeads/VideoNativeAd;->render(Lcom/mopub/nativeads/MediaLayout;)V

    return-void
.end method

.method public supports(Lcom/mopub/nativeads/BaseNativeAd;)Z
    .registers 2

    .line 67
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    instance-of p1, p1, Lcom/mopub/nativeads/VideoNativeAd;

    return p1
.end method
