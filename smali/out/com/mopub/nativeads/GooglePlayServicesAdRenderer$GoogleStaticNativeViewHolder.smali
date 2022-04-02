.class Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;
.super Ljava/lang/Object;
.source "GooglePlayServicesAdRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleStaticNativeViewHolder"
.end annotation


# static fields
.field private static final EMPTY_VIEW_HOLDER:Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;


# instance fields
.field mAdChoicesIconContainer:Landroid/widget/FrameLayout;

.field mAdvertiserTextView:Landroid/widget/TextView;

.field mCallToActionView:Landroid/widget/TextView;

.field mIconImageView:Landroid/widget/ImageView;

.field mMainImageView:Landroid/widget/ImageView;

.field mMainView:Landroid/view/View;

.field mPriceTextView:Landroid/widget/TextView;

.field mPrivacyInformationIconImageView:Landroid/widget/ImageView;

.field mStarRatingTextView:Landroid/widget/TextView;

.field mStoreTextView:Landroid/widget/TextView;

.field mTextView:Landroid/widget/TextView;

.field mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 351
    new-instance v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;

    invoke-direct {v0}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->EMPTY_VIEW_HOLDER:Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromViewBinder(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;
    .registers 4

    .line 357
    new-instance v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;

    invoke-direct {v0}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;-><init>()V

    .line 358
    iput-object p0, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mMainView:Landroid/view/View;

    .line 360
    :try_start_7
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->titleId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 361
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->textId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mTextView:Landroid/widget/TextView;

    .line 362
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->callToActionId:I

    .line 363
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mCallToActionView:Landroid/widget/TextView;

    .line 364
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->mainImageId:I

    .line 365
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mMainImageView:Landroid/widget/ImageView;

    .line 366
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->iconImageId:I

    .line 367
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mIconImageView:Landroid/widget/ImageView;

    .line 368
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->privacyInformationIconImageId:I

    .line 369
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mPrivacyInformationIconImageView:Landroid/widget/ImageView;

    .line 370
    iget-object p1, p1, Lcom/mopub/nativeads/ViewBinder;->extras:Ljava/util/Map;

    const-string v1, "key_star_rating"

    .line 371
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_5b

    .line 374
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mStarRatingTextView:Landroid/widget/TextView;

    :cond_5b
    const-string v1, "key_advertiser"

    .line 376
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_71

    .line 379
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mAdvertiserTextView:Landroid/widget/TextView;

    :cond_71
    const-string v1, "key_store"

    .line 381
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_87

    .line 383
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mStoreTextView:Landroid/widget/TextView;

    :cond_87
    const-string v1, "key_price"

    .line 385
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_9d

    .line 387
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mPriceTextView:Landroid/widget/TextView;

    :cond_9d
    const-string v1, "ad_choices_container"

    .line 390
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_b3

    .line 393
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    iput-object p0, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->mAdChoicesIconContainer:Landroid/widget/FrameLayout;
    :try_end_b3
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_b3} :catch_b4

    :cond_b3
    return-object v0

    :catch_b4
    move-exception p0

    const-string p1, "Could not cast from id in ViewBinder to expected View type"

    .line 397
    invoke-static {p1, p0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    sget-object p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;->EMPTY_VIEW_HOLDER:Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$GoogleStaticNativeViewHolder;

    return-object p0
.end method
