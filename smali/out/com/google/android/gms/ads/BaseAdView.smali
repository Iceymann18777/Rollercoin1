.class Lcom/google/android/gms/ads/BaseAdView;
.super Landroid/view/ViewGroup;


# instance fields
.field protected final zzut:Lcom/google/android/gms/internal/ads/zzly;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzly;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Landroid/view/ViewGroup;I)V

    iput-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzly;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V

    iput-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzly;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V

    iput-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzly;->destroy()V

    return-void
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzly;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzly;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzly;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzly;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzly;->isLoading()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzay()Lcom/google/android/gms/internal/ads/zzlw;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzly;->zza(Lcom/google/android/gms/internal/ads/zzlw;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/BaseAdView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    sub-int/2addr p5, v1

    div-int/lit8 p5, p5, 0x2

    add-int/2addr v0, p4

    add-int/2addr v1, p5

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_24
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/BaseAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1b

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_39

    :cond_1b
    const/4 v1, 0x0

    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v2

    const-string v3, "Unable to retrieve ad size."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_27
    if-eqz v1, :cond_38

    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    move v1, v0

    move v0, v2

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setMeasuredDimension(II)V

    return-void
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzly;->pause()V

    return-void
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzly;->resume()V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzly;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzly;->zza(Lcom/google/android/gms/internal/ads/zzjd;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzly;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    return-void

    :cond_13
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzjd;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzjd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzly;->zza(Lcom/google/android/gms/internal/ads/zzjd;)V

    :cond_1f
    instance-of v0, p1, Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    check-cast p1, Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzly;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    :cond_2a
    return-void
.end method

.method public setAdSize(Lcom/google/android/gms/ads/AdSize;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzly;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzut:Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzly;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method
