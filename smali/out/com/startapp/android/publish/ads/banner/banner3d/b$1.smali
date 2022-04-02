.class Lcom/startapp/android/publish/ads/banner/banner3d/b$1;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/banner/banner3d/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/banner/banner3d/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/banner/banner3d/b;Landroid/graphics/drawable/shapes/Shape;)V
    .registers 3

    .line 232
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/b$1;->a:Lcom/startapp/android/publish/ads/banner/banner3d/b;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 9

    const v0, -0xad62fe

    .line 237
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    new-instance v0, Landroid/graphics/EmbossMaskFilter;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_20

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 240
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/ShapeDrawable;->onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void

    nop

    :array_20
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
