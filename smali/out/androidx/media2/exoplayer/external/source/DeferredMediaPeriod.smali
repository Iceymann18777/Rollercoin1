.class public final Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;
.super Ljava/lang/Object;
.source "DeferredMediaPeriod.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaPeriod;
.implements Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod$PrepareErrorListener;
    }
.end annotation


# instance fields
.field private final allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

.field private callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

.field public final id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

.field private listener:Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod$PrepareErrorListener;

.field private mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

.field public final mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

.field private notifiedPrepareError:Z

.field private preparePositionOverrideUs:J

.field private preparePositionUs:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mediaSource",
            "id",
            "allocator",
            "preparePositionUs"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 77
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    .line 78
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 79
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionUs:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 80
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method

.method private getPreparePositionWithOverride(J)J
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preparePositionUs"
        }
    .end annotation

    .line 233
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    move-wide p1, v0

    :cond_c
    return-wide p1
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->continueLoading(J)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 117
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionUs:J

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide v0

    .line 118
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    invoke-interface {v2, p1, v3, v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 119
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    if-eqz v2, :cond_17

    .line 120
    invoke-interface {p1, p0, v0, v1}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V

    :cond_17
    return-void
.end method

.method public discardBuffer(JZ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "toKeyframe"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "seekParameters"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 192
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreparePositionUs()J
    .registers 3

    .line 96
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionUs:J

    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .registers 2

    .line 162
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    if-eqz v0, :cond_a

    .line 145
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_21

    .line 147
    :cond_a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaSource;->maybeThrowSourceInfoRefreshError()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_21

    :catch_10
    move-exception v0

    .line 150
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->listener:Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod$PrepareErrorListener;

    if-eqz v1, :cond_22

    .line 153
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->notifiedPrepareError:Z

    if-nez v2, :cond_21

    const/4 v2, 0x1

    .line 154
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->notifiedPrepareError:Z

    .line 155
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, v2, v0}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod$PrepareErrorListener;->onPrepareError(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    :cond_21
    :goto_21
    return-void

    .line 151
    :cond_22
    throw v0
.end method

.method public onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 222
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "source"
        }
    .end annotation

    .line 40
    check-cast p1, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPeriod"
        }
    .end annotation

    .line 229
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    return-void
.end method

.method public overridePreparePositionUs(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preparePositionUs"
        }
    .end annotation

    .line 106
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "preparePositionUs"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    .line 136
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    if-eqz p1, :cond_f

    .line 137
    iget-wide p2, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionUs:J

    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V

    :cond_f
    return-void
.end method

.method public readDiscontinuity()J
    .registers 3

    .line 187
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public releasePeriod()V
    .registers 3

    .line 128
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    if-eqz v0, :cond_9

    .line 129
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/MediaSource;->releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    :cond_9
    return-void
.end method

.method public seekToUs(J)J
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "selections",
            "mayRetainStreamFlags",
            "streams",
            "streamResetFlags",
            "positionUs"
        }
    .end annotation

    move-object v0, p0

    .line 172
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_16

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionUs:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_16

    .line 174
    iput-wide v3, v0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->preparePositionOverrideUs:J

    move-wide v13, v1

    goto :goto_18

    :cond_16
    move-wide/from16 v13, p5

    .line 176
    :goto_18
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 177
    invoke-interface/range {v8 .. v14}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method
