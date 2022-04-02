.class public Lcom/startapp/android/publish/adsCommon/o;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final a:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/o;->a:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroid/view/View;)Z
    .registers 4

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method private static a(Landroid/view/View;Landroid/view/View;I)Z
    .registers 12

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    .line 59
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 63
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v6, v1, v5

    aget v7, v1, v3

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v1, v1, v5

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v1, v8

    invoke-direct {v2, v4, v6, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    aget v4, v0, v3

    aget v6, v0, v5

    aget v7, v0, v3

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v0, v0, v5

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {v1, v4, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    iget p1, v2, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->right:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 75
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v1, p1

    int-to-long v6, v0

    mul-long v1, v1, v6

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-long v6, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-long p0, p0

    mul-long v6, v6, p0

    const-wide/16 p0, 0x0

    cmp-long v0, v1, p0

    if-lez v0, :cond_87

    const-wide/16 p0, 0x64

    mul-long v1, v1, p0

    int-to-long p0, p2

    mul-long p0, p0, v6

    cmp-long p2, v1, p0

    if-lez p2, :cond_87

    const/4 v3, 0x1

    :cond_87
    return v3
.end method


# virtual methods
.method public a(Landroid/view/View;I)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_8b

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/o;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_8b

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8b

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_26

    goto :goto_8b

    .line 28
    :cond_26
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/o;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v0

    .line 33
    :cond_2f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_5d

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 35
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    :goto_43
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_5d

    .line 36
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 37
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5a

    invoke-static {p1, v4, v0}, Lcom/startapp/android/publish/adsCommon/o;->a(Landroid/view/View;Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_5a

    return v0

    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 45
    :cond_5d
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/o;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-long v3, v1

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/o;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-long v5, v1

    mul-long v3, v3, v5

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-long v7, p1

    mul-long v5, v5, v7

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_8b

    const-wide/16 v7, 0x64

    mul-long v3, v3, v7

    int-to-long p1, p2

    mul-long p1, p1, v5

    cmp-long v1, v3, p1

    if-ltz v1, :cond_8b

    const/4 v0, 0x1

    :cond_8b
    :goto_8b
    return v0
.end method
