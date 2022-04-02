.class public Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;
.super Ljava/lang/Object;
.source "AvidAsyncTaskQueue.java"

# interfaces
.implements Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;


# instance fields
.field private currentTask:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;

.field private final pendingTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private final threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final workQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;->pendingTasks:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;->currentTask:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;

    .line 21
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 22
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;->workQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private executeNextTask()V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;->pendingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;->currentTask:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;

    if-eqz v0, :cond_11

    .line 36
    iget-object v1, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->start(Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public onTaskCompleted(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;)V
    .registers 2

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;->currentTask:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;

    .line 43
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;->executeNextTask()V

    return-void
.end method

.method public submitTask(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;)V
    .registers 3

    .line 26
    invoke-virtual {p1, p0}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->setListener(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;)V

    .line 27
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;->pendingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;->currentTask:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;

    if-nez p1, :cond_f

    .line 29
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;->executeNextTask()V

    :cond_f
    return-void
.end method
