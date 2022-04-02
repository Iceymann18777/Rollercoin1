.class final Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;
.super Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InitializationTrackSelection"
.end annotation


# instance fields
.field private selectedIndex:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "group",
            "tracks"
        }
    .end annotation

    .line 541
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    const/4 p2, 0x0

    .line 542
    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .registers 2

    .line 569
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V
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
            "playbackPositionUs",
            "bufferedDurationUs",
            "availableDurationUs",
            "queue",
            "mediaChunkIterators"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;",
            ">;[",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 552
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 553
    iget p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    invoke-virtual {p0, p3, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->isBlacklisted(IJ)Z

    move-result p3

    if-nez p3, :cond_d

    return-void

    .line 557
    :cond_d
    iget p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->length:I

    add-int/lit8 p3, p3, -0x1

    :goto_11
    if-ltz p3, :cond_1f

    .line 558
    invoke-virtual {p0, p3, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->isBlacklisted(IJ)Z

    move-result p4

    if-nez p4, :cond_1c

    .line 559
    iput p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return-void

    :cond_1c
    add-int/lit8 p3, p3, -0x1

    goto :goto_11

    .line 564
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_26

    :goto_25
    throw p1

    :goto_26
    goto :goto_25
.end method
