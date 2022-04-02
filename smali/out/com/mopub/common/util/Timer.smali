.class public Lcom/mopub/common/util/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/util/Timer$State;
    }
.end annotation


# instance fields
.field private mStartTimeNanos:J

.field private mState:Lcom/mopub/common/util/Timer$State;

.field private mStopTimeNanos:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/mopub/common/util/Timer$State;->STOPPED:Lcom/mopub/common/util/Timer$State;

    iput-object v0, p0, Lcom/mopub/common/util/Timer;->mState:Lcom/mopub/common/util/Timer$State;

    return-void
.end method


# virtual methods
.method public getTime()J
    .registers 6

    .line 35
    iget-object v0, p0, Lcom/mopub/common/util/Timer;->mState:Lcom/mopub/common/util/Timer$State;

    sget-object v1, Lcom/mopub/common/util/Timer$State;->STARTED:Lcom/mopub/common/util/Timer$State;

    if-ne v0, v1, :cond_b

    .line 36
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_d

    .line 38
    :cond_b
    iget-wide v0, p0, Lcom/mopub/common/util/Timer;->mStopTimeNanos:J

    .line 40
    :goto_d
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/mopub/common/util/Timer;->mStartTimeNanos:J

    sub-long/2addr v0, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public start()V
    .registers 3

    .line 21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/common/util/Timer;->mStartTimeNanos:J

    .line 22
    sget-object v0, Lcom/mopub/common/util/Timer$State;->STARTED:Lcom/mopub/common/util/Timer$State;

    iput-object v0, p0, Lcom/mopub/common/util/Timer;->mState:Lcom/mopub/common/util/Timer$State;

    return-void
.end method

.method public stop()V
    .registers 3

    .line 26
    iget-object v0, p0, Lcom/mopub/common/util/Timer;->mState:Lcom/mopub/common/util/Timer$State;

    sget-object v1, Lcom/mopub/common/util/Timer$State;->STARTED:Lcom/mopub/common/util/Timer$State;

    if-ne v0, v1, :cond_11

    .line 29
    sget-object v0, Lcom/mopub/common/util/Timer$State;->STOPPED:Lcom/mopub/common/util/Timer$State;

    iput-object v0, p0, Lcom/mopub/common/util/Timer;->mState:Lcom/mopub/common/util/Timer$State;

    .line 30
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/common/util/Timer;->mStopTimeNanos:J

    return-void

    .line 27
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EventTimer was not started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
