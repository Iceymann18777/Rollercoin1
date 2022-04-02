.class public Landroidx/media2/session/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaController$PlaybackInfo;,
        Landroidx/media2/session/MediaController$ControllerCallback;,
        Landroidx/media2/session/MediaController$MediaControllerImpl;
    }
.end annotation


# instance fields
.field mClosed:Z

.field private final mExtraCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Landroidx/media2/session/MediaController$ControllerCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field mImpl:Landroidx/media2/session/MediaController$MediaControllerImpl;

.field final mLock:Ljava/lang/Object;


# direct methods
.method private static createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    const/16 v0, -0x64

    .line 1301
    invoke-static {v0}, Landroidx/media2/session/SessionResult;->createFutureWithResult(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 234
    :try_start_0
    iget-object v0, p0, Landroidx/media2/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_18

    .line 235
    :try_start_3
    iget-boolean v1, p0, Landroidx/media2/session/MediaController;->mClosed:Z

    if-eqz v1, :cond_9

    .line 236
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 238
    iput-boolean v1, p0, Landroidx/media2/session/MediaController;->mClosed:Z

    .line 239
    iget-object v1, p0, Landroidx/media2/session/MediaController;->mImpl:Landroidx/media2/session/MediaController$MediaControllerImpl;

    .line 240
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    if-eqz v1, :cond_18

    .line 242
    :try_start_11
    invoke-interface {v1}, Landroidx/media2/session/MediaController$MediaControllerImpl;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_18

    goto :goto_18

    :catchall_15
    move-exception v1

    .line 240
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_18} :catch_18

    :catch_18
    :cond_18
    :goto_18
    return-void
.end method

.method public deselectTrack(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_16

    .line 1169
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media2/session/MediaController$MediaControllerImpl;->deselectTrack(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto :goto_15

    :cond_11
    invoke-static {}, Landroidx/media2/session/MediaController;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    :goto_15
    return-object p1

    .line 1167
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "TrackInfo shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAllowedCommands()Landroidx/media2/session/SessionCommandGroup;
    .registers 2

    .line 1294
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 1297
    :cond_8
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->getAllowedCommands()Landroidx/media2/session/SessionCommandGroup;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPosition()J
    .registers 3

    .line 679
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->getBufferedPosition()J

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/high16 v0, -0x8000000000000000L

    :goto_11
    return-wide v0
.end method

.method public getCurrentMediaItem()Landroidx/media2/common/MediaItem;
    .registers 2

    .line 937
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .line 627
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/high16 v0, -0x8000000000000000L

    :goto_11
    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 614
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->getDuration()J

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/high16 v0, -0x8000000000000000L

    :goto_11
    return-wide v0
.end method

.method getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;
    .registers 3

    .line 221
    iget-object v0, p0, Landroidx/media2/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_3
    iget-object v1, p0, Landroidx/media2/session/MediaController;->mImpl:Landroidx/media2/session/MediaController$MediaControllerImpl;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 223
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getNextMediaItemIndex()I
    .registers 2

    .line 981
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->getNextMediaItemIndex()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    :goto_10
    return v0
.end method

.method public getPlaybackSpeed()F
    .registers 2

    .line 637
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->getPlaybackSpeed()F

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public getPlayerState()I
    .registers 2

    .line 604
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->getPlayerState()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public getPreviousMediaItemIndex()I
    .registers 2

    .line 965
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->getPreviousMediaItemIndex()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    :goto_10
    return v0
.end method

.method public getSelectedTrack(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .registers 3

    .line 1193
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media2/session/MediaController$MediaControllerImpl;->getSelectedTrack(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return-object p1
.end method

.method public getTrackInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 1135
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->getTrackInfo()Ljava/util/List;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public getVideoSize()Landroidx/media2/common/VideoSize;
    .registers 3

    .line 1101
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->getVideoSize()Landroidx/media2/common/VideoSize;

    move-result-object v0

    goto :goto_15

    :cond_f
    new-instance v0, Landroidx/media2/common/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media2/common/VideoSize;-><init>(II)V

    :goto_15
    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    .line 268
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 269
    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public pause()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 300
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->pause()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 302
    :cond_f
    invoke-static {}, Landroidx/media2/session/MediaController;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public play()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 286
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->play()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 288
    :cond_f
    invoke-static {}, Landroidx/media2/session/MediaController;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public registerExtraCallback(Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaController$ControllerCallback;)V
    .registers 7

    if-eqz p1, :cond_41

    if-eqz p2, :cond_39

    const/4 v0, 0x0

    .line 1225
    iget-object v1, p0, Landroidx/media2/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1226
    :try_start_8
    iget-object v2, p0, Landroidx/media2/session/MediaController;->mExtraCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Pair;

    .line 1227
    iget-object v3, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-ne v3, p2, :cond_e

    const/4 v0, 0x1

    :cond_1f
    if-nez v0, :cond_2b

    .line 1233
    iget-object v2, p0, Landroidx/media2/session/MediaController;->mExtraCallbacks:Ljava/util/List;

    new-instance v3, Landroidx/core/util/Pair;

    invoke-direct {v3, p2, p1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_36

    if-eqz v0, :cond_35

    const-string p1, "MediaController"

    const-string p2, "registerExtraCallback: the callback already exists"

    .line 1237
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-void

    :catchall_36
    move-exception p1

    .line 1235
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1

    .line 1222
    :cond_39
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callback shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1219
    :cond_41
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "executor shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_4a

    :goto_49
    throw p1

    :goto_4a
    goto :goto_49
.end method

.method public seekTo(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 385
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 386
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/media2/session/MediaController$MediaControllerImpl;->seekTo(J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 388
    :cond_f
    invoke-static {}, Landroidx/media2/session/MediaController;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public selectTrack(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_16

    .line 1152
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media2/session/MediaController$MediaControllerImpl;->selectTrack(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto :goto_15

    :cond_11
    invoke-static {}, Landroidx/media2/session/MediaController;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    :goto_15
    return-object p1

    .line 1150
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "TrackInfo shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPlaybackSpeed(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_19

    .line 651
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 652
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media2/session/MediaController$MediaControllerImpl;->setPlaybackSpeed(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 654
    :cond_14
    invoke-static {}, Landroidx/media2/session/MediaController;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 649
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "speed must not be zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 1116
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1117
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media2/session/MediaController$MediaControllerImpl;->setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 1119
    :cond_f
    invoke-static {}, Landroidx/media2/session/MediaController;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public skipToNextPlaylistItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 1004
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1005
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->skipToNextItem()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 1007
    :cond_f
    invoke-static {}, Landroidx/media2/session/MediaController;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public skipToPreviousPlaylistItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 991
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 992
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->getImpl()Landroidx/media2/session/MediaController$MediaControllerImpl;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$MediaControllerImpl;->skipToPreviousItem()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 994
    :cond_f
    invoke-static {}, Landroidx/media2/session/MediaController;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public unregisterExtraCallback(Landroidx/media2/session/MediaController$ControllerCallback;)V
    .registers 7

    if-eqz p1, :cond_34

    const/4 v0, 0x0

    .line 1257
    iget-object v1, p0, Landroidx/media2/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1258
    :try_start_6
    iget-object v2, p0, Landroidx/media2/session/MediaController;->mExtraCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_e
    if-ltz v2, :cond_26

    .line 1259
    iget-object v4, p0, Landroidx/media2/session/MediaController;->mExtraCallbacks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/util/Pair;

    iget-object v4, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-ne v4, p1, :cond_23

    .line 1261
    iget-object p1, p0, Landroidx/media2/session/MediaController;->mExtraCallbacks:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_26

    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 1265
    :cond_26
    :goto_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_31

    if-nez v0, :cond_30

    const-string p1, "MediaController"

    const-string v0, "unregisterExtraCallback: no such callback found"

    .line 1267
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void

    :catchall_31
    move-exception p1

    .line 1265
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1

    .line 1254
    :cond_34
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callback shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_3d

    :goto_3c
    throw p1

    :goto_3d
    goto :goto_3c
.end method
