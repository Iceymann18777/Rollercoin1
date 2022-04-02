.class Landroidx/media2/player/MediaPlayer$13;
.super Landroidx/media2/player/MediaPlayer$PendingFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->skipToPreviousPlaylistItem()Lcom/google/common/util/concurrent/ListenableFuture;
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

    .line 1342
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$13;->this$0:Landroidx/media2/player/MediaPlayer;

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

    .line 1347
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$13;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->mPlaylistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1348
    :try_start_5
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$13;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v1, v1, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    const/4 v2, -0x2

    if-gez v1, :cond_14

    .line 1349
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$13;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->createFuturesForResultCode(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1351
    :cond_14
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$13;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v1, v1, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_3d

    .line 1353
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$13;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v1, v1, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_33

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$13;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v1, v1, Landroidx/media2/player/MediaPlayer;->mRepeatMode:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2b

    goto :goto_33

    .line 1356
    :cond_2b
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$13;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->createFuturesForResultCode(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1354
    :cond_33
    :goto_33
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$13;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1359
    :cond_3d
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$13;->this$0:Landroidx/media2/player/MediaPlayer;

    iput v1, v2, Landroidx/media2/player/MediaPlayer;->mCurrentShuffleIdx:I

    .line 1360
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$13;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->updateAndGetCurrentNextItemIfNeededLocked()Landroidx/core/util/Pair;

    .line 1361
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$13;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->mCurPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 1362
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$13;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->mNextPlaylistItem:Landroidx/media2/common/MediaItem;

    .line 1363
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_56

    .line 1364
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$13;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/player/MediaPlayer;->setMediaItemsInternal(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_56
    move-exception v1

    .line 1363
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v1
.end method
