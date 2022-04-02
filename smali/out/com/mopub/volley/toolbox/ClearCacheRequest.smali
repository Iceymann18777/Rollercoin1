.class public Lcom/mopub/volley/toolbox/ClearCacheRequest;
.super Lcom/mopub/volley/Request;
.source "ClearCacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/volley/Request<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCache:Lcom/mopub/volley/Cache;

.field private final mCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/Cache;Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, v0, v1, v1}, Lcom/mopub/volley/Request;-><init>(ILjava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 39
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ClearCacheRequest;->mCache:Lcom/mopub/volley/Cache;

    .line 40
    iput-object p2, p0, Lcom/mopub/volley/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public getPriority()Lcom/mopub/volley/Request$Priority;
    .registers 2

    .line 56
    sget-object v0, Lcom/mopub/volley/Request$Priority;->IMMEDIATE:Lcom/mopub/volley/Request$Priority;

    return-object v0
.end method

.method public isCanceled()Z
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ClearCacheRequest;->mCache:Lcom/mopub/volley/Cache;

    invoke-interface {v0}, Lcom/mopub/volley/Cache;->clear()V

    .line 47
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    iget-object v1, p0, Lcom/mopub/volley/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method protected parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
