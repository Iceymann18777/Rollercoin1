.class public Lcom/mopub/mobileads/VastVideoInterstitialTwo;
.super Lcom/mopub/mobileads/ResponseBodyInterstitial;
.source "VastVideoInterstitialTwo.kt"

# interfaces
.implements Lcom/mopub/mobileads/VastManager$VastManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastVideoInterstitialTwo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVastVideoInterstitialTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastVideoInterstitialTwo.kt\ncom/mopub/mobileads/VastVideoInterstitialTwo\n*L\n1#1,122:1\n*E\n"
.end annotation


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String;

.field public static final Companion:Lcom/mopub/mobileads/VastVideoInterstitialTwo$Companion;


# instance fields
.field private customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private enableClickExperiment:Z

.field private externalViewabilityTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:Lcom/mopub/common/CreativeOrientation;

.field private vastManager:Lcom/mopub/mobileads/VastManager;

.field private vastResponse:Ljava/lang/String;

.field private vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfigTwo;

.field private videoTrackers:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mopub/mobileads/VastVideoInterstitialTwo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastVideoInterstitialTwo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->Companion:Lcom/mopub/mobileads/VastVideoInterstitialTwo$Companion;

    .line 119
    const-class v0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VastVideoInterstitialTwo::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->ADAPTER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;-><init>()V

    return-void
.end method

.method public static final synthetic access$getADAPTER_NAME$cp()Ljava/lang/String;
    .registers 1

    .line 25
    sget-object v0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->ADAPTER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic vastManager$annotations()V
    .registers 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic vastResponse$annotations()V
    .registers 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic vastVideoConfig$annotations()V
    .registers 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method


# virtual methods
.method protected extractExtras(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "serverExtras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "html-response-body"

    .line 42
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->vastResponse:Ljava/lang/String;

    const-string v0, "com_mopub_orientation"

    .line 44
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/common/CreativeOrientation;->fromString(Ljava/lang/String;)Lcom/mopub/common/CreativeOrientation;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->orientation:Lcom/mopub/common/CreativeOrientation;

    const-string v0, "com_mopub_vast_click_exp_enabled"

    .line 45
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->enableClickExperiment:Z

    const-string v0, "external-video-viewability-trackers"

    .line 47
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5d

    .line 49
    :try_start_3c
    invoke-static {v0}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_40} :catch_41

    goto :goto_5e

    .line 51
    :catch_41
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    check-cast v4, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse video viewability trackers to JSON: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_5d
    move-object v0, v3

    .line 47
    :goto_5e
    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->externalViewabilityTrackers:Ljava/util/Map;

    const-string v0, "video-trackers"

    .line 56
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_a3

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_75

    const/4 v0, 0x1

    goto :goto_76

    :cond_75
    const/4 v0, 0x0

    :goto_76
    if-eqz v0, :cond_79

    goto :goto_7a

    :cond_79
    move-object p1, v3

    :goto_7a
    if-eqz p1, :cond_a3

    .line 60
    :try_start_7c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_81
    .catch Lorg/json/JSONException; {:try_start_7c .. :try_end_81} :catch_83

    move-object v3, v0

    goto :goto_a3

    :catch_83
    move-exception v0

    .line 62
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    check-cast v4, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse video trackers to JSON: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 58
    :cond_a3
    :goto_a3
    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->videoTrackers:Lorg/json/JSONObject;

    return-void
.end method

.method public final getVastManager()Lcom/mopub/mobileads/VastManager;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->vastManager:Lcom/mopub/mobileads/VastManager;

    return-object v0
.end method

.method public final getVastResponse()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->vastResponse:Ljava/lang/String;

    return-object v0
.end method

.method public final getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfigTwo;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfigTwo;

    return-object v0
.end method

.method public onInvalidate()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->vastManager:Lcom/mopub/mobileads/VastManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastManager;->cancel()V

    .line 96
    :cond_7
    invoke-super {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;->onInvalidate()V

    return-void
.end method

.method public onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V
    .registers 4

    if-eqz p1, :cond_3f

    .line 104
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 105
    new-instance v1, Lcom/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapterFactory;

    invoke-direct {v1}, Lcom/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapterFactory;-><init>()V

    check-cast v1, Lcom/google/gson/TypeAdapterFactory;

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 108
    const-class v1, Lcom/mopub/mobileads/VastVideoConfigTwo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/VastVideoConfigTwo;

    if-eqz p1, :cond_3f

    .line 110
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfigTwo;

    .line 111
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->videoTrackers:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->addVideoTrackers(Lorg/json/JSONObject;)V

    .line 112
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->externalViewabilityTrackers:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->addExternalViewabilityTrackers(Ljava/util/Map;)V

    .line 113
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->enableClickExperiment:Z

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->setEnableClickExperiment(Z)V

    .line 114
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    :cond_3c
    if-eqz p1, :cond_3f

    goto :goto_4a

    .line 115
    :cond_3f
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz p1, :cond_4a

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4a
    :goto_4a
    return-void
.end method

.method protected preRenderHtml(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .registers 8

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 70
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/CacheService;->initializeDiskCache(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_36

    .line 71
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    check-cast v0, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v4, v3, v1

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 75
    :cond_36
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/mobileads/factories/VastManagerFactory;->create(Landroid/content/Context;)Lcom/mopub/mobileads/VastManager;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->vastResponse:Ljava/lang/String;

    move-object v3, p0

    check-cast v3, Lcom/mopub/mobileads/VastManager$VastManagerListener;

    .line 78
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->mAdReport:Lcom/mopub/common/AdReport;

    const-string v5, "mAdReport"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/mopub/common/AdReport;->getDspCreativeId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/mopub/mobileads/VastManager;->prepareVastVideoConfiguration(Ljava/lang/String;Lcom/mopub/mobileads/VastManager$VastManagerListener;Ljava/lang/String;Landroid/content/Context;)V

    .line 75
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->vastManager:Lcom/mopub/mobileads/VastManager;

    .line 81
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    check-cast p1, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setVastManager(Lcom/mopub/mobileads/VastManager;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->vastManager:Lcom/mopub/mobileads/VastManager;

    return-void
.end method

.method public final setVastResponse(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->vastResponse:Ljava/lang/String;

    return-void
.end method

.method public final setVastVideoConfig(Lcom/mopub/mobileads/VastVideoConfigTwo;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfigTwo;

    return-void
.end method

.method public showInterstitial()V
    .registers 6

    .line 85
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    check-cast v0, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->mContext:Landroid/content/Context;

    .line 88
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfigTwo;

    .line 89
    iget-wide v2, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->mBroadcastIdentifier:J

    .line 90
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoInterstitialTwo;->orientation:Lcom/mopub/common/CreativeOrientation;

    .line 86
    invoke-static {v0, v1, v2, v3, v4}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->startVast(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfigTwo;JLcom/mopub/common/CreativeOrientation;)V

    return-void
.end method
