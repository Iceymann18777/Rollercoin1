.class public Lcom/startapp/common/a/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/common/a/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 3

    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_36

    const/16 v0, 0x10

    if-eq p0, v0, :cond_35

    if-eq p0, v1, :cond_33

    const/16 v0, 0x14

    if-eq p0, v0, :cond_30

    const/16 v0, 0x15

    if-eq p0, v0, :cond_2d

    const v0, 0x800003

    const/16 v1, 0xe

    if-eq p0, v0, :cond_27

    const v0, 0x800005

    if-eq p0, v0, :cond_21

    goto :goto_36

    .line 486
    :cond_21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_36

    const/4 p0, 0x5

    goto :goto_36

    .line 480
    :cond_27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_36

    const/4 p0, 0x3

    goto :goto_36

    :cond_2d
    const/16 p0, 0xb

    goto :goto_36

    :cond_30
    const/16 p0, 0x9

    goto :goto_36

    :cond_33
    const/4 p0, 0x1

    goto :goto_36

    :cond_35
    const/4 p0, 0x0

    :cond_36
    :goto_36
    return p0
.end method

.method public static a(IIZ)I
    .registers 6

    const/4 v0, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq p0, v2, :cond_18

    if-eq p0, v0, :cond_9

    return v2

    .line 114
    :cond_9
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    if-gt p0, v1, :cond_f

    return v0

    :cond_f
    if-nez p2, :cond_17

    if-eqz p1, :cond_17

    if-ne p1, v2, :cond_16

    goto :goto_17

    :cond_16
    return v1

    :cond_17
    :goto_17
    return v0

    .line 104
    :cond_18
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt p0, v1, :cond_1d

    return v2

    :cond_1d
    if-nez p2, :cond_26

    if-eq p1, v2, :cond_23

    if-ne p1, v0, :cond_26

    :cond_23
    const/16 p0, 0x9

    return p0

    :cond_26
    return v2
.end method

.method public static a(Landroid/app/Activity;IZ)I
    .registers 4

    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 192
    invoke-static {p1, v0, p2}, Lcom/startapp/common/a/c;->a(IIZ)I

    move-result p1

    .line 195
    invoke-static {p0, p1}, Lcom/startapp/common/a/c;->a(Landroid/app/Activity;I)V

    return p1
.end method

.method public static a(Landroid/net/wifi/ScanResult;)J
    .registers 7

    .line 496
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_16

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 498
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 500
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    :cond_16
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a(Ljava/io/File;J)J
    .registers 8

    const/4 v0, 0x6

    const-string v1, "ApiUtil"

    if-eqz p0, :cond_3e

    .line 343
    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_3e

    .line 348
    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_17

    .line 349
    invoke-virtual {p0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide p0

    return-wide p0

    .line 353
    :cond_17
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 356
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt p0, v3, :cond_2f

    .line 357
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    .line 358
    invoke-virtual {v2}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide p0

    goto :goto_39

    .line 360
    :cond_2f
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v3, p0

    .line 361
    invoke-virtual {v2}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result p0

    int-to-long p0, p0

    :goto_39
    mul-long v3, v3, p0

    return-wide v3

    :catch_3c
    move-exception p0

    goto :goto_44

    :cond_3e
    :goto_3e
    const-string p0, "Invalid filesDir argument - null or not a directory"

    .line 344
    invoke-static {v1, v0, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_43} :catch_3c

    return-wide p1

    .line 365
    :goto_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed calculating free space with error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-wide p1
.end method

.method public static a(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;
    .registers 3

    .line 270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_d

    .line 271
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4b

    if-nez p1, :cond_6

    goto :goto_4b

    .line 406
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-ge v1, v2, :cond_e

    goto :goto_21

    :cond_e
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 409
    invoke-static {p0, v1}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 410
    invoke-static {p0, v1}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    const/4 v3, 0x0

    :cond_21
    :goto_21
    const-string p0, "ApiUtil"

    if-eqz v3, :cond_45

    .line 417
    :try_start_25
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    move-exception p1

    const/4 v1, 0x6

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retreive WIFI scan results: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    :cond_45
    const/4 p1, 0x3

    const-string v1, "Unable to get WIFI scan results: API level >= 23 but no location permission granted"

    .line 423
    invoke-static {p0, p1, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4b
    :goto_4b
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/telephony/TelephonyManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    if-nez p1, :cond_6

    goto :goto_21

    :cond_6
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 447
    invoke-static {p0, v1}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 448
    :cond_16
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt p0, v1, :cond_21

    .line 449
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_21
    :goto_21
    return-object v0
.end method

.method public static a(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 674
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_2e

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 675
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/16 v2, 0x2000

    .line 676
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    nop

    :array_2e
    .array-data 1
        0x67t
        0x65t
        0x74t
        0x49t
        0x6et
        0x73t
        0x74t
        0x61t
        0x6ct
        0x6ct
        0x65t
        0x64t
        0x50t
        0x61t
        0x63t
        0x6bt
        0x61t
        0x67t
        0x65t
        0x73t
    .end array-data
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b

    const/4 v0, 0x7

    .line 86
    invoke-static {p0, v0}, Lcom/startapp/common/a/c;->a(Landroid/app/Activity;I)V

    goto :goto_f

    :cond_b
    const/4 v0, 0x1

    .line 88
    invoke-static {p0, v0}, Lcom/startapp/common/a/c;->a(Landroid/app/Activity;I)V

    :goto_f
    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .registers 3

    .line 203
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    :catch_4
    move-exception p0

    const/4 p1, 0x6

    const-string v0, "Error to setRequestedOrientation "

    .line 205
    invoke-static {p1, v0, p0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .registers 3

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_a

    .line 79
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_d

    .line 81
    :cond_a
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_d
    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .registers 4

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_9

    .line 134
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    return-void
.end method

.method public static a(Landroid/view/View;J)V
    .registers 4

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/startapp/common/a/c$a;)V
    .registers 4

    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 259
    new-instance v0, Lcom/startapp/common/a/c$1;

    invoke-direct {v0, p1}, Lcom/startapp/common/a/c$1;-><init>(Lcom/startapp/common/a/c$a;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_e
    return-void
.end method

.method public static a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 4

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 163
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_d

    .line 165
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_d
    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .registers 3

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    .line 187
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_e
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Landroid/graphics/Paint;)V
    .registers 4

    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    .line 245
    invoke-virtual {p0, v0, p1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_a
    return-void
.end method

.method public static a()Z
    .registers 2

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    .line 173
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_3} :catch_28

    const/16 v2, 0x11

    const-string v3, "install_non_market_apps"

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1d

    :try_start_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_11

    goto :goto_1d

    .line 176
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-ne p0, v4, :cond_28

    :goto_1b
    const/4 v0, 0x1

    goto :goto_28

    .line 174
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_25
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a .. :try_end_25} :catch_28

    if-ne p0, v4, :cond_28

    goto :goto_1b

    :catch_28
    :cond_28
    :goto_28
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 380
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v1, v2, :cond_10

    .line 381
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0

    .line 383
    :cond_10
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_18

    if-nez p0, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0

    :catchall_18
    move-exception p0

    const/4 p1, 0x6

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while checking permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_34

    :cond_32
    const-string p0, ""

    :goto_34
    invoke-static {p1, p0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5

    .line 659
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    const/4 v1, 0x0

    .line 661
    :try_start_7
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 662
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_10

    if-lt p0, p2, :cond_10

    const/4 v1, 0x1

    :catch_10
    :cond_10
    return v1
.end method

.method public static a(Landroid/content/pm/PackageInfo;)Z
    .registers 3

    .line 654
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_12

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :cond_12
    :goto_12
    return v1
.end method

.method public static a(Landroid/view/View;Z)Z
    .registers 5

    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v2

    if-ne v0, v2, :cond_10

    return v1

    :cond_10
    if-eqz p1, :cond_17

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result p0

    return p0

    :cond_17
    return v1
.end method

.method public static b(Landroid/net/wifi/ScanResult;)Ljava/lang/CharSequence;
    .registers 3

    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 509
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    return-object p0

    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 5

    .line 516
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_7e

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 517
    invoke-static {p0, v0}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 518
    invoke-static {p0, v0}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7e

    .line 519
    :cond_17
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7e

    .line 521
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellInfo;

    .line 522
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 524
    :try_start_33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 525
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getCellSignalStrength"

    move-object v2, v1

    check-cast v2, [Ljava/lang/Class;

    .line 526
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 528
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 530
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 531
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getTimingAdvance"

    move-object v2, v1

    check-cast v2, [Ljava/lang/Class;

    .line 532
    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 534
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 535
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 536
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_77} :catch_78

    return-object p0

    :catch_78
    const/4 p0, 0x6

    const-string p1, "Error while calling ApiUtil.getCellTimingAdv()"

    .line 538
    invoke-static {p0, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    :cond_7e
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 296
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_6c

    :try_start_b
    const-string v1, "input_method"

    .line 300
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 301
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 302
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v3, 0x1

    .line 303
    invoke-virtual {p0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    .line 304
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 305
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "keyboard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 306
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4f} :catch_50

    goto :goto_30

    :catch_50
    move-exception p0

    const/4 v1, 0x6

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retreive keyboard input langs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ApiUtil"

    invoke-static {v2, v1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_6c
    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 3

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b

    const/4 v0, 0x6

    .line 94
    invoke-static {p0, v0}, Lcom/startapp/common/a/c;->a(Landroid/app/Activity;I)V

    goto :goto_f

    :cond_b
    const/4 v0, 0x0

    .line 96
    invoke-static {p0, v0}, Lcom/startapp/common/a/c;->a(Landroid/app/Activity;I)V

    :goto_f
    return-void
.end method

.method public static b(Landroid/webkit/WebView;)V
    .registers 5

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    .line 219
    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V

    goto :goto_26

    :cond_a
    :try_start_a
    const-string v0, "android.webkit.WebView"

    .line 222
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    check-cast v2, [Ljava/lang/Object;

    .line 223
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_20

    goto :goto_26

    :catch_20
    const/4 p0, 0x6

    const-string v0, "Error while calling webView.onPause()"

    .line 225
    invoke-static {p0, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    :goto_26
    return-void
.end method

.method public static b()Z
    .registers 2

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static c(Landroid/webkit/WebView;)V
    .registers 5

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    .line 232
    invoke-virtual {p0}, Landroid/webkit/WebView;->onResume()V

    goto :goto_26

    :cond_a
    :try_start_a
    const-string v0, "android.webkit.WebView"

    .line 235
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onResume"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    check-cast v2, [Ljava/lang/Object;

    .line 236
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_20

    goto :goto_26

    :catch_20
    const/4 p0, 0x6

    const-string v0, "Error while calling webView.onResume()"

    .line 238
    invoke-static {p0, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    :goto_26
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 6

    .line 372
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const-string v2, "auto_time"

    const/4 v3, 0x0

    const/16 v4, 0x11

    if-lt v0, v4, :cond_15

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_20

    goto :goto_21

    .line 374
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1
.end method

.method public static d(Landroid/content/Context;)I
    .registers 3

    const/4 v0, 0x0

    .line 552
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 553
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 554
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_f

    :catch_f
    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 566
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 568
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static f(Landroid/content/Context;)I
    .registers 5

    const-string v0, "ApiUtil"

    const/4 v1, 0x3

    const-string v2, "getPackageList entered"

    .line 633
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 637
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 638
    invoke-static {p0}, Lcom/startapp/common/a/c;->a(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object p0

    .line 641
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 642
    invoke-static {v2}, Lcom/startapp/common/a/c;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/startapp/common/Constants;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_34

    if-eqz v2, :cond_15

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :catch_34
    move-exception p0

    const/4 v2, 0x6

    const-string v3, "Could not complete getPackagesList"

    .line 647
    invoke-static {v0, v2, v3, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_3b
    return v1
.end method

.method public static g(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    .line 682
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_1e

    const/16 v2, 0x11

    const-string v3, "adb_enabled"

    if-ge v1, v2, :cond_12

    .line 683
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_1a

    .line 685
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_1e

    :goto_1a
    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0

    :catch_1e
    move-exception p0

    const/4 v1, 0x6

    const-string v2, "ApiUtil"

    const-string v3, "getUsbDebug"

    .line 690
    invoke-static {v2, v1, v3, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 4

    .line 697
    :try_start_0
    invoke-static {p0}, Lcom/startapp/android/b/c;->a(Landroid/content/Context;)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p0

    :catchall_5
    move-exception p0

    const/4 v0, 0x6

    const-string v1, "ApiUtil"

    const-string v2, "isRooted"

    .line 699
    invoke-static {v1, v0, v2, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static i(Landroid/content/Context;)Z
    .registers 4

    .line 706
    :try_start_0
    invoke-static {p0}, Lcom/startapp/android/a/a;->a(Landroid/content/Context;)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p0

    :catchall_5
    move-exception p0

    const/4 v0, 0x6

    const-string v1, "ApiUtil"

    const-string v2, "isSimulator"

    .line 708
    invoke-static {v1, v0, v2, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const-string v0, "ApiUtil"

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 715
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v4, 0x40

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_4f

    .line 716
    array-length v3, p0

    if-lez v3, :cond_4f

    .line 717
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_25

    .line 718
    aget-object p0, p0, v4

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 720
    :cond_25
    new-instance v3, Lcom/startapp/common/a/c$2;

    invoke-direct {v3}, Lcom/startapp/common/a/c$2;-><init>()V

    invoke-static {p0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    :goto_32
    array-length v6, p0

    if-ge v4, v6, :cond_4a

    .line 729
    aget-object v6, p0, v4

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    array-length v6, p0

    sub-int/2addr v6, v5

    if-ge v4, v6, :cond_47

    const/16 v6, 0x3b

    .line 731
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 735
    :cond_4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4f
    const-string p0, "getApkSignature: empty signatures"

    .line 738
    invoke-static {v0, v2, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_54} :catch_55

    return-object v1

    :catch_55
    move-exception p0

    const-string v3, "getApkSignature"

    .line 742
    invoke-static {v0, v2, v3, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2000

    :try_start_7
    new-array v1, v1, [B

    .line 603
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    .line 605
    :cond_d
    :goto_d
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1b

    if-lez v2, :cond_d

    .line 609
    invoke-virtual {p2, v1, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_d

    .line 614
    :cond_1b
    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    .line 615
    :goto_1f
    array-length v1, p2

    if-ge v4, v1, :cond_39

    .line 617
    aget-byte v1, p2, v4

    and-int/lit16 v1, v1, 0xff

    add-int/lit16 v1, v1, 0x100

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_36} :catch_46
    .catchall {:try_start_7 .. :try_end_36} :catchall_3f

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_39
    if-eqz p1, :cond_4a

    .line 624
    :goto_3b
    :try_start_3b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_4a

    goto :goto_4a

    :catchall_3f
    move-exception p2

    if-eqz p1, :cond_45

    :try_start_42
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_45

    .line 626
    :catch_45
    :cond_45
    throw p2

    :catch_46
    nop

    if-eqz p1, :cond_4a

    goto :goto_3b

    .line 629
    :catch_4a
    :cond_4a
    :goto_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 580
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 583
    :try_start_5
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x80

    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 584
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-object p2, v1

    :goto_13
    if-eqz p2, :cond_1e

    .line 591
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/startapp/common/a/c;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1e
    return-object v1
.end method
