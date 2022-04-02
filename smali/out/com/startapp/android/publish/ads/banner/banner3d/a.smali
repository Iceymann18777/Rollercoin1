.class public Lcom/startapp/android/publish/ads/banner/banner3d/a;
.super Lcom/startapp/android/publish/adsCommon/h;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fixedSize:Z

.field private offset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 17
    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/h;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    .line 18
    iput p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/a;->offset:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/a;->offset:I

    return v0
.end method

.method public a(Z)V
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/a;->fixedSize:Z

    return-void
.end method

.method public b()Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/a;->fixedSize:Z

    return v0
.end method

.method protected loadAds(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 10

    .line 23
    new-instance v6, Lcom/startapp/android/publish/ads/banner/banner3d/c;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/a;->context:Landroid/content/Context;

    iget v3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/a;->offset:I

    move-object v0, v6

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/ads/banner/banner3d/c;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/banner/banner3d/a;ILcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    invoke-virtual {v6}, Lcom/startapp/android/publish/ads/banner/banner3d/c;->c()V

    .line 24
    iget p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/a;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/a;->offset:I

    return-void
.end method
