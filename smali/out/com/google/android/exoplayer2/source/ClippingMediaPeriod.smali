.class public final Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    }
.end annotation


# instance fields
.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field endUs:J

.field public final mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private pendingInitialDiscontinuityPositionUs:J

.field private sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

.field startUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaPeriod;ZJJ)V
    .registers 7

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 65
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    if-eqz p2, :cond_e

    move-wide p1, p3

    goto :goto_13

    :cond_e
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    :goto_13
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 67
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    .line 68
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    return-void
.end method

.method private clipSeekParameters(JLcom/google/android/exoplayer2/SeekParameters;)Lcom/google/android/exoplayer2/SeekParameters;
    .registers 13

    .line 236
    iget-wide v0, p3, Lcom/google/android/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v4, p1, v2

    const-wide/16 v2, 0x0

    .line 237
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 239
    iget-wide v2, p3, Lcom/google/android/exoplayer2/SeekParameters;->toleranceAfterUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_1d

    const-wide p1, 0x7fffffffffffffffL

    move-wide v6, p1

    goto :goto_1f

    :cond_1d
    sub-long/2addr v4, p1

    move-wide v6, v4

    :goto_1f
    const-wide/16 v4, 0x0

    .line 240
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    .line 244
    iget-wide v2, p3, Lcom/google/android/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_32

    iget-wide v2, p3, Lcom/google/android/exoplayer2/SeekParameters;->toleranceAfterUs:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_32

    return-object p3

    .line 248
    :cond_32
    new-instance p3, Lcom/google/android/exoplayer2/SeekParameters;

    invoke-direct {p3, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/SeekParameters;-><init>(JJ)V

    return-object p3
.end method

.method private static shouldKeepInitialDiscontinuity(J[Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z
    .registers 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_20

    .line 264
    array-length p0, p2

    const/4 p1, 0x0

    :goto_9
    if-ge p1, p0, :cond_20

    aget-object v1, p2, p1

    if-eqz v1, :cond_1d

    .line 266
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 267
    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_20
    return v0
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 7

    .line 191
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-wide v0

    .line 195
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->clipSeekParameters(JLcom/google/android/exoplayer2/SeekParameters;)Lcom/google/android/exoplayer2/SeekParameters;

    move-result-object p3

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 8

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 167
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_17

    cmp-long v6, v0, v4

    if-ltz v6, :cond_17

    goto :goto_18

    :cond_17
    return-wide v0

    :cond_18
    :goto_18
    return-wide v2
.end method

.method public getNextLoadPositionUs()J
    .registers 8

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 202
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_17

    cmp-long v6, v0, v4

    if-ltz v6, :cond_17

    goto :goto_18

    :cond_17
    return-wide v0

    :cond_18
    :goto_18
    return-wide v2
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->isLoading()Z

    move-result v0

    return v0
.end method

.method isPendingInitialDiscontinuity()Z
    .registers 6

    .line 232
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public maybeThrowPrepareError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 2

    .line 228
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .registers 2

    .line 35
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 2

    .line 223
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .registers 4

    .line 85
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 86
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    return-void
.end method

.method public readDiscontinuity()J
    .registers 10

    .line 148
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_19

    .line 149
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 150
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 152
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->readDiscontinuity()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_18

    move-wide v3, v5

    :cond_18
    return-wide v3

    .line 155
    :cond_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_24

    return-wide v1

    .line 159
    :cond_24
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    const/4 v2, 0x1

    const/4 v5, 0x0

    cmp-long v6, v3, v0

    if-ltz v6, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 160
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v0, v6

    if-eqz v8, :cond_40

    cmp-long v6, v3, v0

    if-gtz v6, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    :cond_40
    :goto_40
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    return-wide v3
.end method

.method public reevaluateBuffer(J)V
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .registers 9

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 176
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    if-eqz v4, :cond_15

    .line 179
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->clearSentEos()V

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 182
    :cond_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v0

    cmp-long v3, v0, p1

    if-eqz v3, :cond_34

    .line 183
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_35

    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p1, v3

    if-eqz v5, :cond_34

    cmp-long v3, v0, p1

    if-gtz v3, :cond_35

    :cond_34
    const/4 v2, 0x1

    :cond_35
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    return-wide v0
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .registers 19

    move-object v0, p0

    move-object v1, p3

    .line 106
    array-length v2, v1

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 107
    array-length v2, v1

    new-array v9, v2, [Lcom/google/android/exoplayer2/source/SampleStream;

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 108
    :goto_c
    array-length v3, v1

    const/4 v11, 0x0

    if-ge v2, v3, :cond_25

    .line 109
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v4, v1, v2

    check-cast v4, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v4, v3, v2

    .line 110
    aget-object v4, v3, v2

    if-eqz v4, :cond_20

    aget-object v3, v3, v2

    iget-object v11, v3, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplayer2/source/SampleStream;

    :cond_20
    aput-object v11, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 112
    :cond_25
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    .line 113
    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v2

    .line 116
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v4

    if-eqz v4, :cond_47

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v6, p5, v4

    if-nez v6, :cond_47

    move-object v6, p1

    .line 118
    invoke-static {v4, v5, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->shouldKeepInitialDiscontinuity(J[Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z

    move-result v4

    if-eqz v4, :cond_47

    move-wide v4, v2

    goto :goto_4c

    :cond_47
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4c
    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    cmp-long v4, v2, p5

    if-eqz v4, :cond_67

    .line 121
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_65

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_67

    cmp-long v6, v2, v4

    if-gtz v6, :cond_65

    goto :goto_67

    :cond_65
    const/4 v4, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 v4, 0x1

    :goto_68
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 125
    :goto_6b
    array-length v4, v1

    if-ge v10, v4, :cond_99

    .line 126
    aget-object v4, v9, v10

    if-nez v4, :cond_77

    .line 127
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v11, v4, v10

    goto :goto_90

    .line 128
    :cond_77
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v5, v4, v10

    if-eqz v5, :cond_85

    aget-object v4, v4, v10

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v9, v10

    if-eq v4, v5, :cond_90

    .line 129
    :cond_85
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    new-instance v5, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v6, v9, v10

    invoke-direct {v5, p0, v6}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;-><init>(Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;Lcom/google/android/exoplayer2/source/SampleStream;)V

    aput-object v5, v4, v10

    .line 131
    :cond_90
    :goto_90
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v4, v4, v10

    aput-object v4, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6b

    :cond_99
    return-wide v2
.end method
