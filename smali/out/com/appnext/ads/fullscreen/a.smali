.class public final Lcom/appnext/ads/fullscreen/a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private aA:F

.field private ay:Lcom/appnext/ads/fullscreen/Circle;

.field private az:F


# direct methods
.method public constructor <init>(Lcom/appnext/ads/fullscreen/Circle;F)V
    .registers 4

    .line 14
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 15
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/appnext/ads/fullscreen/a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 16
    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/Circle;->getAngle()F

    move-result v0

    iput v0, p0, Lcom/appnext/ads/fullscreen/a;->az:F

    .line 17
    iput p2, p0, Lcom/appnext/ads/fullscreen/a;->aA:F

    .line 18
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/a;->ay:Lcom/appnext/ads/fullscreen/Circle;

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 4

    .line 23
    iget p2, p0, Lcom/appnext/ads/fullscreen/a;->az:F

    iget v0, p0, Lcom/appnext/ads/fullscreen/a;->aA:F

    sub-float v0, p2, v0

    mul-float v0, v0, p1

    sub-float/2addr p2, v0

    .line 25
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/a;->ay:Lcom/appnext/ads/fullscreen/Circle;

    invoke-virtual {p1, p2}, Lcom/appnext/ads/fullscreen/Circle;->setAngle(F)V

    .line 26
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/a;->ay:Lcom/appnext/ads/fullscreen/Circle;

    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/Circle;->invalidate()V

    .line 27
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/a;->ay:Lcom/appnext/ads/fullscreen/Circle;

    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/Circle;->requestLayout()V

    return-void
.end method
