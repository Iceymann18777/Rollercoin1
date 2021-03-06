.class Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;,
        Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;,
        Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;,
        Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;,
        Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;
    }
.end annotation


# instance fields
.field private final encryptionDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private expectedPlaylistUrl:Landroid/net/Uri;

.field private final extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

.field private fatalError:Ljava/io/IOException;

.field private independentSegments:Z

.field private isTimestampMaster:Z

.field private final keyCache:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

.field private liveEdgeInPeriodTimeUs:J

.field private final mediaDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final playlistFormats:[Landroidx/media2/exoplayer/external/Format;

.field private final playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

.field private final playlistUrls:[Landroid/net/Uri;

.field private scratchSpace:[B

.field private seenExpectedPlaylistError:Z

.field private final timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

.field private final trackGroup:Landroidx/media2/exoplayer/external/source/TrackGroup;

.field private trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/upstream/TransferListener;Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;Ljava/util/List;)V
    .registers 9
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
            "extractorFactory",
            "playlistTracker",
            "playlistUrls",
            "playlistFormats",
            "dataSourceFactory",
            "mediaTransferListener",
            "timestampAdjusterProvider",
            "muxedCaptionFormats"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;",
            "[",
            "Landroid/net/Uri;",
            "[",
            "Landroidx/media2/exoplayer/external/Format;",
            "Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;",
            "Landroidx/media2/exoplayer/external/upstream/TransferListener;",
            "Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    .line 149
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 150
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    .line 151
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistFormats:[Landroidx/media2/exoplayer/external/Format;

    .line 152
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

    .line 153
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    .line 154
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->keyCache:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 155
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    const/4 p1, 0x1

    .line 156
    invoke-interface {p5, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;->createDataSource(I)Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->mediaDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    if-eqz p6, :cond_29

    .line 158
    invoke-interface {p1, p6}, Landroidx/media2/exoplayer/external/upstream/DataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    :cond_29
    const/4 p1, 0x3

    .line 160
    invoke-interface {p5, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;->createDataSource(I)Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->encryptionDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 161
    new-instance p1, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {p1, p4}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackGroup:Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 162
    array-length p1, p3

    new-array p1, p1, [I

    const/4 p2, 0x0

    .line 163
    :goto_3b
    array-length p4, p3

    if-ge p2, p4, :cond_43

    .line 164
    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3b

    .line 166
    :cond_43
    new-instance p2, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;

    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackGroup:Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {p2, p3, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    return-void
.end method

.method private getChunkMediaSequence(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;ZLandroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;JJ)J
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "previous",
            "switchingTrack",
            "mediaPlaylist",
            "startOfPlaylistInPeriodUs",
            "loadPositionUs"
        }
    .end annotation

    if-eqz p1, :cond_a

    if-eqz p2, :cond_5

    goto :goto_a

    .line 484
    :cond_5
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->getNextChunkIndex()J

    move-result-wide p1

    return-wide p1

    .line 467
    :cond_a
    :goto_a
    iget-wide v0, p3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr v0, p4

    if-eqz p1, :cond_16

    .line 469
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->independentSegments:Z

    if-eqz p2, :cond_14

    goto :goto_16

    :cond_14
    iget-wide p6, p1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->startTimeUs:J

    .line 470
    :cond_16
    :goto_16
    iget-boolean p2, p3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez p2, :cond_29

    cmp-long p2, p6, v0

    if-ltz p2, :cond_29

    .line 472
    iget-wide p1, p3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object p3, p3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    int-to-long p3, p3

    :goto_27
    add-long/2addr p1, p3

    return-wide p1

    :cond_29
    sub-long/2addr p6, p4

    .line 475
    iget-object p2, p3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 477
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iget-object p5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 479
    invoke-interface {p5}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result p5

    const/4 p6, 0x1

    if-eqz p5, :cond_3e

    if-nez p1, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 p1, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 p1, 0x1

    .line 475
    :goto_3f
    invoke-static {p2, p4, p6, p1}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    int-to-long p1, p1

    iget-wide p3, p3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    goto :goto_27
.end method

.method private static getFullEncryptionKeyUri(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;)Landroid/net/Uri;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playlist",
            "segment"
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 525
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_10

    .line 528
    :cond_7
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private maybeCreateEncryptionChunkFor(Landroid/net/Uri;I)Landroidx/media2/exoplayer/external/source/chunk/Chunk;
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyUri",
            "selectedTrackIndex"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 506
    :cond_4
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->keyCache:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 510
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->keyCache:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p2, p1, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;->put(Landroid/net/Uri;[B)[B

    return-object v0

    .line 513
    :cond_18
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 514
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->encryptionDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistFormats:[Landroidx/media2/exoplayer/external/Format;

    aget-object v5, v1, p2

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 518
    invoke-interface {p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getSelectionReason()I

    move-result v6

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 519
    invoke-interface {p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->scratchSpace:[B

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;[B)V

    return-object p1
.end method

.method private resolveTimeToLiveEdgeUs(J)J
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackPositionUs"
        }
    .end annotation

    .line 488
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_14

    .line 490
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    sub-long v2, v0, p1

    :cond_14
    return-wide v2
.end method

.method private updateLiveEdgeTimeUs(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPlaylist"
        }
    .end annotation

    .line 496
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v0, :cond_a

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_15

    .line 498
    :cond_a
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v0

    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_15
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    return-void
.end method


# virtual methods
.method public createMediaChunkIterators(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;J)[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previous",
            "loadPositionUs"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-nez v9, :cond_9

    const/4 v0, -0x1

    const/4 v10, -0x1

    goto :goto_12

    .line 418
    :cond_9
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackGroup:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v1, v9, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    move v10, v0

    .line 419
    :goto_12
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->length()I

    move-result v11

    new-array v12, v11, [Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1c
    if-ge v14, v11, :cond_74

    .line 421
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    invoke-interface {v0, v14}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v0

    .line 422
    iget-object v1, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v1, v1, v0

    .line 423
    iget-object v2, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->isSnapshotValid(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 424
    sget-object v0, Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;->EMPTY:Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;

    aput-object v0, v12, v14

    goto :goto_71

    .line 427
    :cond_35
    iget-object v2, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 428
    invoke-interface {v2, v1, v13}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v15

    .line 429
    iget-wide v1, v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v3, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 430
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v3

    sub-long v6, v1, v3

    if-eq v0, v10, :cond_4a

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v15

    move-wide v4, v6

    move-wide/from16 v16, v6

    move-wide/from16 v6, p2

    .line 433
    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getChunkMediaSequence(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;ZLandroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;JJ)J

    move-result-wide v0

    .line 435
    iget-wide v2, v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_64

    .line 436
    sget-object v0, Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;->EMPTY:Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;

    aput-object v0, v12, v14

    goto :goto_71

    .line 439
    :cond_64
    iget-wide v2, v15, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 440
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;

    move-wide/from16 v2, v16

    invoke-direct {v0, v15, v2, v3, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;-><init>(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;JI)V

    aput-object v0, v12, v14

    :goto_71
    add-int/lit8 v14, v14, 0x1

    goto :goto_1c

    :cond_74
    return-object v12
.end method

.method public getNextChunk(JJLjava/util/List;Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;)V
    .registers 35
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "playbackPositionUs",
            "loadPositionUs",
            "queue",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;",
            ">;",
            "Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-wide/from16 v6, p3

    move-object/from16 v9, p6

    .line 242
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_11

    move-object/from16 v1, p5

    const/4 v4, 0x0

    goto :goto_1f

    :cond_11
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    move-object v4, v0

    :goto_1f
    if-nez v4, :cond_24

    const/4 v0, -0x1

    const/4 v5, -0x1

    goto :goto_2d

    .line 243
    :cond_24
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackGroup:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v2, v4, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    move v5, v0

    :goto_2d
    sub-long v2, v6, p1

    .line 245
    invoke-direct/range {p0 .. p2}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->resolveTimeToLiveEdgeUs(J)J

    move-result-wide v12

    if-eqz v4, :cond_56

    .line 246
    iget-boolean v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->independentSegments:Z

    if-nez v0, :cond_56

    .line 253
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->getDurationUs()J

    move-result-wide v14

    sub-long/2addr v2, v14

    const-wide/16 v10, 0x0

    .line 254
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v12, v16

    if-eqz v0, :cond_56

    sub-long/2addr v12, v14

    .line 256
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-wide v15, v2

    move-wide/from16 v17, v10

    goto :goto_59

    :cond_56
    move-wide v15, v2

    move-wide/from16 v17, v12

    .line 261
    :goto_59
    invoke-virtual {v8, v4, v6, v7}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->createMediaChunkIterators(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;J)[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;

    move-result-object v20

    .line 262
    iget-object v12, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-wide/from16 v13, p1

    move-object/from16 v19, p5

    invoke-interface/range {v12 .. v20}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V

    .line 264
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v10

    const/4 v11, 0x0

    if-eq v5, v10, :cond_71

    const/4 v12, 0x1

    goto :goto_72

    :cond_71
    const/4 v12, 0x0

    .line 267
    :goto_72
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v13, v0, v10

    .line 268
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, v13}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->isSnapshotValid(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 269
    iput-object v13, v9, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    .line 270
    iget-boolean v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v1, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {v13, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 271
    iput-object v13, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    return-void

    .line 275
    :cond_8e
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    const/4 v1, 0x1

    .line 276
    invoke-interface {v0, v13, v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v14

    .line 277
    iget-boolean v0, v14, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    iput-boolean v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->independentSegments:Z

    .line 279
    invoke-direct {v8, v14}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->updateLiveEdgeTimeUs(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)V

    .line 282
    iget-wide v0, v14, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v2, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 283
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long v15, v0, v2

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v12

    move-object v3, v14

    move-object/from16 v25, v4

    move/from16 v17, v5

    move-wide v4, v15

    move-wide/from16 v6, p3

    .line 285
    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getChunkMediaSequence(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;ZLandroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;JJ)J

    move-result-wide v0

    .line 287
    iget-wide v2, v14, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_df

    if-eqz v25, :cond_df

    if-eqz v12, :cond_df

    .line 291
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v0, v0, v17

    .line 292
    iget-object v1, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    const/4 v2, 0x1

    .line 293
    invoke-interface {v1, v0, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v1

    .line 294
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v4, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 295
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 296
    invoke-virtual/range {v25 .. v25}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->getNextChunkIndex()J

    move-result-wide v4

    move-wide v15, v2

    move-object v3, v0

    move-object v2, v1

    move-wide v0, v4

    move/from16 v5, v17

    goto :goto_e2

    :cond_df
    move v5, v10

    move-object v3, v13

    move-object v2, v14

    .line 299
    :goto_e2
    iget-wide v6, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v4, v0, v6

    if-gez v4, :cond_f0

    .line 300
    new-instance v0, Landroidx/media2/exoplayer/external/source/BehindLiveWindowException;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/BehindLiveWindowException;-><init>()V

    iput-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    return-void

    .line 304
    :cond_f0
    iget-wide v6, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long/2addr v0, v6

    long-to-int v1, v0

    .line 305
    iget-object v0, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_114

    .line 306
    iget-boolean v0, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v0, :cond_104

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, v9, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    goto :goto_113

    .line 309
    :cond_104
    iput-object v3, v9, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    .line 310
    iget-boolean v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v1, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 311
    iput-object v3, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    :goto_113
    return-void

    .line 316
    :cond_114
    iput-boolean v11, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    const/4 v0, 0x0

    .line 317
    iput-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 320
    iget-object v0, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 323
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->initializationSegment:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    invoke-static {v2, v4}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getFullEncryptionKeyUri(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;)Landroid/net/Uri;

    move-result-object v4

    .line 324
    invoke-direct {v8, v4, v5}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->maybeCreateEncryptionChunkFor(Landroid/net/Uri;I)Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    move-result-object v6

    iput-object v6, v9, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    .line 325
    iget-object v6, v9, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    if-eqz v6, :cond_132

    return-void

    .line 328
    :cond_132
    invoke-static {v2, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getFullEncryptionKeyUri(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;)Landroid/net/Uri;

    move-result-object v0

    .line 329
    invoke-direct {v8, v0, v5}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->maybeCreateEncryptionChunkFor(Landroid/net/Uri;I)Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    move-result-object v6

    iput-object v6, v9, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    .line 330
    iget-object v6, v9, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    if-eqz v6, :cond_141

    return-void

    .line 334
    :cond_141
    iget-object v12, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    iget-object v13, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->mediaDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    iget-object v6, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistFormats:[Landroidx/media2/exoplayer/external/Format;

    aget-object v14, v6, v5

    iget-object v5, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    iget-object v6, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 344
    invoke-interface {v6}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getSelectionReason()I

    move-result v21

    iget-object v6, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 345
    invoke-interface {v6}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v22

    iget-boolean v6, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->isTimestampMaster:Z

    iget-object v7, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

    iget-object v10, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->keyCache:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

    .line 349
    invoke-virtual {v10, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;->get(Ljava/lang/Object;)[B

    move-result-object v26

    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->keyCache:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

    .line 350
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;->get(Ljava/lang/Object;)[B

    move-result-object v27

    move-object/from16 v17, v2

    move/from16 v18, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    .line 335
    invoke-static/range {v12 .. v27}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->createInstance(Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/Format;JLandroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;ILandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLandroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;[B[B)Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    move-result-object v0

    iput-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    return-void
.end method

.method public getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;
    .registers 2

    .line 188
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackGroup:Landroidx/media2/exoplayer/external/source/TrackGroup;

    return-object v0
.end method

.method public getTrackSelection()Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
    .registers 2

    .line 204
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    return-object v0
.end method

.method public maybeBlacklistTrack(Landroidx/media2/exoplayer/external/source/chunk/Chunk;J)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chunk",
            "blacklistDurationMs"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackGroup:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    .line 378
    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result p1

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->indexOf(I)I

    move-result p1

    .line 377
    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->blacklist(IJ)Z

    move-result p1

    return p1
.end method

.method public maybeThrowError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_12

    .line 179
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    if-eqz v0, :cond_11

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    if-eqz v1, :cond_11

    .line 180
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->maybeThrowPlaylistRefreshError(Landroid/net/Uri;)V

    :cond_11
    return-void

    .line 177
    :cond_12
    throw v0
.end method

.method public onChunkLoadCompleted(Landroidx/media2/exoplayer/external/source/chunk/Chunk;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunk"
        }
    .end annotation

    .line 360
    instance-of v0, p1, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_19

    .line 361
    check-cast p1, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 362
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;->getDataHolder()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->scratchSpace:[B

    .line 363
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->keyCache:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache;->put(Landroid/net/Uri;[B)[B

    :cond_19
    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;J)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playlistUrl",
            "blacklistDurationMs"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 391
    :goto_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_14

    .line 392
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_15

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    const/4 v1, -0x1

    :goto_15
    const/4 v2, 0x1

    if-ne v1, v4, :cond_19

    return v2

    .line 400
    :cond_19
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    invoke-interface {v3, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_22

    return v2

    .line 404
    :cond_22
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v3

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v3

    if-eqz p1, :cond_3e

    .line 405
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 406
    invoke-interface {p1, v1, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->blacklist(IJ)Z

    move-result p1

    if-eqz p1, :cond_3f

    :cond_3e
    const/4 v0, 0x1

    :cond_3f
    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    return-void
.end method

.method public selectTracks(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackSelection"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->trackSelection:Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    return-void
.end method

.method public setIsTimestampMaster(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTimestampMaster"
        }
    .end annotation

    .line 221
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->isTimestampMaster:Z

    return-void
.end method
