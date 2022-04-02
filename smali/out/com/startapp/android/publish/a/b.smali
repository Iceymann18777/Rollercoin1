.class public Lcom/startapp/android/publish/a/b;
.super Landroid/widget/LinearLayout;
.source "StartAppSDK"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lcom/startapp/android/publish/a/b$1;

    invoke-direct {v0}, Lcom/startapp/android/publish/a/b$1;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/a/b;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v0

    .line 67
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v1

    .line 69
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/a/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/startapp/android/publish/adsCommon/Utils/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_31

    .line 74
    sget-object v3, Lcom/startapp/android/publish/a/b;->a:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/startapp/common/a/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 76
    :cond_31
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/b;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v4, 0xf

    invoke-static {p1, v4}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/startapp/android/publish/a/b;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v3, p1, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 78
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 79
    invoke-virtual {v2, v0, p1, p1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/a/b;->addView(Landroid/view/View;)V
    :try_end_52
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_52} :catch_52

    :catch_52
    return-void
.end method


# virtual methods
.method public setRating(F)V
    .registers 7

    .line 43
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/b;->removeAllViews()V

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    .line 45
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v1, v0

    sub-float/2addr p1, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v2

    if-nez p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    rsub-int/lit8 v2, v0, 0x5

    sub-int/2addr v2, p1

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v0, :cond_2d

    const-string v4, "filled_star.png"

    .line 51
    invoke-direct {p0, v4}, Lcom/startapp/android/publish/a/b;->a(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_2d
    if-eqz p1, :cond_34

    const-string p1, "half_star.png"

    .line 55
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/a/b;->a(Ljava/lang/String;)V

    :cond_34
    :goto_34
    if-ge v1, v2, :cond_3e

    const-string p1, "empty_star.png"

    .line 59
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/a/b;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_3e
    return-void
.end method
