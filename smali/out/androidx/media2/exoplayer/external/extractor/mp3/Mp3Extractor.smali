.class public final Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field private static final REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;


# instance fields
.field private basisTimeUs:J

.field private extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private final flags:I

.field private final forcedFirstSampleTimestampUs:J

.field private final gaplessInfoHolder:Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

.field private final id3Peeker:Landroidx/media2/exoplayer/external/extractor/Id3Peeker;

.field private metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

.field private sampleBytesRemaining:I

.field private samplesRead:J

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

.field private final synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

.field private synchronizedHeaderData:I

.field private trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 80
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$$Lambda$1;->$instance:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 135
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flags",
            "forcedFirstSampleTimestampUs"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->flags:I

    .line 145
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    .line 146
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 147
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    .line 148
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 149
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 150
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/Id3Peeker;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/Id3Peeker;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->id3Peeker:Landroidx/media2/exoplayer/external/extractor/Id3Peeker;

    return-void
.end method

.method private getConstantBitrateSeeker(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;
    .registers 10
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

    .line 415
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 416
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 417
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->populateHeader(ILandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;)Z

    .line 418
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp3/ConstantBitrateSeeker;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/media2/exoplayer/external/extractor/mp3/ConstantBitrateSeeker;-><init>(JJLandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;)V

    return-object v0
.end method

.method private static getSeekFrameHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frame",
            "xingBase"
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1a

    .line 435
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 436
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result p1

    const v0, 0x58696e67

    if-eq p1, v0, :cond_19

    const v0, 0x496e666f

    if-ne p1, v0, :cond_1a

    :cond_19
    return p1

    .line 441
    :cond_1a
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result p1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_31

    const/16 p1, 0x24

    .line 442
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 443
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result p0

    const p1, 0x56425249

    if-ne p0, p1, :cond_31

    return p1

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method private static headersMatch(IJ)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headerA",
            "headerB"
        }
    .end annotation

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long/2addr p1, v2

    cmp-long p0, v0, p1

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method static final synthetic lambda$static$0$Mp3Extractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 56
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static final synthetic lambda$static$1$Mp3Extractor(IIIII)Z
    .registers 8

    const/4 v0, 0x2

    const/16 v1, 0x4d

    const/16 v2, 0x43

    if-ne p1, v2, :cond_11

    const/16 v2, 0x4f

    if-ne p2, v2, :cond_11

    if-ne p3, v1, :cond_11

    if-eq p4, v1, :cond_1f

    if-eq p0, v0, :cond_1f

    :cond_11
    if-ne p1, v1, :cond_21

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_21

    if-ne p3, p1, :cond_21

    const/16 p1, 0x54

    if-eq p4, p1, :cond_1f

    if-ne p0, v0, :cond_21

    :cond_1f
    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0
.end method

.method private static maybeHandleSeekMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;J)Landroidx/media2/exoplayer/external/extractor/mp3/MlltSeeker;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "metadata",
            "firstFramePosition"
        }
    .end annotation

    if-eqz p0, :cond_1b

    .line 453
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 455
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v2

    .line 456
    instance-of v3, v2, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    if-eqz v3, :cond_18

    .line 457
    check-cast v2, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    invoke-static {p1, p2, v2}, Landroidx/media2/exoplayer/external/extractor/mp3/MlltSeeker;->create(JLandroidx/media2/exoplayer/external/metadata/id3/MlltFrame;)Landroidx/media2/exoplayer/external/extractor/mp3/MlltSeeker;

    move-result-object p0

    return-object p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private maybeReadSeekFrame(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;
    .registers 12
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

    .line 377
    new-instance v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    invoke-direct {v5, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    .line 378
    iget-object v0, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 379
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->version:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x15

    if-eqz v0, :cond_28

    .line 380
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->channels:I

    if-eq v0, v1, :cond_2e

    const/16 v2, 0x24

    const/16 v7, 0x24

    goto :goto_35

    .line 381
    :cond_28
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->channels:I

    if-eq v0, v1, :cond_31

    :cond_2e
    const/16 v7, 0x15

    goto :goto_35

    :cond_31
    const/16 v2, 0xd

    const/16 v7, 0xd

    .line 382
    :goto_35
    invoke-static {v5, v7}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->getSeekFrameHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)I

    move-result v8

    const v0, 0x58696e67

    const v9, 0x496e666f

    if-eq v8, v0, :cond_64

    if-ne v8, v9, :cond_44

    goto :goto_64

    :cond_44
    const v0, 0x56425249

    if-ne v8, v0, :cond_5f

    .line 400
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    invoke-static/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;->create(JJLandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/mp3/VbriSeeker;

    move-result-object v0

    .line 401
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_b2

    :cond_5f
    const/4 v0, 0x0

    .line 405
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_b2

    .line 385
    :cond_64
    :goto_64
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    invoke-static/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->create(JJLandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;

    move-result-object v0

    if-eqz v0, :cond_9c

    .line 386
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v1

    if-nez v1, :cond_9c

    .line 388
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit16 v7, v7, 0x8d

    .line 389
    invoke-interface {p1, v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 390
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v2, 0x3

    invoke-interface {p1, v1, v6, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 391
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 392
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->setFromXingHeaderValue(I)Z

    .line 394
    :cond_9c
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    if-eqz v0, :cond_b2

    .line 395
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_b2

    if-ne v8, v9, :cond_b2

    .line 397
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    move-result-object p1

    return-object p1

    :cond_b2
    :goto_b2
    return-object v0
.end method

.method private peekEndOfStreamOrHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
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

    .line 349
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    .line 350
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;->getDataEndPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1b

    .line 352
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_1b

    return v1

    .line 357
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v0, v2, v3, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p1
    :try_end_25
    .catch Ljava/io/EOFException; {:try_start_1b .. :try_end_25} :catch_27

    xor-int/2addr p1, v1

    return p1

    :catch_27
    return v1
.end method

.method private readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I
    .registers 15
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

    .line 229
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_6b

    .line 230
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 231
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v2

    .line 234
    :cond_11
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 235
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 236
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 237
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->getFrameSize(I)I

    move-result v4

    if-ne v4, v2, :cond_2c

    goto :goto_65

    .line 243
    :cond_2c
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    invoke-static {v0, v4}, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->populateHeader(ILandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;)Z

    .line 244
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_5e

    .line 245
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 246
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5e

    .line 247
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v4

    .line 248
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 251
    :cond_5e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    goto :goto_6b

    .line 239
    :cond_65
    :goto_65
    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 240
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    return v3

    .line 253
    :cond_6b
    :goto_6b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    invoke-interface {v0, p1, v4, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result p1

    if-ne p1, v2, :cond_76

    return v2

    .line 257
    :cond_76
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v0, :cond_7e

    return v3

    .line 261
    :cond_7e
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->samplesRead:J

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget p1, p1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->sampleRate:I

    int-to-long v6, p1

    div-long/2addr v4, v6

    add-long v7, v0, v4

    .line 262
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    const/4 v9, 0x1

    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v10, p1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 264
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget p1, p1, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->samplesPerFrame:I

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 265
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    return v3
.end method

.method private synchronize(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "sniffing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p2, :cond_5

    const/16 v0, 0x4000

    goto :goto_7

    :cond_5
    const/high16 v0, 0x20000

    .line 276
    :goto_7
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 277
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-nez v7, :cond_40

    .line 280
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-eqz v1, :cond_23

    const/4 v1, 0x0

    goto :goto_25

    .line 282
    :cond_23
    sget-object v1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;

    .line 283
    :goto_25
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->id3Peeker:Landroidx/media2/exoplayer/external/extractor/Id3Peeker;

    invoke-virtual {v2, p1, v1}, Landroidx/media2/exoplayer/external/extractor/Id3Peeker;->peekId3Data(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-eqz v1, :cond_34

    .line 285
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->setFromMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Z

    .line 287
    :cond_34
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v1

    long-to-int v2, v1

    if-nez p2, :cond_3e

    .line 289
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    :cond_3e
    const/4 v1, 0x0

    goto :goto_42

    :cond_40
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_42
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 293
    :goto_44
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v7

    if-eqz v7, :cond_53

    if-lez v3, :cond_4d

    goto :goto_9d

    .line 298
    :cond_4d
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 300
    :cond_53
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v7, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 301
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v7

    if-eqz v1, :cond_67

    int-to-long v8, v1

    .line 304
    invoke-static {v7, v8, v9}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 305
    :cond_67
    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->getFrameSize(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8f

    :cond_6e
    add-int/lit8 v1, v4, 0x1

    if-ne v4, v0, :cond_7d

    if-eqz p2, :cond_75

    return v6

    .line 309
    :cond_75
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "Searched too many bytes."

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7d
    if-eqz p2, :cond_88

    .line 316
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    add-int v3, v2, v1

    .line 317
    invoke-interface {p1, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_8b

    .line 319
    :cond_88
    invoke-interface {p1, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    :goto_8b
    move v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_44

    :cond_8f
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_9a

    .line 325
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    invoke-static {v7, v1}, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->populateHeader(ILandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;)Z

    move v1, v7

    goto :goto_aa

    :cond_9a
    const/4 v7, 0x4

    if-ne v3, v7, :cond_aa

    :goto_9d
    if-eqz p2, :cond_a4

    add-int/2addr v2, v4

    .line 335
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_a7

    .line 337
    :cond_a4
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 339
    :goto_a7
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    return v5

    :cond_aa
    :goto_aa
    add-int/lit8 v8, v8, -0x4

    .line 330
    invoke-interface {p1, v8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_44
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 163
    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 164
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .registers 21
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

    move-object/from16 v0, p0

    .line 183
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v1, :cond_f

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 185
    :try_start_9
    invoke-direct {v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronize(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    const/4 v1, -0x1

    return v1

    :cond_f
    move-object/from16 v2, p1

    .line 190
    :goto_11
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    if-nez v1, :cond_7d

    .line 193
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->maybeReadSeekFrame(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    move-result-object v1

    .line 194
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->maybeHandleSeekMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;J)Landroidx/media2/exoplayer/external/extractor/mp3/MlltSeeker;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 196
    iput-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    goto :goto_2c

    :cond_28
    if-eqz v1, :cond_2c

    .line 198
    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    .line 200
    :cond_2c
    :goto_2c
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    if-eqz v1, :cond_3c

    .line 201
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_42

    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_42

    .line 202
    :cond_3c
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    .line 204
    :cond_42
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 205
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    const/4 v3, 0x0

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v7, 0x1000

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v8, v8, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->channels:I

    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;

    iget v9, v9, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->sampleRate:I

    const/4 v10, -0x1

    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    iget v11, v11, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderDelay:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    iget v12, v12, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderPadding:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 221
    iget v15, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_71

    const/4 v15, 0x0

    goto :goto_73

    :cond_71
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    :goto_73
    move-object/from16 v17, v15

    const/4 v15, 0x0

    .line 206
    invoke-static/range {v3 .. v17}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    .line 205
    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 223
    :cond_7d
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result v1

    return v1
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public seek(JJ)V
    .registers 5
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

    const/4 p1, 0x0

    .line 169
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 170
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/16 p2, 0x0

    .line 171
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 172
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    return-void
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .registers 3
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

    const/4 v0, 0x1

    .line 157
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;->synchronize(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z

    move-result p1

    return p1
.end method
