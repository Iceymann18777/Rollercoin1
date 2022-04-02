.class public Lcom/appnext/ads/fullscreen/Circle;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final au:I = 0xb4


# instance fields
.field private av:Landroid/graphics/Paint;

.field private aw:Landroid/graphics/RectF;

.field private ax:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/appnext/ads/fullscreen/Circle;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/appnext/ads/fullscreen/Circle;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 2

    .line 71
    invoke-static {p0, p1}, Lcom/appnext/core/f;->a(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 7

    const/high16 v0, 0x40a00000    # 5.0f

    .line 1071
    invoke-static {p1, v0}, Lcom/appnext/core/f;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 36
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/appnext/ads/fullscreen/Circle;->av:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 37
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/Circle;->av:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/Circle;->av:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/Circle;->av:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/Circle;->av:Landroid/graphics/Paint;

    const/16 v3, 0x80

    const/4 v4, 0x0

    .line 45
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    .line 41
    invoke-virtual {v1, v4, v4, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 47
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/Circle;->av:Landroid/graphics/Paint;

    invoke-virtual {p0, v2, v1}, Lcom/appnext/ads/fullscreen/Circle;->setLayerType(ILandroid/graphics/Paint;)V

    .line 50
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x41a00000    # 20.0f

    .line 2071
    invoke-static {p1, v2}, Lcom/appnext/core/f;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    .line 3071
    invoke-static {p1, v2}, Lcom/appnext/core/f;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 50
    invoke-direct {v1, v0, v0, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/appnext/ads/fullscreen/Circle;->aw:Landroid/graphics/RectF;

    const/high16 p1, 0x43b40000    # 360.0f

    .line 53
    iput p1, p0, Lcom/appnext/ads/fullscreen/Circle;->ax:F

    return-void
.end method


# virtual methods
.method public getAngle()F
    .registers 2

    .line 63
    iget v0, p0, Lcom/appnext/ads/fullscreen/Circle;->ax:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/Circle;->aw:Landroid/graphics/RectF;

    iget v3, p0, Lcom/appnext/ads/fullscreen/Circle;->ax:F

    iget-object v5, p0, Lcom/appnext/ads/fullscreen/Circle;->av:Landroid/graphics/Paint;

    const/high16 v2, 0x43340000    # 180.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public setAngle(F)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/appnext/ads/fullscreen/Circle;->ax:F

    return-void
.end method
