.class public Lcom/startapp/android/publish/adsCommon/Utils/i;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adsCommon/Utils/i$a;
    }
.end annotation


# static fields
.field protected static a:I

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/Utils/i;->b:Ljava/util/Map;

    const/4 v0, 0x0

    .line 274
    sput-boolean v0, Lcom/startapp/android/publish/adsCommon/Utils/i;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;IZ)I
    .registers 4

    if-eqz p2, :cond_2f

    .line 203
    sget-object p2, Lcom/startapp/android/publish/adsCommon/Utils/i;->b:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    .line 204
    sget-object p2, Lcom/startapp/android/publish/adsCommon/Utils/i;->b:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_17
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, p2, :cond_29

    const/4 p2, 0x0

    .line 207
    invoke-static {p0, p1, p2}, Lcom/startapp/common/a/c;->a(Landroid/app/Activity;IZ)I

    move-result p0

    return p0

    :cond_29
    const/4 p2, 0x1

    .line 209
    invoke-static {p0, p1, p2}, Lcom/startapp/common/a/c;->a(Landroid/app/Activity;IZ)I

    move-result p0

    return p0

    :cond_2f
    const/4 p1, -0x1

    .line 215
    sget-object p2, Lcom/startapp/android/publish/adsCommon/Utils/i;->b:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4c

    .line 216
    sget-object p1, Lcom/startapp/android/publish/adsCommon/Utils/i;->b:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/startapp/common/a/c;->a(Landroid/app/Activity;I)V

    .line 217
    sget-object p2, Lcom/startapp/android/publish/adsCommon/Utils/i;->b:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    return p1
.end method

.method public static a(Ljava/io/File;J)J
    .registers 3

    .line 703
    invoke-static {p0, p1, p2}, Lcom/startapp/common/a/c;->a(Ljava/io/File;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 623
    invoke-static {p0, p1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {p0, p2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_2d

    .line 627
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected activity "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is missing from AndroidManifest.xml"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StartAppWall.Util"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_2d
    :goto_2d
    return-object p1
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const-string v0, "StartAppWall.Util"

    const/4 v1, 0x6

    .line 549
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 550
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 551
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_f} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_f} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    .line 557
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2a

    :catch_19
    move-exception p0

    .line 555
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2a

    :catch_22
    move-exception p0

    .line 553
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 730
    invoke-static {p0, p1}, Lcom/startapp/common/c/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 732
    :cond_7
    new-instance p0, Lcom/startapp/common/e;

    invoke-direct {p0}, Lcom/startapp/common/e;-><init>()V

    throw p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    .line 719
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 720
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 721
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 722
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x2

    .line 723
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/Double;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_11

    .line 123
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%.2f"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    if-eqz p1, :cond_24

    if-nez p2, :cond_8

    goto :goto_24

    .line 156
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v2, :cond_24

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    :goto_24
    return-object v0
.end method

.method private static a(Ljava/lang/Class;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0, p0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 238
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    :cond_18
    return-object p0
.end method

.method public static a(Landroid/app/Activity;Z)V
    .registers 3

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, v0, p1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/app/Activity;IZ)I

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 10

    .line 429
    :try_start_0
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getHostForWebview()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_29

    :catch_13
    move-exception p1

    if-eqz p0, :cond_23

    .line 432
    sget-object p2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Util.loadDataToWebview failed"

    const-string v1, ""

    invoke-static {p0, p2, v0, p1, v1}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    const/4 p0, 0x6

    const-string p1, "StartAppWall.UtilError while encoding html"

    .line 435
    invoke-static {p0, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    :goto_29
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 5

    const-string v0, "shared_prefs_devId"

    const/4 v1, 0x0

    .line 278
    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "shared_prefs_appId"

    .line 279
    invoke-static {p0, v2, v1}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 280
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->getPublisherId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    .line 284
    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/common/model/AdPreferences;->setPublisherId(Ljava/lang/String;)Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 286
    :cond_16
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->getProductId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 290
    invoke-virtual {p1, p0}, Lcom/startapp/android/publish/common/model/AdPreferences;->setProductId(Ljava/lang/String;)Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 293
    :cond_1f
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->getProductId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_33

    .line 294
    sget-boolean p0, Lcom/startapp/android/publish/adsCommon/Utils/i;->c:Z

    if-nez p0, :cond_33

    const/4 p0, 0x1

    .line 295
    sput-boolean p0, Lcom/startapp/android/publish/adsCommon/Utils/i;->c:Z

    const-string p0, "StartApp"

    const-string p1, "Integration Error - App ID is missing"

    .line 296
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/Utils/i$a;)V
    .registers 7

    const-string v0, "@doNotRender@"

    .line 324
    invoke-static {p1, v0, v0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 325
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 328
    invoke-interface {p2}, Lcom/startapp/android/publish/adsCommon/Utils/i$a;->a()V

    return-void

    .line 334
    :cond_12
    :try_start_12
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 335
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 337
    sget-object v2, Lcom/startapp/android/publish/adsCommon/AdsConstants;->OVERRIDE_NETWORK:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_40

    const/16 v2, 0x61a8

    .line 338
    sput v2, Lcom/startapp/android/publish/adsCommon/Utils/i;->a:I

    .line 340
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 341
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 342
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    goto :goto_42

    .line 344
    :cond_40
    sput v3, Lcom/startapp/android/publish/adsCommon/Utils/i;->a:I

    .line 347
    :goto_42
    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 348
    new-instance v2, Lcom/startapp/android/publish/adsCommon/Utils/i$1;

    invoke-direct {v2, v1, v0, p2}, Lcom/startapp/android/publish/adsCommon/Utils/i$1;-><init>(Landroid/os/Handler;Landroid/webkit/WebView;Lcom/startapp/android/publish/adsCommon/Utils/i$a;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 386
    invoke-static {p0, v0, p1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string p1, "StartAppWall.Util"

    const/4 v2, 0x4

    const-string v3, "Data loaded to webview"

    .line 387
    invoke-static {p1, v2, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 391
    new-instance p1, Lcom/startapp/android/publish/adsCommon/Utils/i$2;

    invoke-direct {p1, v0, p2}, Lcom/startapp/android/publish/adsCommon/Utils/i$2;-><init>(Landroid/webkit/WebView;Lcom/startapp/android/publish/adsCommon/Utils/i$a;)V

    const-wide/16 v2, 0x61a8

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_67} :catch_68

    return-void

    :catch_68
    move-exception p1

    .line 401
    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Util.loadHtmlToCacheWebView - webview failed"

    const-string v2, ""

    invoke-static {p0, v0, v1, p1, v2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "WebView instantiation Error"

    .line 402
    invoke-interface {p2, p0}, Lcom/startapp/android/publish/adsCommon/Utils/i$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "shared_prefs_devId"

    if-eqz p1, :cond_c

    .line 303
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_c
    const/4 p1, 0x0

    .line 305
    invoke-static {p0, v0, p1}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_10
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "shared_prefs_appId"

    invoke-static {p0, p2, p1}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .registers 1

    .line 149
    invoke-static {p0}, Lcom/startapp/common/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static varargs a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    .line 582
    invoke-static {p0, v0, p1, p2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/webkit/WebView;ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Landroid/webkit/WebView;ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    const-string v0, "\""

    const-string v1, "StartAppWall.Util"

    if-eqz p0, :cond_90

    .line 588
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    .line 591
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_3f

    const/4 p2, 0x0

    .line 593
    :goto_16
    array-length v3, p3

    if-ge p2, v3, :cond_3f

    if-eqz p1, :cond_2d

    .line 594
    aget-object v3, p3, p2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_2d

    .line 595
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 597
    :cond_2d
    aget-object v3, p3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 600
    :goto_32
    array-length v3, p3

    add-int/lit8 v3, v3, -0x1

    if-ge p2, v3, :cond_3c

    const-string v3, ","

    .line 601
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    :cond_3f
    const-string p1, ")"

    .line 605
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    .line 607
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "runJavascript: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 608
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "javascript:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_75} :catch_76

    goto :goto_90

    :catch_76
    move-exception p0

    const/4 p1, 0x6

    .line 611
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "runJavascript Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_90
    :goto_90
    return-void
.end method

.method public static a(Lcom/startapp/android/publish/common/model/AdPreferences;Ljava/lang/String;Z)V
    .registers 4

    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p1, p0, p2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 565
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 566
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 567
    invoke-virtual {p0, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_b} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_1a

    :catch_c
    move-exception p0

    .line 573
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1a

    :catch_11
    move-exception p0

    .line 571
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1a

    :catch_16
    move-exception p0

    .line 569
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_1a
    return-void
.end method

.method public static a(Ljava/lang/Object;J)V
    .registers 6

    .line 745
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public static a()Z
    .registers 3

    .line 59
    new-instance v0, Ljava/math/BigInteger;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants;->i:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public static a(J)Z
    .registers 6

    .line 101
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->i:Ljava/lang/String;

    const-string v1, "${flavor}"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1e

    .line 103
    new-instance v1, Ljava/math/BigInteger;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v3, p0, v0

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :cond_1e
    :goto_1e
    return v2
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 6

    .line 129
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->OVERRIDE_HOST:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_3b

    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->OVERRIDE_NETWORK:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3b

    :cond_e
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 132
    invoke-static {p0, v0}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    :try_start_17
    const-string v0, "connectivity"

    .line 134
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 135
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 136
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_29} :catch_2c

    if-eqz p0, :cond_3a

    return v1

    :catch_2c
    move-exception v0

    .line 140
    sget-object v1, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Util.isNetworkAvailable - system service failed"

    const-string v4, ""

    invoke-static {p0, v1, v3, v0, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    return v2

    :cond_3b
    :goto_3b
    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 633
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 634
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 635
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 636
    array-length v1, p0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v1, :cond_26

    aget-object v4, p0, v3

    .line 637
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_26

    if-eqz v4, :cond_23

    return v2

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :catch_26
    :cond_26
    return v0
.end method

.method public static a(Lcom/startapp/android/publish/common/model/AdPreferences;Ljava/lang/String;)Z
    .registers 3

    .line 533
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 534
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_15

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 248
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 249
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 250
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    .line 251
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_d

    :cond_2a
    const/4 v3, 0x1

    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 256
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_d

    .line 260
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 262
    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_3f

    const/4 v0, 0x1

    goto :goto_d

    :catch_3f
    move-exception p0

    const/4 p1, 0x3

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Util.mergeDefaultValues failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    :cond_59
    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK version: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "3.10.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    return-object v2
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    const-string p0, "landscape"

    return-object p0

    .line 183
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_20

    const-string p0, "portrait"

    return-object p0

    :cond_20
    const-string p0, "undefined"

    return-object p0
.end method

.method public static b(Lcom/startapp/android/publish/common/model/AdPreferences;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 538
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 539
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_11

    check-cast p0, Ljava/lang/String;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK Flavor: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1111111111"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    return-object v2
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    .line 512
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.MAIN"

    .line 513
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    .line 514
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    .line 516
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 517
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_2a

    .line 518
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 520
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2a

    :catch_2a
    :cond_2a
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    const-string v0, "jar"

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 578
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e()Z
    .registers 2

    const-wide/16 v0, 0x2

    .line 113
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-nez v0, :cond_23

    const-wide/16 v0, 0x10

    .line 114
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-nez v0, :cond_23

    const-wide/16 v0, 0x20

    .line 115
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-nez v0, :cond_23

    const-wide/16 v0, 0x4

    .line 116
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "activity"

    .line 648
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 649
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 650
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 651
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_10

    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 8

    const/4 v0, 0x0

    .line 664
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 665
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 666
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_45

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_12
    if-nez v1, :cond_46

    .line 668
    :try_start_14
    array-length v4, p0

    if-ge v3, v4, :cond_46

    add-int/lit8 v4, v3, 0x1

    .line 669
    aget-object v3, p0, v3

    .line 670
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v6, "com.startapp.android.publish.AppWallActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v6, "com.startapp.android.publish.adsCommon.OverlayActivity"

    .line 671
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v6, "com.startapp.android.publish.FullScreenActivity"

    .line 672
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 673
    :cond_39
    iget v1, v3, Landroid/content/pm/ActivityInfo;->flags:I
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_3b} :catch_44
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3b} :catch_44

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_41

    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :cond_42
    :goto_42
    move v3, v4

    goto :goto_12

    :catch_44
    move v0, v1

    :catch_45
    move v1, v0

    :cond_46
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 687
    :try_start_0
    new-instance v0, Lcom/startapp/common/a/c;

    invoke-direct {v0}, Lcom/startapp/common/a/c;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/startapp/common/a/c;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_19

    :catch_a
    move-exception p1

    .line 689
    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 690
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Util.getApkHash - system service failed"

    const-string v2, ""

    .line 689
    invoke-static {p2, v0, v1, p1, v2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_19
    return-object p1
.end method
