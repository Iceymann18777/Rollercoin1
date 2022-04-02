.class public Lcom/mopub/common/DoubleTimeTracker;
.super Ljava/lang/Object;
.source "DoubleTimeTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/DoubleTimeTracker$SystemClockClock;,
        Lcom/mopub/common/DoubleTimeTracker$State;,
        Lcom/mopub/common/DoubleTimeTracker$Clock;
    }
.end annotation


# instance fields
.field private interval:J

.field private final mClock:Lcom/mopub/common/DoubleTimeTracker$Clock;

.field private startedTimestamp:J

.field private volatile state:Lcom/mopub/common/DoubleTimeTracker$State;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 34
    new-instance v0, Lcom/mopub/common/DoubleTimeTracker$SystemClockClock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/common/DoubleTimeTracker$SystemClockClock;-><init>(Lcom/mopub/common/DoubleTimeTracker$1;)V

    invoke-direct {p0, v0}, Lcom/mopub/common/DoubleTimeTracker;-><init>(Lcom/mopub/common/DoubleTimeTracker$Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/mopub/common/DoubleTimeTracker$Clock;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mopub/common/DoubleTimeTracker;->mClock:Lcom/mopub/common/DoubleTimeTracker$Clock;

    .line 40
    sget-object p1, Lcom/mopub/common/DoubleTimeTracker$State;->PAUSED:Lcom/mopub/common/DoubleTimeTracker$State;

    iput-object p1, p0, Lcom/mopub/common/DoubleTimeTracker;->state:Lcom/mopub/common/DoubleTimeTracker$State;

    return-void
.end method

.method private declared-synchronized computeIntervalDiff()J
    .registers 5

    monitor-enter p0

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/mopub/common/DoubleTimeTracker;->state:Lcom/mopub/common/DoubleTimeTracker$State;

    sget-object v1, Lcom/mopub/common/DoubleTimeTracker$State;->PAUSED:Lcom/mopub/common/DoubleTimeTracker$State;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_16

    if-ne v0, v1, :cond_b

    const-wide/16 v0, 0x0

    .line 72
    monitor-exit p0

    return-wide v0

    .line 75
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/mopub/common/DoubleTimeTracker;->mClock:Lcom/mopub/common/DoubleTimeTracker$Clock;

    invoke-interface {v0}, Lcom/mopub/common/DoubleTimeTracker$Clock;->elapsedRealTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mopub/common/DoubleTimeTracker;->startedTimestamp:J
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_16

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getInterval()D
    .registers 5

    monitor-enter p0

    .line 67
    :try_start_1
    iget-wide v0, p0, Lcom/mopub/common/DoubleTimeTracker;->interval:J

    invoke-direct {p0}, Lcom/mopub/common/DoubleTimeTracker;->computeIntervalDiff()J

    move-result-wide v2
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    add-long/2addr v0, v2

    long-to-double v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .registers 5

    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/mopub/common/DoubleTimeTracker;->state:Lcom/mopub/common/DoubleTimeTracker$State;

    sget-object v1, Lcom/mopub/common/DoubleTimeTracker$State;->PAUSED:Lcom/mopub/common/DoubleTimeTracker$State;

    if-ne v0, v1, :cond_16

    .line 55
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DoubleTimeTracker already paused."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_29

    .line 56
    monitor-exit p0

    return-void

    .line 60
    :cond_16
    :try_start_16
    iget-wide v0, p0, Lcom/mopub/common/DoubleTimeTracker;->interval:J

    invoke-direct {p0}, Lcom/mopub/common/DoubleTimeTracker;->computeIntervalDiff()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mopub/common/DoubleTimeTracker;->interval:J

    const-wide/16 v0, 0x0

    .line 61
    iput-wide v0, p0, Lcom/mopub/common/DoubleTimeTracker;->startedTimestamp:J

    .line 62
    sget-object v0, Lcom/mopub/common/DoubleTimeTracker$State;->PAUSED:Lcom/mopub/common/DoubleTimeTracker$State;

    iput-object v0, p0, Lcom/mopub/common/DoubleTimeTracker;->state:Lcom/mopub/common/DoubleTimeTracker$State;
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_29

    .line 63
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 5

    monitor-enter p0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/mopub/common/DoubleTimeTracker;->state:Lcom/mopub/common/DoubleTimeTracker$State;

    sget-object v1, Lcom/mopub/common/DoubleTimeTracker$State;->STARTED:Lcom/mopub/common/DoubleTimeTracker$State;

    if-ne v0, v1, :cond_16

    .line 45
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DoubleTimeTracker already started."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_24

    .line 46
    monitor-exit p0

    return-void

    .line 49
    :cond_16
    :try_start_16
    sget-object v0, Lcom/mopub/common/DoubleTimeTracker$State;->STARTED:Lcom/mopub/common/DoubleTimeTracker$State;

    iput-object v0, p0, Lcom/mopub/common/DoubleTimeTracker;->state:Lcom/mopub/common/DoubleTimeTracker$State;

    .line 50
    iget-object v0, p0, Lcom/mopub/common/DoubleTimeTracker;->mClock:Lcom/mopub/common/DoubleTimeTracker$Clock;

    invoke-interface {v0}, Lcom/mopub/common/DoubleTimeTracker$Clock;->elapsedRealTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/common/DoubleTimeTracker;->startedTimestamp:J
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_24

    .line 51
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
