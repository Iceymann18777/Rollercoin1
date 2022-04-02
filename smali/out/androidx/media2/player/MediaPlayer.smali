.class public final Landroidx/media2/player/MediaPlayer;
.super Landroidx/media2/common/SessionPlayer;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/MediaPlayer$MediaItemList;,
        Landroidx/media2/player/MediaPlayer$DrmResult;,
        Landroidx/media2/player/MediaPlayer$DrmInfo;,
        Landroidx/media2/player/MediaPlayer$TrackInfo;,
        Landroidx/media2/player/MediaPlayer$PlayerCallback;,
        Landroidx/media2/player/MediaPlayer$Mp2Callback;,
        Landroidx/media2/player/MediaPlayer$Mp2DrmCallback;,
        Landroidx/media2/player/MediaPlayer$MediaPlayerCallbackNotifier;,
        Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;,
        Landroidx/media2/player/MediaPlayer$PendingFuture;,
        Landroidx/media2/player/MediaPlayer$PendingCommand;
    }
.end annotation


# static fields
.field static final DEFAULT_PLAYBACK_PARAMS:Landroidx/media2/player/PlaybackParams;

.field static sErrorCodeMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sInfoCodeMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sResultCodeMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sSeekModeMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAudioFocusHandler:Landroidx/media2/player/AudioFocusHandler;

.field private mClosed:Z

.field mCurPlaylistItem:Landroidx/media2/common/MediaItem;

.field mCurrentShuffleIdx:I

.field mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mMediaItemToBuffState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/common/MediaItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mNextPlaylistItem:Landroidx/media2/common/MediaItem;

.field final mPendingCommands:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/player/MediaPlayer$PendingCommand;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingFutures:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/player/MediaPlayer$PendingFuture<",
            "-",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;"
        }
    .end annotation
.end field

.field mPlayer:Landroidx/media2/player/MediaPlayer2;

.field mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

.field final mPlaylistLock:Ljava/lang/Object;

.field mRepeatMode:I

.field private mSetMediaItemCalled:Z

.field mShuffledList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 423
    new-instance v0, Landroidx/media2/player/PlaybackParams$Builder;

    invoke-direct {v0}, Landroidx/media2/player/PlaybackParams$Builder;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 424
    invoke-virtual {v0, v1}, Landroidx/media2/player/PlaybackParams$Builder;->setSpeed(F)Landroidx/media2/player/PlaybackParams$Builder;

    move-result-object v0

    .line 425
    invoke-virtual {v0, v1}, Landroidx/media2/player/PlaybackParams$Builder;->setPitch(F)Landroidx/media2/player/PlaybackParams$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 446
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 426
    invoke-virtual {v0, v1}, Landroidx/media2/player/PlaybackParams$Builder;->setAudioFallbackMode(I)Landroidx/media2/player/PlaybackParams$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroidx/media2/player/PlaybackParams$Builder;->build()Landroidx/media2/player/PlaybackParams;

    move-result-object v0

    sput-object v0, Landroidx/media2/player/MediaPlayer;->DEFAULT_PLAYBACK_PARAMS:Landroidx/media2/player/PlaybackParams;

    .line 445
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    .line 446
    invoke-virtual {v0, v2, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    const/4 v1, 0x1

    .line 449
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 448
    invoke-virtual {v0, v1, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    const/4 v4, 0x3

    .line 452
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 451
    invoke-virtual {v0, v4, v5}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/player/MediaPlayer;->sErrorCodeMap:Landroidx/collection/ArrayMap;

    .line 457
    invoke-virtual {v0, v1, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sErrorCodeMap:Landroidx/collection/ArrayMap;

    const/16 v7, -0x3ec

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v7}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sErrorCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, -0x3ef

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sErrorCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, -0x3f2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sErrorCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, -0x6e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    .line 464
    invoke-virtual {v0, v4, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, 0x2bc

    .line 467
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 466
    invoke-virtual {v0, v8, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, 0x2c0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, 0x320

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, 0x321

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, 0x322

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, 0x324

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sInfoCodeMap:Landroidx/collection/ArrayMap;

    const/16 v8, 0x325

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/player/MediaPlayer;->sSeekModeMap:Landroidx/collection/ArrayMap;

    .line 476
    invoke-virtual {v0, v2, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sSeekModeMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, v1, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sSeekModeMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, v3, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sSeekModeMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, v4, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    .line 482
    invoke-virtual {v0, v2, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    const/16 v2, -0x3e9

    .line 485
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 484
    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    const/16 v1, -0x3eb

    .line 487
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 486
    invoke-virtual {v0, v3, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    .line 489
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 488
    invoke-virtual {v0, v4, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, v5, v7}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    const/16 v1, -0x3ed

    .line 493
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 492
    invoke-virtual {v0, v6, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 669
    invoke-direct {p0}, Landroidx/media2/common/SessionPlayer;-><init>()V

    .line 524
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    .line 620
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    .line 624
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    .line 627
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mMediaItemToBuffState:Ljava/util/Map;

    .line 635
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    .line 637
    new-instance v0, Landroidx/media2/player/MediaPlayer$MediaItemList;

    invoke-direct {v0}, Landroidx/media2/player/MediaPlayer$MediaItemList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    .line 640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    if-eqz p1, :cond_67

    const/4 v0, 0x0

    .line 673
    iput v0, p0, Landroidx/media2/player/MediaPlayer;->mState:I

    .line 674
    invoke-static {p1}, Landroidx/media2/player/MediaPlayer2;->create(Landroid/content/Context;)Landroidx/media2/player/MediaPlayer2;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    const/4 v0, 0x1

    .line 675
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 676
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    new-instance v2, Landroidx/media2/player/MediaPlayer$Mp2Callback;

    invoke-direct {v2, p0}, Landroidx/media2/player/MediaPlayer$Mp2Callback;-><init>(Landroidx/media2/player/MediaPlayer;)V

    invoke-virtual {v1, v0, v2}, Landroidx/media2/player/MediaPlayer2;->setEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer2$EventCallback;)V

    .line 677
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Landroidx/media2/player/MediaPlayer$Mp2DrmCallback;

    invoke-direct {v2, p0}, Landroidx/media2/player/MediaPlayer$Mp2DrmCallback;-><init>(Landroidx/media2/player/MediaPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroidx/media2/player/MediaPlayer2;->setDrmEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer2$DrmEventCallback;)V

    const/4 v0, -0x2

    .line 678
    iput v0, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    .line 679
    new-instance v0, Landroidx/media2/player/AudioFocusHandler;

    invoke-direct {v0, p1, p0}, Landroidx/media2/player/AudioFocusHandler;-><init>(Landroid/content/Context;Landroidx/media2/player/MediaPlayer;)V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mAudioFocusHandler:Landroidx/media2/player/AudioFocusHandler;

    return-void

    .line 671
    :cond_67
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "context shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createTrackInfo(Landroidx/media2/common/SessionPlayer$TrackInfo;)Landroidx/media2/player/MediaPlayer$TrackInfo;
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 3061
    :cond_4
    new-instance v0, Landroidx/media2/player/MediaPlayer$TrackInfo;

    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getTrackType()I

    move-result v3

    .line 3062
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/media2/player/MediaPlayer$TrackInfo;-><init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V

    return-object v0
.end method

.method private executePendingFutures()V
    .registers 5

    .line 3028
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 3029
    :try_start_3
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3030
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3031
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/MediaPlayer$PendingFuture;

    .line 3032
    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$PendingFuture;->execute()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3033
    :cond_21
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_9

    .line 3039
    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 3040
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/MediaPlayer$PendingFuture;

    .line 3041
    iget-boolean v3, v2, Landroidx/media2/player/MediaPlayer$PendingFuture;->mIsSeekTo:Z

    if-nez v3, :cond_38

    goto :goto_3c

    .line 3044
    :cond_38
    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$PendingFuture;->execute()Z

    goto :goto_27

    .line 3046
    :cond_3c
    :goto_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    goto :goto_42

    :goto_41
    throw v1

    :goto_42
    goto :goto_41
.end method

.method private setMediaItemInternal(Landroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2792
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v0

    .line 2793
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 2794
    :try_start_7
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2, p1}, Landroidx/media2/player/MediaPlayer2;->setMediaItem(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x13

    .line 2795
    invoke-virtual {p0, v2, v0, p1}, Landroidx/media2/player/MediaPlayer;->addPendingCommandLocked(ILandroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    .line 2796
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1e

    .line 2797
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v1, 0x1

    .line 2798
    :try_start_17
    iput-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mSetMediaItemCalled:Z

    .line 2799
    monitor-exit p1

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1b

    throw v0

    :catchall_1e
    move-exception p1

    .line 2796
    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method


# virtual methods
.method addFutureListener(Landroidx/media2/player/MediaPlayer$PendingCommand;Landroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V
    .registers 5

    .line 705
    new-instance v0, Landroidx/media2/player/MediaPlayer$1;

    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/media2/player/MediaPlayer$1;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;Landroidx/media2/player/MediaPlayer$PendingCommand;)V

    iget-object p1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p2, v0, p1}, Landroidx/media2/player/futures/ResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method addPendingCommandLocked(ILandroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V
    .registers 5

    .line 686
    new-instance v0, Landroidx/media2/player/MediaPlayer$PendingCommand;

    invoke-direct {v0, p1, p2}, Landroidx/media2/player/MediaPlayer$PendingCommand;-><init>(ILandroidx/media2/player/futures/ResolvableFuture;)V

    .line 687
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 688
    invoke-virtual {p0, v0, p2, p3}, Landroidx/media2/player/MediaPlayer;->addFutureListener(Landroidx/media2/player/MediaPlayer$PendingCommand;Landroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    return-void
.end method

.method addPendingCommandWithTrackInfoLocked(ILandroidx/media2/player/futures/ResolvableFuture;Landroidx/media2/player/MediaPlayer$TrackInfo;Ljava/lang/Object;)V
    .registers 6

    .line 696
    new-instance v0, Landroidx/media2/player/MediaPlayer$PendingCommand;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/player/MediaPlayer$PendingCommand;-><init>(ILandroidx/media2/player/futures/ResolvableFuture;Landroidx/media2/player/MediaPlayer$TrackInfo;)V

    .line 697
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 698
    invoke-virtual {p0, v0, p2, p4}, Landroidx/media2/player/MediaPlayer;->addFutureListener(Landroidx/media2/player/MediaPlayer$PendingCommand;Landroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    return-void
.end method

.method addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V
    .registers 4

    .line 722
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 723
    :try_start_3
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 724
    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer;->executePendingFutures()V

    .line 725
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1673
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1674
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    .line 1675
    iput-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    .line 1676
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->reset()V

    .line 1677
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mAudioFocusHandler:Landroidx/media2/player/AudioFocusHandler;

    invoke-virtual {v1}, Landroidx/media2/player/AudioFocusHandler;->close()V

    .line 1678
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2;->close()V

    .line 1679
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1681
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2838
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v0

    .line 2839
    new-instance v1, Landroidx/media2/common/SessionPlayer$PlayerResult;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/media2/common/SessionPlayer$PlayerResult;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    return-object v0
.end method

.method createFutureForResultCode(I)Landroidx/media2/player/futures/ResolvableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2845
    invoke-virtual {p0, p1, v0}, Landroidx/media2/player/MediaPlayer;->createFutureForResultCode(ILandroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    return-object p1
.end method

.method createFutureForResultCode(ILandroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2850
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v0

    .line 2851
    new-instance v1, Landroidx/media2/common/SessionPlayer$PlayerResult;

    if-nez p2, :cond_e

    iget-object p2, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    .line 2852
    invoke-virtual {p2}, Landroidx/media2/player/MediaPlayer2;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object p2

    :cond_e
    invoke-direct {v1, p1, p2}, Landroidx/media2/common/SessionPlayer$PlayerResult;-><init>(ILandroidx/media2/common/MediaItem;)V

    .line 2851
    invoke-virtual {v0, v1}, Landroidx/media2/player/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    return-object v0
.end method

.method createFuturesForResultCode(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2858
    invoke-virtual {p0, p1, v0}, Landroidx/media2/player/MediaPlayer;->createFuturesForResultCode(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method createFuturesForResultCode(ILandroidx/media2/common/MediaItem;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;"
        }
    .end annotation

    .line 2864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2865
    invoke-virtual {p0, p1, p2}, Landroidx/media2/player/MediaPlayer;->createFutureForResultCode(ILandroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method createTrackInfoInternal(Landroidx/media2/player/MediaPlayer$TrackInfo;)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 3053
    :cond_4
    new-instance v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer$TrackInfo;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer$TrackInfo;->getMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v3

    .line 3054
    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;-><init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V

    return-object v0
.end method

.method public deselectTrack(Landroidx/media2/player/MediaPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/player/MediaPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_22

    .line 2329
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2330
    :try_start_5
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_f

    .line 2331
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 2333
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1f

    .line 2334
    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer$TrackInfo;->getId()I

    move-result v0

    .line 2335
    new-instance v1, Landroidx/media2/player/MediaPlayer$27;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, p0, v2, v0, p1}, Landroidx/media2/player/MediaPlayer$27;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ILandroidx/media2/player/MediaPlayer$TrackInfo;)V

    .line 2350
    invoke-virtual {p0, v1}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    return-object v1

    :catchall_1f
    move-exception p1

    .line 2333
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1

    .line 2327
    :cond_22
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "trackInfo shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deselectTrackInternal(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2389
    invoke-direct {p0, p1}, Landroidx/media2/player/MediaPlayer;->createTrackInfo(Landroidx/media2/common/SessionPlayer$TrackInfo;)Landroidx/media2/player/MediaPlayer$TrackInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer;->deselectTrack(Landroidx/media2/player/MediaPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public getAudioAttributes()Landroidx/media/AudioAttributesCompat;
    .registers 4

    .line 1025
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1026
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 1027
    monitor-exit v0

    return-object v2

    .line 1029
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_13

    .line 1031
    :try_start_b
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    return-object v2

    :catchall_13
    move-exception v1

    .line 1029
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getBufferedPosition()J
    .registers 8

    .line 976
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_b

    .line 978
    monitor-exit v0

    return-wide v2

    .line 980
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    .line 982
    :try_start_c
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getBufferedPosition()J

    move-result-wide v0
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_12} :catch_19

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_19

    return-wide v0

    :catch_19
    :cond_19
    return-wide v2

    :catchall_1a
    move-exception v1

    .line 980
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getCurrentMediaItem()Landroidx/media2/common/MediaItem;
    .registers 3

    .line 1602
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1603
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    .line 1604
    monitor-exit v0

    return-object v1

    .line 1606
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_12

    .line 1607
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0

    :catchall_12
    move-exception v1

    .line 1606
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getCurrentPosition()J
    .registers 8

    .line 940
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_b

    .line 942
    monitor-exit v0

    return-wide v2

    .line 944
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    .line 946
    :try_start_c
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getCurrentPosition()J

    move-result-wide v0
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_12} :catch_19

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_19

    return-wide v0

    :catch_19
    :cond_19
    return-wide v2

    :catchall_1a
    move-exception v1

    .line 944
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getDuration()J
    .registers 8

    .line 958
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 959
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_b

    .line 960
    monitor-exit v0

    return-wide v2

    .line 962
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    .line 964
    :try_start_c
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getDuration()J

    move-result-wide v0
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_12} :catch_19

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_19

    return-wide v0

    :catch_19
    :cond_19
    return-wide v2

    :catchall_1a
    move-exception v1

    .line 962
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getNextMediaItemIndex()I
    .registers 5

    .line 1650
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1651
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_a

    .line 1652
    monitor-exit v0

    return v2

    .line 1654
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_4d

    .line 1655
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1656
    :try_start_e
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    if-gez v0, :cond_14

    .line 1657
    monitor-exit v1

    return v2

    .line 1659
    :cond_14
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    add-int/lit8 v0, v0, 0x1

    .line 1660
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_3c

    .line 1661
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2d

    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2b

    goto :goto_2d

    .line 1664
    :cond_2b
    monitor-exit v1

    return v2

    .line 1662
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media2/player/MediaPlayer$MediaItemList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 1667
    :cond_3c
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/media2/player/MediaPlayer$MediaItemList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_4a
    move-exception v0

    .line 1668
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_e .. :try_end_4c} :catchall_4a

    throw v0

    :catchall_4d
    move-exception v1

    .line 1654
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public getPlaybackSpeed()F
    .registers 4

    .line 1010
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1011
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_b

    .line 1012
    monitor-exit v0

    return v2

    .line 1014
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c

    .line 1016
    :try_start_c
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getPlaybackParams()Landroidx/media2/player/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/player/PlaybackParams;->getSpeed()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_1a} :catch_1b

    return v0

    :catch_1b
    return v2

    :catchall_1c
    move-exception v1

    .line 1014
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getPlayerState()I
    .registers 3

    .line 933
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 934
    :try_start_3
    iget v1, p0, Landroidx/media2/player/MediaPlayer;->mState:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 935
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getPlayerVolume()F
    .registers 3

    .line 1837
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1838
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_b

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1839
    monitor-exit v0

    return v1

    .line 1841
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    .line 1842
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getPlayerVolume()F

    move-result v0

    return v0

    :catchall_13
    move-exception v1

    .line 1841
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getPreviousMediaItemIndex()I
    .registers 5

    .line 1627
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1628
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_a

    .line 1629
    monitor-exit v0

    return v2

    .line 1631
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_4e

    .line 1632
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1633
    :try_start_e
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    if-gez v0, :cond_14

    .line 1634
    monitor-exit v1

    return v2

    .line 1636
    :cond_14
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_3d

    .line 1638
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_27

    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_25

    goto :goto_27

    .line 1641
    :cond_25
    monitor-exit v1

    return v2

    .line 1639
    :cond_27
    :goto_27
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media2/player/MediaPlayer$MediaItemList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 1644
    :cond_3d
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/media2/player/MediaPlayer$MediaItemList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_4b
    move-exception v0

    .line 1645
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_e .. :try_end_4d} :catchall_4b

    throw v0

    :catchall_4e
    move-exception v1

    .line 1631
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public getSelectedTrack(I)Landroidx/media2/player/MediaPlayer$TrackInfo;
    .registers 5

    .line 2233
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2234
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 2235
    monitor-exit v0

    return-object v2

    .line 2237
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_19

    .line 2238
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0, p1}, Landroidx/media2/player/MediaPlayer2;->getSelectedTrack(I)I

    move-result p1

    if-gez p1, :cond_14

    goto :goto_18

    .line 2239
    :cond_14
    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer;->getTrackInfo(I)Landroidx/media2/player/MediaPlayer$TrackInfo;

    move-result-object v2

    :goto_18
    return-object v2

    :catchall_19
    move-exception p1

    .line 2237
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public getSelectedTrackInternal(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .registers 2

    .line 2400
    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer;->getSelectedTrack(I)Landroidx/media2/player/MediaPlayer$TrackInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer;->createTrackInfoInternal(Landroidx/media2/player/MediaPlayer$TrackInfo;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    return-object p1
.end method

.method getTrackInfo(I)Landroidx/media2/player/MediaPlayer$TrackInfo;
    .registers 6

    .line 2209
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getTrackInfo()Ljava/util/List;

    move-result-object v0

    .line 2210
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/MediaPlayer2$TrackInfo;

    .line 2211
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    .line 2212
    new-instance v2, Landroidx/media2/player/MediaPlayer$TrackInfo;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2$TrackInfo;->getTrackType()I

    move-result v3

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-direct {v2, p1, v1, v3, v0}, Landroidx/media2/player/MediaPlayer$TrackInfo;-><init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V

    return-object v2
.end method

.method public getTrackInfo()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/MediaPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 2192
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2193
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_d

    .line 2194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2196
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_40

    .line 2197
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->getTrackInfo()Ljava/util/List;

    move-result-object v0

    .line 2198
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    .line 2199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 2200
    :goto_20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3f

    .line 2201
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/player/MediaPlayer2$TrackInfo;

    .line 2202
    new-instance v5, Landroidx/media2/player/MediaPlayer$TrackInfo;

    invoke-virtual {v4}, Landroidx/media2/player/MediaPlayer2$TrackInfo;->getTrackType()I

    move-result v6

    invoke-virtual {v4}, Landroidx/media2/player/MediaPlayer2$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-direct {v5, v3, v1, v6, v4}, Landroidx/media2/player/MediaPlayer$TrackInfo;-><init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_3f
    return-object v2

    :catchall_40
    move-exception v1

    .line 2196
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    goto :goto_44

    :goto_43
    throw v1

    :goto_44
    goto :goto_43
.end method

.method public getTrackInfoInternal()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 2362
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->getTrackInfo()Ljava/util/List;

    move-result-object v0

    .line 2363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 2364
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 2365
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/player/MediaPlayer$TrackInfo;

    invoke-virtual {p0, v3}, Landroidx/media2/player/MediaPlayer;->createTrackInfoInternal(Landroidx/media2/player/MediaPlayer$TrackInfo;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_20
    return-object v1
.end method

.method public getVideoSizeInternal()Landroidx/media2/common/VideoSize;
    .registers 4

    .line 1878
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1879
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_f

    .line 1880
    new-instance v1, Landroidx/media2/common/VideoSize;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroidx/media2/common/VideoSize;-><init>(II)V

    monitor-exit v0

    return-object v1

    .line 1882
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_22

    .line 1883
    new-instance v0, Landroidx/media2/common/VideoSize;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    .line 1884
    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer2;->getVideoHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media2/common/VideoSize;-><init>(II)V

    return-object v0

    :catchall_22
    move-exception v1

    .line 1882
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method handleCallComplete(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V
    .registers 8

    .line 2933
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter p1

    .line 2934
    :try_start_3
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/MediaPlayer$PendingCommand;

    .line 2935
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12c

    if-nez v0, :cond_2a

    const-string p1, "MediaPlayer"

    .line 2937
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No matching call type for "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ". Possibly because of reset()."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2941
    :cond_2a
    iget-object p1, v0, Landroidx/media2/player/MediaPlayer$PendingCommand;->mTrackInfo:Landroidx/media2/player/MediaPlayer$TrackInfo;

    .line 2942
    iget v1, v0, Landroidx/media2/player/MediaPlayer$PendingCommand;->mCallType:I

    if-eq p3, v1, :cond_52

    const-string p4, "MediaPlayer"

    .line 2943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call type does not match. expeced:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroidx/media2/player/MediaPlayer$PendingCommand;->mCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p4, -0x80000000

    :cond_52
    if-nez p4, :cond_c2

    const/4 v1, 0x2

    if-eq p3, v1, :cond_ba

    const/16 v2, 0x13

    if-eq p3, v2, :cond_b1

    const/16 v2, 0x18

    if-eq p3, v2, :cond_9a

    const/4 v2, 0x4

    if-eq p3, v2, :cond_95

    const/4 v2, 0x5

    if-eq p3, v2, :cond_91

    const/4 v1, 0x6

    if-eq p3, v1, :cond_95

    packed-switch p3, :pswitch_data_130

    goto :goto_c2

    .line 2987
    :pswitch_6c
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer2;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object p1

    .line 2988
    new-instance v1, Landroidx/media2/player/MediaPlayer$37;

    invoke-direct {v1, p0, p1}, Landroidx/media2/player/MediaPlayer$37;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media/AudioAttributesCompat;)V

    invoke-virtual {p0, v1}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    goto :goto_c2

    .line 2996
    :pswitch_7b
    new-instance v1, Landroidx/media2/player/MediaPlayer$38;

    invoke-direct {v1, p0, p1}, Landroidx/media2/player/MediaPlayer$38;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$TrackInfo;)V

    invoke-virtual {p0, v1}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    goto :goto_c2

    .line 2957
    :pswitch_84
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->getCurrentPosition()J

    move-result-wide v1

    .line 2958
    new-instance p1, Landroidx/media2/player/MediaPlayer$34;

    invoke-direct {p1, p0, v1, v2}, Landroidx/media2/player/MediaPlayer$34;-><init>(Landroidx/media2/player/MediaPlayer;J)V

    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    goto :goto_c2

    .line 2954
    :cond_91
    invoke-virtual {p0, v1}, Landroidx/media2/player/MediaPlayer;->setState(I)V

    goto :goto_c2

    :cond_95
    const/4 p1, 0x1

    .line 2951
    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer;->setState(I)V

    goto :goto_c2

    .line 2977
    :cond_9a
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer2;->getPlaybackParams()Landroidx/media2/player/PlaybackParams;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media2/player/PlaybackParams;->getSpeed()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2978
    new-instance v1, Landroidx/media2/player/MediaPlayer$36;

    invoke-direct {v1, p0, p1}, Landroidx/media2/player/MediaPlayer$36;-><init>(Landroidx/media2/player/MediaPlayer;F)V

    invoke-virtual {p0, v1}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    goto :goto_c2

    .line 2967
    :cond_b1
    new-instance p1, Landroidx/media2/player/MediaPlayer$35;

    invoke-direct {p1, p0, p2}, Landroidx/media2/player/MediaPlayer$35;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    goto :goto_c2

    .line 3005
    :cond_ba
    new-instance v1, Landroidx/media2/player/MediaPlayer$39;

    invoke-direct {v1, p0, p1}, Landroidx/media2/player/MediaPlayer$39;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$TrackInfo;)V

    invoke-virtual {p0, v1}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    :cond_c2
    :goto_c2
    const/16 p1, 0x3e9

    if-eq p3, p1, :cond_f7

    .line 3016
    sget-object p1, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e3

    sget-object p1, Landroidx/media2/player/MediaPlayer;->sResultCodeMap:Landroidx/collection/ArrayMap;

    .line 3017
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_e4

    :cond_e3
    const/4 p1, -0x1

    .line 3016
    :goto_e4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3018
    iget-object p3, v0, Landroidx/media2/player/MediaPlayer$PendingCommand;->mFuture:Landroidx/media2/player/futures/ResolvableFuture;

    new-instance p4, Landroidx/media2/common/SessionPlayer$PlayerResult;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p4, p1, p2}, Landroidx/media2/common/SessionPlayer$PlayerResult;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {p3, p4}, Landroidx/media2/player/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_128

    .line 3020
    :cond_f7
    sget-object p1, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_114

    sget-object p1, Landroidx/media2/player/MediaPlayer;->sPrepareDrmStatusMap:Landroidx/collection/ArrayMap;

    .line 3021
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_116

    :cond_114
    const/16 p1, -0x3eb

    .line 3020
    :goto_116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3022
    iget-object p3, v0, Landroidx/media2/player/MediaPlayer$PendingCommand;->mFuture:Landroidx/media2/player/futures/ResolvableFuture;

    new-instance p4, Landroidx/media2/player/MediaPlayer$DrmResult;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p4, p1, p2}, Landroidx/media2/player/MediaPlayer$DrmResult;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {p3, p4}, Landroidx/media2/player/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 3024
    :goto_128
    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer;->executePendingFutures()V

    return-void

    :catchall_12c
    move-exception p2

    .line 2935
    :try_start_12d
    monitor-exit p1
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12c

    throw p2

    nop

    :pswitch_data_130
    .packed-switch 0xe
        :pswitch_84
        :pswitch_7b
        :pswitch_6c
    .end packed-switch
.end method

.method notifyMediaPlayerCallback(Landroidx/media2/player/MediaPlayer$MediaPlayerCallbackNotifier;)V
    .registers 6

    .line 2739
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2740
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_9

    .line 2741
    monitor-exit v0

    return-void

    .line 2743
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_36

    .line 2744
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 2745
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    .line 2746
    iget-object v2, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    instance-of v2, v2, Landroidx/media2/player/MediaPlayer$PlayerCallback;

    if-eqz v2, :cond_12

    .line 2747
    iget-object v2, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroidx/media2/player/MediaPlayer$PlayerCallback;

    .line 2748
    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/media2/player/MediaPlayer$33;

    invoke-direct {v3, p0, p1, v2}, Landroidx/media2/player/MediaPlayer$33;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$MediaPlayerCallbackNotifier;Landroidx/media2/player/MediaPlayer$PlayerCallback;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_35
    return-void

    :catchall_36
    move-exception p1

    .line 2743
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    goto :goto_3a

    :goto_39
    throw p1

    :goto_3a
    goto :goto_39
.end method

.method notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V
    .registers 6

    .line 2720
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2721
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_9

    .line 2722
    monitor-exit v0

    return-void

    .line 2724
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_30

    .line 2725
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 2726
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    .line 2727
    iget-object v2, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroidx/media2/common/SessionPlayer$PlayerCallback;

    .line 2728
    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/media2/player/MediaPlayer$32;

    invoke-direct {v3, p0, p1, v2}, Landroidx/media2/player/MediaPlayer$32;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;Landroidx/media2/common/SessionPlayer$PlayerCallback;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_2f
    return-void

    :catchall_30
    move-exception p1

    .line 2724
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    goto :goto_34

    :goto_33
    throw p1

    :goto_34
    goto :goto_33
.end method

.method public pause()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 764
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 765
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_d

    .line 766
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 768
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    .line 769
    new-instance v0, Landroidx/media2/player/MediaPlayer$3;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$3;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 783
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    return-object v0

    :catchall_19
    move-exception v1

    .line 768
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public play()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 731
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_d

    .line 733
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 735
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    .line 736
    new-instance v0, Landroidx/media2/player/MediaPlayer$2;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$2;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 757
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    return-object v0

    :catchall_19
    move-exception v1

    .line 735
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public prepare()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_d

    .line 806
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 808
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    .line 809
    new-instance v0, Landroidx/media2/player/MediaPlayer$4;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$4;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 826
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    return-object v0

    :catchall_19
    move-exception v1

    .line 808
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public registerPlayerCallback(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer$PlayerCallback;)V
    .registers 3

    .line 2413
    invoke-super {p0, p1, p2}, Landroidx/media2/common/SessionPlayer;->registerPlayerCallback(Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$PlayerCallback;)V

    return-void
.end method

.method public reset()V
    .registers 6

    .line 1701
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 1702
    :try_start_3
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/MediaPlayer$PendingCommand;

    .line 1703
    iget-object v2, v2, Landroidx/media2/player/MediaPlayer$PendingCommand;->mFuture:Landroidx/media2/player/futures/ResolvableFuture;

    invoke-virtual {v2, v3}, Landroidx/media2/player/futures/ResolvableFuture;->cancel(Z)Z

    goto :goto_9

    .line 1705
    :cond_1c
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 1706
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_89

    .line 1708
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 1709
    :try_start_25
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/MediaPlayer$PendingFuture;

    .line 1710
    iget-boolean v4, v2, Landroidx/media2/player/MediaPlayer$PendingFuture;->mExecuteCalled:Z

    if-eqz v4, :cond_2b

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isDone()Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 1711
    invoke-virtual {v2, v3}, Landroidx/media2/player/MediaPlayer$PendingFuture;->cancel(Z)Z

    goto :goto_2b

    .line 1714
    :cond_4b
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPendingFutures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 1715
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_25 .. :try_end_51} :catchall_86

    .line 1716
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1717
    :try_start_55
    iput v1, p0, Landroidx/media2/player/MediaPlayer;->mState:I

    .line 1718
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mMediaItemToBuffState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1719
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_83

    .line 1720
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1721
    :try_start_60
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlaylist:Landroidx/media2/player/MediaPlayer$MediaItemList;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer$MediaItemList;->clear()V

    .line 1722
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1723
    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 1724
    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    const/4 v0, -0x1

    .line 1725
    iput v0, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    .line 1726
    iput-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mSetMediaItemCalled:Z

    .line 1727
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_60 .. :try_end_75} :catchall_80

    .line 1728
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mAudioFocusHandler:Landroidx/media2/player/AudioFocusHandler;

    invoke-virtual {v0}, Landroidx/media2/player/AudioFocusHandler;->onReset()V

    .line 1729
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->reset()V

    return-void

    :catchall_80
    move-exception v0

    .line 1727
    :try_start_81
    monitor-exit v2
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v0

    :catchall_83
    move-exception v1

    .line 1719
    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v1

    :catchall_86
    move-exception v0

    .line 1715
    :try_start_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v0

    :catchall_89
    move-exception v1

    .line 1706
    :try_start_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    goto :goto_8d

    :goto_8c
    throw v1

    :goto_8d
    goto :goto_8c
.end method

.method public seekTo(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 833
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 834
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_d

    .line 835
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 837
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1d

    .line 838
    new-instance v0, Landroidx/media2/player/MediaPlayer$5;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media2/player/MediaPlayer$5;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ZJ)V

    .line 852
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    return-object v0

    :catchall_1d
    move-exception p1

    .line 837
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public seekTo(JI)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1978
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1979
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_d

    .line 1980
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1982
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1e

    .line 1983
    new-instance v0, Landroidx/media2/player/MediaPlayer$22;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p3

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media2/player/MediaPlayer$22;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ZIJ)V

    .line 1999
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    return-object v0

    :catchall_1e
    move-exception p1

    .line 1982
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public selectTrack(Landroidx/media2/player/MediaPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/player/MediaPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_22

    .line 2279
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2280
    :try_start_5
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_f

    .line 2281
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 2283
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1f

    .line 2284
    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer$TrackInfo;->getId()I

    move-result v0

    .line 2285
    new-instance v1, Landroidx/media2/player/MediaPlayer$26;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, p0, v2, v0, p1}, Landroidx/media2/player/MediaPlayer$26;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ILandroidx/media2/player/MediaPlayer$TrackInfo;)V

    .line 2300
    invoke-virtual {p0, v1}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    return-object v1

    :catchall_1f
    move-exception p1

    .line 2283
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1

    .line 2277
    :cond_22
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "trackInfo shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public selectTrackInternal(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2378
    invoke-direct {p0, p1}, Landroidx/media2/player/MediaPlayer;->createTrackInfo(Landroidx/media2/common/SessionPlayer$TrackInfo;)Landroidx/media2/player/MediaPlayer$TrackInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer;->selectTrack(Landroidx/media2/player/MediaPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public setAudioAttributes(Landroidx/media/AudioAttributesCompat;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media/AudioAttributesCompat;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1e

    .line 907
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 908
    :try_start_5
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_f

    .line 909
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 911
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1b

    .line 912
    new-instance v0, Landroidx/media2/player/MediaPlayer$7;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$7;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media/AudioAttributesCompat;)V

    .line 926
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    return-object v0

    :catchall_1b
    move-exception p1

    .line 911
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1

    .line 905
    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "attr shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setBufferingState(Landroidx/media2/common/MediaItem;I)V
    .registers 6

    .line 2705
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2706
    :try_start_3
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mMediaItemToBuffState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2707
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    if-eqz v1, :cond_18

    .line 2708
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_20

    .line 2709
    :cond_18
    new-instance v0, Landroidx/media2/player/MediaPlayer$31;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/player/MediaPlayer$31;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;I)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    :cond_20
    return-void

    :catchall_21
    move-exception p1

    .line 2707
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public setMediaItem(Landroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_43

    .line 1043
    instance-of v0, p1, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_27

    .line 1044
    move-object v0, p1

    check-cast v0, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/FileMediaItem;->isClosed()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_27

    .line 1045
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File descriptor is closed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_27
    :goto_27
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1049
    :try_start_2a
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_34

    .line 1050
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1052
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_40

    .line 1053
    new-instance v0, Landroidx/media2/player/MediaPlayer$8;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$8;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;)V

    .line 1068
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    return-object v0

    :catchall_40
    move-exception p1

    .line 1052
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p1

    .line 1041
    :cond_43
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "item shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setMediaItemsInternal(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_32

    .line 2773
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2774
    :try_start_5
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mSetMediaItemCalled:Z

    .line 2775
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_2f

    .line 2777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1e

    .line 2779
    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer;->setNextMediaItemInternal(Landroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2780
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->skipToNextInternal()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 2782
    :cond_1e
    invoke-direct {p0, p1}, Landroidx/media2/player/MediaPlayer;->setMediaItemInternal(Landroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_25
    if-eqz p2, :cond_2e

    .line 2786
    invoke-virtual {p0, p2}, Landroidx/media2/player/MediaPlayer;->setNextMediaItemInternal(Landroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    return-object v0

    :catchall_2f
    move-exception p1

    .line 2775
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1

    .line 2770
    :cond_32
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "curItem shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setNextMediaItemInternal(Landroidx/media2/common/MediaItem;)Landroidx/media2/player/futures/ResolvableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2805
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v0

    .line 2806
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 2807
    :try_start_7
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2, p1}, Landroidx/media2/player/MediaPlayer2;->setNextMediaItem(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x16

    .line 2808
    invoke-virtual {p0, v2, v0, p1}, Landroidx/media2/player/MediaPlayer;->addPendingCommandLocked(ILandroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    .line 2810
    monitor-exit v1

    return-object v0

    :catchall_14
    move-exception p1

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setPlaybackParams(Landroidx/media2/player/PlaybackParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/player/PlaybackParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1e

    .line 1917
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1918
    :try_start_5
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_f

    .line 1919
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1921
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1b

    .line 1922
    new-instance v0, Landroidx/media2/player/MediaPlayer$21;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$21;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/player/PlaybackParams;)V

    .line 1936
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    return-object v0

    :catchall_1b
    move-exception p1

    .line 1921
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1

    .line 1915
    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "params shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPlaybackSpeed(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 873
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_d

    .line 874
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 876
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    .line 877
    new-instance v0, Landroidx/media2/player/MediaPlayer$6;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$6;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;F)V

    .line 896
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    return-object v0

    :catchall_19
    move-exception p1

    .line 876
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public setPlayerVolume(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_27

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_27

    .line 1815
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1816
    :try_start_e
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_18

    .line 1817
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1819
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_24

    .line 1820
    new-instance v0, Landroidx/media2/player/MediaPlayer$20;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$20;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;F)V

    .line 1828
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    return-object v0

    :catchall_24
    move-exception p1

    .line 1819
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1

    .line 1813
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "volume should be between 0.0 and 1.0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setPlayerVolumeInternal(F)Landroidx/media2/player/futures/ResolvableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2827
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v0

    .line 2828
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 2829
    :try_start_7
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2, p1}, Landroidx/media2/player/MediaPlayer2;->setPlayerVolume(F)Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x1a

    .line 2830
    invoke-virtual {p0, v2, v0, p1}, Landroidx/media2/player/MediaPlayer;->addPendingCommandLocked(ILandroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    .line 2832
    monitor-exit v1

    return-object v0

    :catchall_14
    move-exception p1

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p1
.end method

.method setState(I)V
    .registers 4

    .line 2686
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2687
    :try_start_3
    iget v1, p0, Landroidx/media2/player/MediaPlayer;->mState:I

    if-eq v1, p1, :cond_b

    .line 2688
    iput p1, p0, Landroidx/media2/player/MediaPlayer;->mState:I

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 2691
    :goto_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_18

    if-eqz v1, :cond_17

    .line 2693
    new-instance v0, Landroidx/media2/player/MediaPlayer$30;

    invoke-direct {v0, p0, p1}, Landroidx/media2/player/MediaPlayer$30;-><init>(Landroidx/media2/player/MediaPlayer;I)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V

    :cond_17
    return-void

    :catchall_18
    move-exception p1

    .line 2691
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1757
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1758
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_d

    .line 1759
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1761
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    .line 1762
    new-instance v0, Landroidx/media2/player/MediaPlayer$19;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$19;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroid/view/Surface;)V

    .line 1775
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    return-object v0

    :catchall_19
    move-exception p1

    .line 1761
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public setSurfaceInternal(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1786
    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer;->setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method skipToNextInternal()Landroidx/media2/player/futures/ResolvableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 2816
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v0

    .line 2817
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 2818
    :try_start_7
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer2;->skipToNext()Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x1d

    .line 2819
    invoke-virtual {p0, v3, v0, v2}, Landroidx/media2/player/MediaPlayer;->addPendingCommandLocked(ILandroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    .line 2821
    monitor-exit v1

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public skipToNextPlaylistItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1374
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1375
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_d

    .line 1376
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1378
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    .line 1379
    new-instance v0, Landroidx/media2/player/MediaPlayer$14;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$14;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 1409
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    return-object v0

    :catchall_19
    move-exception v1

    .line 1378
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public skipToPreviousPlaylistItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 1337
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->mClosed:Z

    if-eqz v1, :cond_d

    .line 1339
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->createFutureForClosed()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1341
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    .line 1342
    new-instance v0, Landroidx/media2/player/MediaPlayer$13;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$13;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 1367
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->addPendingFuture(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    return-object v0

    :catchall_19
    move-exception v1

    .line 1341
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method updateAndGetCurrentNextItemIfNeededLocked()Landroidx/core/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Landroidx/media2/common/MediaItem;",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 2891
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    const/4 v1, 0x0

    if-gez v0, :cond_18

    .line 2892
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_e

    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_e

    return-object v1

    .line 2895
    :cond_e
    iput-object v1, p0, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 2896
    iput-object v1, p0, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 2897
    new-instance v0, Landroidx/core/util/Pair;

    invoke-direct {v0, v1, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 2899
    :cond_18
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 2900
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    iget v2, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    goto :goto_34

    :cond_33
    move-object v0, v1

    .line 2902
    :goto_34
    iget v2, p0, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    add-int/lit8 v2, v2, 0x1

    .line 2903
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-lt v2, v3, :cond_4d

    .line 2904
    iget v2, p0, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4c

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4a

    goto :goto_4c

    :cond_4a
    const/4 v2, -0x1

    goto :goto_4d

    :cond_4c
    :goto_4c
    const/4 v2, 0x0

    :cond_4d
    :goto_4d
    if-ne v2, v4, :cond_52

    .line 2912
    iput-object v1, p0, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    goto :goto_6b

    .line 2913
    :cond_52
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 2914
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    iput-object v2, p0, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    goto :goto_6c

    :cond_6b
    :goto_6b
    move-object v2, v1

    :goto_6c
    if-nez v0, :cond_71

    if-nez v2, :cond_71

    goto :goto_76

    .line 2917
    :cond_71
    new-instance v1, Landroidx/core/util/Pair;

    invoke-direct {v1, v0, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_76
    return-object v1
.end method
