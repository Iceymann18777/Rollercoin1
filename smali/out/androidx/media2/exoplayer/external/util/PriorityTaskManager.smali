.class public final Landroidx/media2/exoplayer/external/util/PriorityTaskManager;
.super Ljava/lang/Object;
.source "PriorityTaskManager.java"


# instance fields
.field private highestPriority:I

.field private final lock:Ljava/lang/Object;

.field private final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    const/high16 v0, -0x80000000

    .line 57
    iput v0, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->highestPriority:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "priority"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 68
    iget v1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->highestPriority:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->highestPriority:I

    .line 69
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public remove(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "priority"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_3
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 120
    iget-object p1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_17

    const/high16 p1, -0x80000000

    goto :goto_29

    :cond_17
    iget-object p1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_29
    iput p1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->highestPriority:I

    .line 121
    iget-object p1, p0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 122
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p1
.end method
