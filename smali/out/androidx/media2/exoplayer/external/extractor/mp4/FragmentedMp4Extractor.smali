.class public Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
    }
.end annotation


# static fields
.field private static final EMSG_FORMAT:Landroidx/media2/exoplayer/external/Format;

.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B


# instance fields
.field private final additionalEmsgTrackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private cea608TrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private durationUs:J

.field private emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private endOfMdatPosition:J

.field private extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private final flags:I

.field private haveOutputSeekMap:Z

.field private isAc4HeaderRequired:Z

.field private final nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final nalPrefix:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private parserState:I

.field private pendingMetadataSampleBytes:I

.field private final pendingMetadataSampleInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingSeekTimeUs:J

.field private processSeiNalUnitPayload:Z

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final scratchBytes:[B

.field private segmentIndexEarliestPresentationTimeUs:J

.field private final sideloadedDrmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field private final sideloadedTrack:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

.field private final timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

.field private final trackBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 70
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 119
    fill-array-data v0, :array_1c

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    const/4 v0, 0x0

    const-string v1, "application/x-emsg"

    const-wide v2, 0x7fffffffffffffffL

    .line 122
    invoke-static {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroidx/media2/exoplayer/external/Format;

    return-void

    :array_1c
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

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

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flags",
            "timestampAdjuster"
        }
    .end annotation

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/drm/DrmInitData;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/drm/DrmInitData;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "flags",
            "timestampAdjuster",
            "sideloadedTrack",
            "sideloadedDrmInitData"
        }
    .end annotation

    .line 216
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "flags",
            "timestampAdjuster",
            "sideloadedTrack",
            "sideloadedDrmInitData",
            "closedCaptionFormats"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Track;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 235
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V
    .registers 8
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
            "flags",
            "timestampAdjuster",
            "sideloadedTrack",
            "sideloadedDrmInitData",
            "closedCaptionFormats",
            "additionalEmsgTrackOutput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Track;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Landroidx/media2/exoplayer/external/extractor/TrackOutput;",
            ")V"
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_8

    const/16 v0, 0x8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    or-int/2addr p1, v0

    .line 259
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->flags:I

    .line 260
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 261
    iput-object p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    .line 262
    iput-object p4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sideloadedDrmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 263
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    .line 264
    iput-object p6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 265
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 266
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    sget-object p3, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, p3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 267
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 268
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    new-array p1, p2, [B

    .line 269
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    .line 270
    new-instance p2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p2, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 271
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 272
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 273
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 274
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 275
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 276
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 277
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method private enterReadingAtomHeaderState()V
    .registers 2

    const/4 v0, 0x0

    .line 341
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 342
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method private getDefaultSampleValues(Landroid/util/SparseArray;I)Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultSampleValuesArray",
            "trackId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;",
            ">;I)",
            "Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;"
        }
    .end annotation

    .line 546
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 p2, 0x0

    .line 549
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    return-object p1

    .line 551
    :cond_f
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    return-object p1
.end method

.method private static getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leafChildren"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;",
            ">;)",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;"
        }
    .end annotation

    .line 1389
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_7
    if-ge v2, v0, :cond_3c

    .line 1391
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    .line 1392
    iget v5, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_39

    if-nez v3, :cond_1d

    .line 1394
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1396
    :cond_1d
    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 1397
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_2f

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    .line 1399
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 1401
    :cond_2f
    new-instance v6, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3c
    if-nez v3, :cond_3f

    goto :goto_44

    .line 1405
    :cond_3f
    new-instance v1, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-direct {v1, v3}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/util/List;)V

    :goto_44
    return-object v1
.end method

.method private static getNextFragmentRun(Landroid/util/SparseArray;)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackBundles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 1370
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v0, :cond_2d

    .line 1372
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1373
    iget v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget-object v7, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget v7, v7, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v6, v7, :cond_1c

    goto :goto_2a

    .line 1376
    :cond_1c
    iget-object v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v7, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v7, v6, v7

    cmp-long v6, v7, v2

    if-gez v6, :cond_2a

    move-object v1, v5

    move-wide v2, v7

    :cond_2a
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_2d
    return-object v1
.end method

.method private static getTrackBundle(Landroid/util/SparseArray;I)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trackBundles",
            "trackId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I)",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 877
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 p1, 0x0

    .line 881
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    return-object p0

    .line 883
    :cond_f
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    return-object p0
.end method

.method static final synthetic lambda$static$0$FragmentedMp4Extractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 71
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeInitExtraTracks()V
    .registers 9

    .line 576
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_45

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 577
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 579
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    if-eqz v3, :cond_13

    aput-object v3, v0, v1

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 582
    :goto_14
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->flags:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_2d

    .line 583
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 584
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-interface {v6, v7, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v5

    .line 586
    :cond_2d
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 588
    array-length v3, v0

    const/4 v4, 0x0

    :goto_39
    if-ge v4, v3, :cond_45

    aget-object v5, v0, v4

    .line 589
    sget-object v6, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v5, v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 592
    :cond_45
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    if-nez v0, :cond_79

    .line 593
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 594
    :goto_53
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v0, v0

    if-ge v1, v0, :cond_79

    .line 595
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    .line 596
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v0, v3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 597
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_79
    return-void
.end method

.method private onContainerAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 465
    iget v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->type:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_b

    .line 466
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_29

    .line 467
    :cond_b
    iget v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->type:I

    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_16

    .line 468
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_29

    .line 469
    :cond_16
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 470
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->add(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V

    :cond_29
    :goto_29
    return-void
.end method

.method private onEmsgLeafAtomRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atom"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    if-eqz v0, :cond_8c

    array-length v0, v0

    if-nez v0, :cond_9

    goto/16 :goto_8c

    :cond_9
    const/16 v0, 0xc

    .line 610
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 611
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    .line 612
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 613
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 614
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    .line 616
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    invoke-static/range {v1 .. v6}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    .line 620
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 621
    iget-object v4, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v5, v3, -0x4

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 622
    iget-object v4, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v5, v3, -0x3

    aput-byte v6, v4, v5

    .line 623
    iget-object v4, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v5, v3, -0x2

    aput-byte v6, v4, v5

    .line 624
    iget-object v4, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v3, v3, -0x1

    aput-byte v6, v4, v3

    .line 627
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_48
    if-ge v5, v4, :cond_55

    aget-object v7, v3, v5

    .line 628
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 629
    invoke-interface {v7, p1, v8}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    .line 633
    :cond_55
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v3, v9

    if-eqz p1, :cond_7d

    add-long/2addr v3, v1

    .line 635
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    if-eqz p1, :cond_69

    .line 636
    invoke-virtual {p1, v3, v4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v3

    :cond_69
    move-wide v9, v3

    .line 638
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v0, p1

    const/4 v11, 0x0

    :goto_6e
    if-ge v11, v0, :cond_8c

    aget-object v1, p1, v11

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v9

    move v5, v8

    .line 639
    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6e

    .line 644
    :cond_7d
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v0, v1, v2, v8}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JI)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 646
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr p1, v8

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    :cond_8c
    :goto_8c
    return-void
.end method

.method private onLeafAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;J)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leaf",
            "inputPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 453
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->add(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_44

    .line 454
    :cond_14
    iget v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    const v1, 0x73696478

    if-ne v0, v1, :cond_38

    .line 455
    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)Landroid/util/Pair;

    move-result-object p1

    .line 456
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 457
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/exoplayer/external/extractor/SeekMap;

    invoke-interface {p2, p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    const/4 p1, 0x1

    .line 458
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto :goto_44

    .line 459
    :cond_38
    iget p2, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    const p3, 0x656d7367

    if-ne p2, p3, :cond_44

    .line 460
    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->onEmsgLeafAtomRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    :cond_44
    :goto_44
    return-void
.end method

.method private onMoofContainerAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moof"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    invoke-static {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    .line 557
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sideloadedDrmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v0, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    .line 558
    :cond_f
    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object p1

    :goto_15
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 560
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_2f

    .line 562
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v3, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->updateDrmInitData(Landroidx/media2/exoplayer/external/drm/DrmInitData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 566
    :cond_2f
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v3

    if-eqz p1, :cond_54

    .line 567
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_40
    if-ge v0, p1, :cond_52

    .line 569
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    invoke-virtual {v1, v5, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->seek(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 571
    :cond_52
    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    :cond_54
    return-void
.end method

.method private onMoovContainerAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V
    .registers 21
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

    .line 475
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    const-string v5, "Unexpected moov box."

    invoke-static {v2, v5}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 477
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sideloadedDrmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v2, :cond_17

    goto :goto_1d

    .line 478
    :cond_17
    iget-object v2, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v2

    :goto_1d
    const v5, 0x6d766578

    .line 481
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v5

    .line 482
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 484
    iget-object v8, v5, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move-wide v13, v6

    const/4 v6, 0x0

    :goto_36
    if-ge v6, v8, :cond_6e

    .line 486
    iget-object v7, v5, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    .line 487
    iget v9, v7, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    const v10, 0x74726578

    if-ne v9, v10, :cond_5d

    .line 488
    iget-object v7, v7, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v7

    .line 489
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v12, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6b

    .line 490
    :cond_5d
    iget v9, v7, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    const v10, 0x6d656864

    if-ne v9, v10, :cond_6b

    .line 491
    iget-object v7, v7, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J

    move-result-wide v9

    move-wide v13, v9

    :cond_6b
    :goto_6b
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 496
    :cond_6e
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 497
    iget-object v5, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/4 v10, 0x0

    :goto_7a
    if-ge v10, v11, :cond_c2

    .line 499
    iget-object v5, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    .line 500
    iget v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->type:I

    const v7, 0x7472616b

    if-ne v6, v7, :cond_b9

    const v6, 0x6d766864

    .line 505
    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_9b

    const/16 v16, 0x1

    goto :goto_9d

    :cond_9b
    const/16 v16, 0x0

    :goto_9d
    const/16 v17, 0x0

    move-wide v7, v13

    move-object v9, v2

    move/from16 v18, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move/from16 v11, v17

    .line 503
    invoke-static/range {v5 .. v11}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseTrak(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;JLandroidx/media2/exoplayer/external/drm/DrmInitData;ZZ)Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    move-result-object v5

    .line 502
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->modifyTrack(Landroidx/media2/exoplayer/external/extractor/mp4/Track;)Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    move-result-object v5

    if-eqz v5, :cond_bd

    .line 511
    iget v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->id:I

    invoke-virtual {v15, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_bd

    :cond_b9
    move/from16 v18, v10

    move/from16 v16, v11

    :cond_bd
    :goto_bd
    add-int/lit8 v10, v18, 0x1

    move/from16 v11, v16

    goto :goto_7a

    .line 516
    :cond_c2
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 517
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_109

    :goto_ce
    if-ge v4, v1, :cond_100

    .line 520
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    .line 521
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    iget v6, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    invoke-interface {v5, v4, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    .line 522
    iget v5, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->id:I

    invoke-direct {v0, v12, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;)V

    .line 523
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v6, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->id:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 524
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->durationUs:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_ce

    .line 526
    :cond_100
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->maybeInitExtraTracks()V

    .line 527
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    goto :goto_134

    .line 529
    :cond_109
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_112

    goto :goto_113

    :cond_112
    const/4 v3, 0x0

    :goto_113
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    :goto_116
    if-ge v4, v1, :cond_134

    .line 531
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    .line 532
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v5, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->id:I

    .line 533
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v5, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->id:I

    .line 534
    invoke-direct {v0, v12, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_116

    :cond_134
    :goto_134
    return-void
.end method

.method private outputPendingMetadataSamples(J)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampleTimeUs"
        }
    .end annotation

    .line 1344
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1345
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    .line 1346
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 1347
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->presentationTimeDeltaUs:J

    add-long/2addr v1, p1

    .line 1348
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    if-eqz v3, :cond_22

    .line 1349
    invoke-virtual {v3, v1, v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v1

    .line 1351
    :cond_22
    iget-object v10, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v11, v10

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_27
    if-ge v12, v11, :cond_0

    aget-object v3, v10, v12

    const/4 v6, 0x1

    .line 1352
    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    iget v8, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    const/4 v9, 0x0

    move-wide v4, v1

    invoke-interface/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_27

    :cond_38
    return-void
.end method

.method private static parseMehd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mehd"
        }
    .end annotation

    const/16 v0, 0x8

    .line 669
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 670
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 671
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    if-nez v0, :cond_14

    .line 672
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_18

    :cond_14
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_18
    return-wide v0
.end method

.method private static parseMoof(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "moof",
            "trackBundleArray",
            "flags",
            "extendedTypeScratch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 677
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 679
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    .line 681
    iget v3, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->type:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_1b

    .line 682
    invoke-static {v2, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method private static parseSaio(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "saio",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 816
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 817
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 818
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_14

    .line 820
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 823
    :cond_14
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    if-ne v0, v3, :cond_2f

    .line 829
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 830
    iget-wide v1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v0, :cond_27

    .line 831
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    goto :goto_2b

    :cond_27
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    :goto_2b
    add-long/2addr v1, v3

    iput-wide v1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    return-void

    .line 826
    :cond_2f
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    const/16 p1, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unexpected saio entry count: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseSaiz(Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "encryptionBox",
            "saiz",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 779
    iget p0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    const/16 v0, 0x8

    .line 780
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 781
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 782
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_16

    .line 784
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 786
    :cond_16
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 788
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 789
    iget v3, p2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleCount:I

    if-ne v1, v3, :cond_4b

    const/4 v3, 0x0

    if-nez v0, :cond_3a

    .line 795
    iget-object v0, p2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_29
    if-ge v4, v1, :cond_47

    .line 797
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_34

    const/4 v6, 0x1

    goto :goto_35

    :cond_34
    const/4 v6, 0x0

    .line 799
    :goto_35
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_3a
    if-le v0, p0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    mul-int v0, v0, v1

    add-int/lit8 v5, v0, 0x0

    .line 804
    iget-object p0, p2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 806
    :cond_47
    invoke-virtual {p2, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    return-void

    .line 790
    :cond_4b
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    iget p1, p2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleCount:I

    const/16 p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_6f

    :goto_6e
    throw p0

    :goto_6f
    goto :goto_6e
.end method

.method private static parseSenc(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILandroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "senc",
            "offset",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1011
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1012
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 1013
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_54

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 1021
    :goto_19
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 1022
    iget v2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleCount:I

    if-ne v1, v2, :cond_31

    .line 1026
    iget-object v2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1027
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 1028
    invoke-virtual {p2, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->fillEncryptionData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    return-void

    .line 1023
    :cond_31
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    iget p1, p2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleCount:I

    const/16 p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1017
    :cond_54
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseSenc(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "senc",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1006
    invoke-static {p0, v0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILandroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method private static parseSgpd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/String;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sbgp",
            "sgpd",
            "schemeType",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/16 v3, 0x8

    .line 1033
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1034
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 1035
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    const v6, 0x73656967

    if-eq v5, v6, :cond_19

    return-void

    .line 1039
    :cond_19
    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v4

    const/4 v5, 0x4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_24

    .line 1040
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1042
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    if-ne v0, v7, :cond_aa

    .line 1046
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1047
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1048
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    if-eq v3, v6, :cond_38

    return-void

    .line 1052
    :cond_38
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    if-ne v0, v7, :cond_51

    .line 1054
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_49

    goto :goto_57

    .line 1055
    :cond_49
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    const/4 v3, 0x2

    if-lt v0, v3, :cond_57

    .line 1058
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1060
    :cond_57
    :goto_57
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    const-wide/16 v8, 0x1

    cmp-long v0, v3, v8

    if-nez v0, :cond_a2

    .line 1064
    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1065
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v3, v0, 0xf0

    shr-int/lit8 v13, v3, 0x4

    and-int/lit8 v14, v0, 0xf

    .line 1068
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v7, :cond_77

    const/4 v9, 0x1

    goto :goto_78

    :cond_77
    const/4 v9, 0x0

    :goto_78
    if-nez v9, :cond_7b

    return-void

    .line 1072
    :cond_7b
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    const/16 v0, 0x10

    new-array v12, v0, [B

    .line 1074
    invoke-virtual {v1, v12, v3, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    const/4 v0, 0x0

    if-nez v11, :cond_94

    .line 1077
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1078
    new-array v4, v0, [B

    .line 1079
    invoke-virtual {v1, v4, v3, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    move-object v15, v4

    goto :goto_95

    :cond_94
    move-object v15, v0

    .line 1081
    :goto_95
    iput-boolean v7, v2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 1082
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    move-object v8, v0

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v15}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    return-void

    .line 1061
    :cond_a2
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_aa
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseSidx(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)Landroid/util/Pair;
    .registers 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "atom",
            "inputPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroidx/media2/exoplayer/external/extractor/ChunkIndex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 1096
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1097
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1098
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    const/4 v2, 0x4

    .line 1100
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1101
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    if-nez v1, :cond_22

    .line 1105
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 1106
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    goto :goto_2a

    .line 1108
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    .line 1109
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v5

    :goto_2a
    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    const-wide/32 v5, 0xf4240

    move-wide v3, v11

    move-wide v7, v9

    .line 1111
    invoke-static/range {v3 .. v8}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v15

    const/4 v1, 0x2

    .line 1114
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1116
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 1117
    new-array v7, v1, [I

    .line 1118
    new-array v8, v1, [J

    .line 1119
    new-array v5, v1, [J

    .line 1120
    new-array v6, v1, [J

    const/4 v3, 0x0

    move-wide v3, v11

    move-wide/from16 v17, v15

    const/4 v11, 0x0

    :goto_4c
    if-ge v11, v1, :cond_a3

    .line 1125
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v12

    const/high16 v19, -0x80000000

    and-int v19, v12, v19

    if-nez v19, :cond_9b

    .line 1131
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v12, v12, v21

    .line 1133
    aput v12, v7, v11

    .line 1134
    aput-wide v13, v8, v11

    .line 1138
    aput-wide v17, v6, v11

    add-long v17, v3, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v3, v17

    move-object v12, v5

    move-object v2, v6

    move-wide/from16 v5, v19

    move/from16 p1, v1

    move-object v1, v7

    move-object/from16 v22, v8

    move-wide v7, v9

    .line 1140
    invoke-static/range {v3 .. v8}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    .line 1141
    aget-wide v5, v2, v11

    sub-long v5, v3, v5

    aput-wide v5, v12, v11

    const/4 v5, 0x4

    .line 1143
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1144
    aget v6, v1, v11

    int-to-long v6, v6

    add-long/2addr v13, v6

    add-int/lit8 v11, v11, 0x1

    move-object v7, v1

    move-object v6, v2

    move-object v5, v12

    move-object/from16 v8, v22

    const/4 v2, 0x4

    move/from16 v1, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, v17

    move-wide/from16 v17, v23

    goto :goto_4c

    .line 1129
    :cond_9b
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Unhandled indirect reference"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a3
    move-object v12, v5

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v22, v8

    .line 1147
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/ChunkIndex;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v12, v2}, Landroidx/media2/exoplayer/external/extractor/ChunkIndex;-><init>([I[J[J[J)V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseTfdt(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tfdt"
        }
    .end annotation

    const/16 v0, 0x8

    .line 893
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 894
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 895
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 896
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    goto :goto_19

    :cond_15
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    :goto_19
    return-wide v0
.end method

.method private static parseTfhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroid/util/SparseArray;)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tfhd",
            "trackBundles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 846
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 847
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 848
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 849
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 850
    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->getTrackBundle(Landroid/util/SparseArray;I)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object p1

    if-nez p1, :cond_19

    const/4 p0, 0x0

    return-object p0

    :cond_19
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_29

    .line 855
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v1

    .line 856
    iget-object v3, p1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iput-wide v1, v3, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->dataPosition:J

    .line 857
    iget-object v3, p1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iput-wide v1, v3, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 860
    :cond_29
    iget-object v1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_36

    .line 863
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    :cond_36
    iget v2, v1, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    :goto_38
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_41

    .line 865
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    goto :goto_43

    :cond_41
    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_43
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4c

    .line 867
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    goto :goto_4e

    :cond_4c
    iget v4, v1, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->size:I

    :goto_4e
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_57

    .line 869
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    goto :goto_59

    :cond_57
    iget p0, v1, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->flags:I

    .line 870
    :goto_59
    iget-object v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    invoke-direct {v1, v2, v3, v4, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->header:Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    return-object p1
.end method

.method private static parseTraf(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "traf",
            "trackBundleArray",
            "flags",
            "extendedTypeScratch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const v0, 0x74666864

    .line 692
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 693
    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroid/util/SparseArray;)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object p1

    if-nez p1, :cond_10

    return-void

    .line 698
    :cond_10
    iget-object v0, p1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    .line 699
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 700
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    const v3, 0x74666474

    .line 702
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    if-eqz v4, :cond_2e

    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_2e

    .line 704
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J

    move-result-wide v1

    .line 707
    :cond_2e
    invoke-static {p0, p1, v1, v2, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseTruns(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JI)V

    .line 709
    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget-object p2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->header:Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    iget p2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 710
    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    move-result-object p1

    const p2, 0x7361697a

    .line 712
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object p2

    if-eqz p2, :cond_49

    .line 714
    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {p1, p2, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V

    :cond_49
    const p2, 0x7361696f

    .line 717
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object p2

    if-eqz p2, :cond_57

    .line 719
    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V

    :cond_57
    const p2, 0x73656e63

    .line 722
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object p2

    if-eqz p2, :cond_65

    .line 724
    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V

    :cond_65
    const p2, 0x73626770

    .line 727
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object p2

    const v1, 0x73677064

    .line 728
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    if-eqz p2, :cond_84

    if-eqz v1, :cond_84

    .line 730
    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    if-eqz p1, :cond_80

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_81

    :cond_80
    const/4 p1, 0x0

    :goto_81
    invoke-static {p2, v1, p1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseSgpd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/String;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V

    .line 734
    :cond_84
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_8b
    if-ge p2, p1, :cond_a4

    .line 736
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    .line 737
    iget v2, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    const v3, 0x75756964

    if-ne v2, v3, :cond_a1

    .line 738
    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v1, v0, p3}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;[B)V

    :cond_a1
    add-int/lit8 p2, p2, 0x1

    goto :goto_8b

    :cond_a4
    return-void
.end method

.method private static parseTrex(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 654
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 655
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 656
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 657
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 658
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 659
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 661
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    invoke-direct {v4, v1, v2, v3, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseTrun(Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IJILandroidx/media2/exoplayer/external/util/ParsableByteArray;I)I
    .registers 38
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
            "trackBundle",
            "index",
            "decodeTime",
            "flags",
            "trun",
            "trackRunStart"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p5

    .line 912
    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 913
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 914
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 916
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    .line 917
    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    .line 918
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->header:Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    .line 920
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    aput v6, v5, p1

    .line 921
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->dataPosition:J

    aput-wide v6, v5, p1

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_35

    .line 923
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunDataPosition:[J

    aget-wide v6, v5, p1

    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v5, p1

    :cond_35
    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3d

    const/4 v5, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v5, 0x0

    .line 927
    :goto_3e
    iget v8, v4, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->flags:I

    if-eqz v5, :cond_46

    .line 929
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    :cond_46
    and-int/lit16 v9, v1, 0x100

    if-eqz v9, :cond_4c

    const/4 v9, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v9, 0x0

    :goto_4d
    and-int/lit16 v10, v1, 0x200

    if-eqz v10, :cond_53

    const/4 v10, 0x1

    goto :goto_54

    :cond_53
    const/4 v10, 0x0

    :goto_54
    and-int/lit16 v11, v1, 0x400

    if-eqz v11, :cond_5a

    const/4 v11, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v11, 0x0

    :goto_5b
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_61

    const/4 v1, 0x1

    goto :goto_62

    :cond_61
    const/4 v1, 0x0

    .line 944
    :goto_62
    iget-object v12, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_83

    iget-object v12, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    array-length v12, v12

    if-ne v12, v7, :cond_83

    iget-object v12, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    aget-wide v15, v12, v6

    cmp-long v12, v15, v13

    if-nez v12, :cond_83

    .line 946
    iget-object v12, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v13, v12, v6

    const-wide/16 v15, 0x3e8

    iget-wide v6, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move-wide/from16 v17, v6

    invoke-static/range {v13 .. v18}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    .line 949
    :cond_83
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 950
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    .line 951
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    .line 952
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    .line 954
    iget v2, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    move/from16 v17, v8

    const/4 v8, 0x2

    if-ne v2, v8, :cond_9a

    const/4 v2, 0x1

    and-int/lit8 v8, p4, 0x1

    if-eqz v8, :cond_9a

    const/16 v16, 0x1

    goto :goto_9c

    :cond_9a
    const/16 v16, 0x0

    .line 957
    :goto_9c
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunLength:[I

    aget v8, v8, p1

    add-int v8, p6, v8

    .line 958
    iget-wide v2, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move-wide/from16 v24, v13

    move-object v14, v12

    if-lez p1, :cond_ac

    .line 959
    iget-wide v12, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    goto :goto_ae

    :cond_ac
    move-wide/from16 v12, p2

    :goto_ae
    move-wide/from16 p1, v12

    move/from16 v12, p6

    :goto_b2
    if-ge v12, v8, :cond_13b

    if-eqz v9, :cond_bb

    .line 962
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    goto :goto_bd

    .line 963
    :cond_bb
    iget v13, v4, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_bd
    if-eqz v10, :cond_c8

    .line 964
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    move/from16 v26, v9

    move/from16 v9, v18

    goto :goto_cc

    :cond_c8
    move/from16 v26, v9

    iget v9, v4, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->size:I

    :goto_cc
    if-nez v12, :cond_d5

    if-eqz v5, :cond_d5

    move/from16 v27, v5

    move/from16 v5, v17

    goto :goto_e4

    :cond_d5
    if-eqz v11, :cond_e0

    .line 966
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v18

    move/from16 v27, v5

    move/from16 v5, v18

    goto :goto_e4

    :cond_e0
    move/from16 v27, v5

    iget v5, v4, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->flags:I

    :goto_e4
    if-eqz v1, :cond_fb

    move/from16 v28, v1

    .line 973
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    move/from16 v29, v10

    move/from16 v30, v11

    int-to-long v10, v1

    const-wide/16 v18, 0x3e8

    mul-long v10, v10, v18

    .line 974
    div-long/2addr v10, v2

    long-to-int v1, v10

    aput v1, v7, v12

    const/4 v1, 0x0

    goto :goto_104

    :cond_fb
    move/from16 v28, v1

    move/from16 v29, v10

    move/from16 v30, v11

    const/4 v1, 0x0

    .line 976
    aput v1, v7, v12

    :goto_104
    const-wide/16 v20, 0x3e8

    move-wide/from16 v18, p1

    move-wide/from16 v22, v2

    .line 979
    invoke-static/range {v18 .. v23}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    sub-long v10, v10, v24

    aput-wide v10, v15, v12

    .line 980
    aput v9, v6, v12

    shr-int/lit8 v5, v5, 0x10

    const/4 v9, 0x1

    and-int/2addr v5, v9

    if-nez v5, :cond_120

    if-eqz v16, :cond_11e

    if-nez v12, :cond_120

    :cond_11e
    const/4 v5, 0x1

    goto :goto_121

    :cond_120
    const/4 v5, 0x0

    .line 981
    :goto_121
    aput-boolean v5, v14, v12

    int-to-long v10, v13

    move-wide/from16 v18, v2

    move-wide/from16 v1, p1

    add-long/2addr v1, v10

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 p1, v1

    move-wide/from16 v2, v18

    move/from16 v9, v26

    move/from16 v5, v27

    move/from16 v1, v28

    move/from16 v10, v29

    move/from16 v11, v30

    goto/16 :goto_b2

    :cond_13b
    move-wide/from16 v1, p1

    .line 985
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    return v8
.end method

.method private static parseTruns(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JI)V
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "traf",
            "trackBundle",
            "decodeTime",
            "flags"
        }
    .end annotation

    move-object v7, p1

    move-object v0, p0

    .line 747
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 748
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    const v10, 0x7472756e

    if-ge v1, v9, :cond_2e

    .line 750
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    .line 751
    iget v5, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v5, v10, :cond_2b

    .line 752
    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v5, 0xc

    .line 753
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 754
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    if-lez v4, :cond_2b

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 761
    :cond_2e
    iput v0, v7, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 762
    iput v0, v7, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 763
    iput v0, v7, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 764
    iget-object v1, v7, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->initTables(II)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_3c
    if-ge v11, v9, :cond_58

    .line 769
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    .line 770
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v2, v10, :cond_55

    add-int/lit8 v12, v1, 0x1

    .line 771
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-object v0, p1

    move-wide v2, p2

    move/from16 v4, p4

    invoke-static/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IJILandroidx/media2/exoplayer/external/util/ParsableByteArray;I)I

    move-result v6

    move v1, v12

    :cond_55
    add-int/lit8 v11, v11, 0x1

    goto :goto_3c

    :cond_58
    return-void
.end method

.method private static parseUuid(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uuid",
            "out",
            "extendedTypeScratch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 991
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 992
    invoke-virtual {p0, p2, v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 995
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_14

    return-void

    .line 1002
    :cond_14
    invoke-static {p0, v1, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILandroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method private processAtomEnded(J)V
    .registers 6
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

    .line 445
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_22

    .line 446
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 448
    :cond_22
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

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

    .line 346
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2a

    .line 348
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v2, v1, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_13

    return v2

    .line 351
    :cond_13
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 352
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 353
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 354
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 357
    :cond_2a
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_47

    .line 360
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 361
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 362
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    goto :goto_78

    :cond_47
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_78

    .line 366
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_69

    .line 367
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    .line 368
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    :cond_69
    cmp-long v0, v4, v6

    if-eqz v0, :cond_78

    .line 371
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 375
    :cond_78
    :goto_78
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_14c

    .line 379
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 380
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v6, 0x6d6f6f66

    if-ne v0, v6, :cond_ac

    .line 382
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_97
    if-ge v6, v0, :cond_ac

    .line 384
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    .line 385
    iput-wide v4, v7, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->atomPosition:J

    .line 386
    iput-wide v4, v7, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 387
    iput-wide v4, v7, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->dataPosition:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_97

    .line 391
    :cond_ac
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v6, 0x6d646174

    const/4 v7, 0x0

    if-ne v0, v6, :cond_d1

    .line 392
    iput-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 393
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    .line 394
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez p1, :cond_cd

    .line 396
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v0, v1, v2, v4, v5}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(JJ)V

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 397
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    :cond_cd
    const/4 p1, 0x2

    .line 399
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v3

    .line 403
    :cond_d1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 404
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    .line 405
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v2, v4, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 406
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_fa

    .line 407
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    goto :goto_143

    .line 410
    :cond_fa
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_143

    .line 412
    :cond_fe
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_139

    .line 413
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-ne p1, v1, :cond_131

    .line 416
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_129

    .line 419
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    long-to-int v0, v6

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 420
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_143

    .line 417
    :cond_129
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 414
    :cond_131
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 423
    :cond_139
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_144

    .line 426
    iput-object v7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 427
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    :goto_143
    return v3

    .line 424
    :cond_144
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 376
    :cond_14c
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_155

    :goto_154
    throw p1

    :goto_155
    goto :goto_154
.end method

.method private readAtomPayload(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V
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

    .line 434
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v1, v0

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int/2addr v1, v0

    .line 435
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    if-eqz v0, :cond_22

    .line 436
    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v2, 0x8

    invoke-interface {p1, v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 437
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->atomData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;-><init>(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;J)V

    goto :goto_25

    .line 439
    :cond_22
    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 441
    :goto_25
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    return-void
.end method

.method private readEncryptionData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V
    .registers 13
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

    .line 1154
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v0, :cond_33

    .line 1156
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    .line 1157
    iget-boolean v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v6, :cond_30

    iget-wide v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_30

    .line 1159
    iget-wide v1, v5, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 1160
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-wide v9, v1

    move-object v1, v3

    move-wide v2, v9

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_33
    if-nez v1, :cond_39

    const/4 p1, 0x3

    .line 1164
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return-void

    .line 1167
    :cond_39
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-ltz v0, :cond_4a

    .line 1171
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 1172
    iget-object v0, v1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->fillEncryptionData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V

    return-void

    .line 1169
    :cond_4a
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "Offset to encryption data was negative."

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_53

    :goto_52
    throw p1

    :goto_53
    goto :goto_52
.end method

.method private readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .registers 19
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1192
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v4, :cond_b1

    .line 1193
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v2, :cond_4f

    .line 1194
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->getNextFragmentRun(Landroid/util/SparseArray;)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v2

    if-nez v2, :cond_32

    .line 1198
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_2a

    .line 1202
    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 1203
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return v7

    .line 1200
    :cond_2a
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1207
    :cond_32
    iget-object v8, v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v9, v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v9, v8, v9

    .line 1210
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v8, v9

    if-gez v8, :cond_4a

    const-string v8, "FragmentedMp4Extractor"

    const-string v9, "Ignoring negative offset to sample data."

    .line 1213
    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 1216
    :cond_4a
    invoke-interface {v1, v8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 1217
    iput-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1220
    :cond_4f
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v8, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v2, v2, v8

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1223
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v8, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    if-ge v2, v8, :cond_7e

    .line 1224
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 1225
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)V

    .line 1226
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_7b

    .line 1227
    iput-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1229
    :cond_7b
    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v6

    .line 1233
    :cond_7e
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->sampleTransformation:I

    if-ne v2, v6, :cond_90

    .line 1234
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/16 v8, 0x8

    sub-int/2addr v2, v8

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1235
    invoke-interface {v1, v8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 1237
    :cond_90
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData()I

    move-result v2

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1238
    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v8, v2

    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1239
    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1240
    iput v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1241
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v8, "audio/ac4"

    .line 1242
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->isAc4HeaderRequired:Z

    .line 1245
    :cond_b1
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;

    .line 1246
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    .line 1247
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v10, v9, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 1248
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1249
    invoke-virtual {v2, v9}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    .line 1250
    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    if-eqz v13, :cond_d1

    .line 1251
    invoke-virtual {v13, v11, v12}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v11

    :cond_d1
    move-wide v14, v11

    .line 1253
    iget v11, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v11, :cond_19a

    .line 1256
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 1257
    aput-byte v7, v11, v7

    .line 1258
    aput-byte v7, v11, v6

    const/4 v12, 0x2

    .line 1259
    aput-byte v7, v11, v12

    .line 1260
    iget v12, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int/2addr v12, v6

    .line 1261
    iget v13, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v13, v13, 0x4

    .line 1265
    :goto_e8
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v4, v3, :cond_1d0

    .line 1266
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v3, :cond_140

    .line 1268
    invoke-interface {v1, v11, v13, v12}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1269
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1270
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    if-lt v3, v6, :cond_138

    add-int/lit8 v3, v3, -0x1

    .line 1274
    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1276
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1277
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v10, v3, v5}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1279
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v10, v3, v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1280
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v3, v3

    if-lez v3, :cond_128

    iget-object v3, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    aget-byte v4, v11, v5

    .line 1281
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->isNalUnitSei(Ljava/lang/String;B)Z

    move-result v3

    if-eqz v3, :cond_128

    const/4 v3, 0x1

    goto :goto_129

    :cond_128
    const/4 v3, 0x0

    :goto_129
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    .line 1282
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1283
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v3, v13

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v3, 0x0

    goto :goto_e8

    .line 1272
    :cond_138
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Invalid NAL length"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1286
    :cond_140
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    if-eqz v4, :cond_185

    .line 1288
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 1289
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v1, v3, v7, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 1290
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v10, v3, v4}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1291
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1293
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v4

    .line 1295
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v6, v8, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v7, "video/hevc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1296
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 1297
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-static {v14, v15, v4, v5}, Landroidx/media2/exoplayer/external/text/cea/CeaUtil;->consume(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;[Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    goto :goto_18a

    :cond_185
    const/4 v4, 0x0

    .line 1300
    invoke-interface {v10, v1, v3, v4}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result v3

    .line 1302
    :goto_18a
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1303
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_e8

    .line 1307
    :cond_19a
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->isAc4HeaderRequired:Z

    if-eqz v3, :cond_1be

    .line 1308
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/audio/Ac4Util;->getAc4SampleHeader(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    .line 1309
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v3

    .line 1310
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v10, v4, v3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 1311
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1312
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    const/4 v3, 0x0

    .line 1313
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->isAc4HeaderRequired:Z

    goto :goto_1bf

    :cond_1be
    const/4 v3, 0x0

    .line 1315
    :goto_1bf
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v4, v5, :cond_1d0

    sub-int/2addr v5, v4

    .line 1316
    invoke-interface {v10, v1, v5, v3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I

    move-result v4

    .line 1317
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v4

    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_1bf

    .line 1321
    :cond_1d0
    iget-object v1, v2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v1, v1, v9

    .line 1326
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$100(Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    move-result-object v2

    if-eqz v2, :cond_1e5

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v1, v3

    .line 1329
    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    move v13, v1

    move-object/from16 v16, v2

    goto :goto_1e8

    :cond_1e5
    move v13, v1

    const/16 v16, 0x0

    .line 1332
    :goto_1e8
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v2, 0x0

    move-wide v11, v14

    move-wide v3, v14

    move v14, v1

    move v15, v2

    invoke-interface/range {v10 .. v16}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 1335
    invoke-direct {v0, v3, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->outputPendingMetadataSamples(J)V

    .line 1336
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_200

    const/4 v1, 0x0

    .line 1337
    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_200
    const/4 v1, 0x3

    .line 1339
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v1, 0x1

    return v1
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

    if-eq p0, v0, :cond_30

    const v0, 0x7472616b

    if-eq p0, v0, :cond_30

    const v0, 0x6d646961

    if-eq p0, v0, :cond_30

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_30

    const v0, 0x7374626c

    if-eq p0, v0, :cond_30

    const v0, 0x6d6f6f66

    if-eq p0, v0, :cond_30

    const v0, 0x74726166

    if-eq p0, v0, :cond_30

    const v0, 0x6d766578

    if-eq p0, v0, :cond_30

    const v0, 0x65647473

    if-ne p0, v0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p0, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 p0, 0x1

    :goto_31
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

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_67

    const v0, 0x6d646864

    if-eq p0, v0, :cond_67

    const v0, 0x6d766864

    if-eq p0, v0, :cond_67

    const v0, 0x73696478

    if-eq p0, v0, :cond_67

    const v0, 0x73747364

    if-eq p0, v0, :cond_67

    const v0, 0x74666474

    if-eq p0, v0, :cond_67

    const v0, 0x74666864

    if-eq p0, v0, :cond_67

    const v0, 0x746b6864

    if-eq p0, v0, :cond_67

    const v0, 0x74726578

    if-eq p0, v0, :cond_67

    const v0, 0x7472756e

    if-eq p0, v0, :cond_67

    const v0, 0x70737368    # 3.013775E29f

    if-eq p0, v0, :cond_67

    const v0, 0x7361697a

    if-eq p0, v0, :cond_67

    const v0, 0x7361696f

    if-eq p0, v0, :cond_67

    const v0, 0x73656e63

    if-eq p0, v0, :cond_67

    const v0, 0x75756964

    if-eq p0, v0, :cond_67

    const v0, 0x73626770

    if-eq p0, v0, :cond_67

    const v0, 0x73677064

    if-eq p0, v0, :cond_67

    const v0, 0x656c7374

    if-eq p0, v0, :cond_67

    const v0, 0x6d656864

    if-eq p0, v0, :cond_67

    const v0, 0x656d7367

    if-ne p0, v0, :cond_65

    goto :goto_67

    :cond_65
    const/4 p0, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 p0, 0x1

    :goto_68
    return p0
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 287
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 288
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    if-eqz v0, :cond_29

    .line 289
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    .line 290
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;

    invoke-direct {v0, v2, v2, v2, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-virtual {v1, p1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;)V

    .line 291
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->maybeInitExtraTracks()V

    .line 293
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    :cond_29
    return-void
.end method

.method protected modifyTrack(Landroidx/media2/exoplayer/external/extractor/mp4/Track;)Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "track"
        }
    .end annotation

    return-object p1
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .registers 4
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

    .line 320
    :cond_0
    :goto_0
    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    if-eqz p2, :cond_1a

    const/4 v0, 0x1

    if-eq p2, v0, :cond_16

    const/4 v0, 0x2

    if-eq p2, v0, :cond_12

    .line 333
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->readSample(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 330
    :cond_12
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V

    goto :goto_0

    .line 327
    :cond_16
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V

    goto :goto_0

    .line 322
    :cond_1a
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1
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

    .line 299
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_18

    .line 301
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 303
    :cond_18
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 304
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 305
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 306
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 307
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->isAc4HeaderRequired:Z

    .line 308
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

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

    .line 282
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Sniffer;->sniffFragmented(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method
