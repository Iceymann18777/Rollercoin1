.class public Lcom/b/a/a/a/e/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/a/e/b$a;
    }
.end annotation


# static fields
.field static a:F

.field private static b:Landroid/view/WindowManager;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "x"

    const-string v1, "y"

    const-string v2, "width"

    const-string v3, "height"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/a/e/b;->c:[Ljava/lang/String;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/b/a/a/a/e/b;->a:F

    return-void
.end method

.method static a(I)F
    .registers 2

    int-to-float p0, p0

    sget v0, Lcom/b/a/a/a/e/b;->a:F

    div-float/2addr p0, v0

    return p0
.end method

.method public static a(IIII)Lorg/json/JSONObject;
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "x"

    invoke-static {p0}, Lcom/b/a/a/a/e/b;->a(I)F

    move-result p0

    float-to-double v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "y"

    invoke-static {p1}, Lcom/b/a/a/a/e/b;->a(I)F

    move-result p1

    float-to-double v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "width"

    invoke-static {p2}, Lcom/b/a/a/a/e/b;->a(I)F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "height"

    invoke-static {p3}, Lcom/b/a/a/a/e/b;->a(I)F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2d} :catch_2e

    goto :goto_34

    :catch_2e
    move-exception p0

    const-string p1, "Error with creating viewStateObject"

    invoke-static {p1, p0}, Lcom/b/a/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_34
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/b/a/a/a/e/b;->a:F

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    sput-object p0, Lcom/b/a/a/a/e/b;->b:Landroid/view/WindowManager;

    :cond_18
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .registers 5

    invoke-static {p0}, Lcom/b/a/a/a/e/b;->b(Lorg/json/JSONObject;)Lcom/b/a/a/a/e/b$a;

    move-result-object v0

    :try_start_4
    const-string v1, "width"

    iget v2, v0, Lcom/b/a/a/a/e/b$a;->a:F

    float-to-double v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "height"

    iget v0, v0, Lcom/b/a/a/a/e/b$a;->b:F

    float-to-double v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_19
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    const-string v0, "adSessionId"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    move-exception p0

    const-string p1, "Error with setting ad session id"

    invoke-static {p1, p0}, Lcom/b/a/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_c
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1e

    :catch_4
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JSONException during JSONObject.put for name ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/b/a/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1e
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_19
    :try_start_19
    const-string p1, "isFriendlyObstructionFor"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception p0

    const-string p1, "Error with setting friendly obstruction"

    invoke-static {p1, p0}, Lcom/b/a/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_25
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "childViews"

    :try_start_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_10

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_18
    return-void
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_19

    if-nez p1, :cond_c

    goto :goto_19

    :cond_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ne p0, p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0

    :cond_19
    :goto_19
    return v1
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/b/a/a/a/e/b$a;
    .registers 14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_27

    sget-object p0, Lcom/b/a/a/a/e/b;->b:Landroid/view/WindowManager;

    if-eqz p0, :cond_66

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    sget-object v0, Lcom/b/a/a/a/e/b;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Lcom/b/a/a/a/e/b;->a(I)F

    move-result v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Lcom/b/a/a/a/e/b;->a(I)F

    move-result p0

    goto :goto_67

    :cond_27
    const-string v0, "childViews"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_66

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v0, :cond_64

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_61

    const-string v5, "x"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v7, "y"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v9, "width"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-string v11, "height"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    add-double/2addr v5, v9

    double-to-float v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-double/2addr v7, v11

    double-to-float v4, v7

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_64
    move p0, v2

    goto :goto_67

    :cond_66
    const/4 p0, 0x0

    :goto_67
    new-instance v0, Lcom/b/a/a/a/e/b$a;

    invoke-direct {v0, v1, p0}, Lcom/b/a/a/a/e/b$a;-><init>(FF)V

    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_27

    if-nez p1, :cond_c

    goto :goto_27

    :cond_c
    invoke-static {p0, p1}, Lcom/b/a/a/a/e/b;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {p0, p1}, Lcom/b/a/a/a/e/b;->d(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {p0, p1}, Lcom/b/a/a/a/e/b;->e(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {p0, p1}, Lcom/b/a/a/a/e/b;->f(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method private static c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 11

    sget-object v0, Lcom/b/a/a/a/e/b;->c:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v4, v5, v7

    if-eqz v4, :cond_16

    return v2

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method private static d(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 4

    const-string v0, "adSessionId"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static e(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 7

    const-string v0, "isFriendlyObstructionFor"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_10

    if-nez p1, :cond_10

    return v0

    :cond_10
    invoke-static {p0, p1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    return v2

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_33

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    return v2

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_33
    return v0
.end method

.method private static f(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 7

    const-string v0, "childViews"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_10

    if-nez p1, :cond_10

    return v0

    :cond_10
    invoke-static {p0, p1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    return v2

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_31

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/b/a/a/a/e/b;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_2e

    return v2

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_31
    return v0
.end method
