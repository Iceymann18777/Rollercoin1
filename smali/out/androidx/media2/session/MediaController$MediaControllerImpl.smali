.class interface abstract Landroidx/media2/session/MediaController$MediaControllerImpl;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaControllerImpl"
.end annotation


# virtual methods
.method public abstract deselectTrack(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
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
.end method

.method public abstract getAllowedCommands()Landroidx/media2/session/SessionCommandGroup;
.end method

.method public abstract getBufferedPosition()J
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

.method public abstract getSelectedTrack(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
.end method

.method public abstract getTrackInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoSize()Landroidx/media2/common/VideoSize;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract pause()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract play()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract seekTo(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract selectTrack(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
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
.end method

.method public abstract setPlaybackSpeed(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
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
.end method

.method public abstract skipToNextItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract skipToPreviousItem()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation
.end method
