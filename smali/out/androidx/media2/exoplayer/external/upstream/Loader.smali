.class public final Landroidx/media2/exoplayer/external/upstream/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseTask;,
        Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;,
        Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;,
        Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;,
        Landroidx/media2/exoplayer/external/upstream/Loader$Callback;,
        Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;,
        Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation


# static fields
.field public static final DONT_RETRY:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

.field public static final DONT_RETRY_FATAL:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

.field public static final RETRY:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

.field public static final RETRY_RESET_ERROR_COUNT:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;


# instance fields
.field private currentTask:Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask<",
            "+",
            "Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadExecutorService:Ljava/util/concurrent/ExecutorService;

.field private fatalError:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 163
    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/Loader;->createRetryAction(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/Loader;->RETRY:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    const/4 v0, 0x1

    .line 166
    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/Loader;->createRetryAction(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/Loader;->RETRY_RESET_ERROR_COUNT:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    .line 168
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;-><init>(IJLandroidx/media2/exoplayer/external/upstream/Loader$1;)V

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    .line 174
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;-><init>(IJLandroidx/media2/exoplayer/external/upstream/Loader$1;)V

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadName"
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/upstream/Loader;)Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;
    .registers 1

    .line 45
    iget-object p0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->currentTask:Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    return-object p0
.end method

.method static synthetic access$102(Landroidx/media2/exoplayer/external/upstream/Loader;Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;)Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;
    .registers 2

    .line 45
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->currentTask:Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    return-object p1
.end method

.method static synthetic access$202(Landroidx/media2/exoplayer/external/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;
    .registers 2

    .line 45
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->fatalError:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$500(Landroidx/media2/exoplayer/external/upstream/Loader;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 45
    iget-object p0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static createRetryAction(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resetErrorCount",
            "retryDelayMillis"
        }
    .end annotation

    .line 217
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    const/4 v1, 0x0

    .line 218
    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;-><init>(IJLandroidx/media2/exoplayer/external/upstream/Loader$1;)V

    return-object v0
.end method


# virtual methods
.method public cancelLoading()V
    .registers 3

    .line 257
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->currentTask:Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->cancel(Z)V

    return-void
.end method

.method public isLoading()Z
    .registers 2

    .line 250
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->currentTask:Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 289
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->maybeThrowError(I)V

    return-void
.end method

.method public maybeThrowError(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minRetryCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_12

    .line 296
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->currentTask:Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    if-eqz v0, :cond_11

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_e

    .line 298
    iget p1, v0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    .line 297
    :cond_e
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->maybeThrowError(I)V

    :cond_11
    return-void

    .line 295
    :cond_12
    throw v0
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->release(Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;)V

    return-void
.end method

.method public release(Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->currentTask:Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 277
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->cancel(Z)V

    :cond_8
    if-eqz p1, :cond_14

    .line 280
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseTask;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseTask;-><init>(Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 282
    :cond_14
    iget-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public startLoading(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;Landroidx/media2/exoplayer/external/upstream/Loader$Callback;I)J
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "loadable",
            "callback",
            "defaultMinRetryCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;",
            ">(TT;",
            "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<",
            "TT;>;I)J"
        }
    .end annotation

    .line 238
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 239
    :goto_9
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->fatalError:Ljava/io/IOException;

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 242
    new-instance v10, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;-><init>(Landroidx/media2/exoplayer/external/upstream/Loader;Landroid/os/Looper;Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;Landroidx/media2/exoplayer/external/upstream/Loader$Callback;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->start(J)V

    return-wide v8
.end method
