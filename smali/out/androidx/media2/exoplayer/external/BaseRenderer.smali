.class public abstract Landroidx/media2/exoplayer/external/BaseRenderer;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/Renderer;
.implements Landroidx/media2/exoplayer/external/RendererCapabilities;


# instance fields
.field private configuration:Landroidx/media2/exoplayer/external/RendererConfiguration;

.field private index:I

.field private readingPositionUs:J

.field private state:I

.field private stream:Landroidx/media2/exoplayer/external/source/SampleStream;

.field private streamFormats:[Landroidx/media2/exoplayer/external/Format;

.field private streamIsFinal:Z

.field private streamOffsetUs:J

.field private final trackType:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackType"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->trackType:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 55
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->readingPositionUs:J

    return-void
.end method

.method protected static supportsFormatDrm(Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drmSessionManager",
            "drmInitData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "*>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 368
    :cond_8
    invoke-interface {p0, p1}, Landroidx/media2/exoplayer/external/drm/DrmSessionManager;->canAcquireSession(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final disable()V
    .registers 4

    .line 159
    iget v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 160
    iput v2, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->state:I

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->stream:Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 162
    iput-object v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->streamFormats:[Landroidx/media2/exoplayer/external/Format;

    .line 163
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->streamIsFinal:Z

    .line 164
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BaseRenderer;->onDisabled()V

    return-void
.end method

.method public final enable(Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/SampleStream;JZJ)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "configuration",
            "formats",
            "stream",
            "positionUs",
            "joining",
            "offsetUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 87
    iget v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 88
    iput-object p1, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->configuration:Landroidx/media2/exoplayer/external/RendererConfiguration;

    .line 89
    iput v1, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->state:I

    .line 90
    invoke-virtual {p0, p6}, Landroidx/media2/exoplayer/external/BaseRenderer;->onEnabled(Z)V

    .line 91
    invoke-virtual {p0, p2, p3, p7, p8}, Landroidx/media2/exoplayer/external/BaseRenderer;->replaceStream([Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/SampleStream;J)V

    .line 92
    invoke-virtual {p0, p4, p5, p6}, Landroidx/media2/exoplayer/external/BaseRenderer;->onPositionReset(JZ)V

    return-void
.end method

.method public final getCapabilities()Landroidx/media2/exoplayer/external/RendererCapabilities;
    .registers 1

    return-object p0
.end method

.method protected final getConfiguration()Landroidx/media2/exoplayer/external/RendererConfiguration;
    .registers 2

    .line 287
    iget-object v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->configuration:Landroidx/media2/exoplayer/external/RendererConfiguration;

    return-object v0
.end method

.method protected final getIndex()I
    .registers 2

    .line 294
    iget v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->index:I

    return v0
.end method

.method public getMediaClock()Landroidx/media2/exoplayer/external/util/MediaClock;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getReadingPositionUs()J
    .registers 3

    .line 125
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->readingPositionUs:J

    return-wide v0
.end method

.method public final getState()I
    .registers 2

    .line 80
    iget v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->state:I

    return v0
.end method

.method public final getStream()Landroidx/media2/exoplayer/external/source/SampleStream;
    .registers 2

    .line 115
    iget-object v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->stream:Landroidx/media2/exoplayer/external/source/SampleStream;

    return-object v0
.end method

.method protected final getStreamFormats()[Landroidx/media2/exoplayer/external/Format;
    .registers 2

    .line 280
    iget-object v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->streamFormats:[Landroidx/media2/exoplayer/external/Format;

    return-object v0
.end method

.method public final getTrackType()I
    .registers 2

    .line 60
    iget v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->trackType:I

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "what",
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .registers 6

    .line 120
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->readingPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final isCurrentStreamFinal()Z
    .registers 2

    .line 135
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->streamIsFinal:Z

    return v0
.end method

.method protected final isSourceReady()Z
    .registers 2

    .line 347
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->streamIsFinal:Z

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->stream:Landroidx/media2/exoplayer/external/source/SampleStream;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/SampleStream;->isReady()Z

    move-result v0

    :goto_f
    return v0
.end method

.method public final maybeThrowStreamError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->stream:Landroidx/media2/exoplayer/external/source/SampleStream;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method protected onDisabled()V
    .registers 1

    return-void
.end method

.method protected onEnabled(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "joining"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "joining"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onReset()V
    .registers 1

    return-void
.end method

.method protected onStarted()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onStopped()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onStreamChanged([Landroidx/media2/exoplayer/external/Format;J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "formats",
            "offsetUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected final readSource(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "formatHolder",
            "buffer",
            "formatRequired"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->stream:Landroidx/media2/exoplayer/external/source/SampleStream;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/SampleStream;->readData(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2c

    .line 316
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_1a

    const-wide/high16 p1, -0x8000000000000000L

    .line 317
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->readingPositionUs:J

    .line 318
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->streamIsFinal:Z

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, -0x3

    :goto_19
    return v0

    .line 320
    :cond_1a
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    .line 321
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->readingPositionUs:J

    iget-wide p1, p2, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->readingPositionUs:J

    goto :goto_47

    :cond_2c
    const/4 p2, -0x5

    if-ne p3, p2, :cond_47

    .line 323
    iget-object p2, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    .line 324
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_47

    .line 325
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Landroidx/media2/exoplayer/external/Format;->copyWithSubsampleOffsetUs(J)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    .line 326
    iput-object p2, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    :cond_47
    :goto_47
    return p3
.end method

.method public final replaceStream([Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/SampleStream;J)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "formats",
            "stream",
            "offsetUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 105
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->streamIsFinal:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 106
    iput-object p2, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->stream:Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 107
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->readingPositionUs:J

    .line 108
    iput-object p1, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->streamFormats:[Landroidx/media2/exoplayer/external/Format;

    .line 109
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->streamOffsetUs:J

    .line 110
    invoke-virtual {p0, p1, p3, p4}, Landroidx/media2/exoplayer/external/BaseRenderer;->onStreamChanged([Landroidx/media2/exoplayer/external/Format;J)V

    return-void
.end method

.method public final reset()V
    .registers 2

    .line 169
    iget v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->state:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 170
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BaseRenderer;->onReset()V

    return-void
.end method

.method public final resetPosition(J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->streamIsFinal:Z

    .line 146
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->readingPositionUs:J

    .line 147
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/BaseRenderer;->onPositionReset(JZ)V

    return-void
.end method

.method public final setCurrentStreamFinal()V
    .registers 2

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->streamIsFinal:Z

    return-void
.end method

.method public final setIndex(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 70
    iput p1, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->index:I

    return-void
.end method

.method public setOperatingRate(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/Renderer$$CC;->setOperatingRate$$dflt$$(Landroidx/media2/exoplayer/external/Renderer;F)V

    return-void
.end method

.method protected skipSource(J)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->stream:Landroidx/media2/exoplayer/external/source/SampleStream;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->streamOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/SampleStream;->skipData(J)I

    move-result p1

    return p1
.end method

.method public final start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 97
    iget v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    const/4 v0, 0x2

    .line 98
    iput v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->state:I

    .line 99
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BaseRenderer;->onStarted()V

    return-void
.end method

.method public final stop()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 152
    iget v0, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 153
    iput v1, p0, Landroidx/media2/exoplayer/external/BaseRenderer;->state:I

    .line 154
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BaseRenderer;->onStopped()V

    return-void
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
