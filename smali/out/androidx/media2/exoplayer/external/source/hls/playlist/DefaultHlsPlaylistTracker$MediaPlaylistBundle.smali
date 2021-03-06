.class final Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/Loader$Callback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaPlaylistBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<",
        "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<",
        "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;",
        ">;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private blacklistUntilMs:J

.field private earliestNextLoadTimeMs:J

.field private lastSnapshotChangeMs:J

.field private lastSnapshotLoadMs:J

.field private loadPending:Z

.field private final mediaPlaylistLoadable:Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPlaylistLoader:Landroidx/media2/exoplayer/external/upstream/Loader;

.field private playlistError:Ljava/io/IOException;

.field private playlistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

.field private final playlistUrl:Landroid/net/Uri;

.field final synthetic this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "playlistUrl"
        }
    .end annotation

    .line 467
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    .line 469
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader;

    const-string v1, "DefaultHlsPlaylistTracker:MediaPlaylist"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 470
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;

    .line 472
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$300(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;->createDataSource(I)Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v1

    .line 475
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$400(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;

    move-result-object p1

    invoke-direct {v0, v1, p2, v2, p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroid/net/Uri;ILandroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoadable:Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;

    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;J)V
    .registers 4

    .line 452
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->processLoadedPlaylist(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;J)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;)J
    .registers 3

    .line 452
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->blacklistUntilMs:J

    return-wide v0
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;)Landroid/net/Uri;
    .registers 1

    .line 452
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    return-object p0
.end method

.method private blacklistPlaylist(J)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blacklistDurationMs"
        }
    .end annotation

    .line 680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->blacklistUntilMs:J

    .line 681
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1200(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1300(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Z

    move-result p1

    if-nez p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return p1
.end method

.method private loadPlaylistImmediately()V
    .registers 6

    .line 614
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Landroidx/media2/exoplayer/external/upstream/Loader;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoadable:Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 618
    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$700(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoadable:Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;

    iget v3, v3, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->type:I

    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 615
    invoke-virtual {v0, v1, p0, v2}, Landroidx/media2/exoplayer/external/upstream/Loader;->startLoading(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;Landroidx/media2/exoplayer/external/upstream/Loader$Callback;I)J

    move-result-wide v0

    .line 619
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$600(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoadable:Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoadable:Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;

    iget v4, v4, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->type:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;IJ)V

    return-void
.end method

.method private processLoadedPlaylist(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;J)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "loadedPlaylist",
            "loadDurationMs"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 626
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    .line 627
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 628
    iput-wide v3, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotLoadMs:J

    .line 629
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v5, v2, v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$900(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v5

    iput-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    if-eq v5, v2, :cond_23

    const/4 v1, 0x0

    .line 631
    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    .line 632
    iput-wide v3, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotChangeMs:J

    .line 633
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    invoke-static {v1, v6, v5}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1000(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)V

    goto :goto_94

    .line 634
    :cond_23
    iget-boolean v5, v5, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v5, :cond_94

    .line 635
    iget-wide v5, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v7, v1

    add-long/2addr v5, v7

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    iget-wide v7, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v7

    if-gez v1, :cond_4f

    .line 640
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    invoke-direct {v1, v5}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException;-><init>(Landroid/net/Uri;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    .line 641
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    invoke-static {v1, v5, v9, v10}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$800(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;J)Z

    goto :goto_94

    .line 642
    :cond_4f
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotChangeMs:J

    sub-long v5, v3, v5

    long-to-double v5, v5

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    iget-wide v7, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    .line 643
    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v7

    long-to-double v7, v7

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 644
    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1100(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)D

    move-result-wide v11

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    cmpl-double v1, v5, v7

    if-lez v1, :cond_94

    .line 646
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    invoke-direct {v1, v5}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;-><init>(Landroid/net/Uri;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    .line 647
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 648
    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$700(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    move-result-object v11

    const/4 v12, 0x4

    iget-object v15, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    const/16 v16, 0x1

    move-wide/from16 v13, p2

    invoke-interface/range {v11 .. v16}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getBlacklistDurationMsFor(IJLjava/io/IOException;I)J

    move-result-wide v5

    .line 650
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    invoke-static {v1, v7, v5, v6}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$800(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;J)Z

    cmp-long v1, v5, v9

    if-eqz v1, :cond_94

    .line 652
    invoke-direct {v0, v5, v6}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->blacklistPlaylist(J)Z

    .line 661
    :cond_94
    :goto_94
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    if-eq v1, v2, :cond_9b

    .line 662
    iget-wide v1, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    goto :goto_a0

    .line 663
    :cond_9b
    iget-wide v1, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    const-wide/16 v5, 0x2

    div-long/2addr v1, v5

    .line 660
    :goto_a0
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v1

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->earliestNextLoadTimeMs:J

    .line 667
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1200(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v1, :cond_be

    .line 668
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    :cond_be
    return-void
.end method


# virtual methods
.method public getPlaylistSnapshot()Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .registers 2

    .line 479
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    return-object v0
.end method

.method public isSnapshotValid()Z
    .registers 10

    .line 483
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 486
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    .line 487
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    invoke-static {v6, v7}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 488
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    const/4 v6, 0x1

    if-nez v0, :cond_33

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    iget v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v7, 0x2

    if-eq v0, v7, :cond_33

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    iget v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    if-eq v0, v6, :cond_33

    iget-wide v7, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotLoadMs:J

    add-long/2addr v7, v4

    cmp-long v0, v7, v2

    if-lez v0, :cond_34

    :cond_33
    const/4 v1, 0x1

    :cond_34
    return v1
.end method

.method public loadPlaylist()V
    .registers 6

    const-wide/16 v0, 0x0

    .line 499
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->blacklistUntilMs:J

    .line 500
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPending:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2e

    .line 504
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 505
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->earliestNextLoadTimeMs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2b

    const/4 v2, 0x1

    .line 506
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPending:Z

    .line 507
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$500(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroid/os/Handler;

    move-result-object v2

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->earliestNextLoadTimeMs:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2e

    .line 509
    :cond_2b
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylistImmediately()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public maybeThrowPlaylistRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->maybeThrowError()V

    .line 515
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    if-nez v0, :cond_a

    return-void

    .line 516
    :cond_a
    throw v0
.end method

.method public bridge synthetic onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJZ)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "loadable",
            "elapsedRealtimeMs",
            "loadDurationMs",
            "released"
        }
    .end annotation

    .line 452
    check-cast p1, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;JJZ)V
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "loadable",
            "elapsedRealtimeMs",
            "loadDurationMs",
            "released"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;",
            ">;JJZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 547
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$600(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v2

    move-object v1, p1

    iget-object v3, v1, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 549
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 550
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    .line 554
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v11

    const/4 v6, 0x4

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 547
    invoke-virtual/range {v2 .. v12}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "loadable",
            "elapsedRealtimeMs",
            "loadDurationMs"
        }
    .end annotation

    .line 452
    check-cast p1, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->onLoadCompleted(Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;JJ)V
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "loadable",
            "elapsedRealtimeMs",
            "loadDurationMs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 525
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;

    .line 526
    instance-of v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v2, :cond_2d

    .line 527
    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-wide/from16 v9, p4

    invoke-direct {p0, v1, v9, v10}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->processLoadedPlaylist(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;J)V

    .line 528
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$600(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v2

    move-object v1, p1

    iget-object v3, v1, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 530
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 531
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x4

    .line 535
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v11

    move-wide v7, p2

    .line 528
    invoke-virtual/range {v2 .. v12}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    goto :goto_36

    .line 537
    :cond_2d
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Loaded playlist has unexpected type."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    :goto_36
    return-void
.end method

.method public bridge synthetic onLoadError(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "loadable",
            "elapsedRealtimeMs",
            "loadDurationMs",
            "error",
            "errorCount"
        }
    .end annotation

    .line 452
    check-cast p1, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p7}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->onLoadError(Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoadError(Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .registers 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "loadable",
            "elapsedRealtimeMs",
            "loadDurationMs",
            "error",
            "errorCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 566
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 567
    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$700(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    move-result-object v3

    iget v4, v1, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->type:I

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v3 .. v8}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getBlacklistDurationMsFor(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-eqz v8, :cond_23

    const/4 v8, 0x1

    goto :goto_24

    :cond_23
    const/4 v8, 0x0

    .line 571
    :goto_24
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    .line 572
    invoke-static {v9, v10, v2, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$800(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;J)Z

    move-result v9

    if-nez v9, :cond_33

    if-nez v8, :cond_31

    goto :goto_33

    :cond_31
    const/4 v9, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v9, 0x1

    :goto_34
    if-eqz v8, :cond_3b

    .line 574
    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->blacklistPlaylist(J)Z

    move-result v2

    or-int/2addr v9, v2

    :cond_3b
    if-eqz v9, :cond_5b

    .line 578
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 579
    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$700(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    move-result-object v8

    iget v9, v1, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->type:I

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-interface/range {v8 .. v13}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(IJLjava/io/IOException;I)J

    move-result-wide v2

    cmp-long v8, v2, v4

    if-eqz v8, :cond_58

    .line 583
    invoke-static {v7, v2, v3}, Landroidx/media2/exoplayer/external/upstream/Loader;->createRetryAction(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object v2

    goto :goto_5d

    .line 584
    :cond_58
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    goto :goto_5d

    .line 586
    :cond_5b
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    .line 589
    :goto_5d
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->access$600(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v7

    iget-object v8, v1, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 591
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v9

    .line 592
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x4

    .line 596
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v16

    .line 598
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v1

    xor-int/lit8 v19, v1, 0x1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v18, p6

    .line 589
    invoke-virtual/range {v7 .. v19}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    return-object v2
.end method

.method public release()V
    .registers 2

    .line 495
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->release()V

    return-void
.end method

.method public run()V
    .registers 2

    const/4 v0, 0x0

    .line 607
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPending:Z

    .line 608
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylistImmediately()V

    return-void
.end method
