.class public final Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;
.super Ljava/lang/Object;
.source "AmrExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# static fields
.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field private static final MAX_FRAME_SIZE_BYTES:I

.field private static final amrSignatureNb:[B

.field private static final amrSignatureWb:[B

.field private static final frameSizeBytesByTypeNb:[I

.field private static final frameSizeBytesByTypeWb:[I


# instance fields
.field private currentSampleBytesRemaining:I

.field private currentSampleSize:I

.field private currentSampleTimeUs:J

.field private extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private firstSamplePosition:J

.field private firstSampleSize:I

.field private final flags:I

.field private hasOutputFormat:Z

.field private hasOutputSeekMap:Z

.field private isWideBand:Z

.field private numSamplesWithSameSize:I

.field private final scratch:[B

.field private seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

.field private timeOffsetUs:J

.field private trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 77
    fill-array-data v1, :array_2e

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    new-array v0, v0, [I

    .line 100
    fill-array-data v0, :array_52

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    const-string v0, "#!AMR\n"

    .line 119
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    const-string v0, "#!AMR-WB\n"

    .line 120
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    .line 123
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    sput v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->MAX_FRAME_SIZE_BYTES:I

    return-void

    nop

    :array_2e
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_52
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->flags:I

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 159
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->scratch:[B

    const/4 p1, -0x1

    .line 160
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSampleSize:I

    return-void
.end method

.method private static getBitrateFromFrameSize(IJ)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frameSize",
            "durationUsPerFrame"
        }
    .end annotation

    mul-int/lit8 p0, p0, 0x8

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    .line 387
    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method private getConstantBitrateSeekMap(J)Landroidx/media2/exoplayer/external/extractor/SeekMap;
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputLength"
        }
    .end annotation

    .line 375
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSampleSize:I

    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->getBitrateFromFrameSize(IJ)I

    move-result v8

    .line 376
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSamplePosition:J

    iget v9, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSampleSize:I

    move-object v3, v0

    move-wide v4, p1

    invoke-direct/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;-><init>(JJII)V

    return-object v0
.end method

.method private getFrameSizeInBytes(I)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 331
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isValidFrameType(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 332
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    .line 333
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v1, :cond_f

    const-string v1, "WB"

    goto :goto_11

    :cond_f
    const-string v1, "NB"

    :goto_11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Illegal AMR "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " frame type "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_34
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v0, :cond_3d

    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    aget p1, v0, p1

    goto :goto_41

    :cond_3d
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    aget p1, v0, p1

    :goto_41
    return p1
.end method

.method private isNarrowBandValidFrameType(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameType"
        }
    .end annotation

    .line 352
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    if-nez v0, :cond_e

    const/16 v0, 0xc

    if-lt p1, v0, :cond_c

    const/16 v0, 0xe

    if-le p1, v0, :cond_e

    :cond_c
    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private isValidFrameType(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameType"
        }
    .end annotation

    if-ltz p1, :cond_14

    const/16 v0, 0xf

    if-gt p1, v0, :cond_14

    .line 342
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBandValidFrameType(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isNarrowBandValidFrameType(I)Z

    move-result p1

    if-eqz p1, :cond_14

    :cond_12
    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private isWideBandValidFrameType(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameType"
        }
    .end annotation

    .line 347
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xa

    if-lt p1, v0, :cond_c

    const/16 v0, 0xd

    if-le p1, v0, :cond_e

    :cond_c
    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method static final synthetic lambda$static$0$AmrExtractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 55
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputFormat()V
    .registers 14

    .line 255
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    if-nez v0, :cond_32

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    .line 257
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v0, :cond_e

    const-string v0, "audio/amr-wb"

    goto :goto_10

    :cond_e
    const-string v0, "audio/3gpp"

    :goto_10
    move-object v2, v0

    .line 258
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v0, :cond_1a

    const/16 v0, 0x3e80

    const/16 v7, 0x3e80

    goto :goto_1e

    :cond_1a
    const/16 v0, 0x1f40

    const/16 v7, 0x1f40

    .line 259
    :goto_1e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    sget v5, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->MAX_FRAME_SIZE_BYTES:I

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 260
    invoke-static/range {v1 .. v12}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 259
    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    :cond_32
    return-void
.end method

.method private maybeOutputSeekMap(JI)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputLength",
            "sampleReadResult"
        }
    .end annotation

    .line 356
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    if-eqz v0, :cond_5

    return-void

    .line 360
    :cond_5
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_31

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_31

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSampleSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1b

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-eq v0, v3, :cond_1b

    goto :goto_31

    .line 366
    :cond_1b
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    const/16 v3, 0x14

    if-ge v0, v3, :cond_23

    if-ne p3, v2, :cond_44

    .line 368
    :cond_23
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->getConstantBitrateSeekMap(J)Landroidx/media2/exoplayer/external/extractor/SeekMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 369
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {p2, p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 370
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    goto :goto_44

    .line 363
    :cond_31
    :goto_31
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 364
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {p2, p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 365
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    :cond_44
    :goto_44
    return-void
.end method

.method private peekAmrSignature(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[B)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "amrSignature"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 248
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 249
    array-length v0, p2

    new-array v0, v0, [B

    .line 250
    array-length v1, p2

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 251
    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method private peekNextSampleSize(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extractorInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 316
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 317
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->scratch:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 319
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->scratch:[B

    aget-byte p1, p1, v1

    and-int/lit16 v0, p1, 0x83

    if-gtz v0, :cond_1b

    shr-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, 0xf

    .line 327
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->getFrameSizeInBytes(I)I

    move-result p1

    return p1

    .line 323
    :cond_1b
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid padding bits for frame header "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readAmrHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .registers 5
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

    .line 233
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->peekAmrSignature(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[B)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 234
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    .line 235
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    return v2

    .line 237
    :cond_13
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->peekAmrSignature(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[B)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 238
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->isWideBand:Z

    .line 239
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    return v2

    :cond_24
    return v1
.end method

.method private readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extractorInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 277
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_29

    .line 279
    :try_start_6
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->peekNextSampleSize(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleSize:I
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_c} :catch_28

    .line 283
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 284
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSampleSize:I

    if-ne v0, v2, :cond_1c

    .line 285
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSamplePosition:J

    .line 286
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleSize:I

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSampleSize:I

    .line 288
    :cond_1c
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->firstSampleSize:I

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-ne v0, v3, :cond_29

    .line 289
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    goto :goto_29

    :catch_28
    return v2

    .line 293
    :cond_29
    :goto_29
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 294
    invoke-interface {v0, p1, v3, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result p1

    if-ne p1, v2, :cond_34

    return v2

    .line 299
    :cond_34
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    const/4 p1, 0x0

    if-lez v0, :cond_3d

    return p1

    .line 304
    :cond_3d
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v2, v4

    const/4 v4, 0x1

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 310
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    return p1
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extractorOutput"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 173
    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 174
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "seekPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 180
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_19

    .line 181
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->readAmrHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_11

    goto :goto_19

    .line 182
    :cond_11
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "Could not find AMR header."

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_19
    :goto_19
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->maybeOutputFormat()V

    .line 186
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result p2

    .line 187
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->maybeOutputSeekMap(JI)V

    return p2
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public seek(JJ)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "timeUs"
        }
    .end annotation

    const-wide/16 p3, 0x0

    .line 193
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    const/4 v0, 0x0

    .line 194
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleSize:I

    .line 195
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    cmp-long v0, p1, p3

    if-eqz v0, :cond_1c

    .line 196
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    instance-of v1, v0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;

    if-eqz v1, :cond_1c

    .line 197
    check-cast v0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->timeOffsetUs:J

    goto :goto_1e

    .line 199
    :cond_1c
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->timeOffsetUs:J

    :goto_1e
    return-void
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .registers 2
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

    .line 167
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;->readAmrHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method
