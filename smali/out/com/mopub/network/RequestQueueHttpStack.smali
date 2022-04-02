.class public Lcom/mopub/network/RequestQueueHttpStack;
.super Lcom/mopub/volley/toolbox/HurlStack;
.source "RequestQueueHttpStack.java"


# instance fields
.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/mopub/network/RequestQueueHttpStack;-><init>(Ljava/lang/String;Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;)V
    .registers 4

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/network/RequestQueueHttpStack;-><init>(Ljava/lang/String;Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 4

    .line 41
    invoke-direct {p0, p2, p3}, Lcom/mopub/volley/toolbox/HurlStack;-><init>(Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 43
    iput-object p1, p0, Lcom/mopub/network/RequestQueueHttpStack;->mUserAgent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public executeRequest(Lcom/mopub/volley/Request;Ljava/util/Map;)Lcom/mopub/volley/toolbox/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/volley/toolbox/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 51
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 52
    :cond_8
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    .line 55
    :cond_d
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->USER_AGENT:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v0}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/RequestQueueHttpStack;->mUserAgent:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-super {p0, p1, p2}, Lcom/mopub/volley/toolbox/HurlStack;->executeRequest(Lcom/mopub/volley/Request;Ljava/util/Map;)Lcom/mopub/volley/toolbox/HttpResponse;

    move-result-object p1

    return-object p1
.end method
