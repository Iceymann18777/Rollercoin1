.class final Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;
.super Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkIterator;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HlsMediaPlaylistSegmentIterator"
.end annotation


# instance fields
.field private final playlist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

.field private final startOfPlaylistInPeriodUs:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;JI)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "playlist",
            "startOfPlaylistInPeriodUs",
            "chunkIndex"
        }
    .end annotation

    int-to-long v0, p4

    .line 626
    iget-object p4, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    int-to-long v2, p4

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkIterator;-><init>(JJ)V

    .line 627
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->playlist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    .line 628
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->startOfPlaylistInPeriodUs:J

    return-void
.end method
