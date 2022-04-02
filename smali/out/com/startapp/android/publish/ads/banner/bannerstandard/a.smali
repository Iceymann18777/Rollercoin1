.class public Lcom/startapp/android/publish/ads/banner/bannerstandard/a;
.super Lcom/startapp/android/publish/adsCommon/e;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bannerType:I

.field private fixedSize:Z

.field private offset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 19
    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/e;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->offset:I

    .line 20
    iput p2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->offset:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->offset:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 46
    iput p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->bannerType:I

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->fixedSize:Z

    return-void
.end method

.method public b()Z
    .registers 2

    .line 38
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->fixedSize:Z

    return v0
.end method

.method public c()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->bannerType:I

    return v0
.end method

.method protected loadAds(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 10

    .line 25
    new-instance v6, Lcom/startapp/android/publish/ads/banner/bannerstandard/b;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->context:Landroid/content/Context;

    iget v3, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->offset:I

    move-object v0, v6

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/ads/banner/bannerstandard/b;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/e;ILcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    invoke-virtual {v6}, Lcom/startapp/android/publish/ads/banner/bannerstandard/b;->c()V

    .line 26
    iget p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->offset:I

    return-void
.end method
