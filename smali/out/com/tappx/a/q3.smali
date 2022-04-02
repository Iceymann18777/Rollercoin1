.class public Lcom/tappx/a/q3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(FLandroid/content/Context;)F
    .registers 3

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    .line 6
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;)F
    .registers 1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method static a(II)I
    .registers 5

    const/16 v0, 0x9

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v2, p1, :cond_c

    if-eq p0, v2, :cond_b

    if-eq p0, v1, :cond_b

    return v2

    :cond_b
    return v0

    :cond_c
    if-ne v1, p1, :cond_18

    if-eq p0, v1, :cond_15

    const/4 p1, 0x3

    if-eq p0, p1, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    const/16 p0, 0x8

    return p0

    :cond_18
    const-string p0, "Unknown screen orientation. Defaulting to portrait."

    .line 33
    invoke-static {p0}, Lcom/tappx/a/j4;->a(Ljava/lang/String;)V

    return v0
.end method

.method public static a(Landroid/app/Activity;Lcom/tappx/a/j3;)V
    .registers 6

    const-string v0, "window"

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 11
    invoke-static {v0, v1}, Lcom/tappx/a/q3;->a(II)I

    move-result v0

    .line 15
    sget-object v1, Lcom/tappx/a/j3;->b:Lcom/tappx/a/j3;

    const/16 v2, 0x8

    const/16 v3, 0x9

    if-ne p1, v1, :cond_2d

    if-ne v3, v0, :cond_2b

    const/16 v2, 0x9

    goto :goto_35

    :cond_2b
    const/4 v2, 0x1

    goto :goto_35

    .line 21
    :cond_2d
    sget-object v1, Lcom/tappx/a/j3;->c:Lcom/tappx/a/j3;

    if-ne p1, v1, :cond_38

    if-ne v2, v0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    .line 32
    :goto_35
    :try_start_35
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_38

    :catch_38
    :cond_38
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_d} :catch_10

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_10
    return v0
.end method

.method public static b(FLandroid/content/Context;)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/tappx/a/q3;->a(FLandroid/content/Context;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static c(FLandroid/content/Context;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/tappx/a/q3;->a(Landroid/content/Context;)F

    move-result p1

    mul-float p0, p0, p1

    return p0
.end method

.method public static d(FLandroid/content/Context;)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/tappx/a/q3;->c(FLandroid/content/Context;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static e(FLandroid/content/Context;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/tappx/a/q3;->a(Landroid/content/Context;)F

    move-result p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static f(FLandroid/content/Context;)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/tappx/a/q3;->e(FLandroid/content/Context;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method
