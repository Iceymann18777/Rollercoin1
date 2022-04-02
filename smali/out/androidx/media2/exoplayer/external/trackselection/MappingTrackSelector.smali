.class public abstract Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;
.super Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    }
.end annotation


# instance fields
.field private currentMappedTrackInfo:Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelector;-><init>()V

    return-void
.end method

.method private static findRenderer([Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/source/TrackGroup;)I
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rendererCapabilities",
            "group"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 454
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 456
    :goto_4
    array-length v4, p0

    if-ge v2, v4, :cond_26

    .line 457
    aget-object v4, p0, v2

    const/4 v5, 0x0

    .line 458
    :goto_a
    iget v6, p1, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v5, v6, :cond_23

    .line 459
    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    invoke-interface {v4, v6}, Landroidx/media2/exoplayer/external/RendererCapabilities;->supportsFormat(Landroidx/media2/exoplayer/external/Format;)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    if-le v6, v3, :cond_20

    const/4 v0, 0x4

    if-ne v6, v0, :cond_1e

    return v2

    :cond_1e
    move v0, v2

    move v3, v6

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_26
    return v0
.end method

.method private static getFormatSupport(Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/source/TrackGroup;)[I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rendererCapabilities",
            "group"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 486
    iget v0, p1, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 487
    :goto_5
    iget v2, p1, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_16

    .line 488
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Landroidx/media2/exoplayer/external/RendererCapabilities;->supportsFormat(Landroidx/media2/exoplayer/external/Format;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    return-object v0
.end method

.method private static getMixedMimeTypeAdaptationSupports([Landroidx/media2/exoplayer/external/RendererCapabilities;)[I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rendererCapabilities"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 504
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_11

    .line 506
    aget-object v3, p0, v2

    invoke-interface {v3}, Landroidx/media2/exoplayer/external/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    return-object v1
.end method


# virtual methods
.method public final getCurrentMappedTrackInfo()Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
    .registers 2

    .line 328
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-object v0
.end method

.method public final onSelectionActivated(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 335
    check-cast p1, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-void
.end method

.method protected abstract selectTracks(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mappedTrackInfo",
            "rendererFormatSupports",
            "rendererMixedMimeTypeAdaptationSupport"
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
.end method

.method public final selectTracks([Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rendererCapabilities",
            "trackGroups",
            "periodId",
            "timeline"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 348
    array-length p3, p1

    add-int/lit8 p3, p3, 0x1

    new-array p3, p3, [I

    .line 349
    array-length p4, p1

    add-int/lit8 p4, p4, 0x1

    new-array v0, p4, [[Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 350
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [[[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, p4, :cond_22

    .line 352
    iget v4, p2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    new-array v4, v4, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    aput-object v4, v0, v3

    .line 353
    iget v4, p2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    new-array v4, v4, [[I

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 358
    :cond_22
    invoke-static {p1}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupports([Landroidx/media2/exoplayer/external/RendererCapabilities;)[I

    move-result-object p4

    const/4 v3, 0x0

    .line 362
    :goto_27
    iget v4, p2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_54

    .line 363
    invoke-virtual {p2, v3}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v4

    .line 365
    invoke-static {p1, v4}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;->findRenderer([Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v5

    .line 367
    array-length v6, p1

    if-ne v5, v6, :cond_3b

    .line 368
    iget v6, v4, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    new-array v6, v6, [I

    goto :goto_41

    :cond_3b
    aget-object v6, p1, v5

    invoke-static {v6, v4}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;->getFormatSupport(Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/source/TrackGroup;)[I

    move-result-object v6

    .line 370
    :goto_41
    aget v7, p3, v5

    .line 371
    aget-object v8, v0, v5

    aput-object v4, v8, v7

    .line 372
    aget-object v4, v1, v5

    aput-object v6, v4, v7

    .line 373
    aget v4, p3, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, p3, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 377
    :cond_54
    array-length p2, p1

    new-array v4, p2, [Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 378
    array-length p2, p1

    new-array v3, p2, [I

    .line 379
    :goto_5a
    array-length p2, p1

    if-ge v2, p2, :cond_83

    .line 380
    aget p2, p3, v2

    .line 381
    new-instance v5, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v6, v0, v2

    .line 383
    invoke-static {v6, p2}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v5, v6}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    aput-object v5, v4, v2

    .line 384
    aget-object v5, v1, v2

    .line 385
    invoke-static {v5, p2}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[I

    aput-object p2, v1, v2

    .line 386
    aget-object p2, p1, v2

    invoke-interface {p2}, Landroidx/media2/exoplayer/external/RendererCapabilities;->getTrackType()I

    move-result p2

    aput p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 390
    :cond_83
    array-length p2, p1

    aget p2, p3, p2

    .line 391
    new-instance v7, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    array-length p1, p1

    aget-object p1, v0, p1

    .line 393
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v7, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    .line 397
    new-instance p1, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-object v2, p1

    move-object v5, p4

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([I[Landroidx/media2/exoplayer/external/source/TrackGroupArray;[I[[[ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V

    .line 406
    invoke-virtual {p0, p1, v1, p4}, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;->selectTracks(Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[I)Landroid/util/Pair;

    move-result-object p2

    .line 408
    new-instance p3, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    iget-object p4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, [Landroidx/media2/exoplayer/external/RendererConfiguration;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    invoke-direct {p3, p4, p2, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;-><init>([Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;Ljava/lang/Object;)V

    return-object p3
.end method
