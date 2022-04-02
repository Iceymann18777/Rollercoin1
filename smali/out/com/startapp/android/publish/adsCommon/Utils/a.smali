.class public Lcom/startapp/android/publish/adsCommon/Utils/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/Utils/a;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/Utils/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 59
    invoke-static {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/Utils/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 6

    .line 24
    sget-object v0, Lcom/startapp/android/publish/adsCommon/Utils/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    return-object v0

    .line 29
    :cond_b
    invoke-static {p0, p2}, Lcom/startapp/android/publish/adsCommon/Utils/f;->a(Landroid/content/Context;Z)V

    const/4 p2, 0x0

    .line 33
    :try_start_f
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_30} :catch_5d
    .catchall {:try_start_f .. :try_end_30} :catchall_56

    .line 34
    :try_start_30
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_45

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_47

    :cond_45
    const/16 p0, 0xa0

    .line 37
    :goto_47
    invoke-virtual {v1, p0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 38
    sget-object p0, Lcom/startapp/android/publish/adsCommon/Utils/a;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4f} :catch_5e
    .catchall {:try_start_30 .. :try_end_4f} :catchall_53

    .line 44
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_52

    :catch_52
    return-object v1

    :catchall_53
    move-exception p0

    move-object p2, v0

    goto :goto_57

    :catchall_56
    move-exception p0

    :goto_57
    if-eqz p2, :cond_5c

    :try_start_59
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5c

    .line 47
    :catch_5c
    :cond_5c
    throw p0

    :catch_5d
    move-object v0, p2

    :catch_5e
    if-eqz v0, :cond_63

    .line 44
    :try_start_60
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_63

    :catch_63
    :cond_63
    return-object p2
.end method

.method static synthetic a()Ljava/util/Map;
    .registers 1

    .line 19
    sget-object v0, Lcom/startapp/android/publish/adsCommon/Utils/a;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 66
    sget-object v0, Lcom/startapp/common/g$a;->a:Lcom/startapp/common/g$a;

    new-instance v1, Lcom/startapp/android/publish/adsCommon/Utils/a$1;

    invoke-direct {v1, p2, p3, p1, p0}, Lcom/startapp/android/publish/adsCommon/Utils/a$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 93
    sget-object v0, Lcom/startapp/android/publish/adsCommon/Utils/a;->a:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_40

    .line 94
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_40

    const/4 p0, 0x0

    goto :goto_41

    :cond_40
    const/4 p0, 0x1

    :goto_41
    return p0
.end method
