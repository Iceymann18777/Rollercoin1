.class public Lcom/startapp/android/publish/ads/banner/BannerOptions;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adsNumber:I

.field private delayFaceTime:I

.field private effect:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;
    .end annotation
.end field

.field private height:I

.field private heightRatio:F

.field private htmlAdsNumber:I

.field private minScale:F

.field private minViewabilityPercentage:I

.field private refreshRate:I

.field private refreshRate3D:I

.field private rotateThroughOnStart:Z

.field private rotateThroughSpeedMult:I

.field private scalePower:I

.field private stepSize:I

.field private timeBetweenFrames:I

.field private width:I

.field private widthRatio:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 52
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->width:I

    const/16 v0, 0x32

    .line 53
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->height:I

    .line 54
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->minViewabilityPercentage:I

    const/16 v0, 0x19

    .line 57
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->timeBetweenFrames:I

    const/4 v0, 0x5

    .line 58
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->stepSize:I

    const/16 v0, 0x1388

    .line 59
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->delayFaceTime:I

    const/4 v0, 0x4

    .line 60
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->adsNumber:I

    const/16 v1, 0xa

    .line 61
    iput v1, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->htmlAdsNumber:I

    const v1, 0xea60

    .line 62
    iput v1, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->refreshRate3D:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 65
    iput v2, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->widthRatio:F

    .line 66
    iput v2, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->heightRatio:F

    const v2, 0x3f6147ae    # 0.88f

    .line 67
    iput v2, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->minScale:F

    .line 68
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->scalePower:I

    .line 69
    sget-object v0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->ROTATE_3D:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->effect:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->rotateThroughOnStart:Z

    const/4 v0, 0x2

    .line 72
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->rotateThroughSpeedMult:I

    .line 75
    iput v1, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->refreshRate:I

    return-void
.end method

.method public constructor <init>(Lcom/startapp/android/publish/ads/banner/BannerOptions;)V
    .registers 5

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 52
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->width:I

    const/16 v0, 0x32

    .line 53
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->height:I

    .line 54
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->minViewabilityPercentage:I

    const/16 v0, 0x19

    .line 57
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->timeBetweenFrames:I

    const/4 v0, 0x5

    .line 58
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->stepSize:I

    const/16 v0, 0x1388

    .line 59
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->delayFaceTime:I

    const/4 v0, 0x4

    .line 60
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->adsNumber:I

    const/16 v1, 0xa

    .line 61
    iput v1, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->htmlAdsNumber:I

    const v1, 0xea60

    .line 62
    iput v1, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->refreshRate3D:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 65
    iput v2, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->widthRatio:F

    .line 66
    iput v2, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->heightRatio:F

    const v2, 0x3f6147ae    # 0.88f

    .line 67
    iput v2, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->minScale:F

    .line 68
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->scalePower:I

    .line 69
    sget-object v0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->ROTATE_3D:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->effect:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->rotateThroughOnStart:Z

    const/4 v0, 0x2

    .line 72
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->rotateThroughSpeedMult:I

    .line 75
    iput v1, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->refreshRate:I

    .line 81
    iget v0, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->width:I

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->width:I

    .line 82
    iget v0, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->height:I

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->height:I

    .line 83
    iget v0, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->timeBetweenFrames:I

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->timeBetweenFrames:I

    .line 84
    iget v0, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->stepSize:I

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->stepSize:I

    .line 85
    iget v0, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->delayFaceTime:I

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->delayFaceTime:I

    .line 86
    iget v0, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->adsNumber:I

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->adsNumber:I

    .line 87
    iget v0, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->htmlAdsNumber:I

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->htmlAdsNumber:I

    .line 88
    iget v0, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->refreshRate3D:I

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->refreshRate3D:I

    .line 89
    iget v0, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->widthRatio:F

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->widthRatio:F

    .line 90
    iget v0, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->heightRatio:F

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->heightRatio:F

    .line 91
    iget v0, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->minScale:F

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->minScale:F

    .line 92
    iget v0, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->scalePower:I

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->scalePower:I

    .line 93
    iget-object v0, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->effect:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->effect:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    .line 94
    iget-boolean v0, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->rotateThroughOnStart:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->rotateThroughOnStart:Z

    .line 95
    iget v0, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->rotateThroughSpeedMult:I

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->rotateThroughSpeedMult:I

    .line 96
    iget p1, p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;->refreshRate:I

    iput p1, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->refreshRate:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 145
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->timeBetweenFrames:I

    return v0
.end method

.method public a(II)V
    .registers 3

    .line 112
    iput p1, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->width:I

    .line 113
    iput p2, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->height:I

    return-void
.end method

.method public b()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->stepSize:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->delayFaceTime:I

    return v0
.end method

.method public d()I
    .registers 2

    .line 157
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->width:I

    return v0
.end method

.method public e()I
    .registers 2

    .line 161
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->height:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 227
    check-cast p1, Lcom/startapp/android/publish/ads/banner/BannerOptions;

    .line 228
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->f()I

    move-result v1

    if-ne v0, v1, :cond_5e

    .line 229
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->g()I

    move-result v1

    if-ne v0, v1, :cond_5e

    .line 230
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->h()I

    move-result v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->h()I

    move-result v1

    if-ne v0, v1, :cond_5e

    .line 231
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->c()I

    move-result v1

    if-ne v0, v1, :cond_5e

    .line 232
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->e()I

    move-result v1

    if-ne v0, v1, :cond_5e

    .line 233
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->b()I

    move-result v1

    if-ne v0, v1, :cond_5e

    .line 234
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->a()I

    move-result v1

    if-ne v0, v1, :cond_5e

    .line 235
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->d()I

    move-result v1

    if-ne v0, v1, :cond_5e

    .line 236
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->i()I

    move-result p1

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->i()I

    move-result v0

    if-ne p1, v0, :cond_5e

    const/4 p1, 0x1

    goto :goto_5f

    :cond_5e
    const/4 p1, 0x0

    :goto_5f
    return p1
.end method

.method public f()I
    .registers 2

    .line 165
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->adsNumber:I

    return v0
.end method

.method public g()I
    .registers 2

    .line 169
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->htmlAdsNumber:I

    return v0
.end method

.method public h()I
    .registers 2

    .line 177
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->refreshRate3D:I

    return v0
.end method

.method public i()I
    .registers 2

    .line 181
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->refreshRate:I

    return v0
.end method

.method public j()F
    .registers 2

    .line 185
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->widthRatio:F

    return v0
.end method

.method public k()F
    .registers 2

    .line 189
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->heightRatio:F

    return v0
.end method

.method public l()F
    .registers 2

    .line 193
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->minScale:F

    return v0
.end method

.method public m()I
    .registers 2

    .line 197
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->scalePower:I

    return v0
.end method

.method public n()Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->effect:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    return-object v0
.end method

.method public o()Z
    .registers 2

    .line 205
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->rotateThroughOnStart:Z

    return v0
.end method

.method public p()I
    .registers 2

    .line 213
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->rotateThroughSpeedMult:I

    return v0
.end method

.method public q()I
    .registers 2

    .line 221
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions;->minViewabilityPercentage:I

    return v0
.end method
