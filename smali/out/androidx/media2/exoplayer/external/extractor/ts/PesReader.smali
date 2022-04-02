.class public final Landroidx/media2/exoplayer/external/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;


# instance fields
.field private bytesRead:I

.field private dataAlignmentIndicator:Z

.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private payloadSize:I

.field private final pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

.field private ptsFlag:Z

.field private final reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

.field private seenFirstDts:Z

.field private state:I

.field private timeUs:J

.field private timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    .line 65
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->state:I

    return-void
.end method

.method private continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "target",
            "targetLength"
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_10

    return v1

    :cond_10
    if-nez p2, :cond_16

    .line 176
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1b

    .line 178
    :cond_16
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->bytesRead:I

    invoke-virtual {p1, p2, v2, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 180
    :goto_1b
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->bytesRead:I

    if-ne p1, p3, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1
.end method

.method private parseHeader()Z
    .registers 7

    .line 187
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 188
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2d

    const/16 v3, 0x29

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected start code prefix: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PesReader"

    invoke-static {v3, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->payloadSize:I

    return v1

    .line 195
    :cond_2d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 196
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 197
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 198
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v4

    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    .line 199
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 200
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v4

    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->ptsFlag:Z

    .line 201
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v4

    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->dtsFlag:Z

    .line 204
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 205
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->extendedHeaderLength:I

    if-nez v0, :cond_73

    .line 208
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->payloadSize:I

    goto :goto_79

    :cond_73
    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x9

    sub-int/2addr v0, v1

    .line 210
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->payloadSize:I

    :goto_79
    return v3
.end method

.method private parseHeaderExtension()V
    .registers 11

    .line 217
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 218
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->timeUs:J

    .line 219
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->ptsFlag:Z

    if-eqz v0, :cond_8a

    .line 220
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 221
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 222
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 223
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 224
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 225
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 226
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 227
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v5, :cond_82

    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v5, :cond_82

    .line 228
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 229
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 230
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 231
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 232
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 233
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 234
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 240
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 241
    iput-boolean v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->seenFirstDts:Z

    .line 243
    :cond_82
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->timeUs:J

    :cond_8a
    return-void
.end method

.method private setState(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 158
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->state:I

    const/4 p1, 0x0

    .line 159
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->bytesRead:I

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    and-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_47

    .line 89
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->state:I

    if-eqz v0, :cond_44

    if-eq v0, v4, :cond_44

    const-string v5, "PesReader"

    if-eq v0, v3, :cond_3f

    if-ne v0, v2, :cond_39

    .line 102
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->payloadSize:I

    if-eq v0, v1, :cond_33

    const/16 v6, 0x3b

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unexpected start indicator: expected "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " more bytes"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_33
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->packetFinished()V

    goto :goto_44

    .line 109
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3f
    const-string v0, "Unexpected start indicator reading extended header"

    .line 95
    invoke-static {v5, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_44
    :goto_44
    invoke-direct {p0, v4}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->setState(I)V

    .line 114
    :cond_47
    :goto_47
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_db

    .line 115
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->state:I

    if-eqz v0, :cond_d2

    const/4 v5, 0x0

    if-eq v0, v4, :cond_ba

    if-eq v0, v3, :cond_8b

    if-ne v0, v2, :cond_85

    .line 136
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 137
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->payloadSize:I

    if-ne v6, v1, :cond_61

    goto :goto_63

    :cond_61
    sub-int v5, v0, v6

    :goto_63
    if-lez v5, :cond_6e

    sub-int/2addr v0, v5

    .line 140
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 142
    :cond_6e
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    invoke-interface {v5, p1}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 143
    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->payloadSize:I

    if-eq v5, v1, :cond_47

    sub-int/2addr v5, v0

    .line 144
    iput v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->payloadSize:I

    if-nez v5, :cond_47

    .line 146
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 147
    invoke-direct {p0, v4}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->setState(I)V

    goto :goto_47

    .line 152
    :cond_85
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8b
    const/16 v0, 0xa

    .line 125
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 127
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v6, v0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 128
    invoke-direct {p0, p1, v0, v6}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 129
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->parseHeaderExtension()V

    .line 130
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    if-eqz v0, :cond_ae

    const/4 v5, 0x4

    :cond_ae
    or-int/2addr p2, v5

    .line 131
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->timeUs:J

    invoke-interface {v0, v5, v6, p2}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    .line 132
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->setState(I)V

    goto :goto_47

    .line 120
    :cond_ba
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->pesScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    const/16 v6, 0x9

    invoke-direct {p0, p1, v0, v6}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 121
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->parseHeader()Z

    move-result v0

    if-eqz v0, :cond_cd

    const/4 v5, 0x2

    :cond_cd
    invoke-direct {p0, v5}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->setState(I)V

    goto/16 :goto_47

    .line 117
    :cond_d2
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_47

    :cond_db
    return-void
.end method

.method public init(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timestampAdjuster",
            "extractorOutput",
            "idGenerator"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 73
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    invoke-interface {p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final seek()V
    .registers 2

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->state:I

    .line 81
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->bytesRead:I

    .line 82
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->seenFirstDts:Z

    .line 83
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;->reader:Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method
