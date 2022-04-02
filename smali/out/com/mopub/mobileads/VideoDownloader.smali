.class public Lcom/mopub/mobileads/VideoDownloader;
.super Ljava/lang/Object;
.source "VideoDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;,
        Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;
    }
.end annotation


# static fields
.field private static final MAX_VIDEO_SIZE:I = 0x1900000

.field private static final sDownloaderTasks:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Deque;
    .registers 1

    .line 30
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    return-object v0
.end method

.method public static cache(Ljava/lang/String;Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;)V
    .registers 5

    .line 43
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_16

    .line 46
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "VideoDownloader attempted to cache video with null url."

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 47
    invoke-interface {p1, v1}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;->onComplete(Z)V

    return-void

    .line 51
    :cond_16
    new-instance v2, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;

    invoke-direct {v2, p1}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;-><init>(Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;)V

    :try_start_1b
    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v1

    .line 53
    invoke-static {v2, v0}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_26

    .line 55
    :catch_23
    invoke-interface {p1, v1}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;->onComplete(Z)V

    :goto_26
    return-void
.end method

.method public static cancelAllDownloaderTasks()V
    .registers 2

    .line 61
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 62
    invoke-static {v1}, Lcom/mopub/mobileads/VideoDownloader;->cancelOneTask(Ljava/lang/ref/WeakReference;)Z

    goto :goto_6

    .line 65
    :cond_16
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    return-void
.end method

.method public static cancelLastDownloadTask()V
    .registers 1

    .line 69
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 73
    :cond_9
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/mopub/mobileads/VideoDownloader;->cancelOneTask(Ljava/lang/ref/WeakReference;)Z

    .line 74
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    return-void
.end method

.method private static cancelOneTask(Ljava/lang/ref/WeakReference;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 89
    :cond_4
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;

    if-nez p0, :cond_d

    return v0

    :cond_d
    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->cancel(Z)Z

    move-result p0

    return p0
.end method

.method public static clearDownloaderTasks()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    return-void
.end method

.method public static getDownloaderTasks()Ljava/util/Deque;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    return-object v0
.end method
