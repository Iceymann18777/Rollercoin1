.class final Lcom/appnext/ads/fullscreen/g$a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/ads/fullscreen/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic bD:Lcom/appnext/ads/fullscreen/g;

.field final bH:I

.field bI:I

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/appnext/ads/fullscreen/g;Landroid/view/View;II)V
    .registers 5

    .line 371
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/g$a;->bD:Lcom/appnext/ads/fullscreen/g;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 372
    iput-object p2, p0, Lcom/appnext/ads/fullscreen/g$a;->view:Landroid/view/View;

    .line 373
    iput p3, p0, Lcom/appnext/ads/fullscreen/g$a;->bH:I

    .line 374
    iput p4, p0, Lcom/appnext/ads/fullscreen/g$a;->bI:I

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    .line 381
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/g$a;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/appnext/ads/fullscreen/g$a;->bI:I

    int-to-float v1, v0

    iget v2, p0, Lcom/appnext/ads/fullscreen/g$a;->bH:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 382
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g$a;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final willChangeBounds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
