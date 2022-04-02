.class Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;
.super Ljava/lang/Object;
.source "CacheDispatcher.java"

# interfaces
.implements Lcom/mopub/volley/Request$NetworkRequestCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/CacheDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitingRequestManager"
.end annotation


# instance fields
.field private final mCacheDispatcher:Lcom/mopub/volley/CacheDispatcher;

.field private final mWaitingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mopub/volley/Request<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/volley/CacheDispatcher;)V
    .registers 3

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    .line 219
    iput-object p1, p0, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->mCacheDispatcher:Lcom/mopub/volley/CacheDispatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;Lcom/mopub/volley/Request;)Z
    .registers 2

    .line 202
    invoke-direct {p0, p1}, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->maybeAddToWaitingRequests(Lcom/mopub/volley/Request;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized maybeAddToWaitingRequests(Lcom/mopub/volley/Request;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 282
    :try_start_1
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 287
    iget-object v1, p0, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1e

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1e
    const-string v4, "waiting-for-response"

    .line 291
    invoke-virtual {p1, v4}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 292
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object p1, p0, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-boolean p1, Lcom/mopub/volley/VolleyLog;->DEBUG:Z

    if-eqz p1, :cond_38

    const-string p1, "Request for cacheKey=%s is in flight, putting on hold."

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 295
    invoke-static {p1, v1}, Lcom/mopub/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_52

    .line 297
    :cond_38
    monitor-exit p0

    return v2

    .line 301
    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p1, p0}, Lcom/mopub/volley/Request;->setNetworkRequestCompleteListener(Lcom/mopub/volley/Request$NetworkRequestCompleteListener;)V

    .line 303
    sget-boolean p1, Lcom/mopub/volley/VolleyLog;->DEBUG:Z

    if-eqz p1, :cond_50

    const-string p1, "new request, sending to network %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 304
    invoke-static {p1, v1}, Lcom/mopub/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_52

    .line 306
    :cond_50
    monitor-exit p0

    return v3

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized onNoUsableResponseReceived(Lcom/mopub/volley/Request;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 250
    :try_start_1
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    .line 251
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_61

    .line 252
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_61

    .line 253
    sget-boolean v1, Lcom/mopub/volley/VolleyLog;->DEBUG:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    const-string v1, "%d waiting requests for cacheKey=%s; resend to network"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 256
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    .line 254
    invoke-static {v1, v4}, Lcom/mopub/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_2f
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/volley/Request;

    .line 259
    iget-object v4, p0, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {v1, p0}, Lcom/mopub/volley/Request;->setNetworkRequestCompleteListener(Lcom/mopub/volley/Request$NetworkRequestCompleteListener;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_63

    .line 262
    :try_start_3d
    iget-object p1, p0, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->mCacheDispatcher:Lcom/mopub/volley/CacheDispatcher;

    invoke-static {p1}, Lcom/mopub/volley/CacheDispatcher;->access$100(Lcom/mopub/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_46} :catch_47
    .catchall {:try_start_3d .. :try_end_46} :catchall_63

    goto :goto_61

    :catch_47
    move-exception p1

    :try_start_48
    const-string v0, "Couldn\'t add request to queue. %s"

    new-array v1, v2, [Ljava/lang/Object;

    .line 264
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 268
    iget-object p1, p0, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->mCacheDispatcher:Lcom/mopub/volley/CacheDispatcher;

    invoke-virtual {p1}, Lcom/mopub/volley/CacheDispatcher;->quit()V
    :try_end_61
    .catchall {:try_start_48 .. :try_end_61} :catchall_63

    .line 271
    :cond_61
    :goto_61
    monitor-exit p0

    return-void

    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onResponseReceived(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;",
            "Lcom/mopub/volley/Response<",
            "*>;)V"
        }
    .end annotation

    .line 225
    iget-object v0, p2, Lcom/mopub/volley/Response;->cacheEntry:Lcom/mopub/volley/Cache$Entry;

    if-eqz v0, :cond_55

    iget-object v0, p2, Lcom/mopub/volley/Response;->cacheEntry:Lcom/mopub/volley/Cache$Entry;

    invoke-virtual {v0}, Lcom/mopub/volley/Cache$Entry;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_55

    .line 229
    :cond_d
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    .line 231
    monitor-enter p0

    .line 232
    :try_start_12
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 233
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_52

    if-eqz v0, :cond_51

    .line 235
    sget-boolean v1, Lcom/mopub/volley/VolleyLog;->DEBUG:Z

    if-eqz v1, :cond_37

    const-string v1, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 238
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 236
    invoke-static {v1, v2}, Lcom/mopub/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :cond_37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/Request;

    .line 242
    iget-object v1, p0, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->mCacheDispatcher:Lcom/mopub/volley/CacheDispatcher;

    invoke-static {v1}, Lcom/mopub/volley/CacheDispatcher;->access$200(Lcom/mopub/volley/CacheDispatcher;)Lcom/mopub/volley/ResponseDelivery;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V

    goto :goto_3b

    :cond_51
    return-void

    :catchall_52
    move-exception p1

    .line 233
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1

    .line 226
    :cond_55
    :goto_55
    invoke-virtual {p0, p1}, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->onNoUsableResponseReceived(Lcom/mopub/volley/Request;)V

    return-void
.end method
