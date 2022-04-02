.class final Lcom/mopub/nativeads/CustomEventNativeAdapter;
.super Ljava/lang/Object;
.source "CustomEventNativeAdapter.java"


# instance fields
.field private customEventNative:Lcom/mopub/nativeads/CustomEventNative;

.field private volatile mCompleted:Z

.field private mExternalListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mTimeout:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    iput-object p1, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->mExternalListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->mCompleted:Z

    .line 44
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance p1, Lcom/mopub/nativeads/CustomEventNativeAdapter$1;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/CustomEventNativeAdapter$1;-><init>(Lcom/mopub/nativeads/CustomEventNativeAdapter;)V

    iput-object p1, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->mTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/CustomEventNativeAdapter;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->mCompleted:Z

    return p0
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/CustomEventNativeAdapter;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->mExternalListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/nativeads/CustomEventNativeAdapter;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNativeAdapter;->invalidate()V

    return-void
.end method

.method private createListener()Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
    .registers 2

    .line 105
    new-instance v0, Lcom/mopub/nativeads/CustomEventNativeAdapter$2;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/CustomEventNativeAdapter$2;-><init>(Lcom/mopub/nativeads/CustomEventNativeAdapter;)V

    return-object v0
.end method

.method private declared-synchronized invalidate()V
    .registers 3

    monitor-enter p0

    .line 140
    :try_start_1
    iget-boolean v0, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->mCompleted:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->mCompleted:Z

    .line 142
    iget-object v0, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->customEventNative:Lcom/mopub/nativeads/CustomEventNative;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 145
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public loadNativeAd(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/network/AdResponse;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mopub/network/AdResponse;",
            ")V"
        }
    .end annotation

    const-string v0, " and message "

    const-string v1, "loadNativeAd() failed with code "

    .line 62
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p3}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v2

    .line 68
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/mopub/network/AdResponse;->getDspCreativeId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 70
    :try_start_20
    invoke-static {v2}, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;->create(Ljava/lang/String;)Lcom/mopub/nativeads/CustomEventNative;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->customEventNative:Lcom/mopub/nativeads/CustomEventNative;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_8c

    .line 78
    invoke-virtual {p3}, Lcom/mopub/network/AdResponse;->hasJson()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 79
    invoke-virtual {p3}, Lcom/mopub/network/AdResponse;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "com_mopub_native_json"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_35
    invoke-virtual {p3}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "click-tracking-url"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :try_start_3e
    iget-object v2, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->customEventNative:Lcom/mopub/nativeads/CustomEventNative;

    .line 89
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNativeAdapter;->createListener()Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v3

    .line 91
    invoke-virtual {p3}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object v5

    .line 87
    invoke-virtual {v2, p1, v3, p2, v5}, Lcom/mopub/nativeads/CustomEventNative;->loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V

    const/16 p1, 0x7530

    .line 93
    invoke-virtual {p3, p1}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    .line 94
    iget-object p3, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-virtual {p3, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5d} :catch_5e

    goto :goto_8b

    .line 96
    :catch_5e
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v4, [Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 97
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v7

    .line 96
    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 99
    iget-object p1, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->mExternalListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object p2, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_NOT_FOUND:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    :goto_8b
    return-void

    .line 72
    :catch_8c
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v4, [Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 73
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v7

    .line 72
    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 75
    iget-object p1, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->mExternalListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object p2, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_NOT_FOUND:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method stopLoading()V
    .registers 5

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->customEventNative:Lcom/mopub/nativeads/CustomEventNative;

    if-eqz v0, :cond_1a

    .line 132
    iget-object v0, p0, Lcom/mopub/nativeads/CustomEventNativeAdapter;->customEventNative:Lcom/mopub/nativeads/CustomEventNative;

    invoke-virtual {v0}, Lcom/mopub/nativeads/CustomEventNative;->onInvalidate()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_1a

    :catch_a
    move-exception v0

    .line 134
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 136
    :cond_1a
    :goto_1a
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNativeAdapter;->invalidate()V

    return-void
.end method
