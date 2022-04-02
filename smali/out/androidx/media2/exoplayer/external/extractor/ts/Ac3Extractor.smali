.class public final Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;
.super Ljava/lang/Object;
.source "Ac3Extractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# static fields
.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;


# instance fields
.field private final firstSampleTimestampUs:J

.field private final reader:Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

.field private final sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 62
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstSampleTimestampUs"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->firstSampleTimestampUs:J

    .line 67
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    .line 68
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 p2, 0xae2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    return-void
.end method

.method static final synthetic lambda$static$0$Ac3Extractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 44
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 121
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 122
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .registers 6
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

    .line 139
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v0, 0x0

    const/16 v1, 0xae2

    invoke-interface {p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_f

    return p2

    .line 145
    :cond_f
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 146
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 148
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->startedPacket:Z

    if-nez p1, :cond_28

    .line 150
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->firstSampleTimestampUs:J

    const/4 p2, 0x4

    invoke-virtual {p1, v1, v2, p2}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->packetStarted(JI)V

    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->startedPacket:Z

    .line 155
    :cond_28
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->sampleData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    return v0
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

    .line 127
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->startedPacket:Z

    .line 128
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->seek()V

    return-void
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .registers 9
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

    .line 76
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 79
    :goto_9
    iget-object v4, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 80
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 81
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    const v5, 0x494433

    if-eq v4, v5, :cond_59

    .line 89
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 90
    invoke-interface {p1, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v4, v3

    :goto_21
    const/4 v1, 0x0

    .line 95
    :goto_22
    iget-object v5, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v6, 0x6

    invoke-interface {p1, v5, v2, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 96
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 97
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    const/16 v6, 0xb77

    if-eq v5, v6, :cond_43

    .line 100
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_3f

    return v2

    .line 104
    :cond_3f
    invoke-interface {p1, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_21

    :cond_43
    const/4 v5, 0x1

    add-int/2addr v1, v5

    const/4 v6, 0x4

    if-lt v1, v6, :cond_49

    return v5

    .line 109
    :cond_49
    iget-object v5, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v5}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->parseAc3SyncframeSize([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_53

    return v2

    :cond_53
    add-int/lit8 v5, v5, -0x6

    .line 113
    invoke-interface {p1, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_22

    :cond_59
    const/4 v4, 0x3

    .line 84
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 85
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 87
    invoke-interface {p1, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_9
.end method
