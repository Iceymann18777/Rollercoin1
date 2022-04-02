.class public final Landroidx/media2/exoplayer/external/util/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private isOpen:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized block()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 63
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/util/ConditionVariable;->isOpen:Z

    if-nez v0, :cond_9

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    goto :goto_1

    .line 66
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method public declared-synchronized close()Z
    .registers 3

    monitor-enter p0

    .line 52
    :try_start_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/util/ConditionVariable;->isOpen:Z

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/util/ConditionVariable;->isOpen:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 54
    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open()Z
    .registers 2

    monitor-enter p0

    .line 38
    :try_start_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/util/ConditionVariable;->isOpen:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 39
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x1

    .line 41
    :try_start_9
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/util/ConditionVariable;->isOpen:Z

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 43
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
