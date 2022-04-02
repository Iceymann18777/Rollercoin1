.class public Lcom/mopub/mobileads/WebViewCacheService;
.super Ljava/lang/Object;
.source "WebViewCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;,
        Lcom/mopub/mobileads/WebViewCacheService$Config;
    }
.end annotation


# static fields
.field static final MAX_SIZE:I = 0x32

.field static final TRIM_CACHE_FREQUENCY_MILLIS:J = 0xdbba0L

.field private static sHandler:Landroid/os/Handler;

.field static final sTrimCacheRunnable:Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

.field private static final sWebViewConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/mopub/mobileads/WebViewCacheService$Config;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    .line 94
    new-instance v0, Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;-><init>(Lcom/mopub/mobileads/WebViewCacheService$1;)V

    sput-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sTrimCacheRunnable:Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAll()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 171
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/mopub/mobileads/WebViewCacheService;->sTrimCacheRunnable:Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static getWebViewConfigs()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/mopub/mobileads/WebViewCacheService$Config;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    return-object v0
.end method

.method public static popWebViewConfig(Ljava/lang/Long;)Lcom/mopub/mobileads/WebViewCacheService$Config;
    .registers 2

    .line 135
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 137
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/WebViewCacheService$Config;

    return-object p0
.end method

.method static setHandler(Landroid/os/Handler;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    sput-object p0, Lcom/mopub/mobileads/WebViewCacheService;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public static storeWebViewConfig(Ljava/lang/Long;Lcom/mopub/mobileads/Interstitial;Lcom/mopub/mobileads/BaseWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;Lcom/mopub/mraid/MraidController;)V
    .registers 7

    .line 117
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 118
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    invoke-static {}, Lcom/mopub/mobileads/WebViewCacheService;->trimCache()V

    .line 123
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_24

    .line 124
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "Unable to cache web view. Please destroy some via MoPubInterstitial#destroy() and try again."

    aput-object p3, p1, p2

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 129
    :cond_24
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    new-instance v1, Lcom/mopub/mobileads/WebViewCacheService$Config;

    invoke-direct {v1, p2, p1, p3, p4}, Lcom/mopub/mobileads/WebViewCacheService$Config;-><init>(Lcom/mopub/mobileads/BaseWebView;Lcom/mopub/mobileads/Interstitial;Lcom/mopub/common/ExternalViewabilitySessionManager;Lcom/mopub/mraid/MraidController;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static declared-synchronized trimCache()V
    .registers 5

    const-class v0, Lcom/mopub/mobileads/WebViewCacheService;

    monitor-enter v0

    .line 142
    :try_start_3
    sget-object v1, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 143
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 148
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/mobileads/WebViewCacheService$Config;

    invoke-virtual {v3}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getWeakInterstitial()Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_d

    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/WebViewCacheService$Config;

    invoke-virtual {v2}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getViewabilityManager()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endDisplaySession()V

    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 154
    :cond_3a
    sget-object v1, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    .line 155
    sget-object v1, Lcom/mopub/mobileads/WebViewCacheService;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/mopub/mobileads/WebViewCacheService;->sTrimCacheRunnable:Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    sget-object v1, Lcom/mopub/mobileads/WebViewCacheService;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/mopub/mobileads/WebViewCacheService;->sTrimCacheRunnable:Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

    const-wide/32 v3, 0xdbba0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_55

    .line 158
    :cond_53
    monitor-exit v0

    return-void

    :catchall_55
    move-exception v1

    monitor-exit v0

    goto :goto_59

    :goto_58
    throw v1

    :goto_59
    goto :goto_58
.end method
