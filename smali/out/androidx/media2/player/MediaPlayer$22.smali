.class Landroidx/media2/player/MediaPlayer$22;
.super Landroidx/media2/player/MediaPlayer$PendingFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->seekTo(JI)Lcom/google/common/util/concurrent/ListenableFuture;
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

.field final synthetic val$mode:I

.field final synthetic val$position:J


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ZIJ)V
    .registers 7

    .line 1984
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$22;->this$0:Landroidx/media2/player/MediaPlayer;

    iput p4, p0, Landroidx/media2/player/MediaPlayer$22;->val$mode:I

    iput-wide p5, p0, Landroidx/media2/player/MediaPlayer$22;->val$position:J

    invoke-direct {p0, p2, p3}, Landroidx/media2/player/MediaPlayer$PendingFuture;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-void
.end method


# virtual methods
.method onExecute()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;>;"
        }
    .end annotation

    .line 1987
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1988
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    .line 1989
    sget-object v2, Landroidx/media2/player/MediaPlayer;->sSeekModeMap:Landroidx/collection/ArrayMap;

    iget v3, p0, Landroidx/media2/player/MediaPlayer$22;->val$mode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    sget-object v2, Landroidx/media2/player/MediaPlayer;->sSeekModeMap:Landroidx/collection/ArrayMap;

    iget v3, p0, Landroidx/media2/player/MediaPlayer$22;->val$mode:I

    .line 1990
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x1

    .line 1991
    :goto_2b
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$22;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v3

    .line 1992
    :try_start_30
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$22;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v4, v4, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    iget-wide v5, p0, Landroidx/media2/player/MediaPlayer$22;->val$position:J

    invoke-virtual {v4, v5, v6, v2}, Landroidx/media2/player/MediaPlayer2;->seekTo(JI)Ljava/lang/Object;

    move-result-object v2

    .line 1993
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$22;->this$0:Landroidx/media2/player/MediaPlayer;

    const/16 v5, 0xe

    invoke-virtual {v4, v5, v1, v2}, Landroidx/media2/player/MediaPlayer;->addPendingCommandLocked(ILandroidx/media2/player/futures/ResolvableFuture;Ljava/lang/Object;)V

    .line 1994
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_46

    .line 1995
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_46
    move-exception v0

    .line 1994
    :try_start_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0
.end method
