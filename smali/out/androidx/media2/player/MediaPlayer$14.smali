.class Landroidx/media2/player/MediaPlayer$14;
.super Landroidx/media2/player/MediaPlayer$PendingFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->skipToNextPlaylistItem()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/player/MediaPlayer$PendingFuture<",
        "Landroidx/media2/common/SessionPlayer$PlayerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1379
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-direct {p0, p2}, Landroidx/media2/player/MediaPlayer$PendingFuture;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method onExecute()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;"
        }
    .end annotation

    .line 1384
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1385
    :try_start_5
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v1, v1, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    const/4 v2, -0x2

    if-gez v1, :cond_14

    .line 1386
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->createFuturesForResultCode(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1388
    :cond_14
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v1, v1, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    add-int/lit8 v1, v1, 0x1

    .line 1389
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_3c

    .line 1390
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v1, v1, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3b

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v1, v1, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_33

    goto :goto_3b

    .line 1393
    :cond_33
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->createFuturesForResultCode(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_3b
    :goto_3b
    const/4 v1, 0x0

    .line 1396
    :cond_3c
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iput v1, v2, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    .line 1397
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->updateAndGetCurrentNextItemIfNeededLocked()Landroidx/core/util/Pair;

    .line 1398
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 1399
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 1400
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_66

    if-eqz v1, :cond_57

    .line 1402
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/player/MediaPlayer;->setMediaItemsInternal(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1404
    :cond_57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1405
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$14;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->skipToNextInternal()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_66
    move-exception v1

    .line 1400
    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v1
.end method
