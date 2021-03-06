.class public Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;,
        Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;,
        Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field private static final SSA_DIALOGUE_FORMAT:[B

.field private static final SSA_PREFIX:[B

.field private static final SSA_TIMECODE_EMPTY:[B

.field private static final SUBRIP_PREFIX:[B

.field private static final SUBRIP_TIMECODE_EMPTY:[B

.field private static final WAVE_SUBFORMAT_PCM:Ljava/util/UUID;


# instance fields
.field private blockDurationUs:J

.field private blockFlags:I

.field private blockLacingSampleCount:I

.field private blockLacingSampleIndex:I

.field private blockLacingSampleSizes:[I

.field private blockState:I

.field private blockTimeUs:J

.field private blockTrackNumber:I

.field private blockTrackNumberLength:I

.field private clusterTimecodeUs:J

.field private cueClusterPositions:Landroidx/media2/exoplayer/external/util/LongArray;

.field private cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

.field private cuesContentPosition:J

.field private currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

.field private durationTimecode:J

.field private durationUs:J

.field private final encryptionInitializationVector:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final encryptionSubsampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

.field private extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private final nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final reader:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleEncodingHandled:Z

.field private sampleInitializationVectorRead:Z

.field private samplePartitionCount:I

.field private samplePartitionCountRead:Z

.field private sampleRead:Z

.field private sampleSeenReferenceBlock:Z

.field private sampleSignalByte:B

.field private sampleSignalByteRead:Z

.field private final sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private seekEntryId:I

.field private final seekEntryIdBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private seekEntryPosition:J

.field private seekForCues:Z

.field private final seekForCuesEnabled:Z

.field private seekPositionAfterBuildingCues:J

.field private seenClusterPositionForCurrentCuePoint:Z

.field private segmentContentPosition:J

.field private segmentContentSize:J

.field private sentSeekMap:Z

.field private final subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private timecodeScale:J

.field private final tracks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;",
            ">;"
        }
    .end annotation
.end field

.field private final varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

.field private final vorbisNumPageSamples:Landroidx/media2/exoplayer/external/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 73
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 242
    fill-array-data v1, :array_40

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    const/16 v1, 0xc

    new-array v1, v1, [B

    .line 254
    fill-array-data v1, :array_54

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SUBRIP_TIMECODE_EMPTY:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 269
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    new-array v0, v0, [B

    .line 278
    fill-array-data v0, :array_5e

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 295
    fill-array-data v0, :array_72

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SSA_TIMECODE_EMPTY:[B

    .line 317
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-void

    :array_40
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_54
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data

    :array_5e
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_72
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 390
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 394
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;I)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reader",
            "flags"
        }
    .end annotation

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 337
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 338
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 339
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    .line 340
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationUs:J

    .line 354
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    .line 355
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 356
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 398
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;

    .line 399
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;-><init>(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$1;)V

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;->init(Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;)V

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_28

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    .line 400
    :goto_29
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    .line 401
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    .line 402
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    .line 403
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 404
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 405
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 406
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    sget-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 407
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 408
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 409
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 410
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 411
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    return-void
.end method

.method static synthetic access$300()[B
    .registers 1

    .line 70
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/UUID;
    .registers 1

    .line 70
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-object v0
.end method

.method private buildSeekMap()Landroidx/media2/exoplayer/external/extractor/SeekMap;
    .registers 13

    .line 1483
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_8a

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_8a

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    if-eqz v0, :cond_8a

    .line 1484
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/LongArray;->size()I

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media2/exoplayer/external/util/LongArray;

    if-eqz v0, :cond_8a

    .line 1485
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/LongArray;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/LongArray;->size()I

    move-result v1

    if-eq v0, v1, :cond_2f

    goto :goto_8a

    .line 1491
    :cond_2f
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/LongArray;->size()I

    move-result v0

    .line 1492
    new-array v1, v0, [I

    .line 1493
    new-array v3, v0, [J

    .line 1494
    new-array v4, v0, [J

    .line 1495
    new-array v5, v0, [J

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3f
    if-ge v7, v0, :cond_57

    .line 1497
    iget-object v8, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-virtual {v8, v7}, Landroidx/media2/exoplayer/external/util/LongArray;->get(I)J

    move-result-wide v8

    aput-wide v8, v5, v7

    .line 1498
    iget-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-object v10, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-virtual {v10, v7}, Landroidx/media2/exoplayer/external/util/LongArray;->get(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    :cond_57
    :goto_57
    add-int/lit8 v7, v0, -0x1

    if-ge v6, v7, :cond_6e

    add-int/lit8 v7, v6, 0x1

    .line 1501
    aget-wide v8, v3, v7

    aget-wide v10, v3, v6

    sub-long/2addr v8, v10

    long-to-int v9, v8

    aput v9, v1, v6

    .line 1502
    aget-wide v8, v5, v7

    aget-wide v10, v5, v6

    sub-long/2addr v8, v10

    aput-wide v8, v4, v6

    move v6, v7

    goto :goto_57

    .line 1504
    :cond_6e
    iget-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-wide v10, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    add-long/2addr v8, v10

    aget-wide v10, v3, v7

    sub-long/2addr v8, v10

    long-to-int v0, v8

    aput v0, v1, v7

    .line 1506
    iget-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationUs:J

    aget-wide v10, v5, v7

    sub-long/2addr v8, v10

    aput-wide v8, v4, v7

    .line 1507
    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    .line 1508
    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media2/exoplayer/external/util/LongArray;

    .line 1509
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ChunkIndex;

    invoke-direct {v0, v1, v3, v4, v5}, Landroidx/media2/exoplayer/external/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v0

    .line 1487
    :cond_8a
    :goto_8a
    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    .line 1488
    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media2/exoplayer/external/util/LongArray;

    .line 1489
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0
.end method

.method private commitSampleToOutput(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;J)V
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "track",
            "timeUs"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p1

    .line 1189
    iget-object v0, v8, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v0, :cond_f

    .line 1190
    iget-object v0, v8, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    move-wide/from16 v9, p2

    invoke-virtual {v0, v8, v9, v10}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleMetadata(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;J)V

    goto :goto_51

    :cond_f
    move-wide/from16 v9, p2

    .line 1192
    iget-object v0, v8, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v3, 0x13

    const-wide/16 v4, 0x3e8

    .line 1193
    sget-object v6, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SUBRIP_TIMECODE_EMPTY:[B

    const-string v2, "%02d:%02d:%02d,%03d"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->commitSubtitleSample(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;IJ[B)V

    goto :goto_42

    .line 1199
    :cond_2a
    iget-object v0, v8, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/16 v3, 0x15

    const-wide/16 v4, 0x2710

    .line 1200
    sget-object v6, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SSA_TIMECODE_EMPTY:[B

    const-string v2, "%01d:%02d:%02d:%02d"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->commitSubtitleSample(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;IJ[B)V

    .line 1207
    :cond_42
    :goto_42
    iget-object v0, v8, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget v11, v7, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    iget v12, v7, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    const/4 v13, 0x0

    iget-object v14, v8, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    move-object v8, v0

    move-wide/from16 v9, p2

    invoke-interface/range {v8 .. v14}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    :goto_51
    const/4 v0, 0x1

    .line 1209
    iput-boolean v0, v7, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleRead:Z

    .line 1210
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->resetSample()V

    return-void
.end method

.method private commitSubtitleSample(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;IJ[B)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "track",
            "timecodeFormat",
            "endTimecodeOffset",
            "lastTimecodeValueScalingFactor",
            "emptyTimecode"
        }
    .end annotation

    .line 1415
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->setSampleDuration([BJLjava/lang/String;IJ[B)V

    .line 1419
    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1420
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    return-void
.end method

.method private static ensureArrayCapacity([II)[I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "length"
        }
    .end annotation

    if-nez p0, :cond_5

    .line 1584
    new-array p0, p1, [I

    return-object p0

    .line 1585
    :cond_5
    array-length v0, p0

    if-lt v0, p1, :cond_9

    return-object p0

    .line 1589
    :cond_9
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method private static isCodecSupported(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecId"
        }
    .end annotation

    const-string v0, "V_VP8"

    .line 1546
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "V_VP9"

    .line 1547
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "V_AV1"

    .line 1548
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "V_MPEG2"

    .line 1549
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "V_MPEG4/ISO/SP"

    .line 1550
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "V_MPEG4/ISO/ASP"

    .line 1551
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "V_MPEG4/ISO/AP"

    .line 1552
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "V_MPEG4/ISO/AVC"

    .line 1553
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "V_MPEGH/ISO/HEVC"

    .line 1554
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "V_MS/VFW/FOURCC"

    .line 1555
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "V_THEORA"

    .line 1556
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "A_OPUS"

    .line 1557
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "A_VORBIS"

    .line 1558
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "A_AAC"

    .line 1559
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "A_MPEG/L2"

    .line 1560
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "A_MPEG/L3"

    .line 1561
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "A_AC3"

    .line 1562
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "A_EAC3"

    .line 1563
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "A_TRUEHD"

    .line 1564
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "A_DTS"

    .line 1565
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "A_DTS/EXPRESS"

    .line 1566
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "A_DTS/LOSSLESS"

    .line 1567
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "A_FLAC"

    .line 1568
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "A_MS/ACM"

    .line 1569
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "A_PCM/INT/LIT"

    .line 1570
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "S_TEXT/UTF8"

    .line 1571
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "S_TEXT/ASS"

    .line 1572
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "S_VOBSUB"

    .line 1573
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "S_HDMV/PGS"

    .line 1574
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    const-string v0, "S_DVBSUB"

    .line 1575
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f1

    goto :goto_f3

    :cond_f1
    const/4 p0, 0x0

    goto :goto_f4

    :cond_f3
    :goto_f3
    const/4 p0, 0x1

    :goto_f4
    return p0
.end method

.method static final synthetic lambda$static$0$MatroskaExtractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 73
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeSeekForCues(Landroidx/media2/exoplayer/external/extractor/PositionHolder;J)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seekPosition",
            "currentPosition"
        }
    .end annotation

    .line 1522
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 1523
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 1524
    iget-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    iput-wide p2, p1, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 1525
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    return v1

    .line 1530
    :cond_f
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-eqz p2, :cond_20

    iget-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_20

    .line 1531
    iput-wide p2, p1, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 1532
    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    return v1

    :cond_20
    return v2
.end method

.method private readScratch(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "requiredLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1232
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    if-lt v0, p2, :cond_9

    return-void

    .line 1235
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_2d

    .line 1236
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 1237
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v2

    .line 1236
    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 1239
    :cond_2d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1240
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method

.method private readToOutput(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/TrackOutput;I)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1464
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_12

    .line 1466
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1467
    iget-object p3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {p2, p3, p1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    goto :goto_17

    :cond_12
    const/4 v0, 0x0

    .line 1469
    invoke-interface {p2, p1, p3, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result p1

    .line 1471
    :goto_17
    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1472
    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    return p1
.end method

.method private readToTarget(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[BII)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "target",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1449
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p3, v0

    sub-int v2, p4, v0

    .line 1450
    invoke-interface {p1, p2, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    if-lez v0, :cond_18

    .line 1452
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 1454
    :cond_18
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr p1, p4

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    return-void
.end method

.method private resetSample()V
    .registers 2

    const/4 v0, 0x0

    .line 1214
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1215
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1216
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1217
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 1218
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    .line 1219
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1220
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1221
    iput-byte v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1222
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1223
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    return-void
.end method

.method private scaleTimecodeToUs(J)J
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unscaledTimecode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 1539
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_13

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 1542
    invoke-static/range {v0 .. v5}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 1540
    :cond_13
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static setSampleDuration([BJLjava/lang/String;IJ[B)V
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "subripSampleData",
            "durationUs",
            "timecodeFormat",
            "endTimecodeOffset",
            "lastTimecodeValueScalingFactor",
            "emptyTimecode"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_e

    move-object/from16 v1, p7

    move-object v2, v1

    goto :goto_61

    :cond_e
    const-wide v1, 0xd693a400L

    .line 1430
    div-long v1, p1, v1

    long-to-int v2, v1

    mul-int/lit16 v1, v2, 0xe10

    int-to-long v3, v1

    const-wide/32 v5, 0xf4240

    mul-long v3, v3, v5

    sub-long v3, p1, v3

    const-wide/32 v7, 0x3938700

    .line 1432
    div-long v7, v3, v7

    long-to-int v1, v7

    mul-int/lit8 v7, v1, 0x3c

    int-to-long v7, v7

    mul-long v7, v7, v5

    sub-long/2addr v3, v7

    .line 1434
    div-long v7, v3, v5

    long-to-int v8, v7

    int-to-long v9, v8

    mul-long v9, v9, v5

    sub-long/2addr v3, v9

    .line 1436
    div-long v3, v3, p5

    long-to-int v4, v3

    .line 1437
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    .line 1438
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v1, p3

    .line 1437
    invoke-static {v3, p3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object/from16 v2, p7

    .line 1440
    :goto_61
    array-length v2, v2

    move-object v3, p0

    move v4, p4

    invoke-static {v1, v0, p0, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private writeSampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;I)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "track",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1245
    iget-object v0, p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1246
    sget-object p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[BI)V

    return-void

    .line 1248
    :cond_10
    iget-object v0, p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1249
    sget-object p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[BI)V

    return-void

    .line 1253
    :cond_20
    iget-object v0, p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 1254
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_176

    .line 1255
    iget-boolean v1, p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v1, :cond_166

    .line 1258
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1259
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    const/16 v6, 0x80

    if-nez v1, :cond_64

    .line 1260
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v1, v5, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1261
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1262
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_5c

    .line 1265
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v5

    iput-byte v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1266
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    goto :goto_64

    .line 1263
    :cond_5c
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1268
    :cond_64
    :goto_64
    iget-byte v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_6b

    const/4 v1, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v1, 0x0

    :goto_6c
    if-eqz v1, :cond_174

    .line 1270
    iget-byte v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_75

    const/4 v1, 0x1

    goto :goto_76

    :cond_75
    const/4 v1, 0x0

    .line 1271
    :goto_76
    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1272
    iget-boolean v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    if-nez v7, :cond_bb

    .line 1273
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v8, 0x8

    invoke-interface {p1, v7, v5, v8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1274
    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v7, v8

    iput v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1275
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1277
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    if-eqz v1, :cond_98

    goto :goto_99

    :cond_98
    const/4 v6, 0x0

    :goto_99
    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    .line 1278
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1279
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v0, v6, v4}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1280
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v4

    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1282
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1283
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v0, v6, v8}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1284
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v8

    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    :cond_bb
    if-eqz v1, :cond_174

    .line 1287
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    if-nez v1, :cond_dc

    .line 1288
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v1, v5, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1289
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1290
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1291
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1292
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1294
    :cond_dc
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    mul-int/lit8 v1, v1, 0x4

    .line 1295
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 1296
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v6, v5, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1297
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v6, v1

    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1298
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    div-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v3

    .line 1300
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_103

    .line 1301
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_109

    .line 1302
    :cond_103
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    .line 1304
    :cond_109
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1305
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 1313
    :goto_115
    iget v8, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    if-ge v1, v8, :cond_137

    .line 1315
    iget-object v8, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    .line 1316
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_12c

    .line 1317
    iget-object v9, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_133

    .line 1320
    :cond_12c
    iget-object v9, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_133
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_115

    .line 1323
    :cond_137
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    .line 1324
    rem-int/2addr v8, v3

    if-ne v8, v4, :cond_145

    .line 1325
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_150

    .line 1327
    :cond_145
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1328
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1330
    :goto_150
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 1331
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v0, v1, v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1332
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v1, v6

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_174

    .line 1335
    :cond_166
    iget-object v1, p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v1, :cond_174

    .line 1337
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    iget-object v7, p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    array-length v7, v7

    invoke-virtual {v1, v6, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 1339
    :cond_174
    :goto_174
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 1341
    :cond_176
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/2addr p3, v1

    .line 1343
    iget-object v1, p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b4

    iget-object v1, p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_192

    goto :goto_1b4

    .line 1375
    :cond_192
    iget-object v1, p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v1, :cond_1aa

    .line 1376
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    if-nez v1, :cond_19f

    goto :goto_1a0

    :cond_19f
    const/4 v4, 0x0

    :goto_1a0
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 1377
    iget-object v1, p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    invoke-virtual {v1, p1, v3, p3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->startSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;II)V

    .line 1379
    :cond_1aa
    :goto_1aa
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v1, p3, :cond_1f4

    sub-int v1, p3, v1

    .line 1380
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readToOutput(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/TrackOutput;I)I

    goto :goto_1aa

    .line 1348
    :cond_1b4
    :goto_1b4
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 1349
    aput-byte v5, v1, v5

    .line 1350
    aput-byte v5, v1, v4

    .line 1351
    aput-byte v5, v1, v3

    .line 1352
    iget v3, p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 1353
    iget v4, p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v4, v4, 0x4

    .line 1357
    :goto_1c4
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v6, p3, :cond_1f4

    .line 1358
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v6, :cond_1ec

    .line 1360
    invoke-direct {p0, p1, v1, v4, v3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readToTarget(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[BII)V

    .line 1362
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1363
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1365
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1366
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v0, v6, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1367
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v2

    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_1c4

    .line 1371
    :cond_1ec
    invoke-direct {p0, p1, v0, v6}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readToOutput(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/TrackOutput;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_1c4

    .line 1384
    :cond_1f4
    iget-object p1, p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20d

    .line 1391
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1392
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v0, p1, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1393
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    :cond_20d
    return-void
.end method

.method private writeSubtitleSampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;[BI)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "samplePrefix",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1399
    array-length v0, p2

    add-int/2addr v0, p3

    .line 1400
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_15

    .line 1403
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    add-int v2, v0, p3

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    goto :goto_1e

    .line 1405
    :cond_15
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1407
    :goto_1e
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1408
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    return-void
.end method


# virtual methods
.method protected binaryElement(IILandroidx/media2/exoplayer/external/extractor/ExtractorInput;)V
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "contentSize",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0xa1

    const/16 v5, 0xa3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v1, v4, :cond_9c

    if-eq v1, v5, :cond_9c

    const/16 v4, 0x4255

    if-eq v1, v4, :cond_8d

    const/16 v4, 0x47e2

    if-eq v1, v4, :cond_7d

    const/16 v4, 0x53ab

    if-eq v1, v4, :cond_5d

    const/16 v4, 0x63a2

    if-eq v1, v4, :cond_4e

    const/16 v4, 0x7672

    if-ne v1, v4, :cond_35

    .line 1036
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    new-array v4, v2, [B

    iput-object v4, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 1037
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    invoke-interface {v3, v1, v6, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_2bb

    .line 1184
    :cond_35
    new-instance v2, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v3, 0x1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected id: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1032
    :cond_4e
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    new-array v4, v2, [B

    iput-object v4, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 1033
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v3, v1, v6, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_2bb

    .line 1026
    :cond_5d
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 1027
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    rsub-int/lit8 v4, v2, 0x4

    invoke-interface {v3, v1, v4, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1028
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1029
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    goto/16 :goto_2bb

    .line 1045
    :cond_7d
    new-array v1, v2, [B

    .line 1046
    invoke-interface {v3, v1, v6, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1047
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    invoke-direct {v3, v7, v1, v6, v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iput-object v3, v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    goto/16 :goto_2bb

    .line 1041
    :cond_8d
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    new-array v4, v2, [B

    iput-object v4, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    .line 1042
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    invoke-interface {v3, v1, v6, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_2bb

    .line 1057
    :cond_9c
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    const/16 v8, 0x8

    if-nez v4, :cond_c1

    .line 1058
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    invoke-virtual {v4, v3, v6, v7, v8}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->readUnsignedVarint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;ZZI)J

    move-result-wide v9

    long-to-int v4, v9

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 1059
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->getLastLength()I

    move-result v4

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 1060
    iput-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    .line 1061
    iput v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 1062
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    .line 1065
    :cond_c1
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    if-nez v4, :cond_d7

    .line 1069
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v1, v2, v1

    invoke-interface {v3, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 1070
    iput v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    return-void

    .line 1074
    :cond_d7
    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    if-ne v9, v7, :cond_288

    const/4 v9, 0x3

    .line 1076
    invoke-direct {v0, v3, v9}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)V

    .line 1077
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v10, v10, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    and-int/lit8 v10, v10, 0x6

    shr-int/2addr v10, v7

    const/16 v12, 0xff

    if-nez v10, :cond_ff

    .line 1079
    iput v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    .line 1080
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    invoke-static {v10, v7}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v10

    iput-object v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    .line 1081
    iget v13, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v13

    sub-int/2addr v2, v9

    aput v2, v10, v6

    goto/16 :goto_216

    :cond_ff
    if-ne v1, v5, :cond_280

    const/4 v13, 0x4

    .line 1088
    invoke-direct {v0, v3, v13}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)V

    .line 1089
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v14, v14, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v14, v14, v9

    and-int/2addr v14, v12

    add-int/2addr v14, v7

    iput v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    .line 1090
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    .line 1091
    invoke-static {v15, v14}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v14

    iput-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    if-ne v10, v11, :cond_125

    .line 1093
    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v9

    sub-int/2addr v2, v13

    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    div-int/2addr v2, v9

    .line 1095
    invoke-static {v14, v6, v9, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_216

    :cond_125
    if-ne v10, v7, :cond_15c

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1099
    :goto_129
    iget v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    add-int/lit8 v15, v14, -0x1

    if-ge v9, v15, :cond_150

    .line 1100
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aput v6, v14, v9

    :cond_133
    add-int/2addr v13, v7

    .line 1103
    invoke-direct {v0, v3, v13}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)V

    .line 1104
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v14, v14, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v15, v13, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v12

    .line 1105
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v16, v15, v9

    add-int v16, v16, v14

    aput v16, v15, v9

    if-eq v14, v12, :cond_133

    .line 1107
    aget v14, v15, v9

    add-int/2addr v10, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_129

    .line 1109
    :cond_150
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    sub-int/2addr v14, v7

    iget v15, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v13

    sub-int/2addr v2, v10

    aput v2, v9, v14

    goto/16 :goto_216

    :cond_15c
    if-ne v10, v9, :cond_267

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1114
    :goto_160
    iget v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    add-int/lit8 v15, v14, -0x1

    if-ge v9, v15, :cond_20b

    .line 1115
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aput v6, v14, v9

    add-int/lit8 v13, v13, 0x1

    .line 1116
    invoke-direct {v0, v3, v13}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)V

    .line 1117
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v14, v14, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v15, v13, -0x1

    aget-byte v14, v14, v15

    if-eqz v14, :cond_203

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    :goto_17c
    if-ge v14, v8, :cond_1ce

    rsub-int/lit8 v18, v14, 0x7

    shl-int v18, v7, v18

    .line 1123
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v5, v5, v15

    and-int v5, v5, v18

    if-eqz v5, :cond_1c4

    add-int/2addr v13, v14

    .line 1126
    invoke-direct {v0, v3, v13}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)V

    .line 1127
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v16, v15, 0x1

    aget-byte v5, v5, v15

    and-int/2addr v5, v12

    xor-int/lit8 v15, v18, -0x1

    and-int/2addr v5, v15

    int-to-long v6, v5

    move/from16 v5, v16

    :goto_19f
    move-wide/from16 v16, v6

    if-ge v5, v13, :cond_1b6

    shl-long v6, v16, v8

    .line 1130
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v15, v15, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    and-int/2addr v5, v12

    int-to-long v11, v5

    or-long/2addr v6, v11

    move/from16 v5, v16

    const/4 v11, 0x2

    const/16 v12, 0xff

    goto :goto_19f

    :cond_1b6
    if-lez v9, :cond_1ce

    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v14, v14, 0x6

    const-wide/16 v5, 0x1

    shl-long v11, v5, v14

    sub-long/2addr v11, v5

    sub-long v16, v16, v11

    goto :goto_1ce

    :cond_1c4
    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0xa3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x2

    const/16 v12, 0xff

    goto :goto_17c

    :cond_1ce
    :goto_1ce
    move-wide/from16 v5, v16

    const-wide/32 v11, -0x80000000

    cmp-long v7, v5, v11

    if-ltz v7, :cond_1fb

    const-wide/32 v11, 0x7fffffff

    cmp-long v7, v5, v11

    if-gtz v7, :cond_1fb

    long-to-int v6, v5

    .line 1143
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    if-nez v9, :cond_1e4

    goto :goto_1e9

    :cond_1e4
    add-int/lit8 v7, v9, -0x1

    .line 1144
    aget v7, v5, v7

    add-int/2addr v6, v7

    :goto_1e9
    aput v6, v5, v9

    .line 1145
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v5, v5, v9

    add-int/2addr v10, v5

    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0xa3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x2

    const/16 v12, 0xff

    goto/16 :goto_160

    .line 1140
    :cond_1fb
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "EBML lacing sample size out of range."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1118
    :cond_203
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1147
    :cond_20b
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    const/4 v6, 0x1

    sub-int/2addr v14, v6

    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v6

    sub-int/2addr v2, v13

    sub-int/2addr v2, v10

    aput v2, v5, v14

    .line 1155
    :goto_216
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v5, 0x0

    aget-byte v2, v2, v5

    shl-int/2addr v2, v8

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v2, v5

    .line 1156
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    int-to-long v9, v2

    invoke-direct {v0, v9, v10}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v9

    add-long/2addr v5, v9

    iput-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    .line 1157
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_23f

    const/4 v2, 0x1

    goto :goto_240

    :cond_23f
    const/4 v2, 0x0

    .line 1158
    :goto_240
    iget v6, v4, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->type:I

    if-eq v6, v5, :cond_256

    const/16 v6, 0xa3

    if-ne v1, v6, :cond_254

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v6, v6, v5

    const/16 v5, 0x80

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_254

    goto :goto_256

    :cond_254
    const/4 v5, 0x0

    goto :goto_257

    :cond_256
    :goto_256
    const/4 v5, 0x1

    :goto_257
    if-eqz v2, :cond_25c

    const/high16 v2, -0x80000000

    goto :goto_25d

    :cond_25c
    const/4 v2, 0x0

    :goto_25d
    or-int/2addr v2, v5

    .line 1161
    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/4 v2, 0x2

    .line 1162
    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v2, 0x0

    .line 1163
    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    goto :goto_288

    .line 1151
    :cond_267
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected lacing value: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1084
    :cond_280
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Lacing only supported in SimpleBlocks."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_288
    :goto_288
    const/16 v2, 0xa3

    if-ne v1, v2, :cond_2b3

    .line 1168
    :goto_28c
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    if-ge v1, v2, :cond_2af

    .line 1169
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->writeSampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;I)V

    .line 1170
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    iget v6, v4, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int v5, v5, v6

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 1172
    invoke-direct {v0, v4, v1, v2}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;J)V

    .line 1173
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    goto :goto_28c

    :cond_2af
    const/4 v1, 0x0

    .line 1175
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    goto :goto_2bb

    :cond_2b3
    const/4 v1, 0x0

    .line 1179
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->writeSampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;I)V

    :goto_2bb
    return-void
.end method

.method protected endMasterElement(I)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/16 v0, 0xa0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_f0

    const/16 v0, 0xae

    if-eq p1, v0, :cond_ce

    const/16 v0, 0x4dbb

    const v3, 0x1c53bb6b

    if-eq p1, v0, :cond_b4

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_83

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_6d

    const v0, 0x1549a966

    if-eq p1, v0, :cond_4f

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_38

    if-eq p1, v3, :cond_27

    goto/16 :goto_110

    .line 662
    :cond_27
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez p1, :cond_110

    .line 663
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->buildSeekMap()Landroidx/media2/exoplayer/external/extractor/SeekMap;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 664
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto/16 :goto_110

    .line 703
    :cond_38
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_47

    .line 706
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    goto/16 :goto_110

    .line 704
    :cond_47
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "No valid tracks were found"

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 645
    :cond_4f
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_5f

    const-wide/32 v0, 0xf4240

    .line 647
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 649
    :cond_5f
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_110

    .line 650
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationUs:J

    goto/16 :goto_110

    .line 691
    :cond_6d
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz p1, :cond_110

    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-nez p1, :cond_7b

    goto/16 :goto_110

    .line 692
    :cond_7b
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "Combining encryption and compression is not supported"

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 682
    :cond_83
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz p1, :cond_110

    .line 683
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    if-eqz p1, :cond_ac

    .line 686
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    new-array v2, v2, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    new-instance v3, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object v4, Landroidx/media2/exoplayer/external/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    const-string v6, "video/webm"

    invoke-direct {v3, v4, v6, v5}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>([Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    iput-object v0, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    goto :goto_110

    .line 684
    :cond_ac
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 654
    :cond_b4
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c6

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_c6

    if-ne p1, v3, :cond_110

    .line 658
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    goto :goto_110

    .line 655
    :cond_c6
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 696
    :cond_ce
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ec

    .line 697
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget v1, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->initializeOutput(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;I)V

    .line 698
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->number:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_ec
    const/4 p1, 0x0

    .line 700
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    goto :goto_110

    .line 670
    :cond_f0
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f6

    return-void

    .line 675
    :cond_f6
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSeenReferenceBlock:Z

    if-nez p1, :cond_ff

    .line 676
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    or-int/2addr p1, v2

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 678
    :cond_ff
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    invoke-direct {p0, p1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;J)V

    .line 679
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    :cond_110
    :goto_110
    return-void
.end method

.method protected floatElement(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_61

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_5d

    packed-switch p1, :pswitch_data_68

    packed-switch p1, :pswitch_data_80

    goto :goto_66

    .line 981
    :pswitch_f
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    goto :goto_66

    .line 978
    :pswitch_15
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    goto :goto_66

    .line 975
    :pswitch_1b
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    goto :goto_66

    .line 972
    :pswitch_21
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    goto :goto_66

    .line 969
    :pswitch_27
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    goto :goto_66

    .line 966
    :pswitch_2d
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    goto :goto_66

    .line 963
    :pswitch_33
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    goto :goto_66

    .line 960
    :pswitch_39
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    goto :goto_66

    .line 957
    :pswitch_3f
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    goto :goto_66

    .line 954
    :pswitch_45
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    goto :goto_66

    .line 951
    :pswitch_4b
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    goto :goto_66

    .line 948
    :pswitch_51
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    goto :goto_66

    .line 945
    :pswitch_57
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    goto :goto_66

    :cond_5d
    double-to-long p1, p2

    .line 939
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    goto :goto_66

    .line 942
    :cond_61
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    double-to-int p2, p2

    iput p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x55d1
        :pswitch_57
        :pswitch_51
        :pswitch_4b
        :pswitch_45
        :pswitch_3f
        :pswitch_39
        :pswitch_33
        :pswitch_2d
        :pswitch_27
        :pswitch_21
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x7673
        :pswitch_1b
        :pswitch_15
        :pswitch_f
    .end packed-switch
.end method

.method protected getElementType(I)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    sparse-switch p1, :sswitch_data_10

    const/4 p1, 0x0

    return p1

    :sswitch_5
    const/4 p1, 0x5

    return p1

    :sswitch_7
    const/4 p1, 0x4

    return p1

    :sswitch_9
    const/4 p1, 0x1

    return p1

    :sswitch_b
    const/4 p1, 0x3

    return p1

    :sswitch_d
    const/4 p1, 0x2

    return p1

    nop

    :sswitch_data_10
    .sparse-switch
        0x83 -> :sswitch_d
        0x86 -> :sswitch_b
        0x88 -> :sswitch_d
        0x9b -> :sswitch_d
        0x9f -> :sswitch_d
        0xa0 -> :sswitch_9
        0xa1 -> :sswitch_7
        0xa3 -> :sswitch_7
        0xae -> :sswitch_9
        0xb0 -> :sswitch_d
        0xb3 -> :sswitch_d
        0xb5 -> :sswitch_5
        0xb7 -> :sswitch_9
        0xba -> :sswitch_d
        0xbb -> :sswitch_9
        0xd7 -> :sswitch_d
        0xe0 -> :sswitch_9
        0xe1 -> :sswitch_9
        0xe7 -> :sswitch_d
        0xf1 -> :sswitch_d
        0xfb -> :sswitch_d
        0x4254 -> :sswitch_d
        0x4255 -> :sswitch_7
        0x4282 -> :sswitch_b
        0x4285 -> :sswitch_d
        0x42f7 -> :sswitch_d
        0x4489 -> :sswitch_5
        0x47e1 -> :sswitch_d
        0x47e2 -> :sswitch_7
        0x47e7 -> :sswitch_9
        0x47e8 -> :sswitch_d
        0x4dbb -> :sswitch_9
        0x5031 -> :sswitch_d
        0x5032 -> :sswitch_d
        0x5034 -> :sswitch_9
        0x5035 -> :sswitch_9
        0x536e -> :sswitch_b
        0x53ab -> :sswitch_7
        0x53ac -> :sswitch_d
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_d
        0x54b2 -> :sswitch_d
        0x54ba -> :sswitch_d
        0x55aa -> :sswitch_d
        0x55b0 -> :sswitch_9
        0x55b9 -> :sswitch_d
        0x55ba -> :sswitch_d
        0x55bb -> :sswitch_d
        0x55bc -> :sswitch_d
        0x55bd -> :sswitch_d
        0x55d0 -> :sswitch_9
        0x55d1 -> :sswitch_5
        0x55d2 -> :sswitch_5
        0x55d3 -> :sswitch_5
        0x55d4 -> :sswitch_5
        0x55d5 -> :sswitch_5
        0x55d6 -> :sswitch_5
        0x55d7 -> :sswitch_5
        0x55d8 -> :sswitch_5
        0x55d9 -> :sswitch_5
        0x55da -> :sswitch_5
        0x56aa -> :sswitch_d
        0x56bb -> :sswitch_d
        0x6240 -> :sswitch_9
        0x6264 -> :sswitch_d
        0x63a2 -> :sswitch_7
        0x6d80 -> :sswitch_9
        0x7670 -> :sswitch_9
        0x7671 -> :sswitch_d
        0x7672 -> :sswitch_7
        0x7673 -> :sswitch_5
        0x7674 -> :sswitch_5
        0x7675 -> :sswitch_5
        0x22b59c -> :sswitch_b
        0x23e383 -> :sswitch_d
        0x2ad7b1 -> :sswitch_d
        0x114d9b74 -> :sswitch_9
        0x1549a966 -> :sswitch_9
        0x1654ae6b -> :sswitch_9
        0x18538067 -> :sswitch_9
        0x1a45dfa3 -> :sswitch_9
        0x1c53bb6b -> :sswitch_9
        0x1f43b675 -> :sswitch_9
    .end sparse-switch
.end method

.method public final init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 421
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    return-void
.end method

.method protected integerElement(IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/16 v0, 0x5031

    const/16 v1, 0x37

    const-string v2, " not supported"

    if-eq p1, v0, :cond_237

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_218

    const/16 v0, 0x32

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_258

    const/4 v0, 0x7

    const/4 v1, 0x6

    packed-switch p1, :pswitch_data_2ca

    goto/16 :goto_23d

    .line 905
    :pswitch_1e
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    goto/16 :goto_23d

    .line 902
    :pswitch_25
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    goto/16 :goto_23d

    .line 854
    :pswitch_2c
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v7, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    long-to-int p1, p2

    if-eq p1, v7, :cond_4f

    const/16 p2, 0x9

    if-eq p1, p2, :cond_49

    const/4 p2, 0x4

    if-eq p1, p2, :cond_43

    const/4 p2, 0x5

    if-eq p1, p2, :cond_43

    if-eq p1, v1, :cond_43

    if-eq p1, v0, :cond_43

    goto/16 :goto_23d

    .line 863
    :cond_43
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    goto/16 :goto_23d

    .line 866
    :cond_49
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v1, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    goto/16 :goto_23d

    .line 857
    :cond_4f
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    goto/16 :goto_23d

    :pswitch_55
    long-to-int p1, p2

    if-eq p1, v7, :cond_72

    const/16 p2, 0x10

    if-eq p1, p2, :cond_6c

    const/16 p2, 0x12

    if-eq p1, p2, :cond_66

    if-eq p1, v1, :cond_72

    if-eq p1, v0, :cond_72

    goto/16 :goto_23d

    .line 883
    :cond_66
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v0, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    goto/16 :goto_23d

    .line 880
    :cond_6c
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v1, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    goto/16 :goto_23d

    .line 877
    :cond_72
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v5, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    goto/16 :goto_23d

    :pswitch_78
    long-to-int p1, p2

    if-eq p1, v7, :cond_85

    if-eq p1, v6, :cond_7f

    goto/16 :goto_23d

    .line 895
    :cond_7f
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    goto/16 :goto_23d

    .line 892
    :cond_85
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    goto/16 :goto_23d

    .line 739
    :sswitch_8b
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    goto/16 :goto_23d

    .line 769
    :sswitch_8f
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    goto/16 :goto_23d

    :sswitch_96
    long-to-int p1, p2

    if-eqz p1, :cond_b3

    if-eq p1, v7, :cond_ad

    if-eq p1, v6, :cond_a7

    if-eq p1, v5, :cond_a1

    goto/16 :goto_23d

    .line 919
    :cond_a1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v5, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    goto/16 :goto_23d

    .line 916
    :cond_a7
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    goto/16 :goto_23d

    .line 913
    :cond_ad
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    goto/16 :goto_23d

    .line 910
    :cond_b3
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v1, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    goto/16 :goto_23d

    .line 781
    :sswitch_b9
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    goto/16 :goto_23d

    .line 775
    :sswitch_c0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    goto/16 :goto_23d

    .line 772
    :sswitch_c6
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    goto/16 :goto_23d

    .line 763
    :sswitch_cc
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    cmp-long v0, p2, v3

    if-nez v0, :cond_d3

    const/4 v1, 0x1

    :cond_d3
    iput-boolean v1, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    goto/16 :goto_23d

    .line 751
    :sswitch_d7
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto/16 :goto_23d

    .line 754
    :sswitch_de
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    goto/16 :goto_23d

    .line 748
    :sswitch_e5
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    goto/16 :goto_23d

    :sswitch_ec
    long-to-int p1, p2

    if-eqz p1, :cond_10b

    if-eq p1, v7, :cond_105

    if-eq p1, v5, :cond_ff

    const/16 p2, 0xf

    if-eq p1, p2, :cond_f9

    goto/16 :goto_23d

    .line 847
    :cond_f9
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v5, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_23d

    .line 844
    :cond_ff
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_23d

    .line 841
    :cond_105
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_23d

    .line 838
    :cond_10b
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput v1, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_23d

    .line 736
    :sswitch_111
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    goto/16 :goto_23d

    :sswitch_118
    cmp-long p1, p2, v3

    if-nez p1, :cond_11e

    goto/16 :goto_23d

    .line 813
    :cond_11e
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v0, 0x38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_13a
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_142

    goto/16 :goto_23d

    .line 807
    :cond_142
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_15e
    cmp-long p1, p2, v3

    if-nez p1, :cond_164

    goto/16 :goto_23d

    .line 724
    :cond_164
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "EBMLReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_17e
    cmp-long p1, p2, v3

    if-ltz p1, :cond_18a

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_18a

    goto/16 :goto_23d

    .line 730
    :cond_18a
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_1a6
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_1ae

    goto/16 :goto_23d

    .line 801
    :cond_1ae
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentCompAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 784
    :sswitch_1c8
    iput-boolean v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSeenReferenceBlock:Z

    goto/16 :goto_23d

    .line 820
    :sswitch_1cc
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez p1, :cond_23d

    .line 824
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-virtual {p1, p2, p3}, Landroidx/media2/exoplayer/external/util/LongArray;->add(J)V

    .line 825
    iput-boolean v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_23d

    .line 829
    :sswitch_1d8
    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    goto :goto_23d

    .line 757
    :sswitch_1df
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->number:I

    goto :goto_23d

    .line 745
    :sswitch_1e5
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->height:I

    goto :goto_23d

    .line 817
    :sswitch_1eb
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/media2/exoplayer/external/util/LongArray;->add(J)V

    goto :goto_23d

    .line 742
    :sswitch_1f5
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->width:I

    goto :goto_23d

    .line 778
    :sswitch_1fb
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    goto :goto_23d

    .line 832
    :sswitch_201
    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    goto :goto_23d

    .line 760
    :sswitch_208
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    cmp-long v0, p2, v3

    if-nez v0, :cond_20f

    const/4 v1, 0x1

    :cond_20f
    iput-boolean v1, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    goto :goto_23d

    .line 766
    :sswitch_212
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->type:I

    goto :goto_23d

    :cond_218
    cmp-long p1, p2, v3

    if-nez p1, :cond_21d

    goto :goto_23d

    .line 795
    :cond_21d
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_237
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_23e

    :cond_23d
    :goto_23d
    return-void

    .line 789
    :cond_23e
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_258
    .sparse-switch
        0x83 -> :sswitch_212
        0x88 -> :sswitch_208
        0x9b -> :sswitch_201
        0x9f -> :sswitch_1fb
        0xb0 -> :sswitch_1f5
        0xb3 -> :sswitch_1eb
        0xba -> :sswitch_1e5
        0xd7 -> :sswitch_1df
        0xe7 -> :sswitch_1d8
        0xf1 -> :sswitch_1cc
        0xfb -> :sswitch_1c8
        0x4254 -> :sswitch_1a6
        0x4285 -> :sswitch_17e
        0x42f7 -> :sswitch_15e
        0x47e1 -> :sswitch_13a
        0x47e8 -> :sswitch_118
        0x53ac -> :sswitch_111
        0x53b8 -> :sswitch_ec
        0x54b0 -> :sswitch_e5
        0x54b2 -> :sswitch_de
        0x54ba -> :sswitch_d7
        0x55aa -> :sswitch_cc
        0x56aa -> :sswitch_c6
        0x56bb -> :sswitch_c0
        0x6264 -> :sswitch_b9
        0x7671 -> :sswitch_96
        0x23e383 -> :sswitch_8f
        0x2ad7b1 -> :sswitch_8b
    .end sparse-switch

    :pswitch_data_2ca
    .packed-switch 0x55b9
        :pswitch_78
        :pswitch_55
        :pswitch_2c
        :pswitch_25
        :pswitch_1e
    .end packed-switch
.end method

.method protected isLevel1Element(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const v0, 0x1549a966

    if-eq p1, v0, :cond_17

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_17

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_17

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method public final read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .registers 8
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

    const/4 v0, 0x0

    .line 445
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleRead:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_1e

    .line 447
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleRead:Z

    if-nez v3, :cond_1e

    .line 448
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;

    invoke-interface {v2, p1}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;->read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 449
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    invoke-direct {p0, p2, v3, v4}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->maybeSeekForCues(Landroidx/media2/exoplayer/external/extractor/PositionHolder;J)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_1e
    if-nez v2, :cond_38

    .line 454
    :goto_20
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_36

    .line 455
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->outputPendingSampleMetadata()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_36
    const/4 p1, -0x1

    return p1

    :cond_38
    return v0
.end method

.method public final release()V
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

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 427
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    const/4 p1, 0x0

    .line 428
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 429
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;

    invoke-interface {p2}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;->reset()V

    .line 430
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->reset()V

    .line 431
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->resetSample()V

    .line 432
    :goto_17
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_2d

    .line 433
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->reset()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    :cond_2d
    return-void
.end method

.method public final sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
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

    .line 416
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method

.method protected startMasterElement(IJJ)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "contentPosition",
            "contentSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_90

    const/16 v0, 0xae

    if-eq p1, v0, :cond_87

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_84

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_7e

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_79

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_74

    const v0, 0x18538067

    if-eq p1, v0, :cond_5c

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_4d

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_2d

    goto/16 :goto_92

    .line 603
    :cond_2d
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez p1, :cond_92

    .line 605
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    if-eqz p1, :cond_3e

    iget-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_3e

    .line 607
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    goto :goto_92

    .line 611
    :cond_3e
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    new-instance p2, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    iget-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {p2, p3, p4}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 612
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto :goto_92

    .line 596
    :cond_4d
    new-instance p1, Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/LongArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media2/exoplayer/external/util/LongArray;

    .line 597
    new-instance p1, Landroidx/media2/exoplayer/external/util/LongArray;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/LongArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media2/exoplayer/external/util/LongArray;

    goto :goto_92

    .line 584
    :cond_5c
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_6f

    cmp-long p1, v3, p2

    if-nez p1, :cond_67

    goto :goto_6f

    .line 586
    :cond_67
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 588
    :cond_6f
    :goto_6f
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    .line 589
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    goto :goto_92

    .line 629
    :cond_74
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v3, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    goto :goto_92

    .line 623
    :cond_79
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v3, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    goto :goto_92

    :cond_7e
    const/4 p1, -0x1

    .line 592
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    .line 593
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    goto :goto_92

    .line 600
    :cond_84
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_92

    .line 626
    :cond_87
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;-><init>(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$1;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    goto :goto_92

    .line 617
    :cond_90
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->sampleSeenReferenceBlock:Z

    :cond_92
    :goto_92
    return-void
.end method

.method protected stringElement(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/16 v0, 0x86

    if-eq p1, v0, :cond_54

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_18

    const v0, 0x22b59c

    if-eq p1, v0, :cond_12

    goto :goto_58

    .line 1009
    :cond_12
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->access$202(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_58

    .line 1003
    :cond_18
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput-object p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    goto :goto_58

    :cond_1d
    const-string p1, "webm"

    .line 998
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_58

    .line 999
    :cond_2e
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocType "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1006
    :cond_54
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;

    iput-object p2, p1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    :cond_58
    :goto_58
    return-void
.end method
