.class public abstract Landroidx/media2/common/SessionPlayer;
.super Ljava/lang/Object;
.source "SessionPlayer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/SessionPlayer$PlayerResult;,
        Landroidx/media2/common/SessionPlayer$PlayerCallback;,
        Landroidx/media2/common/SessionPlayer$TrackInfo;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Landroidx/media2/common/SessionPlayer$PlayerCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer;->mLock:Ljava/lang/Object;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer;->mCallbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public deselectTrackInternal(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
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

    .line 926
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "deselectTrackInternal is for internal use only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getBufferedPosition()J
.end method

.method protected final getCallbacks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Landroidx/media2/common/SessionPlayer$PlayerCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation

    .line 856
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 858
    :try_start_8
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 859
    monitor-exit v1

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public abstract getCurrentMediaItem()Landroidx/media2/common/MediaItem;
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getNextMediaItemIndex()I
.end method

.method public abstract getPlaybackSpeed()F
.end method

.method public abstract getPlayerState()I
.end method

.method public abstract getPreviousMediaItemIndex()I
.end method

.method public getSelectedTrackInternal(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .registers 3

    .line 943
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getSelectedTrackInternal is for internal use only."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTrackInfoInternal()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 879
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getTrackInfoInternal is for internal use only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVideoSizeInternal()Landroidx/media2/common/VideoSize;
    .registers 3

    .line 455
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getVideoSizeInternal is internal use only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract pause()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract play()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation
.end method

.method public final registerPlayerCallback(Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$PlayerCallback;)V
    .registers 7

    if-eqz p1, :cond_41

    if-eqz p2, :cond_39

    .line 820
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_7
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Pair;

    .line 822
    iget-object v3, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-ne v3, p2, :cond_d

    iget-object v2, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_d

    const-string p1, "SessionPlayer"

    const-string p2, "callback is already added. Ignoring."

    .line 823
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    monitor-exit v0

    return-void

    .line 827
    :cond_2a
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer;->mCallbacks:Ljava/util/List;

    new-instance v2, Landroidx/core/util/Pair;

    invoke-direct {v2, p2, p1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw p1

    .line 817
    :cond_39
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callback shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 814
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

.method public abstract seekTo(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation
.end method

.method public selectTrackInternal(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
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

    .line 902
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "selectTrackInternal is for internal use only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract setPlaybackSpeed(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation
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

    const/4 p1, -0x6

    .line 480
    invoke-static {p1}, Landroidx/media2/common/SessionPlayer$PlayerResult;->createFuture(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public abstract skipToNextPlaylistItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract skipToPreviousPlaylistItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation
.end method

.method public final unregisterPlayerCallback(Landroidx/media2/common/SessionPlayer$PlayerCallback;)V
    .registers 5

    if-eqz p1, :cond_28

    .line 841
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 842
    :try_start_5
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_23

    .line 843
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Pair;

    iget-object v2, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_20

    .line 844
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 847
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw p1

    .line 839
    :cond_28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callback shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :goto_30
    throw p1

    :goto_31
    goto :goto_30
.end method
