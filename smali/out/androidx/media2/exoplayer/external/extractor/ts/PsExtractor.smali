.class public final Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;


# instance fields
.field private final durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

.field private foundAllTracks:Z

.field private foundAudioTrack:Z

.field private foundVideoTrack:Z

.field private hasOutputSeekMap:Z

.field private lastTrackPosition:J

.field private output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private psBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;

.field private final psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final psPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 81
    new-instance v0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;-><init>(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestampAdjuster"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 86
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 87
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    .line 88
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    return-void
.end method

.method static final synthetic lambda$static$0$PsExtractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 45
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputSeekMap(J)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputLength"
        }
    .end annotation

    .line 289
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_45

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    .line 291
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_35

    .line 292
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    .line 294
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->getScrTimestampAdjuster()Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    move-result-object v6

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    .line 295
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v7

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v10}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;-><init>(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;JJ)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;

    .line 297
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;->getSeekMap()Landroidx/media2/exoplayer/external/extractor/SeekMap;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    goto :goto_45

    .line 299
    :cond_35
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    new-instance p2, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    :cond_45
    :goto_45
    return-void
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .registers 13
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

    .line 170
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    goto :goto_f

    :cond_e
    const/4 v6, 0x0

    :goto_f
    if-eqz v6, :cond_20

    .line 172
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->isDurationReadFinished()Z

    move-result v6

    if-nez v6, :cond_20

    .line 173
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/PsDurationReader;->readDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 175
    :cond_20
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->maybeOutputSeekMap(J)V

    .line 176
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;

    const/4 v7, 0x0

    if-eqz v6, :cond_35

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;->isSeeking()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 177
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;

    invoke-virtual {v0, p1, p2, v7}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;->handlePendingSeek(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$OutputFrameHolder;)I

    move-result p1

    return p1

    .line 181
    :cond_35
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    cmp-long p2, v0, v2

    if-eqz p2, :cond_42

    .line 183
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v8

    sub-long/2addr v0, v8

    goto :goto_43

    :cond_42
    move-wide v0, v2

    :goto_43
    const/4 p2, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_4f

    const-wide/16 v2, 0x4

    cmp-long v6, v0, v2

    if-gez v6, :cond_4f

    return p2

    .line 188
    :cond_4f
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x4

    invoke-interface {p1, v0, v5, v1, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_5b

    return p2

    .line 192
    :cond_5b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 193
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    const/16 v1, 0x1b9

    if-ne v0, v1, :cond_6b

    return p2

    :cond_6b
    const/16 p2, 0x1ba

    if-ne v0, p2, :cond_8d

    .line 198
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v0, 0xa

    invoke-interface {p1, p2, v5, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 201
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 204
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    .line 207
    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    return v5

    :cond_8d
    const/16 p2, 0x1bb

    const/4 v1, 0x2

    const/4 v2, 0x6

    if-ne v0, p2, :cond_aa

    .line 211
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, p2, v5, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 214
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 215
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    add-int/2addr p2, v2

    .line 216
    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    return v5

    :cond_aa
    and-int/lit16 p2, v0, -0x100

    shr-int/lit8 p2, p2, 0x8

    if-eq p2, v4, :cond_b4

    .line 219
    invoke-interface {p1, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    return v5

    :cond_b4
    and-int/lit16 p2, v0, 0xff

    .line 228
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;

    .line 229
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->foundAllTracks:Z

    if-nez v3, :cond_137

    if-nez v0, :cond_117

    const/16 v3, 0xbd

    if-ne p2, v3, :cond_d6

    .line 236
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    invoke-direct {v7}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;-><init>()V

    .line 237
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 238
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iput-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_fd

    :cond_d6
    and-int/lit16 v3, p2, 0xe0

    const/16 v6, 0xc0

    if-ne v3, v6, :cond_ea

    .line 240
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;

    invoke-direct {v7}, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;-><init>()V

    .line 241
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 242
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iput-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_fd

    :cond_ea
    and-int/lit16 v3, p2, 0xf0

    const/16 v6, 0xe0

    if-ne v3, v6, :cond_fd

    .line 244
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;

    invoke-direct {v7}, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;-><init>()V

    .line 245
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->foundVideoTrack:Z

    .line 246
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iput-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->lastTrackPosition:J

    :cond_fd
    :goto_fd
    if-eqz v7, :cond_117

    .line 249
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v3, 0x100

    invoke-direct {v0, p2, v3}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    .line 250
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v7, v3, v0}, Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;->createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 251
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-direct {v0, v7, v3}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V

    .line 252
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    :cond_117
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-eqz p2, :cond_125

    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-eqz p2, :cond_125

    .line 257
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->lastTrackPosition:J

    const-wide/16 v8, 0x2000

    add-long/2addr v6, v8

    goto :goto_128

    :cond_125
    const-wide/32 v6, 0x100000

    .line 259
    :goto_128
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    cmp-long p2, v8, v6

    if-lez p2, :cond_137

    .line 260
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->foundAllTracks:Z

    .line 261
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 266
    :cond_137
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, p2, v5, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 267
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 268
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    add-int/2addr p2, v2

    if-nez v0, :cond_150

    .line 273
    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_16f

    .line 275
    :cond_150
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 277
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v1, v5, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 278
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 279
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 280
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->capacity()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    :goto_16f
    return v5
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public seek(JJ)V
    .registers 9
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

    .line 139
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 140
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide p1

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    if-nez p1, :cond_2b

    .line 141
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 142
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_35

    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 143
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide p1

    cmp-long v1, p1, p3

    if-eqz v1, :cond_35

    .line 149
    :cond_2b
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->reset()V

    .line 150
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {p1, p3, p4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->setFirstSampleTimestampUs(J)V

    .line 153
    :cond_35
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;

    if-eqz p1, :cond_3c

    .line 154
    invoke-virtual {p1, p3, p4}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;->setSeekTargetUs(J)V

    .line 156
    :cond_3c
    :goto_3c
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_52

    .line 157
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor$PesReader;->seek()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_52
    return-void
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .registers 11
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

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 96
    invoke-interface {p1, v1, v2, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 99
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_2a

    return v2

    :cond_2a
    const/4 v0, 0x4

    .line 104
    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_34

    return v2

    :cond_34
    const/4 v7, 0x6

    .line 108
    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3b

    return v2

    .line 112
    :cond_3b
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_41

    return v2

    :cond_41
    const/16 v0, 0x9

    .line 116
    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_49

    return v2

    :cond_49
    const/16 v0, 0xc

    .line 120
    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_51

    return v2

    :cond_51
    const/16 v0, 0xd

    .line 124
    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 125
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 127
    invoke-interface {p1, v1, v2, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 128
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_71

    const/4 v2, 0x1

    :cond_71
    return v2
.end method
