.class public Lcom/mopub/volley/CacheDispatcher;
.super Ljava/lang/Thread;
.source "CacheDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCache:Lcom/mopub/volley/Cache;

.field private final mCacheQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/mopub/volley/ResponseDelivery;

.field private final mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z

.field private final mWaitingRequestManager:Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    sget-boolean v0, Lcom/mopub/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/mopub/volley/CacheDispatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/mopub/volley/Cache;Lcom/mopub/volley/ResponseDelivery;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;",
            "Lcom/mopub/volley/Cache;",
            "Lcom/mopub/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/mopub/volley/CacheDispatcher;->mQuit:Z

    .line 71
    iput-object p1, p0, Lcom/mopub/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    .line 72
    iput-object p2, p0, Lcom/mopub/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 73
    iput-object p3, p0, Lcom/mopub/volley/CacheDispatcher;->mCache:Lcom/mopub/volley/Cache;

    .line 74
    iput-object p4, p0, Lcom/mopub/volley/CacheDispatcher;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    .line 75
    new-instance p1, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;

    invoke-direct {p1, p0}, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;-><init>(Lcom/mopub/volley/CacheDispatcher;)V

    iput-object p1, p0, Lcom/mopub/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;

    return-void
.end method

.method static synthetic access$100(Lcom/mopub/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/mopub/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/volley/CacheDispatcher;)Lcom/mopub/volley/ResponseDelivery;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/mopub/volley/CacheDispatcher;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    return-object p0
.end method

.method private processRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/Request;

    .line 119
    invoke-virtual {p0, v0}, Lcom/mopub/volley/CacheDispatcher;->processRequest(Lcom/mopub/volley/Request;)V

    return-void
.end method


# virtual methods
.method processRequest(Lcom/mopub/volley/Request;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "cache-queue-take"

    .line 124
    invoke-virtual {p1, v0}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p1, v0}, Lcom/mopub/volley/Request;->sendEvent(I)V

    const/4 v1, 0x2

    .line 129
    :try_start_a
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v0, "cache-discard-canceled"

    .line 130
    invoke-virtual {p1, v0}, Lcom/mopub/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_a3

    .line 198
    invoke-virtual {p1, v1}, Lcom/mopub/volley/Request;->sendEvent(I)V

    return-void

    .line 135
    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/mopub/volley/CacheDispatcher;->mCache:Lcom/mopub/volley/Cache;

    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mopub/volley/Cache;->get(Ljava/lang/String;)Lcom/mopub/volley/Cache$Entry;

    move-result-object v2

    if-nez v2, :cond_3b

    const-string v0, "cache-miss"

    .line 137
    invoke-virtual {p1, v0}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;

    invoke-static {v0, p1}, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->access$000(Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;Lcom/mopub/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 140
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_a3

    .line 198
    :cond_37
    invoke-virtual {p1, v1}, Lcom/mopub/volley/Request;->sendEvent(I)V

    return-void

    .line 146
    :cond_3b
    :try_start_3b
    invoke-virtual {v2}, Lcom/mopub/volley/Cache$Entry;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_5a

    const-string v0, "cache-hit-expired"

    .line 147
    invoke-virtual {p1, v0}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1, v2}, Lcom/mopub/volley/Request;->setCacheEntry(Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Request;

    .line 149
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;

    invoke-static {v0, p1}, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->access$000(Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;Lcom/mopub/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 150
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_a3

    .line 198
    :cond_56
    invoke-virtual {p1, v1}, Lcom/mopub/volley/Request;->sendEvent(I)V

    return-void

    :cond_5a
    :try_start_5a
    const-string v3, "cache-hit"

    .line 156
    invoke-virtual {p1, v3}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 157
    new-instance v3, Lcom/mopub/volley/NetworkResponse;

    iget-object v4, v2, Lcom/mopub/volley/Cache$Entry;->data:[B

    iget-object v5, v2, Lcom/mopub/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-direct {v3, v4, v5}, Lcom/mopub/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    .line 158
    invoke-virtual {p1, v3}, Lcom/mopub/volley/Request;->parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;

    move-result-object v3

    const-string v4, "cache-hit-parsed"

    .line 160
    invoke-virtual {p1, v4}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2}, Lcom/mopub/volley/Cache$Entry;->refreshNeeded()Z

    move-result v4

    if-nez v4, :cond_7d

    .line 164
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v0, p1, v3}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V

    goto :goto_9f

    :cond_7d
    const-string v4, "cache-hit-refresh-needed"

    .line 169
    invoke-virtual {p1, v4}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1, v2}, Lcom/mopub/volley/Request;->setCacheEntry(Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Request;

    .line 172
    iput-boolean v0, v3, Lcom/mopub/volley/Response;->intermediate:Z

    .line 174
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;

    invoke-static {v0, p1}, Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;->access$000(Lcom/mopub/volley/CacheDispatcher$WaitingRequestManager;Lcom/mopub/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 177
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    new-instance v2, Lcom/mopub/volley/CacheDispatcher$1;

    invoke-direct {v2, p0, p1}, Lcom/mopub/volley/CacheDispatcher$1;-><init>(Lcom/mopub/volley/CacheDispatcher;Lcom/mopub/volley/Request;)V

    invoke-interface {v0, p1, v3, v2}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;Ljava/lang/Runnable;)V

    goto :goto_9f

    .line 194
    :cond_9a
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v0, p1, v3}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V
    :try_end_9f
    .catchall {:try_start_5a .. :try_end_9f} :catchall_a3

    .line 198
    :goto_9f
    invoke-virtual {p1, v1}, Lcom/mopub/volley/Request;->sendEvent(I)V

    return-void

    :catchall_a3
    move-exception v0

    invoke-virtual {p1, v1}, Lcom/mopub/volley/Request;->sendEvent(I)V

    throw v0
.end method

.method public quit()V
    .registers 2

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/mopub/volley/CacheDispatcher;->mQuit:Z

    .line 84
    invoke-virtual {p0}, Lcom/mopub/volley/CacheDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .registers 4

    .line 89
    sget-boolean v0, Lcom/mopub/volley/CacheDispatcher;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lcom/mopub/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    const/16 v0, 0xa

    .line 90
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 93
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->mCache:Lcom/mopub/volley/Cache;

    invoke-interface {v0}, Lcom/mopub/volley/Cache;->initialize()V

    .line 97
    :goto_16
    :try_start_16
    invoke-direct {p0}, Lcom/mopub/volley/CacheDispatcher;->processRequest()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_16

    .line 100
    :catch_1a
    iget-boolean v0, p0, Lcom/mopub/volley/CacheDispatcher;->mQuit:Z

    if-eqz v0, :cond_26

    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_26
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    .line 104
    invoke-static {v2, v0}, Lcom/mopub/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method
