.class Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;
.super Ljava/lang/Object;
.source "FlacReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/SeekMap;
.implements Landroidx/media2/exoplayer/external/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlacOggSeeker"
.end annotation


# instance fields
.field private firstFrameOffset:J

.field private pendingSeekGranule:J

.field private seekPointGranules:[J

.field private seekPointOffsets:[J

.field final synthetic this$0:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 144
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    .line 145
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-void
.end method


# virtual methods
.method public createSeekMap()Landroidx/media2/exoplayer/external/extractor/SeekMap;
    .registers 1

    return-object p0
.end method

.method public getDurationUs()J
    .registers 3

    .line 220
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->access$000(Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;)Landroidx/media2/exoplayer/external/util/FlacStreamInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->durationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeUs"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->convertTimeToGranule(J)J

    move-result-wide v0

    .line 204
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3, v3}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 205
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    aget-wide v4, v2, v0

    invoke-virtual {v1, v4, v5}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->convertGranuleToTime(J)J

    move-result-wide v1

    .line 206
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointOffsets:[J

    aget-wide v7, v6, v0

    add-long/2addr v4, v7

    .line 207
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v6, v1, v2, v4, v5}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    cmp-long v4, v1, p1

    if-gez v4, :cond_49

    .line 208
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    array-length p2, p1

    sub-int/2addr p2, v3

    if-ne v0, p2, :cond_2e

    goto :goto_49

    .line 211
    :cond_2e
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;

    add-int/2addr v0, v3

    aget-wide v1, p1, v0

    invoke-virtual {p2, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->convertGranuleToTime(J)J

    move-result-wide p1

    .line 212
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointOffsets:[J

    aget-wide v4, v3, v0

    add-long/2addr v1, v4

    .line 213
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v0, p1, p2, v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    .line 214
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v6, v0}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object p1

    .line 209
    :cond_49
    :goto_49
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v6}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object p1
.end method

.method public isSeekable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public parseSeekTable(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 162
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    .line 163
    div-int/lit8 v0, v0, 0x12

    .line 164
    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    .line 165
    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointOffsets:[J

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_2c

    .line 167
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 168
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointOffsets:[J

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    const/4 v2, 0x2

    .line 169
    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2c
    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 175
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_11

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    .line 177
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-wide v0

    :cond_11
    return-wide v2
.end method

.method public setFirstFrameOffset(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstFrameOffset"
        }
    .end annotation

    .line 149
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    return-void
.end method

.method public startSeek(J)J
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeUs"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader;->convertTimeToGranule(J)J

    move-result-wide p1

    .line 186
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 187
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->seekPointGranules:[J

    aget-wide v0, v1, v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-wide p1
.end method
