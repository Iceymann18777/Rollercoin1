.class public Lcom/mopub/network/MoPubRequestQueue;
.super Lcom/mopub/volley/RequestQueue;
.source "MoPubRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0xa


# instance fields
.field private final mDelayedRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mopub/volley/Request<",
            "*>;",
            "Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/mopub/volley/RequestQueue;-><init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;)V

    .line 49
    new-instance p1, Ljava/util/HashMap;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/mopub/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;I)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/volley/RequestQueue;-><init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;I)V

    .line 44
    new-instance p1, Ljava/util/HashMap;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/mopub/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;ILcom/mopub/volley/ResponseDelivery;)V
    .registers 5

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mopub/volley/RequestQueue;-><init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;ILcom/mopub/volley/ResponseDelivery;)V

    .line 39
    new-instance p1, Ljava/util/HashMap;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/mopub/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/network/MoPubRequestQueue;)Ljava/util/Map;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/mopub/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public addDelayedRequest(Lcom/mopub/volley/Request;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;I)V"
        }
    .end annotation

    .line 59
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    new-instance v0, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;-><init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;I)V

    invoke-virtual {p0, p1, v0}, Lcom/mopub/network/MoPubRequestQueue;->addDelayedRequest(Lcom/mopub/volley/Request;Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;)V

    return-void
.end method

.method addDelayedRequest(Lcom/mopub/volley/Request;Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;",
            "Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/mopub/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 68
    invoke-virtual {p0, p1}, Lcom/mopub/network/MoPubRequestQueue;->cancel(Lcom/mopub/volley/Request;)V

    .line 71
    :cond_e
    invoke-virtual {p2}, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;->start()V

    .line 72
    iget-object v0, p0, Lcom/mopub/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancel(Lcom/mopub/volley/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    new-instance v0, Lcom/mopub/network/MoPubRequestQueue$2;

    invoke-direct {v0, p0, p1}, Lcom/mopub/network/MoPubRequestQueue$2;-><init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;)V

    invoke-virtual {p0, v0}, Lcom/mopub/network/MoPubRequestQueue;->cancelAll(Lcom/mopub/volley/RequestQueue$RequestFilter;)V

    return-void
.end method

.method public cancelAll(Lcom/mopub/volley/RequestQueue$RequestFilter;)V
    .registers 5

    .line 80
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 82
    invoke-super {p0, p1}, Lcom/mopub/volley/RequestQueue;->cancelAll(Lcom/mopub/volley/RequestQueue$RequestFilter;)V

    .line 84
    iget-object v0, p0, Lcom/mopub/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/volley/Request;

    invoke-interface {p1, v2}, Lcom/mopub/volley/RequestQueue$RequestFilter;->apply(Lcom/mopub/volley/Request;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/volley/Request;

    invoke-virtual {v2}, Lcom/mopub/volley/Request;->cancel()V

    .line 90
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;

    invoke-virtual {v1}, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;->cancel()V

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_3e
    return-void
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .registers 3

    .line 101
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    invoke-super {p0, p1}, Lcom/mopub/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 105
    new-instance v0, Lcom/mopub/network/MoPubRequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/mopub/network/MoPubRequestQueue$1;-><init>(Lcom/mopub/network/MoPubRequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/mopub/network/MoPubRequestQueue;->cancelAll(Lcom/mopub/volley/RequestQueue$RequestFilter;)V

    return-void
.end method

.method getDelayedRequests()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/mopub/volley/Request<",
            "*>;",
            "Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/mopub/network/MoPubRequestQueue;->mDelayedRequests:Ljava/util/Map;

    return-object v0
.end method
