.class public final Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private final zzvp:Landroid/widget/FrameLayout;

.field private final zzvq:Lcom/google/android/gms/internal/ads/zzqa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzb(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvp:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzbf()Lcom/google/android/gms/internal/ads/zzqa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvq:Lcom/google/android/gms/internal/ads/zzqa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzb(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvp:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzbf()Lcom/google/android/gms/internal/ads/zzqa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvq:Lcom/google/android/gms/internal/ads/zzqa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzb(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvp:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzbf()Lcom/google/android/gms/internal/ads/zzqa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvq:Lcom/google/android/gms/internal/ads/zzqa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzb(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvp:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzbf()Lcom/google/android/gms/internal/ads/zzqa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvq:Lcom/google/android/gms/internal/ads/zzqa;

    return-void
.end method

.method private final zza(Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvq:Lcom/google/android/gms/internal/ads/zzqa;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqa;->zzb(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    const-string p2, "Unable to call setAssetView on delegate"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzb(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 4

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private final zzbf()Lcom/google/android/gms/internal/ads/zzqa;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvp:Landroid/widget/FrameLayout;

    const-string v1, "createDelegate must be called after overlayFrame has been created"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzig()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvp:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvp:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzqa;

    move-result-object v0

    return-object v0
.end method

.method private final zzp(Ljava/lang/String;)Landroid/view/View;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvq:Lcom/google/android/gms/internal/ads/zzqa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqa;->zzak(Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    const-string v0, "Unable to call getAssetView on delegate"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvp:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public final bringChildToFront(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvp:Landroid/widget/FrameLayout;

    if-eq v0, p1, :cond_a

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method public final destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvq:Lcom/google/android/gms/internal/ads/zzqa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqa;->destroy()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, "Unable to destroy native ad view"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAdChoicesView()Lcom/google/android/gms/ads/formats/AdChoicesView;
    .registers 3

    const-string v0, "3011"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/ads/formats/AdChoicesView;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/google/android/gms/ads/formats/AdChoicesView;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdvertiserView()Landroid/view/View;
    .registers 2

    const-string v0, "3005"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getBodyView()Landroid/view/View;
    .registers 2

    const-string v0, "3004"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getCallToActionView()Landroid/view/View;
    .registers 2

    const-string v0, "3002"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadlineView()Landroid/view/View;
    .registers 2

    const-string v0, "3001"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getIconView()Landroid/view/View;
    .registers 2

    const-string v0, "3003"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getImageView()Landroid/view/View;
    .registers 2

    const-string v0, "3008"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaView()Lcom/google/android/gms/ads/formats/MediaView;
    .registers 3

    const-string v0, "3010"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/ads/formats/MediaView;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/google/android/gms/ads/formats/MediaView;

    return-object v0

    :cond_d
    if-eqz v0, :cond_14

    const-string v0, "View is not an instance of MediaView"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPriceView()Landroid/view/View;
    .registers 2

    const-string v0, "3007"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getStarRatingView()Landroid/view/View;
    .registers 2

    const-string v0, "3009"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getStoreView()Landroid/view/View;
    .registers 2

    const-string v0, "3006"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvq:Lcom/google/android/gms/internal/ads/zzqa;

    if-eqz v0, :cond_15

    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqa;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p1

    const-string p2, "Unable to call onVisibilityChanged on delegate"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    return-void
.end method

.method public final removeAllViews()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvp:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvp:Landroid/widget/FrameLayout;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final setAdChoicesView(Lcom/google/android/gms/ads/formats/AdChoicesView;)V
    .registers 3

    const-string v0, "3011"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setAdvertiserView(Landroid/view/View;)V
    .registers 3

    const-string v0, "3005"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setBodyView(Landroid/view/View;)V
    .registers 3

    const-string v0, "3004"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setCallToActionView(Landroid/view/View;)V
    .registers 3

    const-string v0, "3002"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setClickConfirmingView(Landroid/view/View;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvq:Lcom/google/android/gms/internal/ads/zzqa;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqa;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    const-string v0, "Unable to call setClickConfirmingView on delegate"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setHeadlineView(Landroid/view/View;)V
    .registers 3

    const-string v0, "3001"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setIconView(Landroid/view/View;)V
    .registers 3

    const-string v0, "3003"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setImageView(Landroid/view/View;)V
    .registers 3

    const-string v0, "3008"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setMediaView(Lcom/google/android/gms/ads/formats/MediaView;)V
    .registers 3

    const-string v0, "3010"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zzvq:Lcom/google/android/gms/internal/ads/zzqa;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->zzbe()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqa;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    const-string v0, "Unable to call setNativeAd on delegate"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setPriceView(Landroid/view/View;)V
    .registers 3

    const-string v0, "3007"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setStarRatingView(Landroid/view/View;)V
    .registers 3

    const-string v0, "3009"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setStoreView(Landroid/view/View;)V
    .registers 3

    const-string v0, "3006"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
