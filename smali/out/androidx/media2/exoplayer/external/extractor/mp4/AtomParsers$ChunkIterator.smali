.class final Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChunkIterator"
.end annotation


# instance fields
.field private final chunkOffsets:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final chunkOffsetsAreLongs:Z

.field public index:I

.field public final length:I

.field private nextSamplesPerChunkChangeIndex:I

.field public numSamples:I

.field public offset:J

.field private remainingSamplesPerChunkChanges:I

.field private final stsc:Landroidx/media2/exoplayer/external/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stsc",
            "chunkOffsets",
            "chunkOffsetsAreLongs"
        }
    .end annotation

    .line 1424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1425
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 1426
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 1427
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsetsAreLongs:Z

    const/16 p3, 0xc

    .line 1428
    invoke-virtual {p2, p3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1429
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    .line 1430
    invoke-virtual {p1, p3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1431
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    .line 1432
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_25

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    :goto_26
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(ZLjava/lang/Object;)V

    const/4 p1, -0x1

    .line 1433
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    return-void
.end method


# virtual methods
.method public moveNext()Z
    .registers 5

    .line 1437
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    if-ne v0, v2, :cond_c

    const/4 v0, 0x0

    return v0

    .line 1440
    :cond_c
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsetsAreLongs:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    goto :goto_1d

    .line 1441
    :cond_17
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_1d
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    .line 1442
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    if-ne v0, v2, :cond_45

    .line 1443
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    .line 1444
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1445
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    if-lez v0, :cond_42

    .line 1446
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_43

    :cond_42
    const/4 v0, -0x1

    :goto_43
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    :cond_45
    return v1
.end method
