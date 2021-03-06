.class final Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;
.super Ljava/lang/Object;
.source "NalUnitTargetBuffer.java"


# instance fields
.field private isCompleted:Z

.field private isFilling:Z

.field public nalData:[B

.field public nalLength:I

.field private final targetType:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targetType",
            "initialCapacity"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->targetType:I

    add-int/lit8 p2, p2, 0x3

    .line 45
    new-array p1, p2, [B

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 p2, 0x2

    const/4 v0, 0x1

    .line 46
    aput-byte v0, p1, p2

    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "offset",
            "limit"
        }
    .end annotation

    .line 87
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sub-int/2addr p3, p2

    .line 91
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    array-length v1, v0

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_18

    add-int/2addr v2, p3

    mul-int/lit8 v2, v2, 0x2

    .line 92
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    .line 94
    :cond_18
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    return-void
.end method

.method public endNalUnit(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discardPadding"
        }
    .end annotation

    .line 106
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 109
    :cond_6
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 110
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return p1
.end method

.method public isCompleted()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    .line 54
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    return-void
.end method

.method public startNalUnit(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 70
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 71
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->targetType:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isFilling:Z

    if-eqz v1, :cond_17

    const/4 p1, 0x3

    .line 74
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    .line 75
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    :cond_17
    return-void
.end method
