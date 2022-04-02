.class public Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;
.super Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;
.source "MoPubNativeAppInstallAdMapper.java"


# instance fields
.field private mMopubNativeAdData:Lcom/mopub/nativeads/StaticNativeAd;

.field private mPrivacyIconSize:I

.field private privacyIconPlacement:I

.field private privacyInformationIconImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/StaticNativeAd;Ljava/util/HashMap;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/nativeads/StaticNativeAd;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;II)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->mMopubNativeAdData:Lcom/mopub/nativeads/StaticNativeAd;

    .line 39
    invoke-virtual {p1}, Lcom/mopub/nativeads/StaticNativeAd;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->setHeadline(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->mMopubNativeAdData:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {p1}, Lcom/mopub/nativeads/StaticNativeAd;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->setBody(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->mMopubNativeAdData:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {p1}, Lcom/mopub/nativeads/StaticNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->setCallToAction(Ljava/lang/String;)V

    .line 42
    iput p3, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->privacyIconPlacement:I

    .line 43
    iput p4, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->mPrivacyIconSize:I

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    if-eqz p2, :cond_5b

    .line 46
    new-instance p1, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage;

    const-string v0, "icon_key"

    .line 47
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->mMopubNativeAdData:Lcom/mopub/nativeads/StaticNativeAd;

    .line 48
    invoke-virtual {v1}, Lcom/mopub/nativeads/StaticNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1, p3, p4}, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;D)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage;

    const-string v1, "image_key"

    .line 53
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->mMopubNativeAdData:Lcom/mopub/nativeads/StaticNativeAd;

    .line 54
    invoke-virtual {v1}, Lcom/mopub/nativeads/StaticNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3, p4}, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;D)V

    .line 52
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->setImages(Ljava/util/List;)V

    goto :goto_80

    .line 59
    :cond_5b
    new-instance p1, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage;

    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->mMopubNativeAdData:Lcom/mopub/nativeads/StaticNativeAd;

    .line 60
    invoke-virtual {p2}, Lcom/mopub/nativeads/StaticNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3, p4}, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;D)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance p2, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage;

    iget-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->mMopubNativeAdData:Lcom/mopub/nativeads/StaticNativeAd;

    .line 64
    invoke-virtual {v1}, Lcom/mopub/nativeads/StaticNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p3, p4}, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;D)V

    .line 63
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->setImages(Ljava/util/List;)V

    :goto_80
    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->setOverrideClickHandling(Z)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->setOverrideImpressionRecording(Z)V

    return-void
.end method


# virtual methods
.method public handleClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public recordImpression()V
    .registers 1

    return-void
.end method

.method public trackView(Landroid/view/View;)V
    .registers 9

    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->mMopubNativeAdData:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/StaticNativeAd;->prepare(Landroid/view/View;)V

    .line 87
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    return-void

    .line 91
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 93
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 94
    instance-of v3, v1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_a6

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_22

    return-void

    .line 101
    :cond_22
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->privacyInformationIconImageView:Landroid/widget/ImageView;

    .line 102
    iget-object v3, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->mMopubNativeAdData:Lcom/mopub/nativeads/StaticNativeAd;

    .line 103
    invoke-virtual {v3}, Lcom/mopub/nativeads/StaticNativeAd;->getPrivacyInformationIconImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 104
    iget-object v4, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->mMopubNativeAdData:Lcom/mopub/nativeads/StaticNativeAd;

    .line 105
    invoke-virtual {v4}, Lcom/mopub/nativeads/StaticNativeAd;->getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_43

    .line 108
    iget-object v3, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->privacyInformationIconImageView:Landroid/widget/ImageView;

    sget-object v5, Lcom/mopub/common/util/Drawables;->NATIVE_PRIVACY_INFORMATION_ICON:Lcom/mopub/common/util/Drawables;

    .line 109
    invoke-virtual {v5, p1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 108
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_48

    .line 111
    :cond_43
    iget-object v5, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->privacyInformationIconImageView:Landroid/widget/ImageView;

    invoke-static {v3, v5}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 115
    :goto_48
    iget-object v3, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->privacyInformationIconImageView:Landroid/widget/ImageView;

    new-instance v5, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper$1;

    invoke-direct {v5, p0, p1, v4}, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper$1;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v3, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->privacyInformationIconImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->privacyInformationIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 133
    iget v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->mPrivacyIconSize:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-double v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    double-to-int p1, v3

    .line 134
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 137
    iget p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->privacyIconPlacement:I

    if-eqz p1, :cond_99

    const/16 v3, 0x35

    if-eq p1, v2, :cond_96

    const/4 v2, 0x2

    if-eq p1, v2, :cond_91

    const/4 v2, 0x3

    if-eq p1, v2, :cond_8c

    .line 151
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_9d

    :cond_8c
    const/16 p1, 0x53

    .line 145
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_9d

    :cond_91
    const/16 p1, 0x55

    .line 142
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_9d

    .line 148
    :cond_96
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_9d

    :cond_99
    const/16 p1, 0x33

    .line 139
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 153
    :goto_9d
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->privacyInformationIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_ad

    .line 156
    :cond_a6
    sget-object p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Failed to show AdChoices icon."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ad
    return-void
.end method

.method public untrackView(Landroid/view/View;)V
    .registers 3

    .line 73
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->untrackView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->mMopubNativeAdData:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/StaticNativeAd;->clear(Landroid/view/View;)V

    .line 76
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->privacyInformationIconImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_21

    .line 77
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_21

    .line 78
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->privacyInformationIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;->privacyInformationIconImageView:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_21
    return-void
.end method
