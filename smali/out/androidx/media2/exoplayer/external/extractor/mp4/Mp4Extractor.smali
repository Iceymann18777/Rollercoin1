.class public final Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;
.implements Landroidx/media2/exoplayer/external/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;


# instance fields
.field private accumulatedSampleSizes:[[J

.field private atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs:J

.field private extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private firstVideoTrackIndex:I

.field private final flags:I

.field private isAc4HeaderRequired:Z

.field private isQuickTime:Z

.field private final nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleTrackIndex:I

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;-><init>(I)V

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

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->flags:I

    .line 144
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 145
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 146
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    sget-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 147
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 148
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 p1, -0x1

    .line 149
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    return-void
.end method

.method private static calculateAccumulatedSampleSizes([Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;)[[J
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tracks"
        }
    .end annotation

    .line 685
    array-length v0, p0

    new-array v0, v0, [[J

    .line 686
    array-length v1, p0

    new-array v1, v1, [I

    .line 687
    array-length v2, p0

    new-array v2, v2, [J

    .line 688
    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 689
    :goto_e
    array-length v6, p0

    if-ge v5, v6, :cond_28

    .line 690
    aget-object v6, p0, v5

    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sampleCount:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    .line 691
    aget-object v6, p0, v5

    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_28
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 695
    :goto_2b
    array-length v8, p0

    if-ge v7, v8, :cond_71

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 698
    :goto_35
    array-length v12, p0

    if-ge v11, v12, :cond_48

    .line 699
    aget-boolean v12, v3, v11

    if-nez v12, :cond_45

    aget-wide v12, v2, v11

    cmp-long v14, v12, v8

    if-gtz v14, :cond_45

    .line 701
    aget-wide v8, v2, v11

    move v10, v11

    :cond_45
    add-int/lit8 v11, v11, 0x1

    goto :goto_35

    .line 704
    :cond_48
    aget v8, v1, v10

    .line 705
    aget-object v9, v0, v10

    aput-wide v5, v9, v8

    .line 706
    aget-object v9, p0, v10

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v9, v9, v8

    int-to-long v11, v9

    add-long/2addr v5, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 707
    aput v8, v1, v10

    .line 708
    aget-object v11, v0, v10

    array-length v11, v11

    if-ge v8, v11, :cond_6c

    .line 709
    aget-object v9, p0, v10

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_2b

    .line 712
    :cond_6c
    aput-boolean v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_71
    return-object v0
.end method

.method private enterReadingAtomHeaderState()V
    .registers 2

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->parserState:I

    .line 274
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method private static getSynchronizationSampleIndex(Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;J)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sampleTable",
            "timeUs"
        }
    .end annotation

    .line 750
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 753
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v0

    :cond_b
    return v0
.end method

.method private getTrackIndexOfNextReadSample(J)I
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputPosition"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x1

    const-wide v11, 0x7fffffffffffffffL

    const/4 v13, 0x1

    const-wide v14, 0x7fffffffffffffffL

    .line 609
    :goto_16
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v3, v1

    if-ge v7, v3, :cond_5f

    .line 610
    aget-object v1, v1, v7

    .line 611
    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 612
    iget-object v4, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget v4, v4, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v3, v4, :cond_26

    goto :goto_5c

    .line 615
    :cond_26
    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v4, v1, v3

    .line 616
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    aget-object v1, v1, v7

    aget-wide v16, v1, v3

    sub-long v4, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v1, v4, v18

    if-ltz v1, :cond_44

    const-wide/32 v18, 0x40000

    cmp-long v1, v4, v18

    if-ltz v1, :cond_42

    goto :goto_44

    :cond_42
    const/4 v1, 0x0

    goto :goto_45

    :cond_44
    :goto_44
    const/4 v1, 0x1

    :goto_45
    if-nez v1, :cond_49

    if-nez v13, :cond_4f

    :cond_49
    if-ne v1, v13, :cond_54

    cmp-long v3, v4, v14

    if-gez v3, :cond_54

    :cond_4f
    move v13, v1

    move-wide v14, v4

    move v6, v7

    move-wide/from16 v11, v16

    :cond_54
    cmp-long v3, v16, v8

    if-gez v3, :cond_5c

    move v10, v1

    move v2, v7

    move-wide/from16 v8, v16

    :cond_5c
    :goto_5c
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_5f
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v8, v3

    if-eqz v1, :cond_72

    if-eqz v10, :cond_72

    const-wide/32 v3, 0xa00000

    add-long/2addr v8, v3

    cmp-long v1, v11, v8

    if-gez v1, :cond_73

    :cond_72
    move v2, v6

    :cond_73
    return v2
.end method

.method private getTrackSampleTables(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;Z)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "moov",
            "gaplessInfoHolder",
            "ignoreEditLists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;",
            "Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 457
    :goto_6
    iget-object v2, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 458
    iget-object v2, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    .line 459
    iget v3, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->type:I

    const v4, 0x7472616b

    if-eq v3, v4, :cond_1e

    goto :goto_57

    :cond_1e
    const v3, 0x6d766864

    .line 465
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    iget-boolean v9, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    move-object v3, v2

    move v8, p3

    .line 463
    invoke-static/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseTrak(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;JLandroidx/media2/exoplayer/external/drm/DrmInitData;ZZ)Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    move-result-object v3

    if-nez v3, :cond_36

    goto :goto_57

    :cond_36
    const v4, 0x6d646961

    .line 474
    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    const v4, 0x6d696e66

    .line 475
    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    const v4, 0x7374626c

    .line 476
    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    .line 477
    invoke-static {v3, v2, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseStbl(Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;)Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    move-result-object v2

    .line 478
    iget v3, v2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v3, :cond_54

    goto :goto_57

    .line 481
    :cond_54
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_5a
    return-object v0
.end method

.method static final synthetic lambda$static$0$Mp4Extractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 58
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static maybeAdjustSeekOffset(Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;JJ)J
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sampleTable",
            "seekTimeUs",
            "offset"
        }
    .end annotation

    .line 730
    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return-wide p3

    .line 734
    :cond_8
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide p1, p0, p1

    .line 735
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V
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

    .line 666
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 671
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 672
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 673
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    const v2, 0x68646c72    # 4.3148E24f

    if-ne v0, v2, :cond_24

    .line 674
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_27

    .line 676
    :cond_24
    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    :goto_27
    return-void
.end method

.method private processAtomEnded(J)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atomEndPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 370
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_45

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_45

    .line 371
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    .line 372
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->type:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_31

    .line 374
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->processMoovAtom(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V

    .line 375
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 376
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    .line 377
    :cond_31
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->add(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 381
    :cond_45
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq p1, v1, :cond_4c

    .line 382
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_4c
    return-void
.end method

.method private static processFtypAtom(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atomData"
        }
    .end annotation

    const/16 v0, 0x8

    .line 765
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 766
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x71742020

    if-ne v0, v2, :cond_10

    return v1

    :cond_10
    const/4 v0, 0x4

    .line 770
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 771
    :cond_14
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_21

    .line 772
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_14

    return v1

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method private processMoovAtom(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V
    .registers 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moov"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 392
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 396
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;

    invoke-direct {v3}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;-><init>()V

    const v4, 0x75647461

    .line 397
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_24

    .line 399
    iget-boolean v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    invoke-static {v4, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseUdta(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;Z)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 401
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->setFromMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Z

    goto :goto_25

    :cond_24
    move-object v4, v5

    :cond_25
    :goto_25
    const v6, 0x6d657461

    .line 405
    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    if-eqz v6, :cond_32

    .line 407
    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseMdtaFromMeta(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v5

    .line 410
    :cond_32
    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_3a

    const/4 v6, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v6, 0x0

    .line 412
    :goto_3b
    invoke-direct {v0, v1, v3, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->getTrackSampleTables(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v14, v9

    const/4 v12, 0x0

    const/4 v13, -0x1

    :goto_4b
    if-ge v12, v6, :cond_d4

    .line 416
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    .line 417
    iget-object v11, v8, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    move-object/from16 v17, v8

    .line 419
    iget-wide v7, v11, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->durationUs:J

    cmp-long v18, v7, v9

    if-eqz v18, :cond_65

    iget-wide v7, v11, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->durationUs:J

    move-wide v9, v7

    move-object/from16 v7, v17

    goto :goto_69

    :cond_65
    move-object/from16 v7, v17

    iget-wide v9, v7, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 420
    :goto_69
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 421
    new-instance v8, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    move/from16 v20, v6

    iget v6, v11, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    .line 422
    invoke-interface {v1, v12, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v8, v11, v7, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    .line 426
    iget v1, v7, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v1, v1, 0x1e

    .line 427
    iget-object v6, v11, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v6, v1}, Landroidx/media2/exoplayer/external/Format;->copyWithMaxInputSize(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 428
    iget v6, v11, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    move-wide/from16 v21, v14

    const/4 v14, 0x2

    if-ne v6, v14, :cond_a8

    const-wide/16 v23, 0x0

    cmp-long v6, v9, v23

    if-lez v6, :cond_a8

    iget v6, v7, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sampleCount:I

    const/4 v15, 0x1

    if-le v6, v15, :cond_a9

    .line 431
    iget v6, v7, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sampleCount:I

    int-to-float v6, v6

    long-to-float v7, v9

    const v9, 0x49742400    # 1000000.0f

    div-float/2addr v7, v9

    div-float/2addr v6, v7

    .line 432
    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/Format;->copyWithFrameRate(F)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    goto :goto_a9

    :cond_a8
    const/4 v15, 0x1

    .line 434
    :cond_a9
    :goto_a9
    iget v6, v11, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    .line 435
    invoke-static {v6, v1, v4, v5, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->getFormatWithMetadata(ILandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/metadata/Metadata;Landroidx/media2/exoplayer/external/metadata/Metadata;Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 437
    iget-object v6, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v6, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 439
    iget v1, v11, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    if-ne v1, v14, :cond_c0

    const/4 v1, -0x1

    if-ne v13, v1, :cond_c1

    .line 440
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_c1

    :cond_c0
    const/4 v1, -0x1

    .line 442
    :cond_c1
    :goto_c1
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v19

    move/from16 v6, v20

    move-wide/from16 v14, v21

    const/4 v7, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_4b

    .line 444
    :cond_d4
    iput v13, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    .line 445
    iput-wide v14, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->durationUs:J

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 446
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 447
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->calculateAccumulatedSampleSizes([Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;)[[J

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    .line 449
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    .line 450
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    return-void
.end method

.method private readAtomHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
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

    .line 278
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_2a

    .line 280
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v3, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_13

    return v3

    .line 283
    :cond_13
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 284
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 285
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 286
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomType:I

    .line 289
    :cond_2a
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_47

    .line 292
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v2, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 293
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 294
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    goto :goto_78

    :cond_47
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_78

    .line 298
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_69

    .line 299
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    .line 300
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    :cond_69
    cmp-long v0, v4, v6

    if-eqz v0, :cond_78

    .line 303
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 307
    :cond_78
    :goto_78
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_fa

    .line 311
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 312
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v2, v4

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 313
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v4, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v4, v5, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 314
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-nez v0, :cond_ad

    .line 315
    invoke-direct {p0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    goto :goto_f9

    .line 317
    :cond_ad
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomType:I

    const v2, 0x6d657461

    if-ne v0, v2, :cond_b7

    .line 318
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V

    .line 321
    :cond_b7
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_f9

    .line 323
    :cond_bb
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result p1

    if-eqz p1, :cond_f4

    .line 326
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne p1, v2, :cond_c9

    const/4 p1, 0x1

    goto :goto_ca

    :cond_c9
    const/4 p1, 0x0

    :goto_ca
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 327
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_d8

    const/4 p1, 0x1

    goto :goto_d9

    :cond_d8
    const/4 p1, 0x0

    :goto_d9
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 328
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 329
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_f9

    :cond_f4
    const/4 p1, 0x0

    .line 332
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 333
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->parserState:I

    :goto_f9
    return v1

    .line 308
    :cond_fa
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readAtomPayload(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)Z
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "positionHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 346
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 347
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 349
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_46

    .line 350
    iget-object p2, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v1, v0

    invoke-interface {p1, p2, v4, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 351
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomType:I

    const p2, 0x66747970

    if-ne p1, p2, :cond_29

    .line 352
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->processFtypAtom(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    goto :goto_51

    .line 353
    :cond_29
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_51

    .line 354
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    new-instance p2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomType:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;-><init>(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->add(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_51

    :cond_46
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_53

    long-to-int p2, v0

    .line 359
    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    :cond_51
    :goto_51
    const/4 p1, 0x0

    goto :goto_5b

    .line 361
    :cond_53
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    const/4 p1, 0x1

    .line 365
    :goto_5b
    invoke-direct {p0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    if-eqz p1, :cond_66

    .line 366
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_66

    goto :goto_67

    :cond_66
    const/4 v5, 0x0

    :goto_67
    return v5
.end method

.method private readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "positionHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 504
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 505
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_24

    .line 506
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->getTrackIndexOfNextReadSample(J)I

    move-result v2

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    if-ne v2, v3, :cond_12

    return v3

    .line 510
    :cond_12
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v2, v4, v2

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v4, "audio/ac4"

    .line 511
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->isAc4HeaderRequired:Z

    .line 513
    :cond_24
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    aget-object v2, v2, v4

    .line 514
    iget-object v4, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 515
    iget v5, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 516
    iget-object v6, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v7, v6, v5

    .line 517
    iget-object v6, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v6, v6, v5

    sub-long v0, v7, v0

    .line 518
    iget v9, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    int-to-long v9, v9

    add-long/2addr v0, v9

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    cmp-long v12, v0, v9

    if-ltz v12, :cond_10f

    const-wide/32 v9, 0x40000

    cmp-long v12, v0, v9

    if-ltz v12, :cond_50

    goto/16 :goto_10f

    .line 523
    :cond_50
    iget-object p2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget p2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->sampleTransformation:I

    if-ne p2, v11, :cond_5b

    const-wide/16 v7, 0x8

    add-long/2addr v0, v7

    add-int/lit8 v6, v6, -0x8

    :cond_5b
    long-to-int p2, v0

    .line 529
    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 530
    iget-object p2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget p2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v0, 0x0

    if-eqz p2, :cond_be

    .line 533
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 534
    aput-byte v0, p2, v0

    .line 535
    aput-byte v0, p2, v11

    const/4 v1, 0x2

    .line 536
    aput-byte v0, p2, v1

    .line 537
    iget-object v1, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 538
    iget-object v7, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget v7, v7, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v8, 0x4

    rsub-int/lit8 v7, v7, 0x4

    .line 542
    :goto_7c
    iget v9, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v9, v6, :cond_ef

    .line 543
    iget v9, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v9, :cond_af

    .line 545
    invoke-interface {p1, p2, v7, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 546
    iget-object v9, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v9, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 547
    iget-object v9, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->nalLength:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v9

    if-ltz v9, :cond_a7

    .line 551
    iput v9, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 553
    iget-object v9, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v9, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 554
    iget-object v9, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v4, v9, v8}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 555
    iget v9, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v9, v8

    iput v9, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v7

    goto :goto_7c

    .line 549
    :cond_a7
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "Invalid NAL length"

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 559
    :cond_af
    invoke-interface {v4, p1, v9, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result v9

    .line 560
    iget v10, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v10, v9

    iput v10, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 561
    iget v10, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v10, v9

    iput v10, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_7c

    .line 565
    :cond_be
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->isAc4HeaderRequired:Z

    if-eqz p2, :cond_da

    .line 566
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v6, p2}, Landroidx/media2/exoplayer/external/audio/Ac4Util;->getAc4SampleHeader(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 567
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result p2

    .line 568
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v4, v1, p2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    add-int/2addr v6, p2

    .line 570
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v1, p2

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 571
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->isAc4HeaderRequired:Z

    .line 573
    :cond_da
    :goto_da
    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge p2, v6, :cond_ef

    sub-int p2, v6, p2

    .line 574
    invoke-interface {v4, p1, p2, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result p2

    .line 575
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v1, p2

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 576
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v1, p2

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_da

    :cond_ef
    move v8, v6

    .line 579
    iget-object p1, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v6, p1, v5

    iget-object p1, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->flags:[I

    aget p1, p1, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, v6

    move v7, p1

    invoke-interface/range {v4 .. v10}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 581
    iget p1, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/2addr p1, v11

    iput p1, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 582
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 583
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 584
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    return v0

    .line 520
    :cond_10f
    :goto_10f
    iput-wide v7, p2, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    return v11
.end method

.method private static shouldParseContainerAtom(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atom"
        }
    .end annotation

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_26

    const v0, 0x7472616b

    if-eq p0, v0, :cond_26

    const v0, 0x6d646961

    if-eq p0, v0, :cond_26

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_26

    const v0, 0x7374626c

    if-eq p0, v0, :cond_26

    const v0, 0x65647473

    if-eq p0, v0, :cond_26

    const v0, 0x6d657461

    if-ne p0, v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 p0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p0, 0x1

    :goto_27
    return p0
.end method

.method private static shouldParseLeafAtom(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atom"
        }
    .end annotation

    const v0, 0x6d646864

    if-eq p0, v0, :cond_5d

    const v0, 0x6d766864

    if-eq p0, v0, :cond_5d

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_5d

    const v0, 0x73747364

    if-eq p0, v0, :cond_5d

    const v0, 0x73747473

    if-eq p0, v0, :cond_5d

    const v0, 0x73747373

    if-eq p0, v0, :cond_5d

    const v0, 0x63747473

    if-eq p0, v0, :cond_5d

    const v0, 0x656c7374

    if-eq p0, v0, :cond_5d

    const v0, 0x73747363

    if-eq p0, v0, :cond_5d

    const v0, 0x7374737a

    if-eq p0, v0, :cond_5d

    const v0, 0x73747a32

    if-eq p0, v0, :cond_5d

    const v0, 0x7374636f

    if-eq p0, v0, :cond_5d

    const v0, 0x636f3634

    if-eq p0, v0, :cond_5d

    const v0, 0x746b6864

    if-eq p0, v0, :cond_5d

    const v0, 0x66747970

    if-eq p0, v0, :cond_5d

    const v0, 0x75647461

    if-eq p0, v0, :cond_5d

    const v0, 0x6b657973

    if-eq p0, v0, :cond_5d

    const v0, 0x696c7374

    if-ne p0, v0, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 p0, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 p0, 0x1

    :goto_5e
    return p0
.end method

.method private updateSampleIndices(J)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeUs"
        }
    .end annotation

    .line 643
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 644
    iget-object v4, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    .line 645
    invoke-virtual {v4, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_15

    .line 648
    invoke-virtual {v4, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v5

    .line 650
    :cond_15
    iput v5, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1a
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 214
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeUs"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v1, v0

    if-nez v1, :cond_d

    .line 220
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    sget-object p2, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->START:Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object p1

    :cond_d
    const-wide/16 v1, -0x1

    .line 229
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v3, v4, :cond_53

    .line 230
    aget-object v0, v0, v3

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    .line 231
    invoke-static {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;J)I

    move-result v3

    if-ne v3, v4, :cond_2b

    .line 233
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    sget-object p2, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->START:Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object p1

    .line 235
    :cond_2b
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v8, v7, v3

    .line 237
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v10, v7, v3

    cmp-long v7, v8, p1

    if-gez v7, :cond_4e

    .line 238
    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->sampleCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_4e

    .line 239
    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result p1

    if-eq p1, v4, :cond_4e

    if-eq p1, v3, :cond_4e

    .line 241
    iget-object p2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v1, p2, p1

    .line 242
    iget-object p2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide p1, p2, p1

    goto :goto_50

    :cond_4e
    move-wide p1, v1

    move-wide v1, v5

    :goto_50
    move-wide v3, p1

    move-wide p1, v8

    goto :goto_5a

    :cond_53
    const-wide v10, 0x7fffffffffffffffL

    move-wide v3, v1

    move-wide v1, v5

    :goto_5a
    const/4 v0, 0x0

    .line 251
    :goto_5b
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v8, v7

    if-ge v0, v8, :cond_78

    .line 252
    iget v8, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    if-eq v0, v8, :cond_75

    .line 253
    aget-object v7, v7, v0

    iget-object v7, v7, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    .line 254
    invoke-static {v7, p1, p2, v10, v11}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v8

    cmp-long v10, v1, v5

    if-eqz v10, :cond_74

    .line 256
    invoke-static {v7, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v3

    :cond_74
    move-wide v10, v8

    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 261
    :cond_78
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {v0, p1, p2, v10, v11}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v1, v5

    if-nez p1, :cond_87

    .line 263
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object p1

    .line 265
    :cond_87
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    invoke-direct {p1, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    .line 266
    new-instance p2, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    invoke-direct {p2, v0, p1}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object p2
.end method

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

    .line 159
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    return-void
.end method

.method public isSeekable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .registers 5
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

    .line 186
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->parserState:I

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 198
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 200
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 193
    :cond_15
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->readAtomPayload(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 188
    :cond_1c
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->readAtomHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public seek(JJ)V
    .registers 8
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

    .line 164
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, -0x1

    .line 166
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 167
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 168
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 169
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->isAc4HeaderRequired:Z

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1b

    .line 171
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_22

    .line 172
    :cond_1b
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor$Mp4Track;

    if-eqz p1, :cond_22

    .line 173
    invoke-direct {p0, p3, p4}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;->updateSampleIndices(J)V

    :cond_22
    :goto_22
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

    .line 154
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Sniffer;->sniffUnfragmented(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method
