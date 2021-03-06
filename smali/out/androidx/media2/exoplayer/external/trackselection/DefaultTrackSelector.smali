.class public Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.super Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;,
        Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;
    }
.end annotation


# static fields
.field private static final NO_TRACKS:[I


# instance fields
.field private allowMultipleAdaptiveSelections:Z

.field private final parametersReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field

.field private final trackSelectionFactory:Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1286
    sput-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1295
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;-><init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackSelectionFactory"
        }
    .end annotation

    .line 1309
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;-><init>()V

    .line 1310
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->trackSelectionFactory:Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;

    .line 1311
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->DEFAULT:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$300(II)I
    .registers 2

    .line 162
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->compareInts(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(II)I
    .registers 2

    .line 162
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result p0

    return p0
.end method

.method private static compareFormatValues(II)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "second"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    if-ne p1, v0, :cond_d

    const/4 v0, 0x0

    goto :goto_d

    :cond_7
    if-ne p1, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_d

    :cond_b
    sub-int v0, p0, p1

    :cond_d
    :goto_d
    return v0
.end method

.method private static compareInts(II)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "second"
        }
    .end annotation

    if-le p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_9

    :cond_4
    if-le p1, p0, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static filterAdaptiveVideoTrackCountForMimeType(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "formatSupport",
            "requiredAdaptiveSupport",
            "mimeType",
            "maxVideoWidth",
            "maxVideoHeight",
            "maxVideoFrameRate",
            "maxVideoBitrate",
            "selectedTrackIndices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p8

    .line 1775
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_31

    .line 1776
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p0

    .line 1778
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    aget v6, p1, v2

    move-object v5, p3

    move v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 1777
    invoke-static/range {v4 .. v11}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IIIIII)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1786
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_31
    return-void
.end method

.method protected static formatHasNoLanguage(Landroidx/media2/exoplayer/external/Format;)Z
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 2288
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->stringDefinesNoLanguage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getAdaptiveAudioTrackCount(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;ZZ)I
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "formatSupport",
            "configuration",
            "allowMixedMimeTypeAdaptiveness",
            "allowMixedSampleRateAdaptiveness"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2010
    :goto_2
    iget v2, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v0, v2, :cond_17

    .line 2012
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    aget v3, p1, v0

    .line 2011
    invoke-static {v2, v3, p2, p3, p4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupportedAdaptiveAudioTrack(Landroidx/media2/exoplayer/external/Format;ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;ZZ)Z

    move-result v2

    if-eqz v2, :cond_14

    add-int/lit8 v1, v1, 0x1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    return v1
.end method

.method private static getAdaptiveAudioTracks(Landroidx/media2/exoplayer/external/source/TrackGroup;[IZZ)[I
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "formatSupport",
            "allowMixedMimeTypeAdaptiveness",
            "allowMixedSampleRateAdaptiveness"
        }
    .end annotation

    .line 1964
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1965
    :goto_9
    iget v5, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v3, v5, :cond_2d

    .line 1966
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    .line 1967
    new-instance v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    iget v7, v5, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v8, v5, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iget-object v5, v5, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;-><init>(IILjava/lang/String;)V

    .line 1970
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1972
    invoke-static {p0, p1, v6, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getAdaptiveAudioTrackCount(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;ZZ)I

    move-result v5

    if-le v5, v4, :cond_2a

    move v4, v5

    move-object v2, v6

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_2d
    const/4 v0, 0x1

    if-le v4, v0, :cond_52

    .line 1986
    new-array v0, v4, [I

    const/4 v3, 0x0

    .line 1988
    :goto_33
    iget v4, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v1, v4, :cond_51

    .line 1990
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    aget v5, p1, v1

    .line 1992
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    .line 1989
    invoke-static {v4, v5, v6, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupportedAdaptiveAudioTrack(Landroidx/media2/exoplayer/external/Format;ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;ZZ)Z

    move-result v4

    if-eqz v4, :cond_4e

    add-int/lit8 v4, v3, 0x1

    .line 1995
    aput v1, v0, v3

    move v3, v4

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_51
    return-object v0

    .line 2000
    :cond_52
    sget-object p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-object p0
.end method

.method private static getAdaptiveVideoTrackCountForMimeType(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)I
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "formatSupport",
            "requiredAdaptiveSupport",
            "mimeType",
            "maxVideoWidth",
            "maxVideoHeight",
            "maxVideoFrameRate",
            "maxVideoBitrate",
            "selectedTrackIndices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1748
    :goto_2
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_31

    move-object/from16 v2, p8

    .line 1749
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p0

    .line 1751
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    aget v7, p1, v3

    move-object/from16 v6, p3

    move v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    .line 1750
    invoke-static/range {v5 .. v12}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IIIIII)Z

    move-result v3

    if-eqz v3, :cond_2e

    add-int/lit8 v1, v1, 0x1

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_31
    return v1
.end method

.method private static getAdaptiveVideoTracksForGroup(Landroidx/media2/exoplayer/external/source/TrackGroup;[IZIIIIIIIZ)[I
    .registers 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "formatSupport",
            "allowMixedMimeTypes",
            "requiredAdaptiveSupport",
            "maxVideoWidth",
            "maxVideoHeight",
            "maxVideoFrameRate",
            "maxVideoBitrate",
            "viewportWidth",
            "viewportHeight",
            "viewportOrientationMayChange"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 1684
    iget v0, v9, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    const/4 v10, 0x2

    if-ge v0, v10, :cond_a

    .line 1685
    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-object v0

    :cond_a
    move/from16 v0, p8

    move/from16 v1, p9

    move/from16 v2, p10

    .line 1688
    invoke-static {v9, v0, v1, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Landroidx/media2/exoplayer/external/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v11

    .line 1690
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v10, :cond_1d

    .line 1691
    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    if-nez p2, :cond_65

    .line 1697
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move-object v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1699
    :goto_29
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_63

    .line 1700
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1701
    invoke-virtual {v9, v0}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1702
    invoke-virtual {v12, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v8

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v16, v8

    move-object v8, v11

    .line 1704
    invoke-static/range {v0 .. v8}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getAdaptiveVideoTrackCountForMimeType(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)I

    move-result v0

    if-le v0, v15, :cond_60

    move v15, v0

    move-object/from16 v13, v16

    :cond_60
    add-int/lit8 v14, v14, 0x1

    goto :goto_29

    :cond_63
    move-object v3, v13

    goto :goto_66

    :cond_65
    move-object v3, v0

    :goto_66
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v11

    .line 1723
    invoke-static/range {v0 .. v8}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->filterAdaptiveVideoTrackCountForMimeType(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/String;IIIILjava/util/List;)V

    .line 1734
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v10, :cond_81

    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_85

    :cond_81
    invoke-static {v11}, Landroidx/media2/exoplayer/external/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v0

    :goto_85
    return-object v0
.end method

.method protected static getFormatLanguageScore(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "language"
        }
    .end annotation

    .line 2311
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    if-nez p1, :cond_8

    goto :goto_46

    .line 2314
    :cond_8
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_12

    return v2

    .line 2318
    :cond_12
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_44

    .line 2322
    :cond_23
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_43

    .line 2323
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_43

    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 2324
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 p0, 0x1

    return p0

    :cond_43
    return v1

    :cond_44
    :goto_44
    const/4 p0, 0x2

    return p0

    :cond_46
    :goto_46
    return v1
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "orientationMayChange",
            "viewportWidth",
            "viewportHeight",
            "videoWidth",
            "videoHeight"
        }
    .end annotation

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-le p3, p4, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-le p1, p2, :cond_c

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    if-eq v1, p0, :cond_10

    goto :goto_13

    :cond_10
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_13
    mul-int p0, p3, p1

    mul-int v0, p4, p2

    if-lt p0, v0, :cond_23

    .line 2392
    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0, p3}, Landroidx/media2/exoplayer/external/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 2395
    :cond_23
    new-instance p2, Landroid/graphics/Point;

    invoke-static {p0, p4}, Landroidx/media2/exoplayer/external/util/Util;->ceilDivide(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private static getViewportFilteredTrackIndices(Landroidx/media2/exoplayer/external/source/TrackGroup;IIZ)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "viewportWidth",
            "viewportHeight",
            "orientationMayChange"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroup;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2333
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2334
    :goto_9
    iget v3, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v2, v3, :cond_17

    .line 2335
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_84

    if-ne p2, v2, :cond_1f

    goto :goto_84

    :cond_1f
    const v3, 0x7fffffff

    .line 2344
    :goto_22
    iget v4, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v1, v4, :cond_5d

    .line 2345
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    .line 2349
    iget v5, v4, Landroidx/media2/exoplayer/external/Format;->width:I

    if-lez v5, :cond_5a

    iget v5, v4, Landroidx/media2/exoplayer/external/Format;->height:I

    if-lez v5, :cond_5a

    .line 2350
    iget v5, v4, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v6, v4, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-static {p3, p1, p2, v5, v6}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v5

    .line 2352
    iget v6, v4, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v7, v4, Landroidx/media2/exoplayer/external/Format;->height:I

    mul-int v6, v6, v7

    .line 2353
    iget v7, v4, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    const v9, 0x3f7ae148    # 0.98f

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-lt v7, v8, :cond_5a

    iget v4, v4, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float v5, v5, v9

    float-to-int v5, v5

    if-lt v4, v5, :cond_5a

    if-ge v6, v3, :cond_5a

    move v3, v6

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_5d
    if-eq v3, v2, :cond_84

    .line 2365
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_65
    if-ltz p1, :cond_84

    .line 2366
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    .line 2367
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/Format;->getPixelCount()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_7e

    if-le p2, v3, :cond_81

    .line 2369
    :cond_7e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_81
    add-int/lit8 p1, p1, -0x1

    goto :goto_65

    :cond_84
    :goto_84
    return-object v0
.end method

.method protected static isSupported(IZ)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "formatSupport",
            "allowExceedsCapabilities"
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_d

    if-eqz p1, :cond_b

    const/4 p1, 0x3

    if-ne p0, p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private static isSupportedAdaptiveAudioTrack(Landroidx/media2/exoplayer/external/Format;ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;ZZ)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "formatSupport",
            "configuration",
            "allowMixedMimeTypeAdaptiveness",
            "allowMixedSampleRateAdaptiveness"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2029
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result p1

    if-eqz p1, :cond_2f

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2f

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v2, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    if-ne p1, v2, :cond_2f

    if-nez p3, :cond_22

    iget-object p1, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p1, :cond_2f

    iget-object p1, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p3, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    .line 2034
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2f

    :cond_22
    if-nez p4, :cond_2e

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-eq p1, v1, :cond_2f

    iget p0, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iget p1, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    if-ne p0, p1, :cond_2f

    :cond_2e
    const/4 v0, 0x1

    :cond_2f
    return v0
.end method

.method private static isSupportedAdaptiveVideoTrack(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IIIIII)Z
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "mimeType",
            "formatSupport",
            "requiredAdaptiveSupport",
            "maxVideoWidth",
            "maxVideoHeight",
            "maxVideoFrameRate",
            "maxVideoBitrate"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1800
    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_3d

    and-int/2addr p2, p3

    if-eqz p2, :cond_3d

    if-eqz p1, :cond_14

    iget-object p2, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1802
    invoke-static {p2, p1}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    :cond_14
    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1d

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    if-gt p1, p4, :cond_3d

    :cond_1d
    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    if-eq p1, p2, :cond_25

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    if-gt p1, p5, :cond_3d

    :cond_25
    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_34

    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    int-to-float p3, p6

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_3d

    :cond_34
    iget p1, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-eq p1, p2, :cond_3c

    iget p0, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-gt p0, p7, :cond_3d

    :cond_3c
    const/4 v0, 0x1

    :cond_3d
    return v0
.end method

.method private static maybeConfigureRenderersForTunneling(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;I)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mappedTrackInfo",
            "renderererFormatSupports",
            "rendererConfigurations",
            "trackSelections",
            "tunnelingAudioSessionId"
        }
    .end annotation

    if-nez p4, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 2193
    :goto_8
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_37

    .line 2194
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v5

    .line 2195
    aget-object v7, p3, v2

    if-eq v5, v6, :cond_1a

    const/4 v8, 0x2

    if-ne v5, v8, :cond_34

    :cond_1a
    if-eqz v7, :cond_34

    .line 2198
    aget-object v8, p1, v2

    .line 2199
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v9

    .line 2198
    invoke-static {v8, v9, v7}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->rendererSupportsTunneling([[ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)Z

    move-result v7

    if-eqz v7, :cond_34

    if-ne v5, v6, :cond_2f

    if-eq v4, v1, :cond_2d

    goto :goto_31

    :cond_2d
    move v4, v2

    goto :goto_34

    :cond_2f
    if-eq v3, v1, :cond_33

    :goto_31
    const/4 p0, 0x0

    goto :goto_38

    :cond_33
    move v3, v2

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_37
    const/4 p0, 0x1

    :goto_38
    if-eq v4, v1, :cond_3d

    if-eq v3, v1, :cond_3d

    const/4 v0, 0x1

    :cond_3d
    and-int/2addr p0, v0

    if-eqz p0, :cond_49

    .line 2220
    new-instance p0, Landroidx/media2/exoplayer/external/RendererConfiguration;

    invoke-direct {p0, p4}, Landroidx/media2/exoplayer/external/RendererConfiguration;-><init>(I)V

    .line 2222
    aput-object p0, p2, v4

    .line 2223
    aput-object p0, p2, v3

    :cond_49
    return-void
.end method

.method private static rendererSupportsTunneling([[ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "formatSupports",
            "trackGroups",
            "selection"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 2241
    :cond_4
    invoke-interface {p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result p1

    const/4 v1, 0x0

    .line 2242
    :goto_d
    invoke-interface {p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 2243
    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_21

    return v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method private static selectAdaptiveVideoTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[IILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groups",
            "formatSupport",
            "mixedMimeTypeAdaptationSupports",
            "params"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1644
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    if-eqz v2, :cond_b

    const/16 v2, 0x18

    goto :goto_d

    :cond_b
    const/16 v2, 0x10

    .line 1647
    :goto_d
    iget-boolean v3, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    and-int v3, p2, v2

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    const/4 v14, 0x1

    goto :goto_1a

    :cond_19
    const/4 v14, 0x0

    :goto_1a
    const/4 v15, 0x0

    .line 1650
    :goto_1b
    iget v3, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v15, v3, :cond_4d

    .line 1651
    invoke-virtual {v0, v15}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v13

    .line 1652
    aget-object v4, p1, v15

    iget v7, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v8, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v9, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoFrameRate:I

    iget v10, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iget v11, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v12, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v6, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    move-object v3, v13

    move v5, v14

    move/from16 v16, v6

    move v6, v2

    move-object v0, v13

    move/from16 v13, v16

    .line 1653
    invoke-static/range {v3 .. v13}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getAdaptiveVideoTracksForGroup(Landroidx/media2/exoplayer/external/source/TrackGroup;[IZIIIIIIIZ)[I

    move-result-object v3

    .line 1665
    array-length v4, v3

    if-lez v4, :cond_48

    .line 1666
    new-instance v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    invoke-direct {v1, v0, v3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    return-object v1

    :cond_48
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_1b

    :cond_4d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static selectFixedVideoTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groups",
            "formatSupports",
            "params"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 1817
    :goto_b
    iget v11, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v5, v11, :cond_e0

    .line 1818
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v11

    .line 1819
    iget v13, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v14, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v15, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    invoke-static {v11, v13, v14, v15}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Landroidx/media2/exoplayer/external/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v13

    .line 1821
    aget-object v14, p1, v5

    const/4 v15, 0x0

    .line 1822
    :goto_20
    iget v2, v11, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v15, v2, :cond_d7

    .line 1823
    aget v2, v14, v15

    iget-boolean v12, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v2, v12}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 1825
    invoke-virtual {v11, v15}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    .line 1827
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6d

    iget v12, v2, Landroidx/media2/exoplayer/external/Format;->width:I

    if-eq v12, v3, :cond_46

    iget v12, v2, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v4, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    if-gt v12, v4, :cond_6d

    :cond_46
    iget v4, v2, Landroidx/media2/exoplayer/external/Format;->height:I

    if-eq v4, v3, :cond_50

    iget v4, v2, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v12, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    if-gt v4, v12, :cond_6d

    :cond_50
    iget v4, v2, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v4, v4, v12

    if-eqz v4, :cond_61

    iget v4, v2, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    iget v12, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoFrameRate:I

    int-to-float v12, v12

    cmpg-float v4, v4, v12

    if-gtz v4, :cond_6d

    :cond_61
    iget v4, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-eq v4, v3, :cond_6b

    iget v4, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v12, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    if-gt v4, v12, :cond_6d

    :cond_6b
    const/4 v4, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v4, 0x0

    :goto_6e
    if-nez v4, :cond_76

    .line 1834
    iget-boolean v12, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-nez v12, :cond_76

    goto/16 :goto_cc

    :cond_76
    if-eqz v4, :cond_7a

    const/4 v12, 0x2

    goto :goto_7b

    :cond_7a
    const/4 v12, 0x1

    .line 1839
    :goto_7b
    aget v3, v14, v15

    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v3

    if-eqz v3, :cond_86

    add-int/lit16 v12, v12, 0x3e8

    :cond_86
    if-le v12, v8, :cond_8a

    const/4 v0, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v0, 0x0

    :goto_8b
    if-ne v12, v8, :cond_bc

    .line 1845
    iget v0, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    invoke-static {v0, v9}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v0

    move-object/from16 v16, v6

    .line 1846
    iget-boolean v6, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-eqz v6, :cond_a1

    if-eqz v0, :cond_a1

    if-gez v0, :cond_9f

    :goto_9d
    const/4 v0, 0x1

    goto :goto_be

    :cond_9f
    const/4 v0, 0x0

    goto :goto_be

    .line 1854
    :cond_a1
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/Format;->getPixelCount()I

    move-result v0

    if-eq v0, v10, :cond_ac

    .line 1856
    invoke-static {v0, v10}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v0

    goto :goto_b2

    .line 1857
    :cond_ac
    iget v0, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    invoke-static {v0, v9}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v0

    :goto_b2
    if-eqz v3, :cond_b9

    if-eqz v4, :cond_b9

    if-lez v0, :cond_9f

    goto :goto_9d

    :cond_b9
    if-gez v0, :cond_9f

    goto :goto_9d

    :cond_bc
    move-object/from16 v16, v6

    :goto_be
    if-eqz v0, :cond_ce

    .line 1866
    iget v0, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    .line 1867
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/Format;->getPixelCount()I

    move-result v2

    move v9, v0

    move v10, v2

    move-object v6, v11

    move v8, v12

    move v7, v15

    goto :goto_d0

    :cond_cc
    :goto_cc
    move-object/from16 v16, v6

    :cond_ce
    move-object/from16 v6, v16

    :goto_d0
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    const/4 v3, -0x1

    goto/16 :goto_20

    :cond_d7
    move-object/from16 v16, v6

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    const/4 v3, -0x1

    goto/16 :goto_b

    :cond_e0
    if-nez v6, :cond_e4

    const/4 v2, 0x0

    goto :goto_ef

    .line 1874
    :cond_e4
    new-instance v2, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v7, v0, v1

    invoke-direct {v2, v6, v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    :goto_ef
    return-object v2
.end method

.method protected static stringDefinesNoLanguage(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "language"
        }
    .end annotation

    .line 2298
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method


# virtual methods
.method public buildUponParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;
    .registers 2

    .line 1346
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .registers 2

    .line 1341
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    return-object v0
.end method

.method protected selectAllTracks(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)[Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .registers 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mappedTrackInfo",
            "rendererFormatSupports",
            "rendererMixedMimeTypeAdaptationSupports",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    .line 1507
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v9

    .line 1508
    new-array v10, v9, [Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_10
    const/4 v14, 0x2

    const/4 v15, 0x1

    if-ge v12, v9, :cond_44

    .line 1514
    invoke-virtual {v7, v12}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v1

    if-ne v14, v1, :cond_41

    if-nez v0, :cond_36

    .line 1518
    invoke-virtual {v7, v12}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v1

    aget-object v2, p2, v12

    aget v3, p3, v12

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    .line 1517
    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->selectVideoTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[IILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Z)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    move-result-object v0

    aput-object v0, v10, v12

    .line 1523
    aget-object v0, v10, v12

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    .line 1525
    :cond_36
    :goto_36
    invoke-virtual {v7, v12}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v1

    iget v1, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-lez v1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v15, 0x0

    :goto_40
    or-int/2addr v13, v15

    :cond_41
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_44
    const/4 v12, -0x1

    const/16 v16, 0x0

    move-object/from16 v3, v16

    move-object v4, v3

    const/4 v2, -0x1

    const/4 v5, 0x0

    :goto_4c
    if-ge v5, v9, :cond_b7

    .line 1533
    invoke-virtual {v7, v5}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v0

    if-ne v15, v0, :cond_a8

    .line 1534
    iget-boolean v0, v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->allowMultipleAdaptiveSelections:Z

    if-nez v0, :cond_5e

    if-nez v13, :cond_5b

    goto :goto_5e

    :cond_5b
    const/16 v17, 0x0

    goto :goto_60

    :cond_5e
    :goto_5e
    const/16 v17, 0x1

    .line 1538
    :goto_60
    invoke-virtual {v7, v5}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v1

    aget-object v18, p2, v5

    aget v19, p3, v5

    move-object/from16 v0, p0

    move v14, v2

    move-object/from16 v2, v18

    move-object v15, v3

    move/from16 v3, v19

    move-object/from16 v20, v4

    move-object/from16 v4, p4

    move/from16 v19, v5

    move/from16 v5, v17

    .line 1537
    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->selectAudioTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[IILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Z)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_ae

    if-eqz v15, :cond_8a

    .line 1543
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;

    .line 1545
    invoke-virtual {v1, v15}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result v1

    if-lez v1, :cond_ae

    :cond_8a
    if-eq v14, v12, :cond_8e

    .line 1549
    aput-object v16, v10, v14

    .line 1551
    :cond_8e
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    .line 1552
    aput-object v1, v10, v19

    .line 1554
    iget-object v2, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;->tracks:[I

    aget v1, v1, v11

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    iget-object v4, v1, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 1555
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;

    move/from16 v2, v19

    goto :goto_b2

    :cond_a8
    move v14, v2

    move-object v15, v3

    move-object/from16 v20, v4

    move/from16 v19, v5

    :cond_ae
    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v20

    :goto_b2
    add-int/lit8 v5, v19, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x1

    goto :goto_4c

    :cond_b7
    move-object/from16 v20, v4

    const/high16 v0, -0x80000000

    const/4 v1, -0x1

    :goto_bc
    if-ge v11, v9, :cond_10f

    .line 1564
    invoke-virtual {v7, v11}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_107

    const/4 v4, 0x2

    if-eq v2, v4, :cond_104

    const/4 v5, 0x3

    if-eq v2, v5, :cond_d8

    .line 1591
    invoke-virtual {v7, v11}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v5

    aget-object v13, p2, v11

    .line 1590
    invoke-virtual {v6, v2, v5, v13, v8}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->selectOtherTrack(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    move-result-object v2

    aput-object v2, v10, v11

    goto :goto_104

    .line 1573
    :cond_d8
    invoke-virtual {v7, v11}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v2

    aget-object v5, p2, v11

    move-object/from16 v13, v20

    .line 1572
    invoke-virtual {v6, v2, v5, v8, v13}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->selectTextTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_10a

    .line 1577
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v0, :cond_10a

    if-eq v1, v12, :cond_f4

    .line 1581
    aput-object v16, v10, v1

    .line 1583
    :cond_f4
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    aput-object v0, v10, v11

    .line 1584
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v11

    goto :goto_10a

    :cond_104
    :goto_104
    move-object/from16 v13, v20

    goto :goto_10a

    :cond_107
    move-object/from16 v13, v20

    const/4 v4, 0x2

    :cond_10a
    :goto_10a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v20, v13

    goto :goto_bc

    :cond_10f
    return-object v10
.end method

.method protected selectAudioTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[IILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Z)Landroid/util/Pair;
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groups",
            "formatSupports",
            "mixedMimeTypeAdaptationSupports",
            "params",
            "enableAdaptiveTrackSelection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "[[II",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;",
            "Z)",
            "Landroid/util/Pair<",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v8, v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 1906
    :goto_b
    iget v9, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v5, v9, :cond_49

    .line 1907
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v9

    .line 1908
    aget-object v10, p2, v5

    const/4 v11, 0x0

    .line 1909
    :goto_16
    iget v12, v9, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v11, v12, :cond_46

    .line 1910
    aget v12, v10, v11

    iget-boolean v13, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v12, v13}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v12

    if-eqz v12, :cond_43

    .line 1912
    invoke-virtual {v9, v11}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    .line 1913
    new-instance v13, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;

    aget v14, v10, v11

    invoke-direct {v13, v12, v1, v14}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;-><init>(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;I)V

    .line 1915
    iget-boolean v12, v13, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    if-nez v12, :cond_38

    iget-boolean v12, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    if-nez v12, :cond_38

    goto :goto_43

    :cond_38
    if-eqz v8, :cond_40

    .line 1919
    invoke-virtual {v13, v8}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result v12

    if-lez v12, :cond_43

    :cond_40
    move v6, v5

    move v7, v11

    move-object v8, v13

    :cond_43
    :goto_43
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_49
    if-ne v6, v4, :cond_4c

    return-object v3

    .line 1932
    :cond_4c
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v0

    .line 1935
    iget-boolean v4, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    if-nez v4, :cond_6c

    iget-boolean v4, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v4, :cond_6c

    if-eqz p5, :cond_6c

    .line 1939
    aget-object v4, p2, v6

    iget-boolean v5, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 1940
    invoke-static {v0, v4, v5, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getAdaptiveAudioTracks(Landroidx/media2/exoplayer/external/source/TrackGroup;[IZZ)[I

    move-result-object v1

    .line 1945
    array-length v4, v1

    if-lez v4, :cond_6c

    .line 1946
    new-instance v3, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    invoke-direct {v3, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    :cond_6c
    if-nez v3, :cond_78

    .line 1951
    new-instance v3, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v7, v1, v2

    invoke-direct {v3, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 1954
    :cond_78
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected selectOtherTrack(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "trackType",
            "groups",
            "formatSupport",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2140
    :goto_6
    iget v5, p2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    const/4 v6, 0x1

    if-ge v1, v5, :cond_46

    .line 2141
    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v5

    .line 2142
    aget-object v7, p3, v1

    const/4 v8, 0x0

    .line 2143
    :goto_12
    iget v9, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v8, v9, :cond_43

    .line 2144
    aget v9, v7, v8

    iget-boolean v10, p4, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v9, v10}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 2146
    invoke-virtual {v5, v8}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v9

    .line 2147
    iget v9, v9, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    and-int/2addr v9, v6

    if-eqz v9, :cond_2b

    const/4 v9, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v9, 0x0

    :goto_2c
    if-eqz v9, :cond_30

    const/4 v9, 0x2

    goto :goto_31

    :cond_30
    const/4 v9, 0x1

    .line 2149
    :goto_31
    aget v10, v7, v8

    invoke-static {v10, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v10

    if-eqz v10, :cond_3b

    add-int/lit16 v9, v9, 0x3e8

    :cond_3b
    if-le v9, v4, :cond_40

    move-object v2, v5

    move v3, v8

    move v4, v9

    :cond_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_46
    if-nez v2, :cond_49

    goto :goto_52

    .line 2162
    :cond_49
    new-instance p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    new-array p2, v6, [I

    aput v3, p2, v0

    invoke-direct {p1, v2, p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    :goto_52
    return-object p1
.end method

.method protected selectTextTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groups",
            "formatSupport",
            "params",
            "selectedAudioLanguage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "[[I",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2066
    :goto_9
    iget v8, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    const/4 v9, 0x1

    if-ge v4, v8, :cond_92

    .line 2067
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v8

    .line 2068
    aget-object v10, p2, v4

    const/4 v11, 0x0

    .line 2069
    :goto_15
    iget v12, v8, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v11, v12, :cond_8c

    .line 2070
    aget v12, v10, v11

    iget-boolean v13, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v12, v13}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v12

    if-eqz v12, :cond_87

    .line 2072
    invoke-virtual {v8, v11}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    .line 2073
    iget v13, v12, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v14, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    xor-int/lit8 v14, v14, -0x1

    and-int/2addr v13, v14

    and-int/lit8 v14, v13, 0x1

    if-eqz v14, :cond_34

    const/4 v14, 0x1

    goto :goto_35

    :cond_34
    const/4 v14, 0x0

    :goto_35
    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_3b

    const/4 v13, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v13, 0x0

    .line 2078
    :goto_3c
    iget-object v15, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-static {v12, v15}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;)I

    move-result v15

    .line 2079
    invoke-static {v12}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->formatHasNoLanguage(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v16

    if-gtz v15, :cond_6a

    .line 2080
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    if-eqz v2, :cond_4f

    if-eqz v16, :cond_4f

    goto :goto_6a

    :cond_4f
    if-eqz v14, :cond_56

    const/4 v2, 0x2

    move-object/from16 v2, p4

    const/4 v12, 0x2

    goto :goto_77

    :cond_56
    if-eqz v13, :cond_87

    move-object/from16 v2, p4

    .line 2095
    invoke-static {v12, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;)I

    move-result v12

    if-gtz v12, :cond_68

    if-eqz v16, :cond_89

    .line 2096
    invoke-static/range {p4 .. p4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->stringDefinesNoLanguage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_89

    :cond_68
    const/4 v12, 0x1

    goto :goto_77

    :cond_6a
    :goto_6a
    move-object/from16 v2, p4

    if-eqz v14, :cond_71

    const/16 v12, 0xb

    goto :goto_76

    :cond_71
    if-nez v13, :cond_75

    const/4 v12, 0x7

    goto :goto_76

    :cond_75
    const/4 v12, 0x3

    :goto_76
    add-int/2addr v12, v15

    .line 2102
    :goto_77
    aget v13, v10, v11

    invoke-static {v13, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v13

    if-eqz v13, :cond_81

    add-int/lit16 v12, v12, 0x3e8

    :cond_81
    if-le v12, v7, :cond_89

    move-object v5, v8

    move v6, v11

    move v7, v12

    goto :goto_89

    :cond_87
    move-object/from16 v2, p4

    :cond_89
    :goto_89
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_8c
    move-object/from16 v2, p4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :cond_92
    if-nez v5, :cond_96

    const/4 v2, 0x0

    goto :goto_a7

    .line 2115
    :cond_96
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    new-array v1, v9, [I

    aput v6, v1, v3

    invoke-direct {v0, v5, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 2116
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2115
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    :goto_a7
    return-object v2
.end method

.method protected final selectTracks(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[I)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mappedTrackInfo",
            "rendererFormatSupports",
            "rendererMixedMimeTypeAdaptationSupports"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Landroidx/media2/exoplayer/external/RendererConfiguration;",
            "[",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    .line 1427
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v1

    .line 1429
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->selectAllTracks(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)[Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    move-result-object p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    const/4 v4, 0x0

    if-ge v3, v1, :cond_49

    .line 1437
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1438
    aput-object v4, p3, v3

    goto :goto_46

    .line 1441
    :cond_1e
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v5

    .line 1442
    invoke-virtual {v0, v3, v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 1443
    invoke-virtual {v0, v3, v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v6

    if-nez v6, :cond_2f

    goto :goto_44

    .line 1447
    :cond_2f
    new-instance v4, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    iget v7, v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 1448
    invoke-virtual {v5, v7}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v5

    iget-object v7, v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget v8, v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->reason:I

    iget v6, v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->data:I

    .line 1451
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v7, v8, v6}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/Object;)V

    :goto_44
    aput-object v4, p3, v3

    :cond_46
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1456
    :cond_49
    iget-object v3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->trackSelectionFactory:Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;

    .line 1457
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getBandwidthMeter()Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    move-result-object v5

    invoke-interface {v3, p3, v5}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;->createTrackSelections([Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;)[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object p3

    .line 1461
    new-array v3, v1, [Landroidx/media2/exoplayer/external/RendererConfiguration;

    const/4 v5, 0x0

    :goto_56
    if-ge v5, v1, :cond_77

    .line 1464
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v6

    if-nez v6, :cond_6b

    .line 1467
    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_69

    aget-object v6, p3, v5

    if-eqz v6, :cond_6b

    :cond_69
    const/4 v6, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v6, 0x0

    :goto_6c
    if-eqz v6, :cond_71

    .line 1469
    sget-object v6, Landroidx/media2/exoplayer/external/RendererConfiguration;->DEFAULT:Landroidx/media2/exoplayer/external/RendererConfiguration;

    goto :goto_72

    :cond_71
    move-object v6, v4

    :goto_72
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 1473
    :cond_77
    iget v0, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->tunnelingAudioSessionId:I

    invoke-static {p1, p2, v3, p3, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->maybeConfigureRenderersForTunneling(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;I)V

    .line 1480
    invoke-static {v3, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected selectVideoTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[IILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Z)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groups",
            "formatSupports",
            "mixedMimeTypeAdaptationSupports",
            "params",
            "enableAdaptiveTrackSelection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1625
    iget-boolean v0, p4, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    if-nez v0, :cond_f

    iget-boolean v0, p4, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v0, :cond_f

    if-eqz p5, :cond_f

    .line 1629
    invoke-static {p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->selectAdaptiveVideoTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[IILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    move-result-object p3

    goto :goto_10

    :cond_f
    const/4 p3, 0x0

    :goto_10
    if-nez p3, :cond_16

    .line 1632
    invoke-static {p1, p2, p4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->selectFixedVideoTrack(Landroidx/media2/exoplayer/external/source/TrackGroupArray;[[ILandroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;

    move-result-object p3

    :cond_16
    return-object p3
.end method

.method public setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 1320
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 1322
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->invalidate()V

    :cond_14
    return-void
.end method

.method public setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parametersBuilder"
        }
    .end annotation

    .line 1332
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method
