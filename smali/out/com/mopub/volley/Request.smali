.class public abstract Lcom/mopub/volley/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/volley/Request$Priority;,
        Lcom/mopub/volley/Request$NetworkRequestCompleteListener;,
        Lcom/mopub/volley/Request$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mopub/volley/Request<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mCacheEntry:Lcom/mopub/volley/Cache$Entry;

.field private mCanceled:Z

.field private final mDefaultTrafficStatsTag:I

.field private mErrorListener:Lcom/mopub/volley/Response$ErrorListener;

.field private final mEventLog:Lcom/mopub/volley/VolleyLog$MarkerLog;

.field private final mLock:Ljava/lang/Object;

.field private final mMethod:I

.field private mRequestCompleteListener:Lcom/mopub/volley/Request$NetworkRequestCompleteListener;

.field private mRequestQueue:Lcom/mopub/volley/RequestQueue;

.field private mResponseDelivered:Z

.field private mRetryPolicy:Lcom/mopub/volley/RetryPolicy;

.field private mSequence:Ljava/lang/Integer;

.field private mShouldCache:Z

.field private mShouldRetryServerErrors:Z

.field private mTag:Ljava/lang/Object;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V
    .registers 6

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-boolean v0, Lcom/mopub/volley/VolleyLog$MarkerLog;->ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/mopub/volley/VolleyLog$MarkerLog;

    invoke-direct {v0}, Lcom/mopub/volley/VolleyLog$MarkerLog;-><init>()V

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    iput-object v0, p0, Lcom/mopub/volley/Request;->mEventLog:Lcom/mopub/volley/VolleyLog$MarkerLog;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/Request;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/mopub/volley/Request;->mShouldCache:Z

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/mopub/volley/Request;->mCanceled:Z

    .line 104
    iput-boolean v0, p0, Lcom/mopub/volley/Request;->mResponseDelivered:Z

    .line 108
    iput-boolean v0, p0, Lcom/mopub/volley/Request;->mShouldRetryServerErrors:Z

    .line 118
    iput-object v1, p0, Lcom/mopub/volley/Request;->mCacheEntry:Lcom/mopub/volley/Cache$Entry;

    .line 146
    iput p1, p0, Lcom/mopub/volley/Request;->mMethod:I

    .line 147
    iput-object p2, p0, Lcom/mopub/volley/Request;->mUrl:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/mopub/volley/Request;->mErrorListener:Lcom/mopub/volley/Response$ErrorListener;

    .line 149
    new-instance p1, Lcom/mopub/volley/DefaultRetryPolicy;

    invoke-direct {p1}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>()V

    invoke-virtual {p0, p1}, Lcom/mopub/volley/Request;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    .line 151
    invoke-static {p2}, Lcom/mopub/volley/Request;->findDefaultTrafficStatsTag(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/mopub/volley/Request;->mDefaultTrafficStatsTag:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 136
    invoke-direct {p0, v0, p1, p2}, Lcom/mopub/volley/Request;-><init>(ILjava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/volley/Request;)Lcom/mopub/volley/VolleyLog$MarkerLog;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/mopub/volley/Request;->mEventLog:Lcom/mopub/volley/VolleyLog$MarkerLog;

    return-object p0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    :try_start_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 482
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 490
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 491
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 483
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 488
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    .line 484
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 495
    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_6f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_6f} :catch_70

    return-object p1

    :catch_70
    move-exception p1

    .line 497
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_89

    :goto_88
    throw v0

    :goto_89
    goto :goto_88
.end method

.method private static findDefaultTrafficStatsTag(Ljava/lang/String;)I
    .registers 2

    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 195
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 197
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .registers 5

    .line 218
    sget-boolean v0, Lcom/mopub/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_11

    .line 219
    iget-object v0, p0, Lcom/mopub/volley/Request;->mEventLog:Lcom/mopub/volley/VolleyLog$MarkerLog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/mopub/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    :cond_11
    return-void
.end method

.method public cancel()V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/mopub/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 344
    :try_start_4
    iput-boolean v1, p0, Lcom/mopub/volley/Request;->mCanceled:Z

    const/4 v1, 0x0

    .line 345
    iput-object v1, p0, Lcom/mopub/volley/Request;->mErrorListener:Lcom/mopub/volley/Response$ErrorListener;

    .line 346
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public compareTo(Lcom/mopub/volley/Request;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "TT;>;)I"
        }
    .end annotation

    .line 674
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getPriority()Lcom/mopub/volley/Request$Priority;

    move-result-object v0

    .line 675
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getPriority()Lcom/mopub/volley/Request$Priority;

    move-result-object v1

    if-ne v0, v1, :cond_18

    .line 679
    iget-object v0, p0, Lcom/mopub/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/mopub/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_22

    :cond_18
    invoke-virtual {v1}, Lcom/mopub/volley/Request$Priority;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/mopub/volley/Request$Priority;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_22
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 38
    check-cast p1, Lcom/mopub/volley/Request;

    invoke-virtual {p0, p1}, Lcom/mopub/volley/Request;->compareTo(Lcom/mopub/volley/Request;)I

    move-result p1

    return p1
.end method

.method public deliverError(Lcom/mopub/volley/VolleyError;)V
    .registers 4

    .line 619
    iget-object v0, p0, Lcom/mopub/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_3
    iget-object v1, p0, Lcom/mopub/volley/Request;->mErrorListener:Lcom/mopub/volley/Response$ErrorListener;

    .line 621
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 623
    invoke-interface {v1, p1}, Lcom/mopub/volley/Response$ErrorListener;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    .line 621
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected abstract deliverResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method finish(Ljava/lang/String;)V
    .registers 6

    .line 229
    iget-object v0, p0, Lcom/mopub/volley/Request;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    if-eqz v0, :cond_7

    .line 230
    invoke-virtual {v0, p0}, Lcom/mopub/volley/RequestQueue;->finish(Lcom/mopub/volley/Request;)V

    .line 232
    :cond_7
    sget-boolean v0, Lcom/mopub/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_3d

    .line 233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 234
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2f

    .line 237
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 238
    new-instance v3, Lcom/mopub/volley/Request$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/mopub/volley/Request$1;-><init>(Lcom/mopub/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 249
    :cond_2f
    iget-object v2, p0, Lcom/mopub/volley/Request;->mEventLog:Lcom/mopub/volley/VolleyLog$MarkerLog;

    invoke-virtual {v2, p1, v0, v1}, Lcom/mopub/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 250
    iget-object p1, p0, Lcom/mopub/volley/Request;->mEventLog:Lcom/mopub/volley/VolleyLog$MarkerLog;

    invoke-virtual {p0}, Lcom/mopub/volley/Request;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public getBody()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 471
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 472
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .registers 3

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lcom/mopub/volley/Cache$Entry;
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/mopub/volley/Request;->mCacheEntry:Lcom/mopub/volley/Cache$Entry;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .registers 4

    .line 296
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getMethod()I

    move-result v1

    if-eqz v1, :cond_26

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    goto :goto_26

    .line 307
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_26
    :goto_26
    return-object v0
.end method

.method public getErrorListener()Lcom/mopub/volley/Response$ErrorListener;
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/mopub/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Lcom/mopub/volley/Request;->mErrorListener:Lcom/mopub/volley/Response$ErrorListener;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 184
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    .line 363
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .registers 2

    .line 156
    iget v0, p0, Lcom/mopub/volley/Request;->mMethod:I

    return v0
.end method

.method protected getParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getPostBody()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 419
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getPostParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 420
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 421
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getPostParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/volley/Request;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParamsEncoding()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 398
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getParamsEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/mopub/volley/Request$Priority;
    .registers 2

    .line 546
    sget-object v0, Lcom/mopub/volley/Request$Priority;->NORMAL:Lcom/mopub/volley/Request$Priority;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/mopub/volley/RetryPolicy;
    .registers 2

    .line 560
    iget-object v0, p0, Lcom/mopub/volley/Request;->mRetryPolicy:Lcom/mopub/volley/RetryPolicy;

    return-object v0
.end method

.method public final getSequence()I
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/mopub/volley/Request;->mSequence:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 286
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 284
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/mopub/volley/Request;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .registers 2

    .line 555
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getRetryPolicy()Lcom/mopub/volley/RetryPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/volley/RetryPolicy;->getCurrentTimeout()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .registers 2

    .line 189
    iget v0, p0, Lcom/mopub/volley/Request;->mDefaultTrafficStatsTag:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/mopub/volley/Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasHadResponseDelivered()Z
    .registers 3

    .line 575
    iget-object v0, p0, Lcom/mopub/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 576
    :try_start_3
    iget-boolean v1, p0, Lcom/mopub/volley/Request;->mResponseDelivered:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 577
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isCanceled()Z
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/mopub/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_3
    iget-boolean v1, p0, Lcom/mopub/volley/Request;->mCanceled:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 353
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public markDelivered()V
    .registers 3

    .line 568
    iget-object v0, p0, Lcom/mopub/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 569
    :try_start_4
    iput-boolean v1, p0, Lcom/mopub/volley/Request;->mResponseDelivered:Z

    .line 570
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method notifyListenerResponseNotUsable()V
    .registers 3

    .line 660
    iget-object v0, p0, Lcom/mopub/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 661
    :try_start_3
    iget-object v1, p0, Lcom/mopub/volley/Request;->mRequestCompleteListener:Lcom/mopub/volley/Request$NetworkRequestCompleteListener;

    .line 662
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 664
    invoke-interface {v1, p0}, Lcom/mopub/volley/Request$NetworkRequestCompleteListener;->onNoUsableResponseReceived(Lcom/mopub/volley/Request;)V

    :cond_b
    return-void

    :catchall_c
    move-exception v1

    .line 662
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method notifyListenerResponseReceived(Lcom/mopub/volley/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Response<",
            "*>;)V"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/mopub/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    :try_start_3
    iget-object v1, p0, Lcom/mopub/volley/Request;->mRequestCompleteListener:Lcom/mopub/volley/Request$NetworkRequestCompleteListener;

    .line 648
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 650
    invoke-interface {v1, p0, p1}, Lcom/mopub/volley/Request$NetworkRequestCompleteListener;->onResponseReceived(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    .line 648
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected parseNetworkError(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/VolleyError;
    .registers 2

    return-object p1
.end method

.method protected abstract parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response<",
            "TT;>;"
        }
    .end annotation
.end method

.method sendEvent(I)V
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/mopub/volley/Request;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    if-eqz v0, :cond_7

    .line 256
    invoke-virtual {v0, p0, p1}, Lcom/mopub/volley/RequestQueue;->sendRequestEvent(Lcom/mopub/volley/Request;I)V

    :cond_7
    return-void
.end method

.method public setCacheEntry(Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Cache$Entry;",
            ")",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/mopub/volley/Request;->mCacheEntry:Lcom/mopub/volley/Cache$Entry;

    return-object p0
.end method

.method setNetworkRequestCompleteListener(Lcom/mopub/volley/Request$NetworkRequestCompleteListener;)V
    .registers 3

    .line 633
    iget-object v0, p0, Lcom/mopub/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_3
    iput-object p1, p0, Lcom/mopub/volley/Request;->mRequestCompleteListener:Lcom/mopub/volley/Request$NetworkRequestCompleteListener;

    .line 635
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setRequestQueue(Lcom/mopub/volley/RequestQueue;)Lcom/mopub/volley/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/RequestQueue;",
            ")",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lcom/mopub/volley/Request;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    return-object p0
.end method

.method public setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/RetryPolicy;",
            ")",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/mopub/volley/Request;->mRetryPolicy:Lcom/mopub/volley/RetryPolicy;

    return-object p0
.end method

.method public final setSequence(I)Lcom/mopub/volley/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/volley/Request;->mSequence:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setShouldCache(Z)Lcom/mopub/volley/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 507
    iput-boolean p1, p0, Lcom/mopub/volley/Request;->mShouldCache:Z

    return-object p0
.end method

.method public final setShouldRetryServerErrors(Z)Lcom/mopub/volley/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 522
    iput-boolean p1, p0, Lcom/mopub/volley/Request;->mShouldRetryServerErrors:Z

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/mopub/volley/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/mopub/volley/Request;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public final shouldCache()Z
    .registers 2

    .line 513
    iget-boolean v0, p0, Lcom/mopub/volley/Request;->mShouldCache:Z

    return v0
.end method

.method public final shouldRetryServerErrors()Z
    .registers 2

    .line 530
    iget-boolean v0, p0, Lcom/mopub/volley/Request;->mShouldRetryServerErrors:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "[X] "

    goto :goto_29

    :cond_27
    const-string v2, "[ ] "

    :goto_29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {p0}, Lcom/mopub/volley/Request;->getPriority()Lcom/mopub/volley/Request$Priority;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mopub/volley/Request;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
