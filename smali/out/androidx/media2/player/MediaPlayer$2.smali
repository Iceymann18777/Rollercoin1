.class Landroidx/media2/player/MediaPlayer$2;
.super Landroidx/media2/player/MediaPlayer$PendingFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->play()Lcom/google/common/util/concurrent/ListenableFuture;
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

    .line 736
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$2;->this$0:Landroidx/media2/player/MediaPlayer;

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

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 741
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$2;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->mAudioFocusHandler:Landroidx/media2/player/AudioFocusHandler;

    invoke-virtual {v1}, Landroidx/media2/player/AudioFocusHandler;->onPlay()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 742
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$2;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object v1

    if-nez v1, :cond_23

    .line 743
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$2;->this$0:Landroidx/media2/player/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->setPlayerVolumeInternal(F)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    :cond_23
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    .line 746
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$2;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 747
    :try_start_2c
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$2;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v3}, Landroidx/media2/player/MediaPlayer2;->play()Ljava/lang/Object;

    move-result-object v3

    .line 748
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$2;->this$0:Landroidx/media2/player/MediaPlayer;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v1, v3}, Landroidx/media2/player/MediaPlayer;->addPendingCommandLocked(ILandroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    .line 749
    monitor-exit v2

    goto :goto_46

    :catchall_3c
    move-exception v0

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_3c

    throw v0

    .line 751
    :cond_3f
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$2;->this$0:Landroidx/media2/player/MediaPlayer;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->createFutureForResultCode(I)Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    .line 753
    :goto_46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
