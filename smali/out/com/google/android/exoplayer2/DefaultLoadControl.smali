.class public Lcom/google/android/exoplayer2/DefaultLoadControl;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/LoadControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;
    }
.end annotation


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

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

    .line 256
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)V
    .registers 13
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

    .line 262
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIIZIZ)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIIZIZ)V
    .registers 24

    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p9

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    const-string v8, "bufferForPlaybackMs"

    const-string v9, "0"

    .line 309
    invoke-static {v4, v7, v8, v9}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "bufferForPlaybackAfterRebufferMs"

    .line 310
    invoke-static {v5, v7, v10, v9}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v11, "minBufferAudioMs"

    .line 312
    invoke-static {p2, v4, v11, v8}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v12, "minBufferVideoMs"

    .line 314
    invoke-static {v2, v4, v12, v8}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p2, v5, v11, v10}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {v2, v5, v12, v10}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "maxBufferMs"

    .line 326
    invoke-static {v3, p2, v8, v11}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {v3, v2, v8, v12}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "backBufferDurationMs"

    .line 328
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/exoplayer2/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    move-object v7, p1

    .line 330
    iput-object v7, v0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    int-to-long v7, v1

    .line 331
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/exoplayer2/DefaultLoadControl;->minBufferAudioUs:J

    int-to-long v1, v2

    .line 332
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/DefaultLoadControl;->minBufferVideoUs:J

    int-to-long v1, v3

    .line 333
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    int-to-long v1, v4

    .line 334
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    int-to-long v1, v5

    .line 335
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    move/from16 v1, p7

    .line 336
    iput v1, v0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    move/from16 v1, p8

    .line 337
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    int-to-long v1, v6

    .line 338
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/DefaultLoadControl;->backBufferDurationUs:J

    move/from16 v1, p10

    .line 339
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    return-void
.end method

.method private static assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-lt p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    .line 471
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private static getDefaultBufferSize(I)I
    .registers 2

    const/high16 v0, 0x20000

    packed-switch p0, :pswitch_data_18

    .line 457
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_b
    const/4 p0, 0x0

    return p0

    :pswitch_d
    return v0

    :pswitch_e
    const/high16 p0, 0x1f40000

    return p0

    :pswitch_11
    const/high16 p0, 0x360000

    return p0

    :pswitch_14
    const/high16 p0, 0x22c0000

    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method private static hasVideo([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 462
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 463
    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

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

    const/4 v0, 0x0

    .line 433
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    .line 434
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eqz p1, :cond_c

    .line 436
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->reset()V

    :cond_c
    return-void
.end method


# virtual methods
.method protected calculateTargetBufferSize([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 424
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_19

    .line 425
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 426
    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/DefaultLoadControl;->getDefaultBufferSize(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    return v1
.end method

.method public getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    return-object v0
.end method

.method public getBackBufferDurationUs()J
    .registers 3

    .line 375
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->backBufferDurationUs:J

    return-wide v0
.end method

.method public onPrepared()V
    .registers 2

    const/4 v0, 0x0

    .line 344
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onReleased()V
    .registers 2

    const/4 v0, 0x1

    .line 365
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onStopped()V
    .registers 2

    const/4 v0, 0x1

    .line 360
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->reset(Z)V

    return-void
.end method

.method public onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 5

    .line 350
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/DefaultLoadControl;->hasVideo([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->hasVideo:Z

    .line 351
    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    .line 353
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/DefaultLoadControl;->calculateTargetBufferSize([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)I

    move-result p2

    :cond_f
    iput p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    .line 355
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    return-void
.end method

.method public retainBackBufferFromKeyframe()Z
    .registers 2

    .line 380
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    return v0
.end method

.method public shouldContinueLoading(JF)Z
    .registers 12

    .line 385
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 386
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->hasVideo:Z

    if-eqz v1, :cond_16

    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->minBufferVideoUs:J

    goto :goto_18

    :cond_16
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->minBufferAudioUs:J

    :goto_18
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_28

    .line 391
    invoke-static {v4, v5, p3}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v4

    .line 392
    iget-wide v6, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_28
    cmp-long p3, p1, v4

    if-gez p3, :cond_37

    .line 395
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez p1, :cond_34

    if-nez v0, :cond_33

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :cond_34
    :goto_34
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    goto :goto_41

    .line 396
    :cond_37
    iget-wide v1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    cmp-long p3, p1, v1

    if-gez p3, :cond_3f

    if-eqz v0, :cond_41

    .line 397
    :cond_3f
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    .line 399
    :cond_41
    :goto_41
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->isBuffering:Z

    return p1
.end method

.method public shouldStartPlayback(JFZ)Z
    .registers 8

    .line 405
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide p1

    if-eqz p4, :cond_9

    .line 406
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_b

    :cond_9
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    :goto_b
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_26

    cmp-long v0, p1, p3

    if-gez v0, :cond_26

    .line 407
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 410
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result p1

    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLoadControl;->targetBufferSize:I

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
