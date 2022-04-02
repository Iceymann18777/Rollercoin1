.class public final Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader;,
        Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;


# instance fields
.field private bytesSinceLastSync:I

.field private final continuityCounters:Landroid/util/SparseIntArray;

.field private final durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

.field private hasOutputSeekMap:Z

.field private id3Reader:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

.field private final mode:I

.field private output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private final payloadReaderFactory:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;

.field private pcrPid:I

.field private pendingSeekToStart:Z

.field private remainingPmts:I

.field private final timestampAdjusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field

.field private final trackIds:Landroid/util/SparseBooleanArray;

.field private final trackPids:Landroid/util/SparseBooleanArray;

.field private tracksEnded:Z

.field private tsBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;

.field private final tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final tsPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultTsPayloadReaderFlags"
        }
    .end annotation

    const/4 v0, 0x1

    .line 148
    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "defaultTsPayloadReaderFlags"
        }
    .end annotation

    .line 158
    new-instance v0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;-><init>(J)V

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;-><init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "timestampAdjuster",
            "payloadReaderFactory"
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;

    iput-object p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->payloadReaderFactory:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;

    .line 175
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1f

    const/4 p3, 0x2

    if-ne p1, p3, :cond_14

    goto :goto_1f

    .line 179
    :cond_14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 180
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 177
    :cond_1f
    :goto_1f
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 182
    :goto_25
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([BI)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 183
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    .line 184
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    .line 185
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    .line 186
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    .line 187
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    const/4 p1, -0x1

    .line 188
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->pcrPid:I

    .line 189
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->resetPayloadReaders()V

    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseArray;
    .registers 1

    .line 60
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I
    .registers 1

    .line 60
    iget p0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->remainingPmts:I

    return p0
.end method

.method static synthetic access$1000(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tracksEnded:Z

    return p0
.end method

.method static synthetic access$1002(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;Z)Z
    .registers 2

    .line 60
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tracksEnded:Z

    return p1
.end method

.method static synthetic access$102(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;I)I
    .registers 2

    .line 60
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->remainingPmts:I

    return p1
.end method

.method static synthetic access$108(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I
    .registers 3

    .line 60
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->remainingPmts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->remainingPmts:I

    return v0
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)I
    .registers 1

    .line 60
    iget p0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    return p0
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Ljava/util/List;
    .registers 1

    .line 60
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;I)I
    .registers 2

    .line 60
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->pcrPid:I

    return p1
.end method

.method static synthetic access$500(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;
    .registers 1

    .line 60
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->id3Reader:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    return-object p0
.end method

.method static synthetic access$502(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;
    .registers 2

    .line 60
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->id3Reader:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    return-object p1
.end method

.method static synthetic access$600(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;
    .registers 1

    .line 60
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->payloadReaderFactory:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .registers 1

    .line 60
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 60
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 60
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private fillBufferWithAtLeastOnePacket(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
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

    .line 380
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 382
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    rsub-int v1, v1, 0x24b8

    const/4 v2, 0x0

    const/16 v3, 0xbc

    if-ge v1, v3, :cond_27

    .line 383
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_22

    .line 385
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v4

    invoke-static {v0, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    :cond_22
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4, v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 390
    :cond_27
    :goto_27
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-ge v1, v3, :cond_46

    .line 391
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    rsub-int v4, v1, 0x24b8

    .line 392
    invoke-interface {p1, v0, v1, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3f

    return v2

    .line 396
    :cond_3f
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    add-int/2addr v1, v4

    invoke-virtual {v5, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    goto :goto_27

    :cond_46
    const/4 p1, 0x1

    return p1
.end method

.method private findEndOfFirstTsPacketInBuffer()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 409
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    .line 410
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {v2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsUtil;->findSyncBytePosition([BII)I

    move-result v2

    .line 413
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    add-int/lit16 v3, v2, 0xbc

    if-le v3, v1, :cond_35

    .line 416
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 417
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_38

    const/16 v0, 0x178

    if-gt v1, v0, :cond_2d

    goto :goto_38

    .line 418
    :cond_2d
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    const/4 v0, 0x0

    .line 422
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    :cond_38
    :goto_38
    return v3
.end method

.method static final synthetic lambda$static$0$TsExtractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 63
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputSeekMap(J)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputLength"
        }
    .end annotation

    .line 362
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_47

    const/4 v0, 0x1

    .line 363
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    .line 364
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_37

    .line 365
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    .line 367
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->getPcrTimestampAdjuster()Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    move-result-object v6

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    .line 368
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v7

    iget v11, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->pcrPid:I

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v11}, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;-><init>(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;JJI)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;

    .line 371
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;->getSeekMap()Landroidx/media2/exoplayer/external/extractor/SeekMap;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    goto :goto_47

    .line 373
    :cond_37
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    new-instance p2, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    :cond_47
    :goto_47
    return-void
.end method

.method private resetPayloadReaders()V
    .registers 8

    .line 434
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 435
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 436
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->payloadReaderFactory:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;

    .line 437
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;->createInitialPayloadReaders()Landroid/util/SparseArray;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_2a

    .line 440
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 442
    :cond_2a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;

    invoke-direct {v3, p0}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;)V

    invoke-direct {v1, v3}, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 443
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->id3Reader:Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    return-void
.end method

.method private shouldConsumePacketPayload(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetPid"
        }
    .end annotation

    .line 428
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_12

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tracksEnded:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    .line 430
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-nez p1, :cond_13

    :cond_12
    const/4 v1, 0x1

    :cond_13
    return v1
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

    .line 217
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .registers 19
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

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 259
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 260
    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tracksEnded:Z

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v5, :cond_5c

    cmp-long v5, v3, v7

    if-eqz v5, :cond_1e

    .line 261
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    if-eq v5, v9, :cond_1e

    const/4 v5, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v5, 0x0

    :goto_1f
    if-eqz v5, :cond_32

    .line 262
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->isDurationReadFinished()Z

    move-result v5

    if-nez v5, :cond_32

    .line 263
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->durationReader:Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;

    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->pcrPid:I

    invoke-virtual {v3, v1, v2, v4}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->readDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;I)I

    move-result v1

    return v1

    .line 265
    :cond_32
    invoke-direct {v0, v3, v4}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->maybeOutputSeekMap(J)V

    .line 267
    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    if-eqz v5, :cond_4b

    .line 268
    iput-boolean v11, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    const-wide/16 v12, 0x0

    .line 269
    invoke-virtual {v0, v12, v13, v12, v13}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->seek(JJ)V

    .line 270
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v14

    cmp-long v5, v14, v12

    if-eqz v5, :cond_4b

    .line 271
    iput-wide v12, v2, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    return v10

    .line 276
    :cond_4b
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;

    if-eqz v5, :cond_5c

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;->isSeeking()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 277
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;

    invoke-virtual {v3, v1, v2, v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;->handlePendingSeek(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$OutputFrameHolder;)I

    move-result v1

    return v1

    .line 282
    :cond_5c
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->fillBufferWithAtLeastOnePacket(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_64

    const/4 v1, -0x1

    return v1

    .line 286
    :cond_64
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->findEndOfFirstTsPacketInBuffer()I

    move-result v1

    .line 287
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v2

    if-le v1, v2, :cond_71

    return v11

    .line 295
    :cond_71
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    const/high16 v12, 0x800000

    and-int/2addr v12, v5

    if-eqz v12, :cond_82

    .line 298
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return v11

    :cond_82
    const/high16 v12, 0x400000

    and-int/2addr v12, v5

    if-eqz v12, :cond_89

    const/4 v12, 0x1

    goto :goto_8a

    :cond_89
    const/4 v12, 0x0

    :goto_8a
    or-int/2addr v12, v11

    const v13, 0x1fff00

    and-int/2addr v13, v5

    shr-int/lit8 v13, v13, 0x8

    and-int/lit8 v14, v5, 0x20

    if-eqz v14, :cond_97

    const/4 v14, 0x1

    goto :goto_98

    :cond_97
    const/4 v14, 0x0

    :goto_98
    and-int/lit8 v15, v5, 0x10

    if-eqz v15, :cond_9e

    const/4 v15, 0x1

    goto :goto_9f

    :cond_9e
    const/4 v15, 0x0

    :goto_9f
    if-eqz v15, :cond_a9

    .line 308
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    :cond_a9
    if-nez v6, :cond_b1

    .line 310
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return v11

    .line 315
    :cond_b1
    iget v15, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    if-eq v15, v9, :cond_d4

    and-int/lit8 v5, v5, 0xf

    .line 317
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v15, v13, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 318
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v13, v5}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v7, v5, :cond_cc

    .line 321
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return v11

    :cond_cc
    add-int/2addr v7, v10

    and-int/lit8 v7, v7, 0xf

    if-eq v5, v7, :cond_d4

    .line 325
    invoke-interface {v6}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;->seek()V

    :cond_d4
    if-eqz v14, :cond_f0

    .line 331
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 332
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_e8

    const/4 v7, 0x2

    goto :goto_e9

    :cond_e8
    const/4 v7, 0x0

    :goto_e9
    or-int/2addr v12, v7

    .line 338
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    sub-int/2addr v5, v10

    invoke-virtual {v7, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 342
    :cond_f0
    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tracksEnded:Z

    .line 343
    invoke-direct {v0, v13}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->shouldConsumePacketPayload(I)Z

    move-result v7

    if-eqz v7, :cond_107

    .line 344
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v7, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 345
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v6, v7, v12}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;->consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 346
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 348
    :cond_107
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    if-eq v2, v9, :cond_119

    if-nez v5, :cond_119

    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tracksEnded:Z

    if-eqz v2, :cond_119

    const-wide/16 v5, -0x1

    cmp-long v2, v3, v5

    if-eqz v2, :cond_119

    .line 352
    iput-boolean v10, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    .line 355
    :cond_119
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return v11
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public seek(JJ)V
    .registers 15
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

    .line 222
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->mode:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 223
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_14
    const-wide/16 v2, 0x0

    if-ge v1, p1, :cond_4b

    .line 225
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 227
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-nez v9, :cond_2f

    const/4 v5, 0x1

    goto :goto_30

    :cond_2f
    const/4 v5, 0x0

    :goto_30
    if-nez v5, :cond_42

    .line 229
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_48

    .line 230
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v2

    cmp-long v5, v2, p3

    if-eqz v5, :cond_48

    .line 236
    :cond_42
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->reset()V

    .line 237
    invoke-virtual {v4, p3, p4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->setFirstSampleTimestampUs(J)V

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_4b
    cmp-long p1, p3, v2

    if-eqz p1, :cond_56

    .line 240
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;

    if-eqz p1, :cond_56

    .line 241
    invoke-virtual {p1, p3, p4}, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;->setSeekTargetUs(J)V

    .line 243
    :cond_56
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    .line 244
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    const/4 p1, 0x0

    .line 245
    :goto_61
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_77

    .line 246
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;

    invoke-interface {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;->seek()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_61

    .line 248
    :cond_77
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->bytesSinceLastSync:I

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

    .line 196
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    .line 197
    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    const/4 v2, 0x0

    :goto_b
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_2c

    const/4 v3, 0x0

    :goto_10
    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ge v3, v4, :cond_22

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    .line 202
    aget-byte v4, v0, v4

    const/16 v6, 0x47

    if-eq v4, v6, :cond_1f

    const/4 v3, 0x0

    goto :goto_23

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_22
    const/4 v3, 0x1

    :goto_23
    if-eqz v3, :cond_29

    .line 208
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    return v5

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_2c
    return v1
.end method
