.class Landroidx/media2/player/MediaPlayer$5;
.super Landroidx/media2/player/MediaPlayer$PendingFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->seekTo(J)Lcom/google/common/util/concurrent/ListenableFuture;
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

.field final synthetic val$position:J


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ZJ)V
    .registers 6

    .line 839
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$5;->this$0:Landroidx/media2/player/MediaPlayer;

    iput-wide p4, p0, Landroidx/media2/player/MediaPlayer$5;->val$position:J

    invoke-direct {p0, p2, p3}, Landroidx/media2/player/MediaPlayer$PendingFuture;-><init>(Ljava/util/concurrent/Executor;Z)V

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

    .line 842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 843
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    .line 844
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$5;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 845
    :try_start_e
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$5;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    iget-wide v4, p0, Landroidx/media2/player/MediaPlayer$5;->val$position:J

    invoke-virtual {v3, v4, v5}, Landroidx/media2/player/MediaPlayer2;->seekTo(J)Ljava/lang/Object;

    move-result-object v3

    .line 846
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$5;->this$0:Landroidx/media2/player/MediaPlayer;

    const/16 v5, 0xe

    invoke-virtual {v4, v5, v1, v3}, Landroidx/media2/player/MediaPlayer;->addPendingCommandLocked(ILandroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    .line 847
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_24

    .line 848
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_24
    move-exception v0

    .line 847
    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method
