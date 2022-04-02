.class public Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;
.super Ljava/lang/Object;
.source "GooglePlayServicesAdRenderer.java"

# interfaces
.implements Lcom/mopub/nativeads/MoPubAdRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/nativeads/MoPubAdRenderer<",
        "Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GOOGLE_NATIVE_VIEW:I = 0x3ea

.field private static final ID_WRAPPING_FRAME:I = 0x3e9

.field public static final VIEW_BINDER_KEY_ADVERTISER:Ljava/lang/String; = "key_advertiser"

.field public static final VIEW_BINDER_KEY_AD_CHOICES_ICON_CONTAINER:Ljava/lang/String; = "ad_choices_container"

.field public static final VIEW_BINDER_KEY_PRICE:Ljava/lang/String; = "key_price"

.field public static final VIEW_BINDER_KEY_STAR_RATING:Ljava/lang/String; = "key_star_rating"

.field public static final VIEW_BINDER_KEY_STORE:Ljava/lang/String; = "key_store"


# instance fields
.field private final mViewBinder:Lcom/mopub/nativeads/ViewBinder;

.field private final mViewHolderMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/ViewBinder;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->mViewBinder:Lcom/mopub/nativeads/ViewBinder;

    .line 77
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->mViewHolderMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static insertGoogleNativeAdView(Lcom/google/android/gms/ads/formats/NativeAdView;Landroid/view/View;Z)V
    .registers 10

    .line 134
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4a

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_4a

    const/16 v0, 0x3ea

    .line 136
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->setId(I)V

    .line 137
    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz p2, :cond_38

    .line 146
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 150
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 154
    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/formats/NativeAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_40

    .line 157
    :cond_38
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/formats/NativeAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    :goto_40
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 162
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/formats/NativeAdView;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_51

    :cond_4a
    const-string p0, "MoPubToAdMobNative"

    const-string p1, "Couldn\'t add Google native ad view. Wrapping view not found."

    .line 165
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    return-void
.end method

.method protected static removeGoogleNativeAdView(Landroid/view/View;Z)V
    .registers 10

    .line 178
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_4f

    const/16 v0, 0x3ea

    .line 179
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 181
    check-cast p0, Landroid/view/ViewGroup;

    .line 182
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 183
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 184
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_46

    if-eqz p1, :cond_40

    .line 188
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 191
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v5, v6, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 197
    :cond_40
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 198
    invoke-virtual {p0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 201
    :cond_46
    instance-of p0, v0, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz p0, :cond_4f

    .line 202
    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->destroy()V

    :cond_4f
    return-void
.end method

.method private updateAppInstallAdView(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;)V
    .registers 9

    .line 272
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 273
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 274
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setHeadlineView(Landroid/view/View;)V

    .line 275
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mTextView:Landroid/widget/TextView;

    .line 276
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getText()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 277
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setBodyView(Landroid/view/View;)V

    .line 278
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mCallToActionView:Landroid/widget/TextView;

    .line 279
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 280
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mCallToActionView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setCallToActionView(Landroid/view/View;)V

    .line 282
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mMainImageView:Landroid/widget/ImageView;

    .line 281
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 283
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mMainImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setImageView(Landroid/view/View;)V

    .line 285
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mIconImageView:Landroid/widget/ImageView;

    .line 284
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 286
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setIconView(Landroid/view/View;)V

    .line 287
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 288
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mStarRatingTextView:Landroid/widget/TextView;

    .line 290
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%.1f/5 Stars"

    .line 289
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 291
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mStarRatingTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setStarRatingView(Landroid/view/View;)V

    .line 293
    :cond_6a
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 294
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mPriceTextView:Landroid/widget/TextView;

    .line 295
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getPrice()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 296
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mPriceTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setPriceView(Landroid/view/View;)V

    .line 298
    :cond_7e
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getStore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_92

    .line 299
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mStoreTextView:Landroid/widget/TextView;

    .line 300
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getStore()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 301
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mStoreTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setStoreView(Landroid/view/View;)V

    .line 306
    :cond_92
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mPrivacyInformationIconImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addPrivacyInformationIcon(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mAdChoicesIconContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b2

    .line 311
    new-instance v0, Lcom/google/android/gms/ads/formats/AdChoicesView;

    invoke-virtual {p3}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/formats/AdChoicesView;-><init>(Landroid/content/Context;)V

    .line 312
    iget-object v1, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mAdChoicesIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 313
    iget-object p2, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mAdChoicesIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 314
    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setAdChoicesView(Lcom/google/android/gms/ads/formats/AdChoicesView;)V

    .line 317
    :cond_b2
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getAppInstallAd()Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    return-void
.end method

.method private updateContentAdView(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;Lcom/google/android/gms/ads/formats/NativeContentAdView;)V
    .registers 6

    .line 221
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 222
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 223
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setHeadlineView(Landroid/view/View;)V

    .line 224
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mTextView:Landroid/widget/TextView;

    .line 225
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getText()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 226
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setBodyView(Landroid/view/View;)V

    .line 227
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mCallToActionView:Landroid/widget/TextView;

    .line 228
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 229
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mCallToActionView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setCallToActionView(Landroid/view/View;)V

    .line 230
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mMainImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 232
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mMainImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setImageView(Landroid/view/View;)V

    .line 233
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mIconImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 235
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setLogoView(Landroid/view/View;)V

    .line 236
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 237
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mAdvertiserTextView:Landroid/widget/TextView;

    .line 238
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 239
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mAdvertiserTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setAdvertiserView(Landroid/view/View;)V

    .line 243
    :cond_5a
    iget-object v0, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mAdChoicesIconContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_74

    .line 244
    new-instance v0, Lcom/google/android/gms/ads/formats/AdChoicesView;

    invoke-virtual {p3}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/formats/AdChoicesView;-><init>(Landroid/content/Context;)V

    .line 245
    iget-object v1, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mAdChoicesIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 246
    iget-object v1, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mAdChoicesIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 247
    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setAdChoicesView(Lcom/google/android/gms/ads/formats/AdChoicesView;)V

    .line 252
    :cond_74
    iget-object p2, p2, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mPrivacyInformationIconImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/mopub/nativeads/NativeRendererHelper;->addPrivacyInformationIcon(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->getContentAd()Lcom/google/android/gms/ads/formats/NativeContentAd;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    return-void
.end method


# virtual methods
.method public createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->mViewBinder:Lcom/mopub/nativeads/ViewBinder;

    iget v1, v1, Lcom/mopub/nativeads/ViewBinder;->layoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 86
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x3e9

    .line 87
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 88
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string p1, "MoPubToAdMobNative"

    const-string p2, "Ad view created."

    .line 89
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public bridge synthetic renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BaseNativeAd;)V
    .registers 3

    .line 26
    check-cast p2, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)V

    return-void
.end method

.method public renderAdView(Landroid/view/View;Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)V
    .registers 6

    .line 96
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->mViewHolderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;

    if-nez v0, :cond_15

    .line 98
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->mViewBinder:Lcom/mopub/nativeads/ViewBinder;

    invoke-static {p1, v0}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->fromViewBinder(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->mViewHolderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_15
    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->shouldSwapMargins()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->removeGoogleNativeAdView(Landroid/view/View;Z)V

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->isNativeAppInstallAd()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 106
    new-instance v1, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;-><init>(Landroid/content/Context;)V

    .line 107
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    invoke-direct {p0, p2, v0, v2}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->updateAppInstallAdView(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;)V

    goto :goto_48

    .line 108
    :cond_33
    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->isNativeContentAd()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 109
    new-instance v1, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/formats/NativeContentAdView;-><init>(Landroid/content/Context;)V

    .line 110
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    invoke-direct {p0, p2, v0, v2}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->updateContentAdView(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;Lcom/google/android/gms/ads/formats/NativeContentAdView;)V

    :cond_48
    :goto_48
    if-eqz v1, :cond_52

    .line 114
    invoke-virtual {p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->shouldSwapMargins()Z

    move-result p2

    invoke-static {v1, p1, p2}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->insertGoogleNativeAdView(Lcom/google/android/gms/ads/formats/NativeAdView;Landroid/view/View;Z)V

    goto :goto_59

    :cond_52
    const-string p1, "MoPubToAdMobNative"

    const-string p2, "Couldn\'t add Google native ad view. NativeAdView is null."

    .line 116
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_59
    return-void
.end method

.method public supports(Lcom/mopub/nativeads/BaseNativeAd;)Z
    .registers 2

    .line 322
    instance-of p1, p1, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    return p1
.end method
