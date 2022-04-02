.class public Lcom/mopub/common/util/AsyncTasks;
.super Ljava/lang/Object;
.source "AsyncTasks.java"


# static fields
.field private static sExecutor:Ljava/util/concurrent/Executor;

.field private static sUiThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 26
    invoke-static {}, Lcom/mopub/common/util/AsyncTasks;->init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/Executor;
    .registers 1

    .line 21
    sget-object v0, Lcom/mopub/common/util/AsyncTasks;->sExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private static init()V
    .registers 2

    .line 32
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/mopub/common/util/AsyncTasks;->sExecutor:Ljava/util/concurrent/Executor;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mopub/common/util/AsyncTasks;->sUiThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public static varargs safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TP;**>;[TP;)V"
        }
    .end annotation

    const-string v0, "Unable to execute null AsyncTask."

    .line 46
    invoke-static {p0, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_15

    .line 49
    sget-object v0, Lcom/mopub/common/util/AsyncTasks;->sExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2c

    .line 51
    :cond_15
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Posting AsyncTask to main thread for execution."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/mopub/common/util/AsyncTasks;->sUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/common/util/AsyncTasks$1;

    invoke-direct {v1, p0, p1}, Lcom/mopub/common/util/AsyncTasks$1;-><init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2c
    return-void
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 1

    .line 38
    sput-object p0, Lcom/mopub/common/util/AsyncTasks;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
