.class final Landroidx/media2/exoplayer/external/audio/Sonic;
.super Ljava/lang/Object;
.source "Sonic.java"


# instance fields
.field private final channelCount:I

.field private final downSampleBuffer:[S

.field private inputBuffer:[S

.field private inputFrameCount:I

.field private final inputSampleRateHz:I

.field private maxDiff:I

.field private final maxPeriod:I

.field private final maxRequiredFrameCount:I

.field private minDiff:I

.field private final minPeriod:I

.field private newRatePosition:I

.field private oldRatePosition:I

.field private outputBuffer:[S

.field private outputFrameCount:I

.field private final pitch:F

.field private pitchBuffer:[S

.field private pitchFrameCount:I

.field private prevMinDiff:I

.field private prevPeriod:I

.field private final rate:F

.field private remainingInputToCopyFrameCount:I

.field private final speed:F


# direct methods
.method public constructor <init>(IIFFI)V
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
            "inputSampleRateHz",
            "channelCount",
            "speed",
            "pitch",
            "outputSampleRateHz"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputSampleRateHz:I

    .line 76
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    .line 77
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->speed:F

    .line 78
    iput p4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitch:F

    int-to-float p3, p1

    int-to-float p4, p5

    div-float/2addr p3, p4

    .line 79
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->rate:F

    .line 80
    div-int/lit16 p3, p1, 0x190

    iput p3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minPeriod:I

    .line 81
    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxPeriod:I

    mul-int/lit8 p1, p1, 0x2

    .line 82
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxRequiredFrameCount:I

    .line 83
    new-array p3, p1, [S

    iput-object p3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->downSampleBuffer:[S

    mul-int p3, p1, p2

    .line 84
    new-array p3, p3, [S

    iput-object p3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    mul-int p3, p1, p2

    .line 85
    new-array p3, p3, [S

    iput-object p3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    mul-int p1, p1, p2

    .line 86
    new-array p1, p1, [S

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchBuffer:[S

    return-void
.end method

.method private adjustRate(FI)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rate",
            "originalOutputFrameCount"
        }
    .end annotation

    .line 365
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    if-ne v0, p2, :cond_5

    return-void

    .line 368
    :cond_5
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputSampleRateHz:I

    int-to-float v1, v0

    div-float/2addr v1, p1

    float-to-int p1, v1

    :goto_a
    const/16 v1, 0x4000

    if-gt p1, v1, :cond_71

    if-le v0, v1, :cond_11

    goto :goto_71

    .line 375
    :cond_11
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/audio/Sonic;->moveNewSamplesToPitchBuffer(I)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 377
    :goto_16
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-ge v1, v3, :cond_6c

    .line 378
    :goto_1d
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v3, v2, 0x1

    mul-int v3, v3, p1

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->newRatePosition:I

    mul-int v6, v5, v0

    if-le v3, v6, :cond_58

    .line 379
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    .line 380
    invoke-direct {p0, v2, v3, v4}, Landroidx/media2/exoplayer/external/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    const/4 v2, 0x0

    .line 382
    :goto_34
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    if-ge v2, v3, :cond_4d

    .line 383
    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    mul-int v6, v6, v3

    add-int/2addr v6, v2

    iget-object v7, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchBuffer:[S

    mul-int v3, v3, v1

    add-int/2addr v3, v2

    .line 384
    invoke-direct {p0, v7, v3, v0, p1}, Landroidx/media2/exoplayer/external/audio/Sonic;->interpolate([SIII)S

    move-result v3

    aput-short v3, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 386
    :cond_4d
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->newRatePosition:I

    add-int/2addr v2, v4

    iput v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->newRatePosition:I

    .line 387
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    add-int/2addr v2, v4

    iput v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    goto :goto_1d

    :cond_58
    add-int/lit8 v2, v2, 0x1

    .line 389
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->oldRatePosition:I

    if-ne v2, v0, :cond_69

    .line 391
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->oldRatePosition:I

    if-ne v5, p1, :cond_63

    goto :goto_64

    :cond_63
    const/4 v4, 0x0

    .line 392
    :goto_64
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 393
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->newRatePosition:I

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_6c
    sub-int/2addr v2, v4

    .line 396
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/audio/Sonic;->removePitchFrames(I)V

    return-void

    .line 372
    :cond_71
    :goto_71
    div-int/lit8 p1, p1, 0x2

    .line 373
    div-int/lit8 v0, v0, 0x2

    goto :goto_a
.end method

.method private changeSpeed(F)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 453
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxRequiredFrameCount:I

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    .line 459
    :cond_8
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    if-lez v2, :cond_12

    .line 460
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/audio/Sonic;->copyInputToOutput(I)I

    move-result v2

    :goto_10
    add-int/2addr v1, v2

    goto :goto_2e

    .line 462
    :cond_12
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v2, v1}, Landroidx/media2/exoplayer/external/audio/Sonic;->findPitchPeriod([SI)I

    move-result v2

    float-to-double v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_27

    .line 464
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v1, p1, v2}, Landroidx/media2/exoplayer/external/audio/Sonic;->skipPitchPeriod([SIFI)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_10

    .line 466
    :cond_27
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v1, p1, v2}, Landroidx/media2/exoplayer/external/audio/Sonic;->insertPitchPeriod([SIFI)I

    move-result v2

    goto :goto_10

    .line 469
    :goto_2e
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxRequiredFrameCount:I

    add-int/2addr v2, v1

    if-le v2, v0, :cond_8

    .line 470
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/audio/Sonic;->removeProcessedInputFrames(I)V

    return-void
.end method

.method private copyInputToOutput(I)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionFrames"
        }
    .end annotation

    .line 213
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxRequiredFrameCount:I

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 214
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v1, p1, v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->copyToOutput([SII)V

    .line 215
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    return v0
.end method

.method private copyToOutput([SII)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "samples",
            "positionFrames",
            "frameCount"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    invoke-direct {p0, v0, v1, p3}, Landroidx/media2/exoplayer/external/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    .line 203
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int p2, p2, v1

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    mul-int v2, v2, v1

    mul-int v1, v1, p3

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    return-void
.end method

.method private downSampleInput([SII)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "samples",
            "position",
            "skip"
        }
    .end annotation

    .line 222
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxRequiredFrameCount:I

    div-int/2addr v0, p3

    .line 223
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int p3, p3, v1

    mul-int p2, p2, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_24

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v3, p3, :cond_1b

    mul-int v5, v2, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    .line 228
    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 230
    :cond_1b
    div-int/2addr v4, p3

    .line 231
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->downSampleBuffer:[S

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_24
    return-void
.end method

.method private ensureSpaceForAdditionalFrames([SII)[S
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "frameCount",
            "additionalFrameCount"
        }
    .end annotation

    .line 185
    array-length v0, p1

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    add-int/2addr p2, p3

    if-gt p2, v0, :cond_8

    return-object p1

    :cond_8
    mul-int/lit8 v0, v0, 0x3

    .line 189
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    mul-int v0, v0, v1

    .line 190
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    return-object p1
.end method

.method private findPitchPeriod([SI)I
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "samples",
            "position"
        }
    .end annotation

    .line 293
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputSampleRateHz:I

    const/16 v1, 0xfa0

    const/4 v2, 0x1

    if-le v0, v1, :cond_9

    div-int/2addr v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    .line 294
    :goto_a
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    if-ne v1, v2, :cond_19

    if-ne v0, v2, :cond_19

    .line 295
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minPeriod:I

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxPeriod:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result p1

    goto :goto_50

    .line 297
    :cond_19
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->downSampleInput([SII)V

    .line 298
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->downSampleBuffer:[S

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minPeriod:I

    div-int/2addr v3, v0

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxPeriod:I

    div-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v3, v4}, Landroidx/media2/exoplayer/external/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v1

    if-eq v0, v2, :cond_4f

    mul-int v1, v1, v0

    mul-int/lit8 v0, v0, 0x4

    sub-int v3, v1, v0

    add-int/2addr v1, v0

    .line 303
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minPeriod:I

    if-ge v3, v0, :cond_37

    move v3, v0

    .line 306
    :cond_37
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxPeriod:I

    if-le v1, v0, :cond_3c

    move v1, v0

    .line 309
    :cond_3c
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    if-ne v0, v2, :cond_45

    .line 310
    invoke-direct {p0, p1, p2, v3, v1}, Landroidx/media2/exoplayer/external/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result p1

    goto :goto_50

    .line 312
    :cond_45
    invoke-direct {p0, p1, p2, v2}, Landroidx/media2/exoplayer/external/audio/Sonic;->downSampleInput([SII)V

    .line 313
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->downSampleBuffer:[S

    invoke-direct {p0, p1, v5, v3, v1}, Landroidx/media2/exoplayer/external/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result p1

    goto :goto_50

    :cond_4f
    move p1, v1

    .line 317
    :goto_50
    iget p2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minDiff:I

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxDiff:I

    invoke-direct {p0, p2, v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->previousPeriodBetter(II)Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 318
    iget p2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->prevPeriod:I

    goto :goto_5e

    :cond_5d
    move p2, p1

    .line 322
    :goto_5e
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minDiff:I

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->prevMinDiff:I

    .line 323
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->prevPeriod:I

    return p2
.end method

.method private findPitchPeriodInRange([SIII)I
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "samples",
            "position",
            "minPeriod",
            "maxPeriod"
        }
    .end annotation

    .line 242
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-gt p3, p4, :cond_35

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_e
    if-ge v5, p3, :cond_22

    add-int v7, p2, v5

    .line 246
    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    .line 247
    aget-short v8, p1, v8

    sub-int/2addr v7, v8

    .line 248
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_22
    mul-int v5, v6, v3

    mul-int v7, v0, p3

    if-ge v5, v7, :cond_2a

    move v3, p3

    move v0, v6

    :cond_2a
    mul-int v5, v6, v2

    mul-int v7, v4, p3

    if-le v5, v7, :cond_32

    move v2, p3

    move v4, v6

    :cond_32
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    .line 262
    :cond_35
    div-int/2addr v0, v3

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minDiff:I

    .line 263
    div-int/2addr v4, v2

    iput v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxDiff:I

    return v3
.end method

.method private insertPitchPeriod([SIFI)I
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "samples",
            "position",
            "speed",
            "period"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p3, v1

    if-gez v1, :cond_f

    int-to-float v1, p4

    mul-float v1, v1, p3

    sub-float/2addr v0, p3

    div-float/2addr v1, v0

    float-to-int p3, v1

    goto :goto_1d

    :cond_f
    int-to-float v1, p4

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, p3

    sub-float/2addr v2, v0

    mul-float v1, v1, v2

    sub-float/2addr v0, p3

    div-float/2addr v1, v0

    float-to-int p3, v1

    .line 429
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    move p3, p4

    .line 431
    :goto_1d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    add-int v8, p4, p3

    .line 432
    invoke-direct {p0, v0, v1, v8}, Landroidx/media2/exoplayer/external/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    .line 433
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v2, p2, v1

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    mul-int v3, v3, v1

    mul-int v1, v1, p4

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    add-int v3, v0, p4

    add-int v5, p2, p4

    move v0, p3

    move-object v4, p1

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Landroidx/media2/exoplayer/external/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 448
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    add-int/2addr p1, v8

    iput p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    return p3
.end method

.method private interpolate([SIII)S
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inPos",
            "oldSampleRate",
            "newSampleRate"
        }
    .end annotation

    .line 354
    aget-short v0, p1, p2

    .line 355
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    add-int/2addr p2, v1

    aget-short p1, p1, p2

    .line 356
    iget p2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->newRatePosition:I

    mul-int p2, p2, p3

    .line 357
    iget p3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->oldRatePosition:I

    mul-int v1, p3, p4

    add-int/lit8 p3, p3, 0x1

    mul-int p3, p3, p4

    sub-int p2, p3, p2

    sub-int/2addr p3, v1

    mul-int v0, v0, p2

    sub-int p2, p3, p2

    mul-int p2, p2, p1

    add-int/2addr v0, p2

    .line 361
    div-int/2addr v0, p3

    int-to-short p1, v0

    return p1
.end method

.method private moveNewSamplesToPitchBuffer(I)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalOutputFrameCount"
        }
    .end annotation

    .line 328
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    sub-int/2addr v0, p1

    .line 329
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchBuffer:[S

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    invoke-direct {p0, v1, v2, v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchBuffer:[S

    .line 330
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v4, p1, v3

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    mul-int v5, v5, v3

    mul-int v3, v3, v0

    invoke-static {v2, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    .line 337
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    return-void
.end method

.method private static overlapAdd(II[SI[SI[SI)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "frameCount",
            "channelCount",
            "out",
            "outPosition",
            "rampDown",
            "rampDownPosition",
            "rampUp",
            "rampUpPosition"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_28

    mul-int v2, p3, p1

    add-int/2addr v2, v1

    mul-int v3, p7, p1

    add-int/2addr v3, v1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    const/4 v5, 0x0

    :goto_e
    if-ge v5, p0, :cond_25

    .line 503
    aget-short v6, p4, v4

    sub-int v7, p0, v5

    mul-int v6, v6, v7

    aget-short v7, p6, v3

    mul-int v7, v7, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v2

    add-int/2addr v2, p1

    add-int/2addr v4, p1

    add-int/2addr v3, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_28
    return-void
.end method

.method private previousPeriodBetter(II)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "minDiff",
            "maxDiff"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 272
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->prevPeriod:I

    if-nez v1, :cond_8

    goto :goto_18

    :cond_8
    mul-int/lit8 v1, p1, 0x3

    if-le p2, v1, :cond_d

    return v0

    :cond_d
    mul-int/lit8 p1, p1, 0x2

    .line 279
    iget p2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->prevMinDiff:I

    mul-int/lit8 p2, p2, 0x3

    if-gt p1, p2, :cond_16

    return v0

    :cond_16
    const/4 p1, 0x1

    return p1

    :cond_18
    :goto_18
    return v0
.end method

.method private processStreamInput()V
    .registers 9

    .line 475
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    .line 476
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->speed:F

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    .line 477
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->rate:F

    mul-float v3, v3, v2

    float-to-double v4, v1

    const-wide v6, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v2, v4, v6

    if-gtz v2, :cond_2a

    const-wide v6, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v2, v4, v6

    if-gez v2, :cond_1f

    goto :goto_2a

    .line 481
    :cond_1f
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v2}, Landroidx/media2/exoplayer/external/audio/Sonic;->copyToOutput([SII)V

    .line 482
    iput v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    goto :goto_2d

    .line 479
    :cond_2a
    :goto_2a
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/audio/Sonic;->changeSpeed(F)V

    :goto_2d
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_36

    .line 485
    invoke-direct {p0, v3, v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->adjustRate(FI)V

    :cond_36
    return-void
.end method

.method private removePitchFrames(I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameCount"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 344
    :cond_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchBuffer:[S

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v2, p1, v1

    const/4 v3, 0x0

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v4, p1

    mul-int v4, v4, v1

    invoke-static {v0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    return-void
.end method

.method private removeProcessedInputFrames(I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionFrames"
        }
    .end annotation

    .line 195
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    sub-int/2addr v0, p1

    .line 196
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int p1, p1, v2

    mul-int v2, v2, v0

    const/4 v3, 0x0

    invoke-static {v1, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    return-void
.end method

.method private skipPitchPeriod([SIFI)I
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "samples",
            "position",
            "speed",
            "period"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, p3, v1

    if-ltz v2, :cond_d

    int-to-float v1, p4

    sub-float/2addr p3, v0

    div-float/2addr v1, p3

    float-to-int p3, v1

    goto :goto_17

    :cond_d
    int-to-float v2, p4

    sub-float/2addr v1, p3

    mul-float v2, v2, v1

    sub-float/2addr p3, v0

    div-float/2addr v2, p3

    float-to-int p3, v2

    .line 406
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    move p3, p4

    .line 408
    :goto_17
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    invoke-direct {p0, v0, v1, p3}, Landroidx/media2/exoplayer/external/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    .line 409
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    add-int v7, p2, p4

    move v0, p3

    move-object v4, p1

    move v5, p2

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Landroidx/media2/exoplayer/external/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 418
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    return p3
.end method


# virtual methods
.method public flush()V
    .registers 2

    const/4 v0, 0x0

    .line 154
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    .line 155
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    .line 156
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    .line 157
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->oldRatePosition:I

    .line 158
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->newRatePosition:I

    .line 159
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 160
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->prevPeriod:I

    .line 161
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->prevMinDiff:I

    .line 162
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->minDiff:I

    .line 163
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxDiff:I

    return-void
.end method

.method public getFramesAvailable()I
    .registers 2

    .line 168
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    return v0
.end method

.method public getOutput(Ljava/nio/ShortBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 112
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 113
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    .line 114
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v0, v0, v2

    mul-int p1, p1, v2

    invoke-static {v1, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public queueEndOfStream()V
    .registers 8

    .line 127
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    .line 128
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->speed:F

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    .line 129
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->rate:F

    mul-float v3, v3, v2

    .line 130
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    int-to-float v4, v0

    div-float/2addr v4, v1

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    int-to-float v1, v1

    add-float/2addr v4, v1

    div-float/2addr v4, v3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-int/2addr v2, v1

    .line 134
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    .line 135
    invoke-direct {p0, v1, v0, v3}, Landroidx/media2/exoplayer/external/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 137
    :goto_28
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v5, v4, 0x2

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v5, v5, v6

    if-ge v3, v5, :cond_3c

    .line 138
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    mul-int v6, v6, v0

    add-int/2addr v6, v3

    aput-short v1, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 140
    :cond_3c
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    .line 141
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/Sonic;->processStreamInput()V

    .line 143
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    if-le v0, v2, :cond_4c

    .line 144
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->outputFrameCount:I

    .line 147
    :cond_4c
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    .line 148
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 149
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->pitchFrameCount:I

    return-void
.end method

.method public queueInput(Ljava/nio/ShortBuffer;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    mul-int v1, v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 98
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    invoke-direct {p0, v2, v3, v0}, Landroidx/media2/exoplayer/external/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputBuffer:[S

    .line 99
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->channelCount:I

    mul-int v3, v3, v4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 100
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/audio/Sonic;->inputFrameCount:I

    .line 101
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/Sonic;->processStreamInput()V

    return-void
.end method
