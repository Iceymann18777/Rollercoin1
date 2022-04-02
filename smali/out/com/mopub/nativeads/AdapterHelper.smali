.class public final Lcom/mopub/nativeads/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterval:I

.field private final mStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 8

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context cannot be null."

    .line 35
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    const-string v3, "start position must be non-negative"

    .line 36
    invoke-static {v2, v3}, Lcom/mopub/common/Preconditions;->checkArgument(ZLjava/lang/String;)V

    const/4 v2, 0x2

    if-lt p3, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    const-string v1, "interval must be at least 2"

    .line 37
    invoke-static {v0, v1}, Lcom/mopub/common/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/nativeads/AdapterHelper;->mContext:Ljava/lang/ref/WeakReference;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/AdapterHelper;->mApplicationContext:Landroid/content/Context;

    .line 41
    iput p2, p0, Lcom/mopub/nativeads/AdapterHelper;->mStart:I

    .line 42
    iput p3, p0, Lcom/mopub/nativeads/AdapterHelper;->mInterval:I

    return-void
.end method

.method private numberOfAdsSeenUpToPosition(I)I
    .registers 6

    .line 94
    iget v0, p0, Lcom/mopub/nativeads/AdapterHelper;->mStart:I

    if-gt p1, v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    sub-int/2addr p1, v0

    int-to-double v0, p1

    .line 99
    iget p1, p0, Lcom/mopub/nativeads/AdapterHelper;->mInterval:I

    int-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private numberOfAdsThatCouldFitWithContent(I)I
    .registers 6

    .line 106
    iget v0, p0, Lcom/mopub/nativeads/AdapterHelper;->mStart:I

    if-gt p1, v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 110
    :cond_6
    iget v1, p0, Lcom/mopub/nativeads/AdapterHelper;->mInterval:I

    add-int/lit8 v1, v1, -0x1

    sub-int v2, p1, v0

    .line 111
    rem-int/2addr v2, v1

    if-nez v2, :cond_12

    sub-int/2addr p1, v0

    .line 113
    div-int/2addr p1, v1

    return p1

    :cond_12
    sub-int/2addr p1, v0

    int-to-double v2, p1

    int-to-double v0, v1

    .line 116
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method clearContext()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/mopub/nativeads/AdapterHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public getAdView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/mopub/nativeads/NativeAd;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mopub/nativeads/AdapterHelper;->getAdView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/mopub/nativeads/NativeAd;Lcom/mopub/nativeads/ViewBinder;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getAdView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/mopub/nativeads/NativeAd;Lcom/mopub/nativeads/ViewBinder;)Landroid/view/View;
    .registers 5

    .line 50
    iget-object p4, p0, Lcom/mopub/nativeads/AdapterHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    if-nez p4, :cond_1f

    .line 52
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string p4, "Weak reference to Context in AdapterHelper became null. Returning empty view."

    aput-object p4, p2, p3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 54
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/mopub/nativeads/AdapterHelper;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 57
    :cond_1f
    invoke-static {p1, p2, p4, p3}, Lcom/mopub/nativeads/NativeAdViewHelper;->getAdView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/mopub/nativeads/NativeAd;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isAdPosition(I)Z
    .registers 4

    .line 83
    iget v0, p0, Lcom/mopub/nativeads/AdapterHelper;->mStart:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_6

    return v1

    :cond_6
    sub-int/2addr p1, v0

    .line 87
    iget v0, p0, Lcom/mopub/nativeads/AdapterHelper;->mInterval:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public shiftedCount(I)I
    .registers 3

    .line 74
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/AdapterHelper;->numberOfAdsThatCouldFitWithContent(I)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public shiftedPosition(I)I
    .registers 3

    .line 79
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/AdapterHelper;->numberOfAdsSeenUpToPosition(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method
