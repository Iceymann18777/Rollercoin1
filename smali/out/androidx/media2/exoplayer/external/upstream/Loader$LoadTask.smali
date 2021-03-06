.class final Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile canceled:Z

.field private currentError:Ljava/io/IOException;

.field public final defaultMinRetryCount:I

.field private errorCount:I

.field private volatile executorThread:Ljava/lang/Thread;

.field private final loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile released:Z

.field private final startTimeMs:J

.field final synthetic this$0:Landroidx/media2/exoplayer/external/upstream/Loader;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/Loader;Landroid/os/Looper;Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;Landroidx/media2/exoplayer/external/upstream/Loader$Callback;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "looper",
            "loadable",
            "callback",
            "defaultMinRetryCount",
            "startTimeMs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 330
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 331
    iput-object p3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    .line 332
    iput-object p4, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;

    .line 333
    iput p5, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    .line 334
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->startTimeMs:J

    return-void
.end method

.method private execute()V
    .registers 3

    const/4 v0, 0x0

    .line 487
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 488
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->access$500(Landroidx/media2/exoplayer/external/upstream/Loader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->access$100(Landroidx/media2/exoplayer/external/upstream/Loader;)Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finish()V
    .registers 3

    .line 492
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->access$102(Landroidx/media2/exoplayer/external/upstream/Loader;Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;)Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    return-void
.end method

.method private getRetryDelayMillis()J
    .registers 3

    .line 496
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public cancel(Z)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "released"
        }
    .end annotation

    .line 354
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    const/4 v1, 0x0

    .line 356
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    .line 357
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->removeMessages(I)V

    if-nez p1, :cond_26

    .line 359
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_26

    .line 362
    :cond_16
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->canceled:Z

    .line 363
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;->cancelLoad()V

    .line 364
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    if-eqz v1, :cond_26

    .line 365
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_26
    :goto_26
    if-eqz p1, :cond_3d

    .line 369
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->finish()V

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 371
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v6, v4, v6

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/upstream/Loader$Callback;->onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJZ)V

    .line 376
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;

    :cond_3d
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 433
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    if-eqz v0, :cond_5

    return-void

    .line 436
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_d

    .line 437
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->execute()V

    return-void

    .line 440
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a5

    .line 443
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->finish()V

    .line 444
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 445
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v6, v4, v0

    .line 446
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->canceled:Z

    if-eqz v0, :cond_2a

    .line 447
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/upstream/Loader$Callback;->onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJZ)V

    return-void

    .line 450
    :cond_2a
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9c

    const/4 v10, 0x2

    if-eq v0, v10, :cond_81

    const/4 v11, 0x3

    if-eq v0, v11, :cond_36

    goto :goto_a4

    .line 464
    :cond_36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 465
    iget p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 v9, p1, 0x1

    iput v9, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->errorCount:I

    .line 466
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    .line 467
    invoke-interface/range {v2 .. v9}, Landroidx/media2/exoplayer/external/upstream/Loader$Callback;->onLoadError(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object p1

    .line 468
    invoke-static {p1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->access$300(Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;)I

    move-result v0

    if-ne v0, v11, :cond_59

    .line 469
    iget-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->access$202(Landroidx/media2/exoplayer/external/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_a4

    .line 470
    :cond_59
    invoke-static {p1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->access$300(Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;)I

    move-result v0

    if-eq v0, v10, :cond_a4

    .line 471
    invoke-static {p1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->access$300(Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;)I

    move-result v0

    if-ne v0, v1, :cond_67

    .line 472
    iput v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->errorCount:I

    .line 475
    :cond_67
    invoke-static {p1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->access$400(Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_79

    .line 476
    invoke-static {p1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->access$400(Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;)J

    move-result-wide v0

    goto :goto_7d

    .line 477
    :cond_79
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->getRetryDelayMillis()J

    move-result-wide v0

    .line 474
    :goto_7d
    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->start(J)V

    goto :goto_a4

    .line 456
    :cond_81
    :try_start_81
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    invoke-interface/range {v2 .. v7}, Landroidx/media2/exoplayer/external/upstream/Loader$Callback;->onLoadCompleted(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJ)V
    :try_end_88
    .catch Ljava/lang/RuntimeException; {:try_start_81 .. :try_end_88} :catch_89

    goto :goto_a4

    :catch_89
    move-exception p1

    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    .line 459
    invoke-static {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->access$202(Landroidx/media2/exoplayer/external/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_a4

    .line 452
    :cond_9c
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->callback:Landroidx/media2/exoplayer/external/upstream/Loader$Callback;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/upstream/Loader$Callback;->onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJZ)V

    :cond_a4
    :goto_a4
    return-void

    .line 441
    :cond_a5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
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

    .line 338
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    if-eqz v0, :cond_a

    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->errorCount:I

    if-gt v1, p1, :cond_9

    goto :goto_a

    .line 339
    :cond_9
    throw v0

    :cond_a
    :goto_a
    return-void
.end method

.method public run()V
    .registers 7

    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 383
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 384
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->canceled:Z

    if-nez v3, :cond_40

    const-string v3, "load:"

    .line 385
    iget-object v4, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2f

    :cond_29
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_2f
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_32} :catch_97
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_32} :catch_89
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_32} :catch_72
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_32} :catch_5b
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_32} :catch_48

    .line 387
    :try_start_32
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->loadable:Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;

    invoke-interface {v3}, Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;->load()V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_3b

    .line 389
    :try_start_37
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    goto :goto_40

    :catchall_3b
    move-exception v3

    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    throw v3

    .line 392
    :cond_40
    :goto_40
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    if-nez v3, :cond_a3

    .line 393
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_47} :catch_97
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_47} :catch_89
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_47} :catch_72
    .catch Ljava/lang/OutOfMemoryError; {:try_start_37 .. :try_end_47} :catch_5b
    .catch Ljava/lang/Error; {:try_start_37 .. :try_end_47} :catch_48

    goto :goto_a3

    :catch_48
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    .line 423
    invoke-static {v0, v2, v1}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 424
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    if-nez v0, :cond_5a

    const/4 v0, 0x4

    .line 425
    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 427
    :cond_5a
    throw v1

    :catch_5b
    move-exception v1

    const-string v3, "OutOfMemory error loading stream"

    .line 415
    invoke-static {v0, v3, v1}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    if-nez v0, :cond_a3

    .line 417
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a3

    :catch_72
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    .line 407
    invoke-static {v0, v3, v1}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    if-nez v0, :cond_a3

    .line 409
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a3

    :catch_89
    nop

    .line 401
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->canceled:Z

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 402
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    if-nez v0, :cond_a3

    .line 403
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_a3

    :catch_97
    move-exception v0

    .line 396
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_a3

    .line 397
    invoke-virtual {p0, v2, v0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_a3
    :goto_a3
    return-void
.end method

.method public start(J)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayMillis"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->access$100(Landroidx/media2/exoplayer/external/upstream/Loader;)Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 345
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->this$0:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-static {v0, p0}, Landroidx/media2/exoplayer/external/upstream/Loader;->access$102(Landroidx/media2/exoplayer/external/upstream/Loader;Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;)Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1e

    .line 347
    invoke-virtual {p0, v1, p1, p2}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_21

    .line 349
    :cond_1e
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadTask;->execute()V

    :goto_21
    return-void
.end method
