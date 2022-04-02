.class public final Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;
.super Ljava/lang/Object;
.source "H265Reader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;
    }
.end annotation


# instance fields
.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

.field private sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;

.field private final seiReader:Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

.field private final seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

.field private final suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J

.field private final vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seiReader"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiReader:Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 82
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixFlags:[Z

    .line 83
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 84
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 85
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 86
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 87
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    .line 88
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    return-void
.end method

.method private endNalUnit(JIIJ)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "offset",
            "discardPadding",
            "pesTimeUs"
        }
    .end annotation

    .line 194
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_a

    .line 195
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->endNalUnit(JI)V

    goto :goto_45

    .line 197
    :cond_a
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 198
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 199
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 200
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 201
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    iget-object p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-static {p2, p3, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->parseMediaFormat(Ljava/lang/String;Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->hasOutputFormat:Z

    .line 205
    :cond_45
    :goto_45
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_6f

    .line 206
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget p3, p3, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p1, p3}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->unescapeStream([BI)I

    move-result p1

    .line 207
    iget-object p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {p3, v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 210
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 211
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiReader:Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    iget-object p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p1, p5, p6, p3}, Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;->consume(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 213
    :cond_6f
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result p1

    if-eqz p1, :cond_98

    .line 214
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget p3, p3, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {p1, p3}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->unescapeStream([BI)I

    move-result p1

    .line 215
    iget-object p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object p4, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    iget-object p4, p4, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {p3, p4, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 218
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 219
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiReader:Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p1, p5, p6, p2}, Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;->consume(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    :cond_98
    return-void
.end method

.method private nalUnitData([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataArray",
            "offset",
            "limit"
        }
    .end annotation

    .line 182
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_a

    .line 183
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->readNalUnitData([BII)V

    goto :goto_19

    .line 185
    :cond_a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 186
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 187
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 189
    :goto_19
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 190
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    return-void
.end method

.method private static parseMediaFormat(Ljava/lang/String;Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;)Landroidx/media2/exoplayer/external/Format;
    .registers 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "formatId",
            "vps",
            "sps",
            "pps"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 226
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v4, v1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v3, v4

    iget v4, v2, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 227
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iget-object v4, v1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v7, v1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v6, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iget-object v4, v2, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v5, v1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v0, v5

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v6, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    iget-object v2, v1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-direct {v0, v2, v6, v1}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v1, 0x2c

    .line 233
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v1, 0x3

    .line 234
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 235
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    const/16 v4, 0x58

    .line 238
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/16 v4, 0x8

    .line 239
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_4f
    if-ge v5, v2, :cond_64

    .line 242
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_59

    add-int/lit8 v7, v7, 0x59

    .line 245
    :cond_59
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_61

    add-int/lit8 v7, v7, 0x8

    :cond_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    .line 249
    :cond_64
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v5, 0x2

    if-lez v2, :cond_71

    rsub-int/lit8 v7, v2, 0x8

    mul-int/lit8 v7, v7, 0x2

    .line 251
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 254
    :cond_71
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 255
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    if-ne v7, v1, :cond_7d

    .line 257
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 259
    :cond_7d
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 260
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    .line 261
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_b1

    .line 262
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .line 263
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 264
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 265
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    if-eq v7, v10, :cond_a3

    if-ne v7, v5, :cond_a1

    goto :goto_a3

    :cond_a1
    const/4 v14, 0x1

    goto :goto_a4

    :cond_a3
    :goto_a3
    const/4 v14, 0x2

    :goto_a4
    if-ne v7, v10, :cond_a8

    const/4 v7, 0x2

    goto :goto_a9

    :cond_a8
    const/4 v7, 0x1

    :goto_a9
    add-int/2addr v9, v11

    mul-int v14, v14, v9

    sub-int/2addr v1, v14

    add-int/2addr v12, v13

    mul-int v7, v7, v12

    sub-int/2addr v8, v7

    :cond_b1
    move/from16 v16, v1

    move/from16 v17, v8

    .line 272
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 273
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 274
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    .line 276
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_c7

    const/4 v7, 0x0

    goto :goto_c8

    :cond_c7
    move v7, v2

    :goto_c8
    if-gt v7, v2, :cond_d6

    .line 277
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 278
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 279
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_c8

    .line 281
    :cond_d6
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 282
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 283
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 284
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 285
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 286
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 288
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 289
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 290
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->skipScalingList(Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;)V

    .line 292
    :cond_f7
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 293
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 295
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 296
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 297
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 298
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 301
    :cond_10c
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->skipShortTermRefPicSets(Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;)V

    .line 302
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_124

    .line 304
    :goto_115
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    if-ge v6, v2, :cond_124

    add-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v10

    .line 307
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_115

    .line 310
    :cond_124
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 312
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_175

    .line 313
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_175

    .line 314
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    const/16 v4, 0xff

    if-ne v2, v4, :cond_151

    const/16 v2, 0x10

    .line 316
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 317
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    if-eqz v4, :cond_14e

    if-eqz v0, :cond_14e

    int-to-float v1, v4

    int-to-float v0, v0

    div-float/2addr v1, v0

    :cond_14e
    move/from16 v21, v1

    goto :goto_177

    .line 321
    :cond_151
    sget-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v0, v0

    if-ge v2, v0, :cond_15d

    .line 322
    sget-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v0, v0, v2

    move/from16 v21, v0

    goto :goto_177

    :cond_15d
    const/16 v0, 0x2e

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H265Reader"

    invoke-static {v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_175
    const/high16 v21, 0x3f800000    # 1.0f

    :goto_177
    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    .line 331
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, -0x1

    const/16 v22, 0x0

    const-string v12, "video/hevc"

    move-object/from16 v11, p0

    .line 329
    invoke-static/range {v11 .. v22}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method private static skipScalingList(Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitArray"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_36

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x6

    if-ge v3, v4, :cond_33

    .line 340
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_14

    .line 342
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_2d

    :cond_14
    const/16 v4, 0x40

    shl-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v2

    shl-int v6, v5, v6

    .line 344
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_24

    .line 347
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    :cond_24
    const/4 v6, 0x0

    :goto_25
    if-ge v6, v4, :cond_2d

    .line 350
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_2d
    :goto_2d
    const/4 v4, 0x3

    if-ne v1, v4, :cond_31

    const/4 v5, 0x3

    :cond_31
    add-int/2addr v3, v5

    goto :goto_6

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_36
    return-void
.end method

.method private static skipShortTermRefPicSets(Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitArray"
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v2, v0, :cond_4d

    if-eqz v2, :cond_10

    .line 372
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    :cond_10
    if-eqz v3, :cond_27

    .line 375
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 376
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    const/4 v5, 0x0

    :goto_19
    if-gt v5, v4, :cond_4a

    .line 378
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 379
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 383
    :cond_27
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 384
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    add-int v6, v4, v5

    const/4 v7, 0x0

    :goto_32
    if-ge v7, v4, :cond_3d

    .line 387
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 388
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_3d
    const/4 v4, 0x0

    :goto_3e
    if-ge v4, v5, :cond_49

    .line 391
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 392
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_49
    move v4, v6

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_4d
    return-void
.end method

.method private startNalUnit(JIIJ)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "offset",
            "nalUnitType",
            "pesTimeUs"
        }
    .end annotation

    .line 170
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_e

    .line 171
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->startNalUnit(JIIJ)V

    goto :goto_1d

    .line 173
    :cond_e
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 174
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 175
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 177
    :goto_1d
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 178
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p4}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    return-void
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 120
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_60

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v9

    .line 123
    iget-object v10, v8, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 126
    iget-wide v1, v7, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->totalBytesWritten:J

    .line 127
    iget-object v1, v7, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-interface {v1, v8, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    :goto_27
    if-ge v0, v9, :cond_4

    .line 131
    iget-object v1, v7, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v10, v0, v9, v1}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v11

    if-ne v11, v9, :cond_35

    .line 135
    invoke-direct {v7, v10, v0, v9}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->nalUnitData([BII)V

    return-void

    .line 140
    :cond_35
    invoke-static {v10, v11}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v12

    sub-int v1, v11, v0

    if-lez v1, :cond_40

    .line 146
    invoke-direct {v7, v10, v0, v11}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->nalUnitData([BII)V

    :cond_40
    sub-int v13, v9, v11

    .line 150
    iget-wide v2, v7, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v4, v13

    sub-long v14, v2, v4

    if-gez v1, :cond_4c

    neg-int v0, v1

    move v4, v0

    goto :goto_4e

    :cond_4c
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 155
    :goto_4e
    iget-wide v5, v7, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pesTimeUs:J

    move-object/from16 v0, p0

    move-wide v1, v14

    move v3, v13

    .line 154
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->endNalUnit(JIIJ)V

    .line 157
    iget-wide v5, v7, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pesTimeUs:J

    move v4, v12

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->startNalUnit(JIIJ)V

    add-int/lit8 v0, v11, 0x3

    goto :goto_27

    :cond_60
    return-void
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extractorOutput",
            "idGenerator"
        }
    .end annotation

    .line 105
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 106
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    .line 107
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 108
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;-><init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;

    .line 109
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->seiReader:Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;->createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public packetFinished()V
    .registers 1

    return-void
.end method

.method public packetStarted(JI)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pesTimeUs",
            "flags"
        }
    .end annotation

    .line 115
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pesTimeUs:J

    return-void
.end method

.method public seek()V
    .registers 3

    .line 93
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 94
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->vps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 95
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 96
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->pps:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->prefixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 98
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->suffixSei:Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 99
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->sampleReader:Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->reset()V

    const-wide/16 v0, 0x0

    .line 100
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;->totalBytesWritten:J

    return-void
.end method
