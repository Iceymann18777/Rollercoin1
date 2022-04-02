.class public Lcom/mopub/volley/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/volley/RequestQueue$RequestFilter;,
        Lcom/mopub/volley/RequestQueue$RequestEventListener;,
        Lcom/mopub/volley/RequestQueue$RequestEvent;,
        Lcom/mopub/volley/RequestQueue$RequestFinishedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_NETWORK_THREAD_POOL_SIZE:I = 0x4


# instance fields
.field private final mCache:Lcom/mopub/volley/Cache;

.field private mCacheDispatcher:Lcom/mopub/volley/CacheDispatcher;

.field private final mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mCurrentRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/mopub/volley/ResponseDelivery;

.field private final mDispatchers:[Lcom/mopub/volley/NetworkDispatcher;

.field private final mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/volley/RequestQueue$RequestEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFinishedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/volley/RequestQueue$RequestFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetwork:Lcom/mopub/volley/Network;

.field private final mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;)V
    .registers 4

    const/4 v0, 0x4

    .line 167
    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/volley/RequestQueue;-><init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;I)V

    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;I)V
    .registers 7

    .line 153
    new-instance v0, Lcom/mopub/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    .line 157
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/mopub/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    .line 153
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/volley/RequestQueue;-><init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;ILcom/mopub/volley/ResponseDelivery;)V

    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;ILcom/mopub/volley/ResponseDelivery;)V
    .registers 6

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 101
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 104
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    .line 139
    iput-object p1, p0, Lcom/mopub/volley/RequestQueue;->mCache:Lcom/mopub/volley/Cache;

    .line 140
    iput-object p2, p0, Lcom/mopub/volley/RequestQueue;->mNetwork:Lcom/mopub/volley/Network;

    .line 141
    new-array p1, p3, [Lcom/mopub/volley/NetworkDispatcher;

    iput-object p1, p0, Lcom/mopub/volley/RequestQueue;->mDispatchers:[Lcom/mopub/volley/NetworkDispatcher;

    .line 142
    iput-object p4, p0, Lcom/mopub/volley/RequestQueue;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    return-void
.end method


# virtual methods
.method public add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mopub/volley/Request<",
            "TT;>;)",
            "Lcom/mopub/volley/Request<",
            "TT;>;"
        }
    .end annotation

    .line 256
    invoke-virtual {p1, p0}, Lcom/mopub/volley/Request;->setRequestQueue(Lcom/mopub/volley/RequestQueue;)Lcom/mopub/volley/Request;

    .line 257
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 258
    :try_start_6
    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_2e

    .line 262
    invoke-virtual {p0}, Lcom/mopub/volley/RequestQueue;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mopub/volley/Request;->setSequence(I)Lcom/mopub/volley/Request;

    const-string v0, "add-to-queue"

    .line 263
    invoke-virtual {p1, v0}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0, p1, v0}, Lcom/mopub/volley/RequestQueue;->sendRequestEvent(Lcom/mopub/volley/Request;I)V

    .line 267
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->shouldCache()Z

    move-result v0

    if-nez v0, :cond_28

    .line 268
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 271
    :cond_28
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_2e
    move-exception p1

    .line 259
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public addRequestEventListener(Lcom/mopub/volley/RequestQueue$RequestEventListener;)V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 305
    :try_start_3
    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public addRequestFinishedListener(Lcom/mopub/volley/RequestQueue$RequestFinishedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mopub/volley/RequestQueue$RequestFinishedListener<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v0

    .line 319
    :try_start_3
    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public cancelAll(Lcom/mopub/volley/RequestQueue$RequestFilter;)V
    .registers 6

    .line 222
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/volley/Request;

    .line 224
    invoke-interface {p1, v2}, Lcom/mopub/volley/RequestQueue$RequestFilter;->apply(Lcom/mopub/volley/Request;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 225
    invoke-virtual {v2}, Lcom/mopub/volley/Request;->cancel()V

    goto :goto_9

    .line 228
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 239
    new-instance v0, Lcom/mopub/volley/RequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/mopub/volley/RequestQueue$1;-><init>(Lcom/mopub/volley/RequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/mopub/volley/RequestQueue;->cancelAll(Lcom/mopub/volley/RequestQueue$RequestFilter;)V

    return-void

    .line 237
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cancelAll with a null tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method finish(Lcom/mopub/volley/Request;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mopub/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 283
    :try_start_3
    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 284
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2b

    .line 285
    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v1

    .line 286
    :try_start_c
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/volley/RequestQueue$RequestFinishedListener;

    .line 287
    invoke-interface {v2, p1}, Lcom/mopub/volley/RequestQueue$RequestFinishedListener;->onRequestFinished(Lcom/mopub/volley/Request;)V

    goto :goto_12

    .line 289
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_28

    const/4 v0, 0x5

    .line 290
    invoke-virtual {p0, p1, v0}, Lcom/mopub/volley/RequestQueue;->sendRequestEvent(Lcom/mopub/volley/Request;I)V

    return-void

    :catchall_28
    move-exception p1

    .line 289
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1

    :catchall_2b
    move-exception p1

    .line 284
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    goto :goto_2f

    :goto_2e
    throw p1

    :goto_2f
    goto :goto_2e
.end method

.method public getCache()Lcom/mopub/volley/Cache;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mCache:Lcom/mopub/volley/Cache;

    return-object v0
.end method

.method public getSequenceNumber()I
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public removeRequestEventListener(Lcom/mopub/volley/RequestQueue$RequestEventListener;)V
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 312
    :try_start_3
    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 313
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public removeRequestFinishedListener(Lcom/mopub/volley/RequestQueue$RequestFinishedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mopub/volley/RequestQueue$RequestFinishedListener<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v0

    .line 327
    :try_start_3
    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 328
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method sendRequestEvent(Lcom/mopub/volley/Request;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;I)V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 296
    :try_start_3
    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/volley/RequestQueue$RequestEventListener;

    .line 297
    invoke-interface {v2, p1, p2}, Lcom/mopub/volley/RequestQueue$RequestEventListener;->onRequestEvent(Lcom/mopub/volley/Request;I)V

    goto :goto_9

    .line 299
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    goto :goto_1f

    :goto_1e
    throw p1

    :goto_1f
    goto :goto_1e
.end method

.method public start()V
    .registers 7

    .line 172
    invoke-virtual {p0}, Lcom/mopub/volley/RequestQueue;->stop()V

    .line 174
    new-instance v0, Lcom/mopub/volley/CacheDispatcher;

    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/mopub/volley/RequestQueue;->mCache:Lcom/mopub/volley/Cache;

    iget-object v4, p0, Lcom/mopub/volley/RequestQueue;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mopub/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/mopub/volley/Cache;Lcom/mopub/volley/ResponseDelivery;)V

    iput-object v0, p0, Lcom/mopub/volley/RequestQueue;->mCacheDispatcher:Lcom/mopub/volley/CacheDispatcher;

    .line 175
    invoke-virtual {v0}, Lcom/mopub/volley/CacheDispatcher;->start()V

    const/4 v0, 0x0

    .line 178
    :goto_16
    iget-object v1, p0, Lcom/mopub/volley/RequestQueue;->mDispatchers:[Lcom/mopub/volley/NetworkDispatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_32

    .line 179
    new-instance v1, Lcom/mopub/volley/NetworkDispatcher;

    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/mopub/volley/RequestQueue;->mNetwork:Lcom/mopub/volley/Network;

    iget-object v4, p0, Lcom/mopub/volley/RequestQueue;->mCache:Lcom/mopub/volley/Cache;

    iget-object v5, p0, Lcom/mopub/volley/RequestQueue;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mopub/volley/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/mopub/volley/Network;Lcom/mopub/volley/Cache;Lcom/mopub/volley/ResponseDelivery;)V

    .line 181
    iget-object v2, p0, Lcom/mopub/volley/RequestQueue;->mDispatchers:[Lcom/mopub/volley/NetworkDispatcher;

    aput-object v1, v2, v0

    .line 182
    invoke-virtual {v1}, Lcom/mopub/volley/NetworkDispatcher;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_32
    return-void
.end method

.method public stop()V
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mCacheDispatcher:Lcom/mopub/volley/CacheDispatcher;

    if-eqz v0, :cond_7

    .line 189
    invoke-virtual {v0}, Lcom/mopub/volley/CacheDispatcher;->quit()V

    .line 191
    :cond_7
    iget-object v0, p0, Lcom/mopub/volley/RequestQueue;->mDispatchers:[Lcom/mopub/volley/NetworkDispatcher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    if-eqz v3, :cond_14

    .line 193
    invoke-virtual {v3}, Lcom/mopub/volley/NetworkDispatcher;->quit()V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    return-void
.end method
