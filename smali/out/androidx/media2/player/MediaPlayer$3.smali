.class Landroidx/media2/player/MediaPlayer$3;
.super Landroidx/media2/player/MediaPlayer$PendingFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->pause()Lcom/google/common/util/concurrent/ListenableFuture;
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

    .line 769
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$3;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-direct {p0, p2}, Landroidx/media2/player/MediaPlayer$PendingFuture;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method onExecute()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;"
        }
    .end annotation

    .line 772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 773
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    .line 774
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$3;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->mAudioFocusHandler:Landroidx/media2/player/AudioFocusHandler;

    invoke-virtual {v2}, Landroidx/media2/player/AudioFocusHandler;->onPause()V

    .line 775
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$3;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 776
    :try_start_15
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$3;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v3}, Landroidx/media2/player/MediaPlayer2;->pause()Ljava/lang/Object;

    move-result-object v3

    .line 777
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$3;->this$0:Landroidx/media2/player/MediaPlayer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v1, v3}, Landroidx/media2/player/MediaPlayer;->addPendingCommandLocked(ILandroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    .line 778
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_28

    .line 779
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_28
    move-exception v0

    .line 778
    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method
