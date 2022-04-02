.class public Lcom/mopub/common/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/util/DeviceUtils$IP;,
        Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    }
.end annotation


# static fields
.field private static final MAX_DISK_CACHE_SIZE:I = 0x6400000

.field private static final MAX_MEMORY_CACHE_SIZE:I = 0x1e00000

.field private static final MIN_DISK_CACHE_SIZE:I = 0x1e00000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static diskCacheSizeBytes(Ljava/io/File;)J
    .registers 3

    const-wide/32 v0, 0x1e00000

    .line 131
    invoke-static {p0, v0, v1}, Lcom/mopub/common/util/DeviceUtils;->diskCacheSizeBytes(Ljava/io/File;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static diskCacheSizeBytes(Ljava/io/File;J)J
    .registers 8

    .line 119
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v3, p0

    mul-long v1, v1, v3

    const-wide/16 v3, 0x32

    .line 121
    div-long p1, v1, v3
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_27

    .line 123
    :catch_1a
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Unable to calculate 2% of available disk space, defaulting to minimum"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_27
    const-wide/32 v0, 0x6400000

    .line 127
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    const-wide/32 v0, 0x1e00000

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getDeviceDimensions(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 4

    const-string v0, "window"

    .line 219
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 222
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 223
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 224
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 225
    iget v0, v1, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 226
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_28

    :cond_27
    move-object v0, v1

    :goto_28
    if-nez v1, :cond_3e

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 233
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 234
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 237
    :cond_3e
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public static getHashedUdid(Landroid/content/Context;)Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIpAddress(Lcom/mopub/common/util/DeviceUtils$IP;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getScreenOrientation(Landroid/app/Activity;)I
    .registers 2

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 138
    invoke-static {v0, p0}, Lcom/mopub/common/util/DeviceUtils;->getScreenOrientationFromRotationAndOrientation(II)I

    move-result p0

    return p0
.end method

.method static getScreenOrientationFromRotationAndOrientation(II)I
    .registers 6

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
    const/4 v3, 0x0

    if-ne v1, p1, :cond_18

    if-eq p0, v1, :cond_15

    const/4 p1, 0x3

    if-eq p0, p1, :cond_15

    return v3

    :cond_15
    const/16 p0, 0x8

    return p0

    .line 165
    :cond_18
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "Unknown screen orientation. Defaulting to portrait."

    aput-object v1, p1, v3

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "android.permission.INTERNET"

    .line 75
    invoke-static {p0, v1}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    :cond_d
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 84
    invoke-static {p0, v1}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    :try_start_17
    const-string v1, "connectivity"

    .line 91
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 92
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_27} :catch_28

    return p0

    :catch_28
    return v0
.end method

.method public static isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 242
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 243
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 248
    :try_start_7
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_e

    if-nez p0, :cond_e

    const/4 v0, 0x1

    :catch_e
    :cond_e
    return v0
.end method

.method public static lockOrientation(Landroid/app/Activity;Lcom/mopub/common/CreativeOrientation;)V
    .registers 6

    .line 176
    invoke-static {p1}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {p0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_45

    :cond_d
    const-string v0, "window"

    .line 180
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 184
    invoke-static {v0, v1}, Lcom/mopub/common/util/DeviceUtils;->getScreenOrientationFromRotationAndOrientation(II)I

    move-result v0

    .line 188
    sget-object v1, Lcom/mopub/common/CreativeOrientation;->PORTRAIT:Lcom/mopub/common/CreativeOrientation;

    const/16 v2, 0x8

    const/16 v3, 0x9

    if-ne v1, p1, :cond_3a

    if-ne v3, v0, :cond_38

    const/16 v2, 0x9

    goto :goto_42

    :cond_38
    const/4 v2, 0x1

    goto :goto_42

    .line 194
    :cond_3a
    sget-object v1, Lcom/mopub/common/CreativeOrientation;->LANDSCAPE:Lcom/mopub/common/CreativeOrientation;

    if-ne v1, p1, :cond_45

    if-ne v2, v0, :cond_41

    goto :goto_42

    :cond_41
    const/4 v2, 0x0

    .line 205
    :goto_42
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_45
    :goto_45
    return-void
.end method

.method public static memoryCacheSizeBytes(Landroid/content/Context;)I
    .registers 8

    const-string v0, "activity"

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 101
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    int-to-long v1, v1

    .line 104
    :try_start_d
    const-class v3, Landroid/content/pm/ApplicationInfo;

    const-string v4, "FLAG_LARGE_HEAP"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p0, v3}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result p0

    if-eqz p0, :cond_47

    .line 106
    new-instance p0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v3, "getLargeMemoryClass"

    invoke-direct {p0, v0, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_37} :catch_3a

    int-to-long v0, p0

    move-wide v1, v0

    goto :goto_47

    .line 109
    :catch_3a
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Unable to reflectively determine large heap size."

    aput-object v4, v0, v3

    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_47
    :goto_47
    const-wide/32 v3, 0x1e00000

    const-wide/16 v5, 0x8

    .line 112
    div-long/2addr v1, v5

    const-wide/16 v5, 0x400

    mul-long v1, v1, v5

    mul-long v1, v1, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method
