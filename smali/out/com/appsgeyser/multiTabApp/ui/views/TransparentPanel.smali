.class public Lcom/appsgeyser/multiTabApp/ui/views/TransparentPanel;
.super Landroid/widget/RelativeLayout;
.source "TransparentPanel.java"


# instance fields
.field private borderPaint:Landroid/graphics/Paint;

.field private innerPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/ui/views/TransparentPanel;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/ui/views/TransparentPanel;->init()V

    return-void
.end method

.method private init()V
    .registers 5

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/TransparentPanel;->innerPaint:Landroid/graphics/Paint;

    const/16 v1, 0xe1

    const/16 v2, 0x4b

    .line 25
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 26
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/TransparentPanel;->innerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/TransparentPanel;->borderPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0xa0

    .line 29
    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 30
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/TransparentPanel;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/TransparentPanel;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/views/TransparentPanel;->borderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/views/TransparentPanel;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/views/TransparentPanel;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 49
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/views/TransparentPanel;->innerPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 50
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/views/TransparentPanel;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 52
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBorderPaint(Landroid/graphics/Paint;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/TransparentPanel;->borderPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setInnerPaint(Landroid/graphics/Paint;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/TransparentPanel;->innerPaint:Landroid/graphics/Paint;

    return-void
.end method
