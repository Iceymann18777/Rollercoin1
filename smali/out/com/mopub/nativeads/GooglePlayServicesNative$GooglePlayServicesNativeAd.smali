.class Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;
.super Lcom/mopub/nativeads/BaseNativeAd;
.source "GooglePlayServicesNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/GooglePlayServicesNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GooglePlayServicesNativeAd"
.end annotation


# instance fields
.field private mAdvertiser:Ljava/lang/String;

.field private mCallToAction:Ljava/lang/String;

.field private mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

.field private mIconImageUrl:Ljava/lang/String;

.field private mMainImageUrl:Ljava/lang/String;

.field private mNativeAppInstallAd:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

.field private mNativeContentAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

.field private mPrice:Ljava/lang/String;

.field private mStarRating:Ljava/lang/Double;

.field private mStore:Ljava/lang/String;

.field private mSwapMargins:Z

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V
    .registers 2

    .line 124
    invoke-direct {p0}, Lcom/mopub/nativeads/BaseNativeAd;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)Z
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->isValidAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/google/android/gms/ads/formats/NativeAppInstallAd;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mNativeAppInstallAd:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    return-object p0
.end method

.method static synthetic access$202(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)Lcom/google/android/gms/ads/formats/NativeAppInstallAd;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mNativeAppInstallAd:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Landroid/content/Context;Ljava/util/List;)V
    .registers 3

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->preCacheImages(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/google/android/gms/ads/formats/NativeContentAd;)Z
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->isValidContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/google/android/gms/ads/formats/NativeContentAd;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mNativeContentAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    return-object p0
.end method

.method static synthetic access$502(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/google/android/gms/ads/formats/NativeContentAd;)Lcom/google/android/gms/ads/formats/NativeContentAd;
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mNativeContentAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->prepareNativeContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->prepareNativeAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    return-void
.end method

.method private isValidAdChoicesPlacementExtra(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 458
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_8

    goto :goto_26

    .line 461
    :cond_8
    check-cast p1, Ljava/lang/Integer;

    .line 462
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    .line 463
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_25

    .line 464
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_25

    .line 465
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_26

    :cond_25
    const/4 v0, 0x1

    :cond_26
    :goto_26
    return v0
.end method

.method private isValidAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)Z
    .registers 4

    .line 494
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 495
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 496
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 497
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_34

    const/4 v1, 0x1

    :cond_34
    return v1
.end method

.method private isValidContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd;)Z
    .registers 4

    .line 478
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 479
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 480
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 481
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_34

    const/4 v1, 0x1

    :cond_34
    return v1
.end method

.method private isValidOrientationExtra(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    .line 440
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_8

    goto :goto_1f

    .line 443
    :cond_8
    check-cast p1, Ljava/lang/Integer;

    .line 444
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    .line 445
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1e

    .line 446
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_1f

    :cond_1e
    const/4 v0, 0x1

    :cond_1f
    :goto_1f
    return v0
.end method

.method private preCacheImages(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 531
    new-instance v0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$4;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$4;-><init>(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)V

    invoke-static {p1, p2, v0}, Lcom/mopub/nativeads/NativeImageHelper;->preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V

    return-void
.end method

.method private prepareNativeAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V
    .registers 4

    .line 583
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 584
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->setCallToAction(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->setTitle(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->setText(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 596
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 600
    :cond_53
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getStore()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 601
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getStore()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->setStore(Ljava/lang/String;)V

    .line 605
    :cond_64
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getPrice()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 606
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getPrice()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->setPrice(Ljava/lang/String;)V

    :cond_75
    return-void
.end method

.method private prepareNativeContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .registers 4

    .line 560
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 561
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    .line 564
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->setCallToAction(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->setTitle(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->setText(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getAdvertiser()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->setAdvertiser(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 3

    .line 509
    invoke-virtual {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->shouldSwapMargins()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;->removeGoogleNativeAdView(Landroid/view/View;Z)V

    return-void
.end method

.method public destroy()V
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mNativeContentAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz v0, :cond_7

    .line 516
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeContentAd;->destroy()V

    .line 518
    :cond_7
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mNativeAppInstallAd:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    if-eqz v0, :cond_e

    .line 519
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->destroy()V

    :cond_e
    return-void
.end method

.method public getAdvertiser()Ljava/lang/String;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mAdvertiser:Ljava/lang/String;

    return-object v0
.end method

.method public getAppInstallAd()Lcom/google/android/gms/ads/formats/NativeAppInstallAd;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mNativeAppInstallAd:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mCallToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getContentAd()Lcom/google/android/gms/ads/formats/NativeContentAd;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mNativeContentAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMainImageUrl()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()Ljava/lang/Double;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mStarRating:Ljava/lang/Double;

    return-object v0
.end method

.method public getStore()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mStore:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isNativeAppInstallAd()Z
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mNativeAppInstallAd:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isNativeContentAd()Z
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mNativeContentAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 297
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "swap_margins"

    .line 300
    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 301
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 302
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1d

    .line 303
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mSwapMargins:Z

    .line 307
    :cond_1d
    new-instance p2, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    const/4 v1, 0x1

    .line 311
    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    const/4 v1, 0x0

    .line 314
    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    const-string v1, "orientation_preference"

    .line 317
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 318
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->isValidOrientationExtra(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 320
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 319
    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    :cond_49
    const-string v1, "ad_choices_placement"

    .line 324
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 326
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 325
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->isValidAdChoicesPlacementExtra(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 328
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 327
    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 330
    :cond_68
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object p2

    .line 332
    new-instance p3, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$3;

    invoke-direct {p3, p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$3;-><init>(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Landroid/content/Context;)V

    .line 333
    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->forContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p3

    new-instance v0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$2;

    invoke-direct {v0, p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$2;-><init>(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Landroid/content/Context;)V

    .line 361
    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->forAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    new-instance p3, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$1;

    invoke-direct {p3, p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$1;-><init>(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)V

    .line 389
    invoke-virtual {p1, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    .line 427
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    .line 428
    new-instance p2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string p3, "MoPub"

    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public setAdvertiser(Ljava/lang/String;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mAdvertiser:Ljava/lang/String;

    return-void
.end method

.method public setCallToAction(Ljava/lang/String;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mCallToAction:Ljava/lang/String;

    return-void
.end method

.method public setIconImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setMainImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .registers 2

    .line 251
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mPrice:Ljava/lang/String;

    return-void
.end method

.method public setStarRating(Ljava/lang/Double;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mStarRating:Ljava/lang/Double;

    return-void
.end method

.method public setStore(Ljava/lang/String;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mStore:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mText:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public shouldSwapMargins()Z
    .registers 2

    .line 265
    iget-boolean v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->mSwapMargins:Z

    return v0
.end method
