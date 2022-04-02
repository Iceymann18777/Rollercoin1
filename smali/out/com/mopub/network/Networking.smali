.class public Lcom/mopub/network/Networking;
.super Ljava/lang/Object;
.source "Networking.java"


# static fields
.field static final CACHE_DIRECTORY_NAME:Ljava/lang/String; = "mopub-volley-cache"

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field private static volatile sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;

.field private static volatile sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

.field private static sUrlRewriter:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

.field private static sUseHttps:Z

.field private static volatile sUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "http.agent"

    .line 45
    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_17

    .line 47
    :catch_a
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unable to get system user agent."

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    move-object v2, v0

    :goto_17
    if-eqz v2, :cond_1a

    move-object v0, v2

    .line 49
    :cond_1a
    sput-object v0, Lcom/mopub/network/Networking;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 58
    sput-boolean v1, Lcom/mopub/network/Networking;->sUseHttps:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearForTesting()V
    .registers 2

    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    const/4 v1, 0x0

    .line 199
    :try_start_4
    sput-object v1, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

    .line 200
    sput-object v1, Lcom/mopub/network/Networking;->sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;

    .line 201
    sput-object v1, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_c

    .line 202
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getBaseUrlScheme()Ljava/lang/String;
    .registers 1

    .line 249
    invoke-static {}, Lcom/mopub/network/Networking;->shouldUseHttps()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "https"

    goto :goto_b

    :cond_9
    const-string v0, "http"

    :goto_b
    return-object v0
.end method

.method public static getCachedUserAgent()Ljava/lang/String;
    .registers 1

    .line 190
    sget-object v0, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 192
    sget-object v0, Lcom/mopub/network/Networking;->DEFAULT_USER_AGENT:Ljava/lang/String;

    :cond_6
    return-object v0
.end method

.method public static getImageLoader(Landroid/content/Context;)Lcom/mopub/volley/toolbox/ImageLoader;
    .registers 6

    .line 110
    sget-object v0, Lcom/mopub/network/Networking;->sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;

    if-nez v0, :cond_2a

    .line 113
    const-class v1, Lcom/mopub/network/Networking;

    monitor-enter v1

    .line 114
    :try_start_7
    sget-object v0, Lcom/mopub/network/Networking;->sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;

    if-nez v0, :cond_25

    .line 116
    invoke-static {p0}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v0

    .line 117
    invoke-static {p0}, Lcom/mopub/common/util/DeviceUtils;->memoryCacheSizeBytes(Landroid/content/Context;)I

    move-result v2

    .line 118
    new-instance v3, Lcom/mopub/network/Networking$1;

    invoke-direct {v3, v2}, Lcom/mopub/network/Networking$1;-><init>(I)V

    .line 128
    new-instance v2, Lcom/mopub/network/MaxWidthImageLoader;

    new-instance v4, Lcom/mopub/network/Networking$2;

    invoke-direct {v4, v3}, Lcom/mopub/network/Networking$2;-><init>(Landroidx/collection/LruCache;)V

    invoke-direct {v2, v0, p0, v4}, Lcom/mopub/network/MaxWidthImageLoader;-><init>(Lcom/mopub/volley/RequestQueue;Landroid/content/Context;Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;)V

    .line 139
    sput-object v2, Lcom/mopub/network/Networking;->sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;

    move-object v0, v2

    .line 141
    :cond_25
    monitor-exit v1

    goto :goto_2a

    :catchall_27
    move-exception p0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw p0

    :cond_2a
    :goto_2a
    return-object v0
.end method

.method public static getRequestQueue()Lcom/mopub/network/MoPubRequestQueue;
    .registers 1

    .line 63
    sget-object v0, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

    return-object v0
.end method

.method public static getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;
    .registers 6

    .line 79
    sget-object v0, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

    if-nez v0, :cond_67

    .line 82
    const-class v1, Lcom/mopub/network/Networking;

    monitor-enter v1

    .line 83
    :try_start_7
    sget-object v0, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

    if-nez v0, :cond_62

    const/16 v0, 0x2710

    .line 86
    invoke-static {v0}, Lcom/mopub/network/CustomSSLSocketFactory;->getDefault(I)Lcom/mopub/network/CustomSSLSocketFactory;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 88
    invoke-static {v2}, Lcom/mopub/network/Networking;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 90
    new-instance v3, Lcom/mopub/network/RequestQueueHttpStack;

    .line 91
    invoke-static {p0}, Lcom/mopub/network/Networking;->getUrlRewriter(Landroid/content/Context;)Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Lcom/mopub/network/RequestQueueHttpStack;-><init>(Ljava/lang/String;Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 93
    new-instance v0, Lcom/mopub/volley/toolbox/BasicNetwork;

    invoke-direct {v0, v3}, Lcom/mopub/volley/toolbox/BasicNetwork;-><init>(Lcom/mopub/volley/toolbox/BaseHttpStack;)V

    .line 94
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "mopub-volley-cache"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance p0, Lcom/mopub/volley/toolbox/DiskBasedCache;

    const-wide/32 v3, 0xa00000

    .line 97
    invoke-static {v2, v3, v4}, Lcom/mopub/common/util/DeviceUtils;->diskCacheSizeBytes(Ljava/io/File;J)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-direct {p0, v2, v4}, Lcom/mopub/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    .line 98
    new-instance v2, Lcom/mopub/network/MoPubRequestQueue;

    invoke-direct {v2, p0, v0}, Lcom/mopub/network/MoPubRequestQueue;-><init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;)V

    .line 99
    sput-object v2, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

    .line 100
    invoke-virtual {v2}, Lcom/mopub/network/MoPubRequestQueue;->start()V

    move-object v0, v2

    .line 102
    :cond_62
    monitor-exit v1

    goto :goto_67

    :catchall_64
    move-exception p0

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_7 .. :try_end_66} :catchall_64

    throw p0

    :cond_67
    :goto_67
    return-object v0
.end method

.method public static getScheme()Ljava/lang/String;
    .registers 1

    const-string v0, "https"

    return-object v0
.end method

.method public static getUrlRewriter(Landroid/content/Context;)Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;
    .registers 1

    .line 68
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    sget-object p0, Lcom/mopub/network/Networking;->sUrlRewriter:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    if-nez p0, :cond_e

    .line 72
    new-instance p0, Lcom/mopub/network/PlayServicesUrlRewriter;

    invoke-direct {p0}, Lcom/mopub/network/PlayServicesUrlRewriter;-><init>()V

    sput-object p0, Lcom/mopub/network/Networking;->sUrlRewriter:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    .line 74
    :cond_e
    sget-object p0, Lcom/mopub/network/Networking;->sUrlRewriter:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    return-object p0
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 153
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 155
    sget-object v0, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    return-object v0

    .line 162
    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_19

    .line 166
    sget-object p0, Lcom/mopub/network/Networking;->DEFAULT_USER_AGENT:Ljava/lang/String;

    return-object p0

    .line 171
    :cond_19
    sget-object v0, Lcom/mopub/network/Networking;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 173
    :try_start_1b
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_20

    goto :goto_2d

    .line 175
    :catch_20
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to get a user agent. Defaulting to the system user agent."

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 178
    :goto_2d
    sput-object v0, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized setImageLoaderForTesting(Lcom/mopub/network/MaxWidthImageLoader;)V
    .registers 2

    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    .line 211
    :try_start_3
    sput-object p0, Lcom/mopub/network/Networking;->sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 212
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setRequestQueueForTesting(Lcom/mopub/network/MoPubRequestQueue;)V
    .registers 2

    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    .line 206
    :try_start_3
    sput-object p0, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 207
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setUserAgentForTesting(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    .line 217
    :try_start_3
    sput-object p0, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 218
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static shouldUseHttps()Z
    .registers 1

    .line 228
    sget-boolean v0, Lcom/mopub/network/Networking;->sUseHttps:Z

    return v0
.end method

.method public static useHttps(Z)V
    .registers 1

    .line 224
    sput-boolean p0, Lcom/mopub/network/Networking;->sUseHttps:Z

    return-void
.end method
