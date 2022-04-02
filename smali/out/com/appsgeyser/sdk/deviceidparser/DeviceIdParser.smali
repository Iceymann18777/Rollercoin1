.class public Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;
.super Ljava/lang/Object;
.source "DeviceIdParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;
    }
.end annotation


# static fields
.field private static instance:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;


# instance fields
.field private final deviceIdParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->deviceIdParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->deviceIdParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->generateParametersCopy()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    move-result-object p0

    return-object p0
.end method

.method private generateParametersCopy()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;
    .registers 2

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->deviceIdParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    .line 111
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 3

    const/4 v0, 0x0

    .line 45
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_10
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_5} :catch_b
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p1

    :catch_6
    move-exception p1

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->printStackTrace()V

    return-object v0

    :catch_b
    move-exception p1

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->printStackTrace()V

    return-object v0

    :catch_10
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method private getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;
    .registers 1

    .line 25
    sget-object v0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->instance:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->instance:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    .line 28
    :cond_b
    sget-object v0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->instance:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    return-object v0
.end method


# virtual methods
.method public getDeviceIdParameters()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->deviceIdParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    return-object v0
.end method

.method public rescan(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;)V
    .registers 5

    .line 39
    new-instance v0, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;-><init>(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/content/Context;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-virtual {v0, p2}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser$ParserThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
