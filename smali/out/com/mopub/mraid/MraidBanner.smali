.class Lcom/mopub/mraid/MraidBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "MraidBanner.java"


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String;


# instance fields
.field private mBannerListener:Lcom/mopub/mobileads/InternalCustomEventBannerListener;

.field private mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

.field private mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field private mMraidController:Lcom/mopub/mraid/MraidController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/mopub/mraid/MraidBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mraid/MraidBanner;->ADAPTER_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/mobileads/InternalCustomEventBannerListener;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mopub/mraid/MraidBanner;->mBannerListener:Lcom/mopub/mobileads/InternalCustomEventBannerListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/common/ExternalViewabilitySessionManager;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mopub/mraid/MraidBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    return-object p0
.end method

.method static synthetic access$102(Lcom/mopub/mraid/MraidBanner;Lcom/mopub/common/ExternalViewabilitySessionManager;)Lcom/mopub/common/ExternalViewabilitySessionManager;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/mopub/mraid/MraidBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    return-object p1
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "html-response-body"

    .line 190
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 51
    :try_start_4
    move-object v4, p2

    check-cast v4, Lcom/mopub/mobileads/InternalCustomEventBannerListener;

    iput-object v4, p0, Lcom/mopub/mraid/MraidBanner;->mBannerListener:Lcom/mopub/mobileads/InternalCustomEventBannerListener;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_9} :catch_92

    .line 60
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/mopub/mraid/MraidBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {p2, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0, p4}, Lcom/mopub/mraid/MraidBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_6f

    const-string p2, "html-response-body"

    .line 64
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :try_start_22
    const-string p4, "mopub-intent-ad-report"

    .line 74
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mopub/common/AdReport;

    .line 75
    sget-object p4, Lcom/mopub/mraid/PlacementType;->INLINE:Lcom/mopub/mraid/PlacementType;

    invoke-static {p1, p3, p4}, Lcom/mopub/mobileads/factories/MraidControllerFactory;->create(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)Lcom/mopub/mraid/MraidController;

    move-result-object p3

    iput-object p3, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;
    :try_end_32
    .catch Ljava/lang/ClassCastException; {:try_start_22 .. :try_end_32} :catch_4c

    .line 85
    iget-object p4, p0, Lcom/mopub/mraid/MraidBanner;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-virtual {p3, p4}, Lcom/mopub/mraid/MraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    .line 86
    iget-object p3, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    new-instance p4, Lcom/mopub/mraid/MraidBanner$1;

    invoke-direct {p4, p0}, Lcom/mopub/mraid/MraidBanner$1;-><init>(Lcom/mopub/mraid/MraidBanner;)V

    invoke-virtual {p3, p4}, Lcom/mopub/mraid/MraidController;->setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V

    .line 137
    iget-object p3, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    new-instance p4, Lcom/mopub/mraid/MraidBanner$2;

    invoke-direct {p4, p0, p1}, Lcom/mopub/mraid/MraidBanner$2;-><init>(Lcom/mopub/mraid/MraidBanner;Landroid/content/Context;)V

    invoke-virtual {p3, p2, p4}, Lcom/mopub/mraid/MraidController;->fillContent(Ljava/lang/String;Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;)V

    return-void

    .line 78
    :catch_4c
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    sget-object p3, Lcom/mopub/mraid/MraidBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object p3, p2, v3

    sget-object p3, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 79
    invoke-virtual {p3}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    sget-object p3, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object p3, p2, v0

    .line 78
    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/mopub/mraid/MraidBanner;->mBannerListener:Lcom/mopub/mobileads/InternalCustomEventBannerListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/InternalCustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 66
    :cond_6f
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    sget-object p3, Lcom/mopub/mraid/MraidBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object p3, p2, v3

    sget-object p3, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 67
    invoke-virtual {p3}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    sget-object p3, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object p3, p2, v0

    .line 66
    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 69
    iget-object p1, p0, Lcom/mopub/mraid/MraidBanner;->mBannerListener:Lcom/mopub/mobileads/InternalCustomEventBannerListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/InternalCustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 53
    :catch_92
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p3, v1, [Ljava/lang/Object;

    sget-object p4, Lcom/mopub/mraid/MraidBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object p4, p3, v3

    sget-object p4, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 54
    invoke-virtual {p4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v2

    sget-object p4, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object p4, p3, v0

    .line 53
    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 56
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method protected onInvalidate()V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 158
    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endDisplaySession()V

    .line 159
    iput-object v1, p0, Lcom/mopub/mraid/MraidBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 161
    :cond_a
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-eqz v0, :cond_16

    .line 162
    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V

    .line 163
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->destroy()V

    :cond_16
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V
    .registers 3

    .line 195
    iput-object p1, p0, Lcom/mopub/mraid/MraidBanner;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    .line 196
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-eqz v0, :cond_9

    .line 197
    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    :cond_9
    return-void
.end method

.method protected trackMpxAndThirdPartyImpressions()V
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-nez v0, :cond_5

    return-void

    .line 173
    :cond_5
    sget-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getJavascript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->loadJavascript(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    if-eqz v0, :cond_38

    .line 180
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->getWeakActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_26

    .line 182
    iget-object v1, p0, Lcom/mopub/mraid/MraidBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v1, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->startDeferredDisplaySession(Landroid/app/Activity;)V

    goto :goto_38

    .line 184
    :cond_26
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/mopub/mraid/MraidBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Lost the activity for deferred Viewability tracking. Dropping session."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_38
    :goto_38
    return-void
.end method
