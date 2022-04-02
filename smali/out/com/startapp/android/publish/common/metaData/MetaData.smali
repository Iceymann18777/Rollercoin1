.class public Lcom/startapp/android/publish/common/metaData/MetaData;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/common/metaData/MetaData$a;,
        Lcom/startapp/android/publish/common/metaData/MetaData$b;
    }
.end annotation


# static fields
.field public static final DEFAULT_AD_PLATFORM_HOST:Ljava/lang/String;

.field public static final DEFAULT_ALWAYS_SEND_TOKEN:Z = true

.field public static final DEFAULT_ASSETS_BASE_URL_SECURED:Ljava/lang/String; = ""

.field public static final DEFAULT_BT_ENABLED:Z = false

.field public static final DEFAULT_COMPRESSION_ENABLED:Z = false

.field public static final DEFAULT_INAPPBROWSER:Z = true

.field public static final DEFAULT_INSTALLERS_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INVALID_NETWORK_CODES_INFO_EVENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LAST_KNOWN_LOCATION_THRESHOLD:J = 0x1eL

.field public static final DEFAULT_LOCATION_SOURCE:Ljava/lang/String; = "API"

.field public static final DEFAULT_METADATA_HOST:Ljava/lang/String;

.field public static final DEFAULT_OM_SDK_STATE:Z = false

.field public static final DEFAULT_PERIODIC_INFOEVENT_ENABLED:Z = false

.field public static final DEFAULT_PERIODIC_INFOEVENT_INTERVAL:I = 0x168

.field public static final DEFAULT_PERIODIC_INFOEVENT_INTERVALS:[I

.field public static final DEFAULT_PERIODIC_INFOEVENT_ON_RUN_TIME:Z = false

.field public static final DEFAULT_PERIODIC_METADATA_ENABLED:Z = false

.field public static final DEFAULT_PERIODIC_METADATA_INTERVAL:I = 0x168

.field public static final DEFAULT_PRE_INSTALLED_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PROFILE_ID:Ljava/lang/String;

.field public static final DEFAULT_SESSION_MAX_BACKGROUND_TIME:I = 0x708

.field public static final DEFAULT_SIMPLE_TOKEN_ENABLED:Z = true

.field public static final DEFAULT_STOP_AUTO_LOAD_AMOUNT:I = 0x3

.field public static final DEFAULT_STOP_AUTO_LOAD_PRE_CAHE_AMOUNT:I = 0x3

.field public static final DEFAULT_WF_SCAN_ENABLED:Z = false

.field public static final KEY_METADATA:Ljava/lang/String; = "metaData"

.field private static transient instance:Lcom/startapp/android/publish/common/metaData/MetaData; = null

.field private static transient lock:Ljava/lang/Object; = null

.field private static final serialVersionUID:J = 0x1L

.field private static transient task:Lcom/startapp/android/publish/common/metaData/c;


# instance fields
.field private IABDisplayImpressionDelayInSeconds:J

.field private IABVideoImpressionDelayInSeconds:J

.field private SimpleToken:Lcom/startapp/android/publish/common/metaData/h;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private SupportIABViewability:Z

.field private adPlatformBannerHostSecured:Ljava/lang/String;

.field public adPlatformHostSecured:Ljava/lang/String;

.field private adPlatformNativeHostSecured:Ljava/lang/String;

.field private adPlatformOverlayHostSecured:Ljava/lang/String;

.field private adPlatformReturnHostSecured:Ljava/lang/String;

.field private adPlatformSplashHostSecured:Ljava/lang/String;

.field private alwaysSendToken:Z

.field public analytics:Lcom/startapp/android/publish/adsCommon/f/a;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private assetsBaseUrlSecured:Ljava/lang/String;

.field private btConfig:Lcom/startapp/android/publish/common/metaData/b;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private btEnabled:Z

.field private chromeCustomeTabsExternal:Z

.field private chromeCustomeTabsInternal:Z

.field private compressionEnabled:Z

.field private dns:Z

.field private inAppBrowser:Z

.field private inAppBrowserPreLoad:Lcom/startapp/android/publish/common/metaData/MetaData$b;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/common/metaData/MetaData$b;
    .end annotation
.end field

.field private installersList:Ljava/util/Set;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Ljava/util/HashSet;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private invalidForRetry:Ljava/util/Set;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Ljava/util/HashSet;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private invalidNetworkCodesInfoEvents:Ljava/util/Set;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Ljava/util/HashSet;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isToken1Mandatory:Z

.field private transient loading:Z

.field private location:Lcom/startapp/android/publish/common/metaData/LocationConfig;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field public metaDataHostSecured:Ljava/lang/String;

.field private transient metaDataListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/metaData/d;",
            ">;"
        }
    .end annotation
.end field

.field private metadataUpdateVersion:Ljava/lang/String;

.field private omSdkEnabled:Z

.field private periodicEventIntMin:[I

.field private periodicInfoEventEnabled:Z

.field private periodicInfoEventIntervalInMinutes:I

.field private periodicInfoEventOnRunTimeEnabled:Z

.field private periodicMetaDataEnabled:Z

.field private periodicMetaDataIntervalInMinutes:I

.field private preInstalledPackages:Ljava/util/Set;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Ljava/util/HashSet;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private profileId:Ljava/lang/String;

.field private transient ready:Z

.field private sensorsConfig:Lcom/startapp/android/publish/common/metaData/g;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private sessionMaxBackgroundTime:I

.field private simpleToken2:Z

.field private stopAutoLoadAmount:I

.field private stopAutoLoadPreCacheAmount:I

.field private trueNetEnabled:Z

.field private userAgentDelayInSeconds:J

.field private userAgentEnabled:Z

.field private webViewSecured:Z

.field private wfScanEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->lock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    sget-object v3, Lcom/startapp/common/Constants;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_INSTALLERS_LIST:Ljava/util/Set;

    .line 82
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0x25

    new-array v2, v2, [B

    fill-array-data v2, :array_88

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_METADATA_HOST:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_a0

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_AD_PLATFORM_HOST:Ljava/lang/String;

    const/4 v0, 0x0

    .line 89
    sput-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_PROFILE_ID:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 124
    fill-array-data v0, :array_b6

    sput-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_PERIODIC_INFOEVENT_INTERVALS:[I

    .line 129
    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    const/16 v5, 0x13

    new-array v5, v5, [B

    fill-array-data v5, :array_c0

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/String;

    const/16 v5, 0x12

    new-array v5, v5, [B

    fill-array-data v5, :array_ce

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v3, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_PRE_INSTALLED_PACKAGES:Ljava/util/Set;

    .line 134
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0xcc

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 134
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_INVALID_NETWORK_CODES_INFO_EVENTS:Ljava/util/Set;

    .line 146
    new-instance v0, Lcom/startapp/android/publish/common/metaData/MetaData;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->instance:Lcom/startapp/android/publish/common/metaData/MetaData;

    return-void

    :array_88
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x73t
        0x3at
        0x2ft
        0x2ft
        0x69t
        0x6et
        0x69t
        0x74t
        0x2et
        0x73t
        0x74t
        0x61t
        0x72t
        0x74t
        0x61t
        0x70t
        0x70t
        0x73t
        0x65t
        0x72t
        0x76t
        0x69t
        0x63t
        0x65t
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x2ft
        0x31t
        0x2et
        0x35t
        0x2ft
    .end array-data

    nop

    :array_a0
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x73t
        0x3at
        0x2ft
        0x2ft
        0x72t
        0x65t
        0x71t
        0x2et
        0x73t
        0x74t
        0x61t
        0x72t
        0x74t
        0x61t
        0x70t
        0x70t
        0x73t
        0x65t
        0x72t
        0x76t
        0x69t
        0x63t
        0x65t
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x2ft
        0x31t
        0x2et
        0x35t
        0x2ft
    .end array-data

    :array_b6
    .array-data 4
        0x3c
        0x3c
        0xf0
    .end array-data

    :array_c0
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x66t
        0x61t
        0x63t
        0x65t
        0x62t
        0x6ft
        0x6ft
        0x6bt
        0x2et
        0x6bt
        0x61t
        0x74t
        0x61t
        0x6et
        0x61t
    .end array-data

    :array_ce
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x79t
        0x61t
        0x6et
        0x64t
        0x65t
        0x78t
        0x2et
        0x62t
        0x72t
        0x6ft
        0x77t
        0x73t
        0x65t
        0x72t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 5

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/startapp/android/publish/common/metaData/h;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/metaData/h;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->SimpleToken:Lcom/startapp/android/publish/common/metaData/h;

    .line 201
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_METADATA_HOST:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataHostSecured:Ljava/lang/String;

    .line 203
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_AD_PLATFORM_HOST:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformHostSecured:Ljava/lang/String;

    const/16 v0, 0x708

    .line 213
    iput v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->sessionMaxBackgroundTime:I

    .line 214
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_PROFILE_ID:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->profileId:Ljava/lang/String;

    .line 227
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_INSTALLERS_LIST:Ljava/util/Set;

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->installersList:Ljava/util/Set;

    .line 230
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_PRE_INSTALLED_PACKAGES:Ljava/util/Set;

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->preInstalledPackages:Ljava/util/Set;

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->simpleToken2:Z

    .line 235
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->alwaysSendToken:Z

    .line 237
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->isToken1Mandatory:Z

    const/4 v1, 0x0

    .line 239
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->compressionEnabled:Z

    .line 241
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->btEnabled:Z

    .line 249
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicMetaDataEnabled:Z

    const/16 v2, 0x168

    .line 250
    iput v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicMetaDataIntervalInMinutes:I

    .line 253
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicInfoEventEnabled:Z

    .line 254
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicInfoEventOnRunTimeEnabled:Z

    .line 255
    iput v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicInfoEventIntervalInMinutes:I

    .line 256
    sget-object v2, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_PERIODIC_INFOEVENT_INTERVALS:[I

    iput-object v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicEventIntMin:[I

    .line 259
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->inAppBrowser:Z

    .line 262
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->SupportIABViewability:Z

    const-wide/16 v2, 0x1

    .line 263
    iput-wide v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->IABDisplayImpressionDelayInSeconds:J

    const-wide/16 v2, 0x2

    .line 264
    iput-wide v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->IABVideoImpressionDelayInSeconds:J

    const-wide/16 v2, 0x5

    .line 267
    iput-wide v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->userAgentDelayInSeconds:J

    .line 268
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->userAgentEnabled:Z

    .line 271
    new-instance v2, Lcom/startapp/android/publish/common/metaData/g;

    invoke-direct {v2}, Lcom/startapp/android/publish/common/metaData/g;-><init>()V

    iput-object v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->sensorsConfig:Lcom/startapp/android/publish/common/metaData/g;

    .line 275
    new-instance v2, Lcom/startapp/android/publish/common/metaData/b;

    invoke-direct {v2}, Lcom/startapp/android/publish/common/metaData/b;-><init>()V

    iput-object v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->btConfig:Lcom/startapp/android/publish/common/metaData/b;

    const-string v2, ""

    .line 282
    iput-object v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->assetsBaseUrlSecured:Ljava/lang/String;

    .line 287
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->invalidForRetry:Ljava/util/Set;

    .line 290
    sget-object v2, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_INVALID_NETWORK_CODES_INFO_EVENTS:Ljava/util/Set;

    iput-object v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->invalidNetworkCodesInfoEvents:Ljava/util/Set;

    .line 299
    new-instance v2, Lcom/startapp/android/publish/adsCommon/f/a;

    invoke-direct {v2}, Lcom/startapp/android/publish/adsCommon/f/a;-><init>()V

    iput-object v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->analytics:Lcom/startapp/android/publish/adsCommon/f/a;

    .line 306
    new-instance v2, Lcom/startapp/android/publish/common/metaData/LocationConfig;

    invoke-direct {v2}, Lcom/startapp/android/publish/common/metaData/LocationConfig;-><init>()V

    iput-object v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->location:Lcom/startapp/android/publish/common/metaData/LocationConfig;

    .line 309
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->wfScanEnabled:Z

    .line 311
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->loading:Z

    .line 312
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->ready:Z

    .line 314
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataListeners:Ljava/util/List;

    .line 316
    sget-object v2, Lcom/startapp/android/publish/adsCommon/AdsConstants;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->metadataUpdateVersion:Ljava/lang/String;

    .line 321
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->dns:Z

    const/4 v2, 0x3

    .line 323
    iput v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->stopAutoLoadAmount:I

    .line 325
    iput v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->stopAutoLoadPreCacheAmount:I

    .line 327
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->trueNetEnabled:Z

    .line 329
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->webViewSecured:Z

    .line 331
    iput-boolean v1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->omSdkEnabled:Z

    .line 333
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->chromeCustomeTabsInternal:Z

    .line 334
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->chromeCustomeTabsExternal:Z

    return-void
.end method

.method public static failedLoading()V
    .registers 4

    .line 411
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_3
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    iget-object v1, v1, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataListeners:Ljava/util/List;

    if-eqz v1, :cond_20

    .line 413
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v2

    iget-object v2, v2, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 414
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v2

    iget-object v2, v2, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 416
    :goto_21
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/startapp/android/publish/common/metaData/MetaData;->loading:Z

    .line 417
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_40

    if-eqz v1, :cond_3f

    .line 420
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/common/metaData/d;

    .line 421
    invoke-interface {v1}, Lcom/startapp/android/publish/common/metaData/d;->b()V

    goto :goto_2f

    :cond_3f
    return-void

    :catchall_40
    move-exception v1

    .line 417
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    goto :goto_44

    :goto_43
    throw v1

    :goto_44
    goto :goto_43
.end method

.method public static getHostForWebview(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x1a

    if-gt p1, v0, :cond_a

    if-eqz p2, :cond_7

    goto :goto_a

    :cond_7
    const-string p1, "http"

    goto :goto_c

    :cond_a
    :goto_a
    const-string p1, "https"

    .line 722
    :goto_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3f

    const/16 p2, 0x3a

    .line 723
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3f

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3f
    return-object p0
.end method

.method public static getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;
    .registers 1

    .line 882
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->instance:Lcom/startapp/android/publish/common/metaData/MetaData;

    return-object v0
.end method

.method public static getLock()Ljava/lang/Object;
    .registers 1

    .line 474
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 5

    .line 353
    const-class v0, Lcom/startapp/android/publish/common/metaData/MetaData;

    const-string v1, "StartappMetadata"

    invoke-static {p0, v1, v0}, Lcom/startapp/common/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/common/metaData/MetaData;

    .line 354
    new-instance v1, Lcom/startapp/android/publish/common/metaData/MetaData;

    invoke-direct {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;-><init>()V

    if-eqz v0, :cond_2c

    .line 356
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 357
    invoke-direct {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->isMetaDataVersionChanged()Z

    move-result v2

    if-nez v2, :cond_26

    if-eqz v1, :cond_26

    .line 358
    sget-object v1, Lcom/startapp/android/publish/adsCommon/f/d;->k:Lcom/startapp/android/publish/adsCommon/f/d;

    const-string v2, "MetaData"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3, v3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_26
    invoke-direct {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->initTransientFields()V

    .line 361
    sput-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->instance:Lcom/startapp/android/publish/common/metaData/MetaData;

    goto :goto_2e

    .line 363
    :cond_2c
    sput-object v1, Lcom/startapp/android/publish/common/metaData/MetaData;->instance:Lcom/startapp/android/publish/common/metaData/MetaData;

    .line 366
    :goto_2e
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/startapp/android/publish/common/metaData/MetaData;->applyAdPlatformProtocolToHosts()V

    return-void
.end method

.method private initTransientFields()V
    .registers 2

    const/4 v0, 0x0

    .line 949
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->loading:Z

    .line 950
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->ready:Z

    .line 951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataListeners:Ljava/util/List;

    return-void
.end method

.method public static isLoadedFromServer(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "StartappMetadata"

    .line 427
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private isMetaDataVersionChanged()Z
    .registers 3

    .line 490
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->metadataUpdateVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static preCacheResources(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11

    if-eqz p1, :cond_13b

    const-string v0, ""

    .line 960
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13b

    const-string v0, "close_button.png"

    const-string v1, ".png"

    .line 962
    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3c

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 963
    new-instance v0, Lcom/startapp/common/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "close_button"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/startapp/android/publish/common/metaData/MetaData$a;

    invoke-direct {v5, p0, v4}, Lcom/startapp/android/publish/common/metaData/MetaData$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v3, v5, v2}, Lcom/startapp/common/a;-><init>(Ljava/lang/String;Lcom/startapp/common/a$a;I)V

    .line 965
    invoke-virtual {v0}, Lcom/startapp/common/a;->a()V

    :cond_3c
    const-wide/16 v3, 0x100

    .line 967
    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 968
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->k:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_48
    if-ge v4, v3, :cond_83

    aget-object v5, v0, v4

    .line 969
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v1}, Lcom/startapp/android/publish/adsCommon/Utils/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_80

    .line 970
    new-instance v6, Lcom/startapp/common/a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/startapp/android/publish/common/metaData/MetaData$a;

    invoke-direct {v8, p0, v5}, Lcom/startapp/android/publish/common/metaData/MetaData$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v6, v7, v8, v2}, Lcom/startapp/common/a;-><init>(Ljava/lang/String;Lcom/startapp/common/a$a;I)V

    .line 972
    invoke-virtual {v6}, Lcom/startapp/common/a;->a()V

    :cond_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_83
    const-wide/16 v3, 0x40

    .line 976
    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 977
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->l:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_8f
    if-ge v4, v3, :cond_ca

    aget-object v5, v0, v4

    .line 978
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v1}, Lcom/startapp/android/publish/adsCommon/Utils/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c7

    .line 979
    new-instance v6, Lcom/startapp/common/a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/startapp/android/publish/common/metaData/MetaData$a;

    invoke-direct {v8, p0, v5}, Lcom/startapp/android/publish/common/metaData/MetaData$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v6, v7, v8, v2}, Lcom/startapp/common/a;-><init>(Ljava/lang/String;Lcom/startapp/common/a$a;I)V

    .line 981
    invoke-virtual {v6}, Lcom/startapp/common/a;->a()V

    :cond_c7
    add-int/lit8 v4, v4, 0x1

    goto :goto_8f

    :cond_ca
    const-string v0, "logo.png"

    .line 984
    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13b

    .line 985
    new-instance v0, Lcom/startapp/common/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "logo"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/startapp/android/publish/common/metaData/MetaData$a;

    invoke-direct {v3, p0, p1}, Lcom/startapp/android/publish/common/metaData/MetaData$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1, v3, v2}, Lcom/startapp/common/a;-><init>(Ljava/lang/String;Lcom/startapp/common/a$a;I)V

    .line 987
    invoke-virtual {v0}, Lcom/startapp/common/a;->a()V

    goto :goto_13b

    :cond_f4
    const-wide/16 v3, 0x20

    .line 990
    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 991
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->l:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_100
    if-ge v4, v3, :cond_13b

    aget-object v5, v0, v4

    .line 992
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v1}, Lcom/startapp/android/publish/adsCommon/Utils/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_138

    .line 993
    new-instance v6, Lcom/startapp/common/a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/startapp/android/publish/common/metaData/MetaData$a;

    invoke-direct {v8, p0, v5}, Lcom/startapp/android/publish/common/metaData/MetaData$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v6, v7, v8, v2}, Lcom/startapp/common/a;-><init>(Ljava/lang/String;Lcom/startapp/common/a$a;I)V

    .line 995
    invoke-virtual {v6}, Lcom/startapp/common/a;->a()V

    :cond_138
    add-int/lit8 v4, v4, 0x1

    goto :goto_100

    :cond_13b
    :goto_13b
    return-void
.end method

.method private replaceAdProtocol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_b

    const-string p2, "%AdPlatformProtocol%"

    const-string v0, "1.5"

    .line 942
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    return-object p2
.end method

.method public static update(Landroid/content/Context;Lcom/startapp/android/publish/common/metaData/MetaData;)V
    .registers 6

    .line 370
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_3
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    iget-object v1, v1, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataListeners:Ljava/util/List;

    iput-object v1, p1, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataListeners:Ljava/util/List;

    .line 374
    sput-object p1, Lcom/startapp/android/publish/common/metaData/MetaData;->instance:Lcom/startapp/android/publish/common/metaData/MetaData;

    .line 376
    invoke-static {}, Lcom/startapp/common/Constants;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_24

    const-string v1, "MetaData received:"

    .line 377
    invoke-static {v2, v1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 379
    invoke-static {p1}, Lcom/startapp/common/c/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 382
    :cond_24
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->applyAdPlatformProtocolToHosts()V

    .line 384
    sget-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants;->h:Ljava/lang/String;

    iput-object v1, p1, Lcom/startapp/android/publish/common/metaData/MetaData;->metadataUpdateVersion:Ljava/lang/String;

    const-string v1, "StartappMetadata"

    .line 385
    invoke-static {p0, v1, p1}, Lcom/startapp/common/a/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "MetaData saved:"

    .line 386
    invoke-static {v2, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p1

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/startapp/android/publish/common/metaData/MetaData;->loading:Z

    .line 391
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p1

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/startapp/android/publish/common/metaData/MetaData;->ready:Z

    .line 393
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p1

    iget-object p1, p1, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataListeners:Ljava/util/List;

    if-eqz p1, :cond_77

    .line 394
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v3

    iget-object v3, v3, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 395
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v3

    iget-object v3, v3, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 396
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_67
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapp/android/publish/common/metaData/d;

    .line 397
    invoke-interface {v3}, Lcom/startapp/android/publish/common/metaData/d;->a()V

    goto :goto_67

    :cond_77
    const-string p1, "totalSessions"

    .line 401
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "totalSessions"

    add-int/2addr p1, v2

    .line 402
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p0, 0x0

    .line 404
    sput-object p0, Lcom/startapp/android/publish/common/metaData/MetaData;->task:Lcom/startapp/android/publish/common/metaData/c;

    .line 405
    monitor-exit v0

    return-void

    :catchall_94
    move-exception p0

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_94

    goto :goto_98

    :goto_97
    throw p0

    :goto_98
    goto :goto_97
.end method


# virtual methods
.method public addMetaDataListener(Lcom/startapp/android/publish/common/metaData/d;)V
    .registers 4

    .line 462
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_3
    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public applyAdPlatformProtocolToHosts()V
    .registers 3

    .line 906
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformHostSecured:Ljava/lang/String;

    sget-object v1, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_AD_PLATFORM_HOST:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->replaceAdProtocol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformHostSecured:Ljava/lang/String;

    .line 907
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataHostSecured:Ljava/lang/String;

    sget-object v1, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_METADATA_HOST:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->replaceAdProtocol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataHostSecured:Ljava/lang/String;

    .line 909
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformBannerHostSecured:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->replaceAdProtocol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformBannerHostSecured:Ljava/lang/String;

    .line 910
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformSplashHostSecured:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->replaceAdProtocol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformSplashHostSecured:Ljava/lang/String;

    .line 911
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformReturnHostSecured:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->replaceAdProtocol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformReturnHostSecured:Ljava/lang/String;

    .line 912
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformOverlayHostSecured:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->replaceAdProtocol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformOverlayHostSecured:Ljava/lang/String;

    .line 913
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformNativeHostSecured:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->replaceAdProtocol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformNativeHostSecured:Ljava/lang/String;

    return-void
.end method

.method public canShowAd()Z
    .registers 2

    .line 917
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->dns:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getAdPlatformHost()Ljava/lang/String;
    .registers 2

    .line 685
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->OVERRIDE_HOST:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 686
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->OVERRIDE_HOST:Ljava/lang/String;

    return-object v0

    .line 688
    :cond_7
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformHostSecured:Ljava/lang/String;

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_AD_PLATFORM_HOST:Ljava/lang/String;

    :goto_e
    return-object v0
.end method

.method public getAdPlatformHost(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Ljava/lang/String;
    .registers 3

    .line 693
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData$1;->a:[I

    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_44

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_30

    const/4 v0, 0x4

    if-eq p1, v0, :cond_26

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1c

    .line 705
    invoke-virtual {p0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAdPlatformHost()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 703
    :cond_1c
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformSplashHostSecured:Ljava/lang/String;

    if-eqz p1, :cond_21

    goto :goto_25

    :cond_21
    invoke-virtual {p0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAdPlatformHost()Ljava/lang/String;

    move-result-object p1

    :goto_25
    return-object p1

    .line 701
    :cond_26
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformReturnHostSecured:Ljava/lang/String;

    if-eqz p1, :cond_2b

    goto :goto_2f

    :cond_2b
    invoke-virtual {p0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAdPlatformHost()Ljava/lang/String;

    move-result-object p1

    :goto_2f
    return-object p1

    .line 699
    :cond_30
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformNativeHostSecured:Ljava/lang/String;

    if-eqz p1, :cond_35

    goto :goto_39

    :cond_35
    invoke-virtual {p0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAdPlatformHost()Ljava/lang/String;

    move-result-object p1

    :goto_39
    return-object p1

    .line 697
    :cond_3a
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformOverlayHostSecured:Ljava/lang/String;

    if-eqz p1, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-virtual {p0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAdPlatformHost()Ljava/lang/String;

    move-result-object p1

    :goto_43
    return-object p1

    .line 695
    :cond_44
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->adPlatformBannerHostSecured:Ljava/lang/String;

    if-eqz p1, :cond_49

    goto :goto_4d

    :cond_49
    invoke-virtual {p0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAdPlatformHost()Ljava/lang/String;

    move-result-object p1

    :goto_4d
    return-object p1
.end method

.method public getAnalyticsConfig()Lcom/startapp/android/publish/adsCommon/f/a;
    .registers 2

    .line 847
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->analytics:Lcom/startapp/android/publish/adsCommon/f/a;

    return-object v0
.end method

.method public getAssetsBaseUrl()Ljava/lang/String;
    .registers 2

    .line 494
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->assetsBaseUrlSecured:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    return-object v0
.end method

.method public getBluetoothConfig()Lcom/startapp/android/publish/common/metaData/b;
    .registers 2

    .line 855
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->btConfig:Lcom/startapp/android/publish/common/metaData/b;

    return-object v0
.end method

.method public getChromeCustomeTabsExternal()Z
    .registers 2

    .line 937
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->chromeCustomeTabsExternal:Z

    return v0
.end method

.method public getChromeCustomeTabsInternal()Z
    .registers 2

    .line 933
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->chromeCustomeTabsInternal:Z

    return v0
.end method

.method public getHostForWebview()Ljava/lang/String;
    .registers 4

    .line 710
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAdPlatformHost()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v2, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->webViewSecured:Z

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/common/metaData/MetaData;->getHostForWebview(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIABDisplayImpressionDelayInSeconds()J
    .registers 3

    .line 886
    iget-wide v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->IABDisplayImpressionDelayInSeconds:J

    return-wide v0
.end method

.method public getIABVideoImpressionDelayInSeconds()J
    .registers 3

    .line 890
    iget-wide v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->IABVideoImpressionDelayInSeconds:J

    return-wide v0
.end method

.method public getInAppBrowserPreLoad()Lcom/startapp/android/publish/common/metaData/MetaData$b;
    .registers 2

    .line 819
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->inAppBrowserPreLoad:Lcom/startapp/android/publish/common/metaData/MetaData$b;

    return-object v0
.end method

.method public getInstallersList()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->installersList:Ljava/util/Set;

    return-object v0
.end method

.method public getInvalidForRetry()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->invalidForRetry:Ljava/util/Set;

    if-eqz v0, :cond_5

    return-object v0

    .line 557
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getInvalidNetworkCodesInfoEvents()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->invalidNetworkCodesInfoEvents:Ljava/util/Set;

    if-eqz v0, :cond_5

    return-object v0

    .line 565
    :cond_5
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_INVALID_NETWORK_CODES_INFO_EVENTS:Ljava/util/Set;

    return-object v0
.end method

.method public getLocationConfig()Lcom/startapp/android/publish/common/metaData/LocationConfig;
    .registers 2

    .line 859
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->location:Lcom/startapp/android/publish/common/metaData/LocationConfig;

    return-object v0
.end method

.method public getMetaDataHost()Ljava/lang/String;
    .registers 2

    .line 677
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->OVERRIDE_HOST:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 678
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->OVERRIDE_HOST:Ljava/lang/String;

    return-object v0

    .line 680
    :cond_7
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataHostSecured:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodicInfoEventIntervalInMinutes(Landroid/content/Context;)I
    .registers 4

    .line 527
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicEventIntMin:[I

    if-eqz v0, :cond_8

    array-length v0, v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_c

    .line 528
    :cond_8
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_PERIODIC_INFOEVENT_INTERVALS:[I

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicEventIntMin:[I

    :cond_c
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 530
    invoke-static {p1, v0}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 531
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicEventIntMin:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    if-gtz p1, :cond_39

    .line 533
    sget-object p1, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_PERIODIC_INFOEVENT_INTERVALS:[I

    aget p1, p1, v0

    goto :goto_39

    :cond_20
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 536
    invoke-static {p1, v0}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 537
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicEventIntMin:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    if-gtz p1, :cond_39

    .line 539
    sget-object p1, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_PERIODIC_INFOEVENT_INTERVALS:[I

    aget p1, p1, v0

    goto :goto_39

    .line 543
    :cond_34
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicEventIntMin:[I

    const/4 v0, 0x2

    aget p1, p1, v0

    :cond_39
    :goto_39
    return p1
.end method

.method public getPeriodicMetaDataInterval()I
    .registers 2

    .line 506
    iget v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicMetaDataIntervalInMinutes:I

    return v0
.end method

.method public getPreInstalledPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->preInstalledPackages:Ljava/util/Set;

    if-nez v0, :cond_6

    .line 772
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->DEFAULT_PRE_INSTALLED_PACKAGES:Ljava/util/Set;

    .line 775
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .registers 2

    .line 835
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public getSensorsConfig()Lcom/startapp/android/publish/common/metaData/g;
    .registers 2

    .line 851
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->sensorsConfig:Lcom/startapp/android/publish/common/metaData/g;

    return-object v0
.end method

.method public getSessionMaxBackgroundTime()J
    .registers 4

    .line 733
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->sessionMaxBackgroundTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSimpleTokenConfig()Lcom/startapp/android/publish/common/metaData/h;
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->SimpleToken:Lcom/startapp/android/publish/common/metaData/h;

    return-object v0
.end method

.method public getStopAutoLoadAmount()I
    .registers 2

    .line 921
    iget v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->stopAutoLoadAmount:I

    return v0
.end method

.method public getStopAutoLoadPreCacheAmount()I
    .registers 2

    .line 925
    iget v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->stopAutoLoadPreCacheAmount:I

    return v0
.end method

.method public getTrueNetEnabled()Z
    .registers 2

    .line 929
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->trueNetEnabled:Z

    return v0
.end method

.method public getUserAgentDelayInSeconds()J
    .registers 3

    .line 894
    iget-wide v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->userAgentDelayInSeconds:J

    return-wide v0
.end method

.method public isAlwaysSendToken()Z
    .registers 2

    .line 791
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->alwaysSendToken:Z

    return v0
.end method

.method public isCompressionEnabled()Z
    .registers 2

    .line 803
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->compressionEnabled:Z

    return v0
.end method

.method public isInAppBrowser()Z
    .registers 3

    const-wide/16 v0, 0x100

    .line 811
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->inAppBrowser:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isLoading()Z
    .registers 2

    .line 478
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->loading:Z

    return v0
.end method

.method public isOmsdkEnabled()Z
    .registers 2

    .line 1004
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->omSdkEnabled:Z

    return v0
.end method

.method public isPeriodicInfoEventEnabled()Z
    .registers 2

    .line 514
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicInfoEventEnabled:Z

    return v0
.end method

.method public isPeriodicInfoEventOnRunTimeEnabled()Z
    .registers 2

    .line 518
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicInfoEventOnRunTimeEnabled:Z

    return v0
.end method

.method public isPeriodicMetaDataEnabled()Z
    .registers 2

    .line 498
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicMetaDataEnabled:Z

    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 482
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->ready:Z

    return v0
.end method

.method public isSimpleToken2()Z
    .registers 2

    .line 783
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->simpleToken2:Z

    return v0
.end method

.method public isSupportIABViewability()Z
    .registers 2

    .line 902
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->SupportIABViewability:Z

    return v0
.end method

.method public isToken1Mandatory()Z
    .registers 2

    .line 799
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->isToken1Mandatory:Z

    return v0
.end method

.method public isUserAgentEnabled()Z
    .registers 2

    .line 898
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->userAgentEnabled:Z

    return v0
.end method

.method public isWfScanEnabled()Z
    .registers 2

    .line 863
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->wfScanEnabled:Z

    return v0
.end method

.method public loadFromServer(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;ZLcom/startapp/android/publish/common/metaData/d;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 431
    invoke-virtual/range {v0 .. v6}, Lcom/startapp/android/publish/common/metaData/MetaData;->loadFromServer(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;ZLcom/startapp/android/publish/common/metaData/d;Z)V

    return-void
.end method

.method public loadFromServer(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;ZLcom/startapp/android/publish/common/metaData/d;Z)V
    .registers 9

    if-nez p4, :cond_7

    if-eqz p5, :cond_7

    .line 437
    invoke-interface {p5}, Lcom/startapp/android/publish/common/metaData/d;->a()V

    .line 439
    :cond_7
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_a
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->isReady()Z

    move-result v1

    if-eqz v1, :cond_20

    if-eqz p6, :cond_17

    goto :goto_20

    .line 455
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_52

    if-eqz p4, :cond_1f

    if-eqz p5, :cond_1f

    .line 457
    invoke-interface {p5}, Lcom/startapp/android/publish/common/metaData/d;->a()V

    :cond_1f
    return-void

    .line 441
    :cond_20
    :goto_20
    :try_start_20
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_2c

    if-eqz p6, :cond_45

    :cond_2c
    const/4 p6, 0x1

    .line 442
    iput-boolean p6, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->loading:Z

    const/4 p6, 0x0

    .line 443
    iput-boolean p6, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->ready:Z

    .line 444
    sget-object p6, Lcom/startapp/android/publish/common/metaData/MetaData;->task:Lcom/startapp/android/publish/common/metaData/c;

    if-eqz p6, :cond_3b

    .line 445
    sget-object p6, Lcom/startapp/android/publish/common/metaData/MetaData;->task:Lcom/startapp/android/publish/common/metaData/c;

    invoke-virtual {p6}, Lcom/startapp/android/publish/common/metaData/c;->b()V

    .line 447
    :cond_3b
    new-instance p6, Lcom/startapp/android/publish/common/metaData/c;

    invoke-direct {p6, p1, p2, p3}, Lcom/startapp/android/publish/common/metaData/c;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;)V

    sput-object p6, Lcom/startapp/android/publish/common/metaData/MetaData;->task:Lcom/startapp/android/publish/common/metaData/c;

    .line 448
    invoke-virtual {p6}, Lcom/startapp/android/publish/common/metaData/c;->a()V

    :cond_45
    if-eqz p4, :cond_50

    if-eqz p5, :cond_50

    .line 451
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/startapp/android/publish/common/metaData/MetaData;->addMetaDataListener(Lcom/startapp/android/publish/common/metaData/d;)V

    .line 453
    :cond_50
    monitor-exit v0

    return-void

    :catchall_52
    move-exception p1

    .line 455
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_20 .. :try_end_54} :catchall_52

    throw p1
.end method

.method public removeMetaDataListener(Lcom/startapp/android/publish/common/metaData/d;)V
    .registers 4

    .line 468
    sget-object v0, Lcom/startapp/android/publish/common/metaData/MetaData;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_3
    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->metaDataListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 470
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public setAlwaysSendToken(Z)V
    .registers 2

    .line 795
    iput-boolean p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->alwaysSendToken:Z

    return-void
.end method

.method public setCompressionEnabled(Z)V
    .registers 2

    .line 807
    iput-boolean p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->compressionEnabled:Z

    return-void
.end method

.method public setInAppBrowser(Z)V
    .registers 2

    .line 815
    iput-boolean p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->inAppBrowser:Z

    return-void
.end method

.method public setInAppBrowserPreLoad(Lcom/startapp/android/publish/common/metaData/MetaData$b;)V
    .registers 2

    .line 823
    iput-object p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->inAppBrowserPreLoad:Lcom/startapp/android/publish/common/metaData/MetaData$b;

    return-void
.end method

.method public setInstallersList(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 765
    iput-object p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->installersList:Ljava/util/Set;

    return-void
.end method

.method public setPeriodicInfoEventEnabled(Z)V
    .registers 2

    .line 522
    iput-boolean p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicInfoEventEnabled:Z

    return-void
.end method

.method public setPeriodicInfoEventIntervalInMinutes(I)V
    .registers 2

    .line 550
    iput p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicInfoEventIntervalInMinutes:I

    return-void
.end method

.method public setPeriodicMetaDataEnabled(Z)V
    .registers 2

    .line 502
    iput-boolean p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicMetaDataEnabled:Z

    return-void
.end method

.method public setPeriodicMetaDataInterval(I)V
    .registers 2

    .line 510
    iput p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->periodicMetaDataIntervalInMinutes:I

    return-void
.end method

.method public setPreInstalledPackages(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 779
    iput-object p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->preInstalledPackages:Ljava/util/Set;

    return-void
.end method

.method public setReady(Z)V
    .registers 2

    .line 486
    iput-boolean p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->ready:Z

    return-void
.end method

.method public setSimpleToken2(Z)V
    .registers 2

    .line 787
    iput-boolean p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->simpleToken2:Z

    return-void
.end method

.method protected setSimpleTokenConfig(Lcom/startapp/android/publish/common/metaData/h;)V
    .registers 2

    .line 349
    iput-object p1, p0, Lcom/startapp/android/publish/common/metaData/MetaData;->SimpleToken:Lcom/startapp/android/publish/common/metaData/h;

    return-void
.end method
