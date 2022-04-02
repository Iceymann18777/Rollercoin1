.class public Landroidx/media2/exoplayer/external/DefaultLoadControl;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/LoadControl;


# instance fields
.field private final allocator:Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

.field private final backBufferDurationUs:J

.field private final bufferForPlaybackAfterRebufferUs:J

.field private final bufferForPlaybackUs:J

.field private hasVideo:Z

.field private isBuffering:Z

.field private final maxBufferUs:J

.field private final minBufferAudioUs:J

.field private final minBufferVideoUs:J

.field private final prioritizeTimeOverSizeThresholds:Z

.field private final retainBackBufferFromKeyframe:Z

.field private final targetBufferBytesOverwrite:I

.field private targetBufferSize:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 243
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;-><init>(ZI)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/DefaultLoadControl;-><init>(Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allocator"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v2, 0x3a98

    const v3, 0xc350

    const v4, 0xc350

    const/16 v5, 0x9c4

    const/16 v6, 0x1388

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 249
    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/DefaultLoadControl;-><init>(Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;IIIIIIZIZ)V

    return-void
.end method

.method protected constructor <init>(Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;IIIIIIZIZ)V
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "allocator",
            "minBufferAudioMs",
            "minBufferVideoMs",
            "maxBufferMs",
            "bufferForPlaybackMs",
            "bufferForPlaybackAfterRebufferMs",
            "targetBufferBytes",
            "prioritizeTimeOverSizeThresholds",
            "backBufferDurationMs",
            "retainBackBufferFromKeyframe"
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p9

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    const-string v8, "bufferForPlaybackMs"

    const-string v9, "0"

    .line 296
    invoke-static {v4, v7, v8, v9}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "bufferForPlaybackAfterRebufferMs"

    .line 297
    invoke-static {v5, v7, v10, v9}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v11, "minBufferAudioMs"

    .line 299
    invoke-static {p2, v4, v11, v8}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v12, "minBufferVideoMs"

    .line 301
    invoke-static {v2, v4, v12, v8}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {p2, v5, v11, v10}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {v2, v5, v12, v10}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "maxBufferMs"

    .line 313
    invoke-static {v3, p2, v8, v11}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {v3, v2, v8, v12}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "backBufferDurationMs"

    .line 315
    invoke-static {v6, v7, v8, v9}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    move-object v7, p1

    .line 317
    iput-object v7, v0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->allocator:Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

    int-to-long v7, v1

    .line 318
    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->minBufferAudioUs:J

    int-to-long v1, v2

    .line 319
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->minBufferVideoUs:J

    int-to-long v1, v3

    .line 320
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->maxBufferUs:J

    int-to-long v1, v4

    .line 321
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->bufferForPlaybackUs:J

    int-to-long v1, v5

    .line 322
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    move/from16 v1, p7

    .line 323
    iput v1, v0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->targetBufferBytesOverwrite:I

    move/from16 v1, p8

    .line 324
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    int-to-long v1, v6

    .line 325
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->backBufferDurationUs:J

    move/from16 v1, p10

    .line 326
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    return-void
.end method

.method private static assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value1",
            "value2",
            "name1",
            "name2"
        }
    .end annotation

    if-lt p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    .line 437
    :goto_5
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x15

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be less than "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private static hasVideo([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "renderers",
            "trackSelectionArray"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 428
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 429
    aget-object v2, p0, v1

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v2, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return v0
.end method

.method private reset(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resetAllocator"
        }
    .end annotation

    const/4 v0, 0x0

    .line 420
    iput v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->targetBufferSize:I

    .line 421
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->isBuffering:Z

    if-eqz p1, :cond_c

    .line 423
    iget-object p1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->allocator:Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->reset()V

    :cond_c
    return-void
.end method


# virtual methods
.method protected calculateTargetBufferSize([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "renderers",
            "trackSelectionArray"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 411
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_19

    .line 412
    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 413
    aget-object v2, p1, v0

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->getDefaultBufferSize(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    return v1
.end method

.method public getAllocator()Landroidx/media2/exoplayer/external/upstream/Allocator;
    .registers 2

    .line 357
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->allocator:Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

    return-object v0
.end method

.method public getBackBufferDurationUs()J
    .registers 3

    .line 362
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->backBufferDurationUs:J

    return-wide v0
.end method

.method public onPrepared()V
    .registers 2

    const/4 v0, 0x0

    .line 331
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onReleased()V
    .registers 2

    const/4 v0, 0x1

    .line 352
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onStopped()V
    .registers 2

    const/4 v0, 0x1

    .line 347
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onTracksSelected([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "renderers",
            "trackGroups",
            "trackSelections"
        }
    .end annotation

    .line 337
    invoke-static {p1, p3}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->hasVideo([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->hasVideo:Z

    .line 339
    iget p2, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    .line 340
    invoke-virtual {p0, p1, p3}, Landroidx/media2/exoplayer/external/DefaultLoadControl;->calculateTargetBufferSize([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)I

    move-result p2

    .line 341
    :cond_f
    iput p2, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->targetBufferSize:I

    .line 342
    iget-object p1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->allocator:Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    return-void
.end method

.method public retainBackBufferFromKeyframe()Z
    .registers 2

    .line 367
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    return v0
.end method

.method public shouldContinueLoading(JF)Z
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferedDurationUs",
            "playbackSpeed"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->allocator:Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->targetBufferSize:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 373
    :goto_f
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->hasVideo:Z

    if-eqz v1, :cond_16

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->minBufferVideoUs:J

    goto :goto_18

    :cond_16
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->minBufferAudioUs:J

    :goto_18
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_28

    .line 378
    invoke-static {v4, v5, p3}, Landroidx/media2/exoplayer/external/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v4

    .line 379
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->maxBufferUs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_28
    cmp-long p3, p1, v4

    if-gez p3, :cond_37

    .line 382
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez p1, :cond_34

    if-nez v0, :cond_33

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :cond_34
    :goto_34
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->isBuffering:Z

    goto :goto_41

    .line 383
    :cond_37
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->maxBufferUs:J

    cmp-long p3, p1, v1

    if-gez p3, :cond_3f

    if-eqz v0, :cond_41

    .line 384
    :cond_3f
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->isBuffering:Z

    .line 386
    :cond_41
    :goto_41
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->isBuffering:Z

    return p1
.end method

.method public shouldStartPlayback(JFZ)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bufferedDurationUs",
            "playbackSpeed",
            "rebuffering"
        }
    .end annotation

    .line 392
    invoke-static {p1, p2, p3}, Landroidx/media2/exoplayer/external/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide p1

    if-eqz p4, :cond_9

    .line 393
    iget-wide p3, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_b

    :cond_9
    iget-wide p3, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->bufferForPlaybackUs:J

    :goto_b
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_26

    cmp-long v0, p1, p3

    if-gez v0, :cond_26

    .line 394
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez p1, :cond_24

    iget-object p1, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->allocator:Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;

    .line 397
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result p1

    iget p2, p0, Landroidx/media2/exoplayer/external/DefaultLoadControl;->targetBufferSize:I

    if-lt p1, p2, :cond_24

    goto :goto_26

    :cond_24
    const/4 p1, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p1, 0x1

    :goto_27
    return p1
.end method
