.class abstract Landroidx/media2/widget/SubtitleTrack;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Landroidx/media2/widget/MediaTimeProvider$OnMediaTimeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/SubtitleTrack$RenderingWidget;,
        Landroidx/media2/widget/SubtitleTrack$Run;,
        Landroidx/media2/widget/SubtitleTrack$Cue;,
        Landroidx/media2/widget/SubtitleTrack$CueList;
    }
.end annotation


# instance fields
.field public DEBUG:Z

.field final mActiveCues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/widget/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private mCues:Landroidx/media2/widget/SubtitleTrack$CueList;

.field private mFormat:Landroid/media/MediaFormat;

.field protected mHandler:Landroid/os/Handler;

.field private mLastTimeMs:J

.field private mLastUpdateTimeMs:J

.field private mNextScheduledTimeMs:J

.field private final mRunsByEndTime:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroidx/media2/widget/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunsByID:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroidx/media2/widget/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected mTimeProvider:Landroidx/media2/widget/MediaTimeProvider;

.field protected mVisible:Z


# direct methods
.method constructor <init>(Landroid/media/MediaFormat;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    .line 51
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleTrack;->DEBUG:Z

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleTrack;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, -0x1

    .line 75
    iput-wide v0, p0, Landroidx/media2/widget/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 65
    iput-object p1, p0, Landroidx/media2/widget/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    .line 66
    new-instance p1, Landroidx/media2/widget/SubtitleTrack$CueList;

    invoke-direct {p1}, Landroidx/media2/widget/SubtitleTrack$CueList;-><init>()V

    iput-object p1, p0, Landroidx/media2/widget/SubtitleTrack;->mCues:Landroidx/media2/widget/SubtitleTrack$CueList;

    .line 67
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleTrack;->clearActiveCues()V

    .line 68
    iput-wide v0, p0, Landroidx/media2/widget/SubtitleTrack;->mLastTimeMs:J

    return-void
.end method

.method private removeRunsByEndTimeIndex(I)V
    .registers 7

    .line 167
    iget-object v0, p0, Landroidx/media2/widget/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/widget/SubtitleTrack$Run;

    :goto_8
    if-eqz v0, :cond_29

    .line 169
    iget-object v1, v0, Landroidx/media2/widget/SubtitleTrack$Run;->mFirstCue:Landroidx/media2/widget/SubtitleTrack$Cue;

    :goto_c
    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 171
    iget-object v3, p0, Landroidx/media2/widget/SubtitleTrack;->mCues:Landroidx/media2/widget/SubtitleTrack$CueList;

    invoke-virtual {v3, v1}, Landroidx/media2/widget/SubtitleTrack$CueList;->remove(Landroidx/media2/widget/SubtitleTrack$Cue;)V

    .line 172
    iget-object v3, v1, Landroidx/media2/widget/SubtitleTrack$Cue;->mNextInRun:Landroidx/media2/widget/SubtitleTrack$Cue;

    .line 173
    iput-object v2, v1, Landroidx/media2/widget/SubtitleTrack$Cue;->mNextInRun:Landroidx/media2/widget/SubtitleTrack$Cue;

    move-object v1, v3

    goto :goto_c

    .line 176
    :cond_1a
    iget-object v1, p0, Landroidx/media2/widget/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v3, v0, Landroidx/media2/widget/SubtitleTrack$Run;->mRunID:J

    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    .line 177
    iget-object v1, v0, Landroidx/media2/widget/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    .line 178
    iput-object v2, v0, Landroidx/media2/widget/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    .line 179
    iput-object v2, v0, Landroidx/media2/widget/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/widget/SubtitleTrack$Run;

    move-object v0, v1

    goto :goto_8

    .line 182
    :cond_29
    iget-object v0, p0, Landroidx/media2/widget/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized clearActiveCues()V
    .registers 4

    monitor-enter p0

    .line 201
    :try_start_1
    iget-boolean v0, p0, Landroidx/media2/widget/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_26

    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/widget/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " active cues"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_26
    iget-object v0, p0, Landroidx/media2/widget/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v0, -0x1

    .line 203
    iput-wide v0, p0, Landroidx/media2/widget/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 204
    monitor-exit p0

    return-void

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroidx/media2/widget/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_10

    .line 190
    invoke-direct {p0, v0}, Landroidx/media2/widget/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 193
    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final getFormat()Landroid/media/MediaFormat;
    .registers 2

    .line 72
    iget-object v0, p0, Landroidx/media2/widget/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public abstract getRenderingWidget()Landroidx/media2/widget/SubtitleTrack$RenderingWidget;
.end method

.method public getTrackType()I
    .registers 2

    .line 602
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleTrack;->getRenderingWidget()Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x3

    goto :goto_9

    :cond_8
    const/4 v0, 0x4

    :goto_9
    return v0
.end method

.method public hide()V
    .registers 3

    .line 276
    iget-boolean v0, p0, Landroidx/media2/widget/SubtitleTrack;->mVisible:Z

    if-nez v0, :cond_5

    return-void

    .line 280
    :cond_5
    iget-object v0, p0, Landroidx/media2/widget/SubtitleTrack;->mTimeProvider:Landroidx/media2/widget/MediaTimeProvider;

    if-eqz v0, :cond_c

    .line 281
    invoke-interface {v0, p0}, Landroidx/media2/widget/MediaTimeProvider;->cancelNotifications(Landroidx/media2/widget/MediaTimeProvider$OnMediaTimeListener;)V

    .line 283
    :cond_c
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleTrack;->getRenderingWidget()Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 285
    invoke-interface {v0, v1}, Landroidx/media2/widget/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    .line 287
    :cond_16
    iput-boolean v1, p0, Landroidx/media2/widget/SubtitleTrack;->mVisible:Z

    return-void
.end method

.method public onData(Landroidx/media2/common/SubtitleData;)V
    .registers 8

    .line 81
    invoke-virtual {p1}, Landroidx/media2/common/SubtitleData;->getStartTimeUs()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 82
    invoke-virtual {p1}, Landroidx/media2/common/SubtitleData;->getData()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, v1}, Landroidx/media2/widget/SubtitleTrack;->onData([BZJ)V

    .line 85
    invoke-virtual {p1}, Landroidx/media2/common/SubtitleData;->getStartTimeUs()J

    move-result-wide v2

    invoke-virtual {p1}, Landroidx/media2/common/SubtitleData;->getDurationUs()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 83
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/media2/widget/SubtitleTrack;->setRunDiscardTimeMs(JJ)V

    return-void
.end method

.method protected abstract onData([BZJ)V
.end method

.method public setRunDiscardTimeMs(JJ)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1d

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1d

    .line 592
    iget-object v0, p0, Landroidx/media2/widget/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/widget/SubtitleTrack$Run;

    if-eqz p1, :cond_1d

    .line 594
    iput-wide p3, p1, Landroidx/media2/widget/SubtitleTrack$Run;->mEndTimeMs:J

    .line 595
    iget-object p2, p0, Landroidx/media2/widget/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    :cond_1d
    return-void
.end method

.method public declared-synchronized setTimeProvider(Landroidx/media2/widget/MediaTimeProvider;)V
    .registers 3

    monitor-enter p0

    .line 367
    :try_start_1
    iget-object v0, p0, Landroidx/media2/widget/SubtitleTrack;->mTimeProvider:Landroidx/media2/widget/MediaTimeProvider;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    if-ne v0, p1, :cond_7

    .line 368
    monitor-exit p0

    return-void

    .line 370
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroidx/media2/widget/SubtitleTrack;->mTimeProvider:Landroidx/media2/widget/MediaTimeProvider;

    if-eqz v0, :cond_10

    .line 371
    iget-object v0, p0, Landroidx/media2/widget/SubtitleTrack;->mTimeProvider:Landroidx/media2/widget/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroidx/media2/widget/MediaTimeProvider;->cancelNotifications(Landroidx/media2/widget/MediaTimeProvider$OnMediaTimeListener;)V

    .line 373
    :cond_10
    iput-object p1, p0, Landroidx/media2/widget/SubtitleTrack;->mTimeProvider:Landroidx/media2/widget/MediaTimeProvider;

    if-eqz p1, :cond_17

    .line 375
    invoke-interface {p1, p0}, Landroidx/media2/widget/MediaTimeProvider;->scheduleUpdate(Landroidx/media2/widget/MediaTimeProvider$OnMediaTimeListener;)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    .line 377
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public show()V
    .registers 3

    .line 258
    iget-boolean v0, p0, Landroidx/media2/widget/SubtitleTrack;->mVisible:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleTrack;->mVisible:Z

    .line 263
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleTrack;->getRenderingWidget()Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 265
    invoke-interface {v1, v0}, Landroidx/media2/widget/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    .line 267
    :cond_11
    iget-object v0, p0, Landroidx/media2/widget/SubtitleTrack;->mTimeProvider:Landroidx/media2/widget/MediaTimeProvider;

    if-eqz v0, :cond_18

    .line 268
    invoke-interface {v0, p0}, Landroidx/media2/widget/MediaTimeProvider;->scheduleUpdate(Landroidx/media2/widget/MediaTimeProvider$OnMediaTimeListener;)V

    :cond_18
    return-void
.end method
