.class public Lcom/yandex/metrica/impl/interact/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/yandex/metrica/impl/interact/DeviceInfo;


# instance fields
.field public final appPlatform:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field public final deviceRootStatus:Ljava/lang/String;

.field public final deviceRootStatusMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final deviceType:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public final manufacturer:Ljava/lang/String;

.field public final model:Ljava/lang/String;

.field public final osVersion:Ljava/lang/String;

.field public final platform:Ljava/lang/String;

.field public final platformDeviceId:Ljava/lang/String;

.field public final scaleFactor:F

.field public final screenDpi:I

.field public final screenHeight:I

.field public final screenWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    const-string v0, "android"

    .line 47
    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->platform:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->appPlatform:Ljava/lang/String;

    .line 1198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->platformDeviceId:Ljava/lang/String;

    .line 2190
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->manufacturer:Ljava/lang/String;

    .line 2194
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->model:Ljava/lang/String;

    .line 52
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->osVersion:Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    .line 2215
    invoke-static {p1}, Lcom/yandex/metrica/impl/am;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 53
    iput p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->screenWidth:I

    .line 54
    iget-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    .line 2219
    invoke-static {p1}, Lcom/yandex/metrica/impl/am;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 54
    iput p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->screenHeight:I

    .line 55
    iget-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    .line 3182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 55
    iput p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->screenDpi:I

    .line 56
    iget-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    .line 3186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 56
    iput p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->scaleFactor:F

    .line 57
    iget-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/yandex/metrica/impl/am;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->locale:Ljava/lang/String;

    .line 58
    iget-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    .line 4110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4112
    invoke-static {p1}, Lcom/yandex/metrica/impl/am;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 4114
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 4115
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 4117
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, v2

    div-float v3, v2, v0

    int-to-float v1, v1

    div-float v4, v1, v0

    .line 4120
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x43200000    # 160.0f

    mul-float v0, v0, v4

    div-float/2addr v2, v0

    div-float/2addr v1, v0

    mul-float v2, v2, v2

    mul-float v1, v1, v1

    add-float/2addr v2, v1

    float-to-double v0, v2

    .line 4125
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    cmpl-double v2, v0, v4

    if-ltz v2, :cond_9d

    .line 4142
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "android.hardware.touchscreen"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9d

    const/4 p1, 0x1

    goto :goto_9e

    :cond_9d
    const/4 p1, 0x0

    :goto_9e
    if-eqz p1, :cond_a3

    .line 4128
    sget-object p1, Lcom/yandex/metrica/a;->c:Lcom/yandex/metrica/a;

    goto :goto_b5

    :cond_a3
    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    cmpl-double p1, v0, v4

    if-gez p1, :cond_b3

    const/high16 p1, 0x44160000    # 600.0f

    cmpl-float p1, v3, p1

    if-ltz p1, :cond_b0

    goto :goto_b3

    .line 4135
    :cond_b0
    sget-object p1, Lcom/yandex/metrica/a;->a:Lcom/yandex/metrica/a;

    goto :goto_b5

    .line 4132
    :cond_b3
    :goto_b3
    sget-object p1, Lcom/yandex/metrica/a;->b:Lcom/yandex/metrica/a;

    .line 58
    :goto_b5
    invoke-virtual {p1}, Lcom/yandex/metrica/a;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->deviceType:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/yandex/metrica/impl/am$a;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->deviceRootStatus:Ljava/lang/String;

    .line 60
    new-instance p1, Lcom/yandex/metrica/impl/interact/DeviceInfo$1;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/interact/DeviceInfo$1;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->deviceRootStatusMarkers:Ljava/util/List;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;
    .registers 3

    .line 35
    sget-object v0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->a:Lcom/yandex/metrica/impl/interact/DeviceInfo;

    if-nez v0, :cond_1b

    .line 36
    const-class v0, Lcom/yandex/metrica/impl/interact/DeviceInfo;

    monitor-enter v0

    .line 37
    :try_start_7
    sget-object v1, Lcom/yandex/metrica/impl/interact/DeviceInfo;->a:Lcom/yandex/metrica/impl/interact/DeviceInfo;

    if-nez v1, :cond_16

    .line 38
    new-instance v1, Lcom/yandex/metrica/impl/interact/DeviceInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/interact/DeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yandex/metrica/impl/interact/DeviceInfo;->a:Lcom/yandex/metrica/impl/interact/DeviceInfo;

    .line 40
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 42
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->a:Lcom/yandex/metrica/impl/interact/DeviceInfo;

    return-object p0
.end method


# virtual methods
.method public getLocale()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/am;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/DeviceInfo;->locale:Ljava/lang/String;

    return-object v0
.end method
