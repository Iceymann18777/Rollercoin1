.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<",
        "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable<",
        "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;


# instance fields
.field private final dataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

.field private eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

.field private initialPlaylistLoader:Landroidx/media2/exoplayer/external/upstream/Loader;

.field private initialStartTimeUs:J

.field private isLive:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private masterPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

.field private mediaPlaylistParser:Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final playlistBundles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final playlistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

.field private playlistRefreshHandler:Landroid/os/Handler;

.field private final playlistStuckTargetDurationCoefficient:D

.field private primaryMediaPlaylistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

.field private primaryMediaPlaylistUrl:Landroid/net/Uri;

.field private primaryPlaylistListener:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->FACTORY:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataSourceFactory",
            "loadErrorHandlingPolicy",
            "playlistParserFactory"
        }
    .end annotation

    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 89
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;-><init>(Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;D)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;D)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataSourceFactory",
            "loadErrorHandlingPolicy",
            "playlistParserFactory",
            "playlistStuckTargetDurationCoefficient"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->dataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    .line 113
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    .line 114
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 115
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistStuckTargetDurationCoefficient:D

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->listeners:Ljava/util/List;

    .line 117
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 118
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->initialStartTimeUs:J

    return-void
.end method

.method static synthetic access$1000(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->onPlaylistUpdated(Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)V

    return-void
.end method

.method static synthetic access$1100(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)D
    .registers 3

    .line 48
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistStuckTargetDurationCoefficient:D

    return-wide v0
.end method

.method static synthetic access$1200(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroid/net/Uri;
    .registers 1

    .line 48
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1300(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Z
    .registers 1

    .line 48
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->maybeSelectNewPrimaryUrl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;
    .registers 1

    .line 48
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->dataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;
    .registers 1

    .line 48
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->mediaPlaylistParser:Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroid/os/Handler;
    .registers 1

    .line 48
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;
    .registers 1

    .line 48
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;)Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;
    .registers 1

    .line 48
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;J)Z
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->notifyPlaylistError(Landroid/net/Uri;J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->getLatestPlaylistSnapshot(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p0

    return-object p0
.end method

.method private createBundles(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "urls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 343
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1a

    .line 345
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 346
    new-instance v3, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-direct {v3, p0, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;-><init>(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;)V

    .line 347
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1a
    return-void
.end method

.method private static getFirstOldOverlappingSegment(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldPlaylist",
            "loadedPlaylist"
        }
    .end annotation

    .line 446
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 447
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 448
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method private getLatestPlaylistSnapshot(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldPlaylist",
            "loadedPlaylist"
        }
    .end annotation

    .line 384
    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->isNewerThan(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 385
    iget-boolean p2, p2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz p2, :cond_e

    .line 390
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->copyWithEndTag()Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    :cond_e
    return-object p1

    .line 395
    :cond_f
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->getLoadedPlaylistStartTimeUs(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)J

    move-result-wide v0

    .line 396
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->getLoadedPlaylistDiscontinuitySequence(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)I

    move-result p1

    .line 397
    invoke-virtual {p2, v0, v1, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->copyWith(JI)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    return-object p1
.end method

.method private getLoadedPlaylistDiscontinuitySequence(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldPlaylist",
            "loadedPlaylist"
        }
    .end annotation

    .line 424
    iget-boolean v0, p2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasDiscontinuitySequence:Z

    if-eqz v0, :cond_7

    .line 425
    iget p1, p2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    return p1

    .line 429
    :cond_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 430
    iget v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez p1, :cond_13

    return v0

    .line 435
    :cond_13
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->getFirstOldOverlappingSegment(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 437
    iget p1, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    iget v0, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    add-int/2addr p1, v0

    iget-object p2, p2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 439
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget p2, p2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    sub-int/2addr p1, p2

    return p1

    :cond_2a
    return v0
.end method

.method private getLoadedPlaylistStartTimeUs(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)J
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldPlaylist",
            "loadedPlaylist"
        }
    .end annotation

    .line 402
    iget-boolean v0, p2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    if-eqz v0, :cond_7

    .line 403
    iget-wide p1, p2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    return-wide p1

    .line 406
    :cond_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v0, :cond_e

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    goto :goto_10

    :cond_e
    const-wide/16 v0, 0x0

    :goto_10
    if-nez p1, :cond_13

    return-wide v0

    .line 410
    :cond_13
    iget-object v2, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 411
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->getFirstOldOverlappingSegment(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 413
    iget-wide p1, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v0, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    add-long/2addr p1, v0

    return-wide p1

    :cond_25
    int-to-long v2, v2

    .line 414
    iget-wide v4, p2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-wide v6, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long/2addr v4, v6

    cmp-long p2, v2, v4

    if-nez p2, :cond_34

    .line 415
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide p1

    return-wide p1

    :cond_34
    return-wide v0
.end method

.method private isVariantUrl(Landroid/net/Uri;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playlistUrl"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->masterPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 334
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 335
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->url:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1f
    return v1
.end method

.method private maybeSelectNewPrimaryUrl()Z
    .registers 11

    .line 305
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->masterPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    .line 306
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v1, :cond_36

    .line 309
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->url:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    .line 310
    invoke-static {v6}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->access$100(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;)J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-lez v9, :cond_33

    .line 311
    invoke-static {v6}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->access$200(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    .line 312
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    const/4 v0, 0x1

    return v0

    :cond_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_36
    return v4
.end method

.method private maybeSetPrimaryUrl(Landroid/net/Uri;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 321
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->isVariantUrl(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v0, :cond_17

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v0, :cond_17

    goto :goto_24

    .line 327
    :cond_17
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    .line 328
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    :cond_24
    :goto_24
    return-void
.end method

.method private notifyPlaylistError(Landroid/net/Uri;J)Z
    .registers 8
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

    .line 374
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_1c

    .line 377
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;

    invoke-interface {v3, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;->onPlaylistError(Landroid/net/Uri;J)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1c
    return v2
.end method

.method private onPlaylistUpdated(Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "newSnapshot"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 359
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    if-nez p1, :cond_16

    .line 361
    iget-boolean p1, p2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->isLive:Z

    .line 362
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->initialStartTimeUs:J

    .line 364
    :cond_16
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    .line 365
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryPlaylistListener:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;->onPrimaryPlaylistRefreshed(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)V

    .line 367
    :cond_1d
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_24
    if-ge p2, p1, :cond_34

    .line 369
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;->onPlaylistChanged()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    :cond_34
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getInitialStartTimeUs()J
    .registers 3

    .line 193
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->initialStartTimeUs:J

    return-wide v0
.end method

.method public getMasterPlaylist()Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;
    .registers 2

    .line 179
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->masterPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    return-object v0
.end method

.method public getPlaylistSnapshot(Landroid/net/Uri;Z)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "isForPlayback"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->getPlaylistSnapshot()Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v0

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    .line 186
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->maybeSetPrimaryUrl(Landroid/net/Uri;)V

    :cond_13
    return-object v0
.end method

.method public isLive()Z
    .registers 2

    .line 223
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->isLive:Z

    return v0
.end method

.method public isSnapshotValid(Landroid/net/Uri;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->isSnapshotValid()Z

    move-result p1

    return p1
.end method

.method public maybeThrowPlaylistRefreshError(Landroid/net/Uri;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->maybeThrowPlaylistRefreshError()V

    return-void
.end method

.method public maybeThrowPrimaryPlaylistRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->initialPlaylistLoader:Landroidx/media2/exoplayer/external/upstream/Loader;

    if-eqz v0, :cond_7

    .line 204
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->maybeThrowError()V

    .line 206
    :cond_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    if-eqz v0, :cond_e

    .line 207
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->maybeThrowPlaylistRefreshError(Landroid/net/Uri;)V

    :cond_e
    return-void
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

    .line 47
    check-cast p1, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;JJZ)V
    .registers 19
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

    .line 266
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-object v2, p1

    iget-object v3, v2, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 268
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 269
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    .line 273
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    const/4 v6, 0x4

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide v6, p2

    move-wide/from16 v8, p4

    .line 266
    invoke-virtual/range {v1 .. v11}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

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

    .line 47
    check-cast p1, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->onLoadCompleted(Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;JJ)V
    .registers 21
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

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;

    .line 233
    instance-of v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v2, :cond_12

    .line 235
    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->createSingleVariantMasterPlaylist(Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v3

    goto :goto_15

    .line 237
    :cond_12
    move-object v3, v1

    check-cast v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    .line 239
    :goto_15
    iput-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->masterPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    .line 240
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    invoke-interface {v4, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;->createPlaylistParser(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;)Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;

    move-result-object v4

    iput-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->mediaPlaylistParser:Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;

    .line 241
    iget-object v4, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->url:Landroid/net/Uri;

    iput-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    .line 242
    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->mediaPlaylistUrls:Ljava/util/List;

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->createBundles(Ljava/util/List;)V

    .line 243
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    if-eqz v2, :cond_45

    .line 246
    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-wide/from16 v11, p4

    invoke-static {v3, v1, v11, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->access$000(Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;J)V

    goto :goto_4a

    :cond_45
    move-wide/from16 v11, p4

    .line 248
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    .line 250
    :goto_4a
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-object/from16 v1, p1

    iget-object v5, v1, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x4

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v13

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 250
    invoke-virtual/range {v4 .. v14}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

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

    .line 47
    check-cast p1, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p7}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->onLoadError(Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoadError(Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .registers 27
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

    .line 283
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v3, v1, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->type:I

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 284
    invoke-interface/range {v2 .. v7}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(IJLjava/io/IOException;I)J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    if-nez v7, :cond_1e

    const/4 v5, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v5, 0x0

    .line 287
    :goto_1f
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v7, v1, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 289
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x4

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v15

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move-object/from16 v17, p6

    move/from16 v18, v5

    .line 287
    invoke-virtual/range {v6 .. v18}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    if-eqz v5, :cond_40

    .line 298
    sget-object v1, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    goto :goto_44

    .line 299
    :cond_40
    invoke-static {v4, v2, v3}, Landroidx/media2/exoplayer/external/upstream/Loader;->createRetryAction(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object v1

    :goto_44
    return-object v1
.end method

.method public refreshPlaylist(Landroid/net/Uri;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    return-void
.end method

.method public removeListener(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public start(Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "initialPlaylistUri",
            "eventDispatcher",
            "primaryPlaylistListener"
        }
    .end annotation

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    .line 129
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 130
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryPlaylistListener:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;

    .line 131
    new-instance p3, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->dataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    const/4 v1, 0x4

    .line 133
    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;->createDataSource(I)Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    .line 136
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;->createPlaylistParser()Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;

    move-result-object v2

    invoke-direct {p3, v0, p1, v1, v2}, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroid/net/Uri;ILandroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;)V

    .line 137
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->initialPlaylistLoader:Landroidx/media2/exoplayer/external/upstream/Loader;

    if-nez p1, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 138
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/Loader;

    const-string v0, "DefaultHlsPlaylistTracker:MasterPlaylist"

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->initialPlaylistLoader:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 139
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v1, p3, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->type:I

    .line 143
    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v0

    .line 140
    invoke-virtual {p1, p3, p0, v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->startLoading(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;Landroidx/media2/exoplayer/external/upstream/Loader$Callback;I)J

    move-result-wide v0

    .line 144
    iget-object p1, p3, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget p3, p3, Landroidx/media2/exoplayer/external/upstream/ParsingLoadable;->type:I

    invoke-virtual {p2, p1, p3, v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;IJ)V

    return-void
.end method

.method public stop()V
    .registers 4

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    .line 153
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistSnapshot:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    .line 154
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->masterPlaylist:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 155
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->initialStartTimeUs:J

    .line 156
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->initialPlaylistLoader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->release()V

    .line 157
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->initialPlaylistLoader:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 158
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    .line 159
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->release()V

    goto :goto_1f

    .line 161
    :cond_2f
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 162
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    .line 163
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
