.class public Lcom/startapp/android/publish/adsCommon/Utils/h;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Landroid/content/Context;I)I
    .registers 3

    int-to-float p1, p1

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 92
    invoke-static {p0, p1}, Lcom/startapp/android/publish/adsCommon/Utils/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)Landroid/widget/ImageView;
    .registers 4

    .line 97
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setId(I)V

    return-object p1
.end method

.method public static a(Landroid/content/Context;[I[I)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 7

    .line 70
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 73
    :goto_8
    array-length v3, p2

    if-ge v2, v3, :cond_13

    .line 74
    aget v3, p2, v2

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_13
    const/4 p2, 0x0

    .line 76
    :goto_14
    array-length v2, p1

    if-ge p2, v2, :cond_28

    .line 77
    aget v2, p1, p2

    if-nez v2, :cond_1d

    const/4 v2, 0x0

    goto :goto_23

    :cond_1d
    aget v2, p1, p2

    invoke-static {p0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v2

    :goto_23
    aput v2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    .line 80
    :cond_28
    aget p0, p1, v1

    const/4 p2, 0x1

    aget p2, p1, p2

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x3

    aget p1, p1, v2

    invoke-virtual {v0, p0, p2, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;[I[III)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 5

    .line 86
    invoke-static {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;[I[I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    .line 87
    invoke-virtual {p0, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/widget/TextView;Landroid/graphics/Typeface;IFII)Landroid/widget/TextView;
    .registers 7

    .line 58
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 p0, 0x1

    .line 60
    invoke-virtual {p1, p0, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 62
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 63
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setId(I)V

    return-object p1
.end method

.method public static a(Landroid/content/Context;Landroid/view/WindowManager;Landroid/graphics/Point;)V
    .registers 5

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_e

    .line 105
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_22

    .line 107
    :cond_e
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 108
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 110
    :goto_22
    iget p1, p2, Landroid/graphics/Point;->x:I

    invoke-static {p0, p1}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 111
    iget p1, p2, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public static a(Landroid/view/WindowManager;Landroid/graphics/Point;)V
    .registers 4

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_e

    .line 116
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_22

    .line 118
    :cond_e
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 119
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    :goto_22
    return-void
.end method

.method public static a(Landroid/widget/TextView;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UNDERLINE"

    .line 41
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 42
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    :cond_11
    const/4 v0, 0x0

    const-string v1, "BOLD"

    .line 46
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "ITALIC"

    if-eqz v2, :cond_24

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v0, 0x3

    goto :goto_33

    .line 48
    :cond_24
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v0, 0x1

    goto :goto_33

    .line 50
    :cond_2c
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    const/4 v0, 0x2

    :cond_33
    :goto_33
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method public static b(Landroid/content/Context;I)I
    .registers 2

    int-to-float p1, p1

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
