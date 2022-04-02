.class public final Lcom/google/android/exoplayer2/util/TimestampAdjuster;
.super Ljava/lang/Object;
.source "TimestampAdjuster.java"


# instance fields
.field private firstSampleTimestampUs:J

.field private volatile lastSampleTimestampUs:J

.field private timestampOffsetUs:J


# direct methods
.method public constructor <init>(J)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->setFirstSampleTimestampUs(J)V

    return-void
.end method

.method public static ptsToUs(J)J
    .registers 4

    const-wide/32 v0, 0xf4240

    mul-long p0, p0, v0

    const-wide/32 v0, 0x15f90

    .line 173
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static usToPts(J)J
    .registers 4

    const-wide/32 v0, 0x15f90

    mul-long p0, p0, v0

    const-wide/32 v0, 0xf4240

    .line 183
    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public adjustSampleTimestamp(J)J
    .registers 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_a

    return-wide v0

    .line 139
    :cond_a
    iget-wide v2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_13

    .line 140
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    goto :goto_28

    .line 142
    :cond_13
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    sub-long/2addr v0, p1

    .line 144
    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    .line 146
    :cond_21
    monitor-enter p0

    .line 147
    :try_start_22
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_2c

    .line 152
    :goto_28
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr p1, v0

    return-wide p1

    :catchall_2c
    move-exception p1

    .line 150
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public adjustTsTimestamp(J)J
    .registers 11

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_a

    return-wide v0

    .line 113
    :cond_a
    iget-wide v2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3d

    .line 116
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->usToPts(J)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    add-long/2addr v2, v0

    const-wide v4, 0x200000000L

    .line 117
    div-long/2addr v2, v4

    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    mul-long v6, v6, v4

    add-long/2addr v6, p1

    mul-long v2, v2, v4

    add-long/2addr p1, v2

    sub-long v2, v6, v0

    .line 121
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_3d

    move-wide p1, v6

    .line 125
    :cond_3d
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getFirstSampleTimestampUs()J
    .registers 3

    .line 66
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    return-wide v0
.end method

.method public getLastAdjustedTimestampUs()J
    .registers 8

    .line 76
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr v2, v0

    goto :goto_1d

    :cond_11
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1d

    move-wide v2, v0

    :cond_1d
    :goto_1d
    return-wide v2
.end method

.method public getTimestampOffsetUs()J
    .registers 8

    .line 91
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v0, v4

    if-nez v6, :cond_13

    const-wide/16 v2, 0x0

    goto :goto_1c

    :cond_13
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1a

    goto :goto_1c

    :cond_1a
    iget-wide v2, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->timestampOffsetUs:J

    :goto_1c
    return-wide v2
.end method

.method public reset()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 100
    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    return-void
.end method

.method public declared-synchronized setFirstSampleTimestampUs(J)V
    .registers 8

    monitor-enter p0

    .line 60
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 61
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->firstSampleTimestampUs:J
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 62
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized waitUntilInitialized()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 161
    :goto_1
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->lastSampleTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    goto :goto_1

    .line 164
    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    goto :goto_16

    :goto_15
    throw v0

    :goto_16
    goto :goto_15
.end method
