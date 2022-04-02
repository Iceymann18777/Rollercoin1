.class public abstract Lcom/mopub/common/MoPubHttpUrlConnection;
.super Ljava/net/HttpURLConnection;
.source "MoPubHttpUrlConnection.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x2710

.field private static final READ_TIMEOUT:I = 0x2710


# direct methods
.method private constructor <init>(Ljava/net/URL;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method static encodeUrl(Ljava/lang/String;)Ljava/net/URI;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v9, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v5

    .line 118
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    return-object v9

    :catch_28
    move-exception v0

    .line 120
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to encode url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 121
    throw v0
.end method

.method public static getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    invoke-static {p0}, Lcom/mopub/common/MoPubHttpUrlConnection;->isUrlImproperlyEncoded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 44
    :try_start_9
    invoke-static {p0}, Lcom/mopub/common/MoPubHttpUrlConnection;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_d

    .line 49
    :catch_d
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 51
    invoke-static {}, Lcom/mopub/network/Networking;->getCachedUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user-agent"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2710

    .line 52
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 53
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object p0

    .line 37
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL is improperly encoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static isUrlImproperlyEncoded(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "UTF-8"

    .line 88
    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_7

    return v0

    .line 90
    :catch_7
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Url is improperly encoded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return v2
.end method

.method static isUrlUnencoded(Ljava/lang/String;)Z
    .registers 2

    .line 102
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x0

    return p0

    :catch_7
    const/4 p0, 0x1

    return p0
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    invoke-static {p0}, Lcom/mopub/common/MoPubHttpUrlConnection;->isUrlImproperlyEncoded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 74
    invoke-static {p0}, Lcom/mopub/common/MoPubHttpUrlConnection;->isUrlUnencoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 75
    invoke-static {p0}, Lcom/mopub/common/MoPubHttpUrlConnection;->encodeUrl(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    goto :goto_1a

    .line 77
    :cond_14
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    .line 80
    :goto_1a
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :cond_23
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL is improperly encoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
