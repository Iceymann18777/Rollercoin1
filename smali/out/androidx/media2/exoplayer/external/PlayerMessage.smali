.class public final Landroidx/media2/exoplayer/external/PlayerMessage;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/PlayerMessage$Sender;,
        Landroidx/media2/exoplayer/external/PlayerMessage$Target;
    }
.end annotation


# instance fields
.field private deleteAfterDelivery:Z

.field private handler:Landroid/os/Handler;

.field private isCanceled:Z

.field private isDelivered:Z

.field private isProcessed:Z

.field private isSent:Z

.field private payload:Ljava/lang/Object;

.field private positionMs:J

.field private final sender:Landroidx/media2/exoplayer/external/PlayerMessage$Sender;

.field private final target:Landroidx/media2/exoplayer/external/PlayerMessage$Target;

.field private final timeline:Landroidx/media2/exoplayer/external/Timeline;

.field private type:I

.field private windowIndex:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/PlayerMessage$Sender;Landroidx/media2/exoplayer/external/PlayerMessage$Target;Landroidx/media2/exoplayer/external/Timeline;ILandroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sender",
            "target",
            "timeline",
            "defaultWindowIndex",
            "defaultHandler"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->sender:Landroidx/media2/exoplayer/external/PlayerMessage$Sender;

    .line 93
    iput-object p2, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->target:Landroidx/media2/exoplayer/external/PlayerMessage$Target;

    .line 94
    iput-object p3, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 95
    iput-object p5, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->handler:Landroid/os/Handler;

    .line 96
    iput p4, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->windowIndex:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 97
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->positionMs:J

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->deleteAfterDelivery:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized blockUntilDelivered()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 286
    :try_start_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isSent:Z

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 287
    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 288
    :goto_1c
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isProcessed:Z

    if-nez v0, :cond_24

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1c

    .line 291
    :cond_24
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isDelivered:Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return v0

    :catchall_28
    move-exception v0

    monitor-exit p0

    goto :goto_2c

    :goto_2b
    throw v0

    :goto_2c
    goto :goto_2b
.end method

.method public getDeleteAfterDelivery()Z
    .registers 2

    .line 232
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->deleteAfterDelivery:Z

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 163
    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPayload()Ljava/lang/Object;
    .registers 2

    .line 145
    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getPositionMs()J
    .registers 3

    .line 171
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->positionMs:J

    return-wide v0
.end method

.method public getTarget()Landroidx/media2/exoplayer/external/PlayerMessage$Target;
    .registers 2

    .line 108
    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->target:Landroidx/media2/exoplayer/external/PlayerMessage$Target;

    return-object v0
.end method

.method public getTimeline()Landroidx/media2/exoplayer/external/Timeline;
    .registers 2

    .line 103
    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 126
    iget v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->type:I

    return v0
.end method

.method public getWindowIndex()I
    .registers 2

    .line 212
    iget v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->windowIndex:I

    return v0
.end method

.method public declared-synchronized isCanceled()Z
    .registers 2

    monitor-enter p0

    .line 268
    :try_start_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isCanceled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markAsProcessed(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDelivered"
        }
    .end annotation

    monitor-enter p0

    .line 303
    :try_start_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isDelivered:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isDelivered:Z

    const/4 p1, 0x1

    .line 304
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isProcessed:Z

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 306
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public send()Landroidx/media2/exoplayer/external/PlayerMessage;
    .registers 7

    .line 244
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 245
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->positionMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_17

    .line 246
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->deleteAfterDelivery:Z

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 248
    :cond_17
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isSent:Z

    .line 249
    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->sender:Landroidx/media2/exoplayer/external/PlayerMessage$Sender;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/PlayerMessage$Sender;->sendMessage(Landroidx/media2/exoplayer/external/PlayerMessage;)V

    return-object p0
.end method

.method public setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payload"
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 138
    iput-object p1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->payload:Ljava/lang/Object;

    return-object p0
.end method

.method public setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .line 119
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 120
    iput p1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->type:I

    return-object p0
.end method
