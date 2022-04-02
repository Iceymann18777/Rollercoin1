.class public Lcom/startapp/android/publish/ads/splash/f;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static transient a:Lcom/startapp/android/publish/ads/splash/f; = null

.field private static b:Ljava/lang/Object; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private SplashConfig:Lcom/startapp/android/publish/ads/splash/SplashConfig;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private splashMetadataUpdateVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/startapp/android/publish/ads/splash/f;

    invoke-direct {v0}, Lcom/startapp/android/publish/ads/splash/f;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/ads/splash/f;->a:Lcom/startapp/android/publish/ads/splash/f;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/ads/splash/f;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/startapp/android/publish/ads/splash/SplashConfig;

    invoke-direct {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/splash/f;->SplashConfig:Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 22
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/splash/f;->splashMetadataUpdateVersion:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    .line 46
    const-class v0, Lcom/startapp/android/publish/ads/splash/f;

    const-string v1, "StartappSplashMetadata"

    invoke-static {p0, v1, v0}, Lcom/startapp/common/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/ads/splash/f;

    .line 47
    new-instance v1, Lcom/startapp/android/publish/ads/splash/f;

    invoke-direct {v1}, Lcom/startapp/android/publish/ads/splash/f;-><init>()V

    if-eqz v0, :cond_29

    .line 49
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 50
    invoke-direct {v0}, Lcom/startapp/android/publish/ads/splash/f;->c()Z

    move-result v2

    if-nez v2, :cond_26

    if-eqz v1, :cond_26

    .line 51
    sget-object v1, Lcom/startapp/android/publish/adsCommon/f/d;->k:Lcom/startapp/android/publish/adsCommon/f/d;

    const-string v2, "SplashMetaData"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3, v3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_26
    sput-object v0, Lcom/startapp/android/publish/ads/splash/f;->a:Lcom/startapp/android/publish/ads/splash/f;

    goto :goto_2b

    .line 56
    :cond_29
    sput-object v1, Lcom/startapp/android/publish/ads/splash/f;->a:Lcom/startapp/android/publish/ads/splash/f;

    :goto_2b
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/f;)V
    .registers 4

    .line 38
    sget-object v0, Lcom/startapp/android/publish/ads/splash/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_3
    sget-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants;->h:Ljava/lang/String;

    iput-object v1, p1, Lcom/startapp/android/publish/ads/splash/f;->splashMetadataUpdateVersion:Ljava/lang/String;

    .line 40
    sput-object p1, Lcom/startapp/android/publish/ads/splash/f;->a:Lcom/startapp/android/publish/ads/splash/f;

    const-string v1, "StartappSplashMetadata"

    .line 41
    invoke-static {p0, v1, p1}, Lcom/startapp/common/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 42
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public static b()Lcom/startapp/android/publish/ads/splash/f;
    .registers 1

    .line 34
    sget-object v0, Lcom/startapp/android/publish/ads/splash/f;->a:Lcom/startapp/android/publish/ads/splash/f;

    return-object v0
.end method

.method private c()Z
    .registers 3

    .line 61
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/splash/f;->splashMetadataUpdateVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public a()Lcom/startapp/android/publish/ads/splash/SplashConfig;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/f;->SplashConfig:Lcom/startapp/android/publish/ads/splash/SplashConfig;

    return-object v0
.end method
