.class public abstract Lcom/mopub/mobileads/ResponseBodyInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "ResponseBodyInterstitial.java"


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String;


# instance fields
.field protected mAdReport:Lcom/mopub/common/AdReport;

.field protected mBroadcastIdentifier:J

.field private mBroadcastReceiver:Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field protected mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field protected mLocalExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/mopub/mobileads/ResponseBodyInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    return-void
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

    .line 99
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected abstract extractExtras(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
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

    .line 45
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/ResponseBodyInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 47
    iput-object p1, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->mContext:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->mLocalExtras:Ljava/util/Map;

    .line 50
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/ResponseBodyInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eqz v0, :cond_a9

    .line 51
    invoke-virtual {p0, p4}, Lcom/mopub/mobileads/ResponseBodyInterstitial;->extractExtras(Ljava/util/Map;)V

    :try_start_1c
    const-string p4, "mopub-intent-ad-report"

    .line 62
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mopub/common/AdReport;

    iput-object p4, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->mAdReport:Lcom/mopub/common/AdReport;

    const-string p4, "broadcastIdentifier"

    .line 63
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    if-nez p3, :cond_5c

    .line 65
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p3, v1, [Ljava/lang/Object;

    const-string p4, "Broadcast Identifier was not set in localExtras"

    aput-object p4, p3, v4

    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 66
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p3, v3, [Ljava/lang/Object;

    sget-object p4, Lcom/mopub/mobileads/ResponseBodyInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    aput-object p4, p3, v4

    sget-object p4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 67
    invoke-virtual {p4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    sget-object p4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object p4, p3, v2

    .line 66
    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 69
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 72
    :cond_5c
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->mBroadcastIdentifier:J
    :try_end_62
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_62} :catch_7d

    .line 82
    new-instance p3, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;

    iget-wide v2, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->mBroadcastIdentifier:J

    invoke-direct {p3, p2, v2, v3}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;J)V

    iput-object p3, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->mBroadcastReceiver:Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;

    .line 84
    invoke-virtual {p3, p3, p1}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->register(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 86
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/ResponseBodyInterstitial;->preRenderHtml(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    .line 87
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    sget-object p3, Lcom/mopub/mobileads/ResponseBodyInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    aput-object p3, p2, v4

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 74
    :catch_7d
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p3, v1, [Ljava/lang/Object;

    const-string p4, "LocalExtras contained an incorrect type."

    aput-object p4, p3, v4

    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 75
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p3, v3, [Ljava/lang/Object;

    sget-object p4, Lcom/mopub/mobileads/ResponseBodyInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    aput-object p4, p3, v4

    sget-object p4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 76
    invoke-virtual {p4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    sget-object p4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object p4, p3, v2

    .line 75
    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 78
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 53
    :cond_a9
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p3, v3, [Ljava/lang/Object;

    sget-object p4, Lcom/mopub/mobileads/ResponseBodyInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    aput-object p4, p3, v4

    sget-object p4, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 54
    invoke-virtual {p4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    sget-object p4, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object p4, p3, v2

    .line 53
    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 56
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onInvalidate()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->mBroadcastReceiver:Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;

    if-eqz v0, :cond_a

    .line 93
    invoke-virtual {v0, v0}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->mBroadcastReceiver:Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;

    :cond_a
    return-void
.end method

.method protected abstract preRenderHtml(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
.end method

.method public abstract showInterstitial()V
.end method
