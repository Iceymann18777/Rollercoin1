.class public final Lcom/yandex/metrica/impl/am;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/am$a;
    }
.end annotation


# direct methods
.method public static a(Z)J
    .registers 5

    .line 266
    :try_start_0
    invoke-static {p0}, Lcom/yandex/metrica/impl/am;->b(Z)Landroid/os/StatFs;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    .line 268
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v2, p0

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    .line 269
    div-long/2addr v0, v2
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-wide v0

    :catchall_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 7

    const-string v0, "window"

    .line 148
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 149
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1f

    .line 155
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 156
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 157
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 158
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_68

    .line 160
    :cond_1f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5d

    .line 163
    :try_start_25
    const-class v0, Landroid/view/Display;

    const-string v1, "getRawHeight"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 164
    const-class v1, Landroid/view/Display;

    const-string v3, "getRawWidth"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 165
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 166
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_52} :catch_54

    move p0, v1

    goto :goto_68

    .line 169
    :catch_54
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 170
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    goto :goto_65

    .line 174
    :cond_5d
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 175
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    :goto_65
    move v5, v0

    move v0, p0

    move p0, v5

    .line 178
    :goto_68
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p0, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static b(Z)Landroid/os/StatFs;
    .registers 2

    if-nez p0, :cond_10

    .line 278
    new-instance p0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 281
    :cond_10
    new-instance p0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 226
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x15

    .line 230
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 231
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p0

    .line 232
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    const/16 v0, 0x2d

    .line 233
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3f

    const/16 p0, 0x5f

    .line 237
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Z)J
    .registers 5

    .line 286
    :try_start_0
    invoke-static {p0}, Lcom/yandex/metrica/impl/am;->b(Z)Landroid/os/StatFs;

    move-result-object p0

    .line 287
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 288
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v2, p0

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    .line 290
    div-long/2addr v0, v2
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-wide v0

    :catchall_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method
