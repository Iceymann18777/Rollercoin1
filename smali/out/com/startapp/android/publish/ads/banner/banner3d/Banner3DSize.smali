.class public Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize$Size;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/Context;Landroid/view/ViewParent;Lcom/startapp/android/publish/ads/banner/BannerOptions;Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;)Lcom/startapp/android/publish/ads/banner/d;
    .registers 10

    .line 73
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 75
    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->d()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 76
    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->e()I

    move-result p2

    iput p2, v0, Landroid/graphics/Point;->y:I

    const-string p2, "Banner3DSize"

    const/4 v1, 0x3

    const-string v2, "=============== set Application Size ==========="

    .line 78
    invoke-static {p2, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    invoke-virtual {p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    invoke-virtual {p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_35

    .line 81
    invoke-virtual {p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v2, v3

    invoke-static {p0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 83
    :cond_35
    invoke-virtual {p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_50

    invoke-virtual {p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_50

    .line 84
    invoke-virtual {p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v2, v3

    invoke-static {p0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 86
    :cond_50
    invoke-virtual {p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_66

    invoke-virtual {p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_66

    invoke-virtual {p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz p3, :cond_f9

    .line 87
    :cond_66
    instance-of p3, p0, Landroid/app/Activity;

    if-eqz p3, :cond_d8

    const-string p3, "Context is Activity"

    .line 88
    invoke-static {p2, v1, p3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    move-object p3, p0

    check-cast p3, Landroid/app/Activity;

    .line 91
    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    .line 96
    :try_start_7a
    check-cast p1, Landroid/view/View;

    .line 97
    instance-of v2, p1, Lcom/startapp/android/publish/ads/banner/Banner;

    if-eqz v2, :cond_8d

    const-string v2, "Parent is instance of Wrapper Banner"

    .line 98
    invoke-static {p2, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    check-cast p1, Landroid/view/View;

    :cond_8d
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_8f
    if-eqz p1, :cond_be

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-lez v5, :cond_9d

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-gtz v5, :cond_be

    .line 103
    :cond_9d
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-lez v5, :cond_a9

    if-nez v2, :cond_a9

    .line 105
    invoke-static {p0, v0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize;->b(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V

    const/4 v2, 0x1

    .line 107
    :cond_a9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-lez v5, :cond_b5

    if-nez v4, :cond_b5

    .line 109
    invoke-static {p0, v0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize;->a(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V

    const/4 v4, 0x1

    .line 111
    :cond_b5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    check-cast p1, Landroid/view/View;

    goto :goto_8f

    :cond_be
    if-nez p1, :cond_c4

    .line 114
    invoke-static {p0, v0, p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize;->c(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V

    goto :goto_f9

    :cond_c4
    if-nez v2, :cond_c9

    .line 118
    invoke-static {p0, v0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize;->b(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V

    :cond_c9
    if-nez v4, :cond_f9

    .line 122
    invoke-static {p0, v0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize;->a(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_ce} :catch_cf

    goto :goto_f9

    .line 126
    :catch_cf
    invoke-static {p0, v0, p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize;->c(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V

    const-string p0, "Exception occoured"

    .line 128
    invoke-static {p2, v1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_f9

    :cond_d8
    const-string p1, "Context not Activity, get max win size"

    .line 132
    invoke-static {p2, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :try_start_dd
    const-string p1, "window"

    .line 134
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_f9

    .line 136
    invoke-static {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;Landroid/view/WindowManager;Landroid/graphics/Point;)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_ea} :catch_eb

    goto :goto_f9

    :catch_eb
    move-exception p1

    .line 140
    sget-object p3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Banner3DSize.getApplicationSize - system service failed"

    const-string v3, ""

    invoke-static {p0, p3, v2, p1, v3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_f9
    :goto_f9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "============ exit Application Size ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] ========="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    new-instance p0, Lcom/startapp/android/publish/ads/banner/d;

    iget p1, v0, Landroid/graphics/Point;->x:I

    iget p2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/d;-><init>(II)V

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V
    .registers 5

    .line 151
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-static {p0, v0}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewParent;Lcom/startapp/android/publish/ads/banner/BannerOptions;Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;Lcom/startapp/android/publish/ads/banner/d;)Z
    .registers 12

    const-string v0, "Banner3DSize"

    const/4 v1, 0x3

    const-string v2, "============== Optimize Size =========="

    .line 44
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize;->a(Landroid/content/Context;Landroid/view/ViewParent;Lcom/startapp/android/publish/ads/banner/BannerOptions;Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;)Lcom/startapp/android/publish/ads/banner/d;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/d;->a()I

    move-result p1

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/d;->b()I

    move-result p3

    invoke-virtual {p4, p1, p3}, Lcom/startapp/android/publish/ads/banner/d;->a(II)V

    .line 49
    invoke-static {}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize$Size;->values()[Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize$Size;

    move-result-object p1

    array-length p3, p1

    const/4 p4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1f
    if-ge v2, p3, :cond_87

    aget-object v4, p1, v2

    .line 51
    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/startapp/android/publish/ads/banner/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapp/android/publish/ads/banner/d;->a()I

    move-result v5

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/d;->a()I

    move-result v6

    if-gt v5, v6, :cond_84

    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/startapp/android/publish/ads/banner/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapp/android/publish/ads/banner/d;->b()I

    move-result v5

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/d;->b()I

    move-result v6

    if-gt v5, v6, :cond_84

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BannerSize ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/startapp/android/publish/ads/banner/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapp/android/publish/ads/banner/d;->a()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/startapp/android/publish/ads/banner/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapp/android/publish/ads/banner/d;->b()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/startapp/android/publish/ads/banner/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/banner/d;->a()I

    move-result v3

    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/startapp/android/publish/ads/banner/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/banner/d;->b()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->a(II)V

    const/4 v3, 0x1

    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_87
    if-nez v3, :cond_8c

    .line 65
    invoke-virtual {p2, p4, p4}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->a(II)V

    .line 68
    :cond_8c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "============== Optimize Size ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "] =========="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v3
.end method

.method private static b(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V
    .registers 5

    .line 155
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-static {p0, v0}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->x:I

    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/graphics/Point;Landroid/view/View;)V
    .registers 4

    .line 159
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {p0, v0}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {p0, p2}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method
