.class Landroidx/media2/player/MediaPlayer$27;
.super Landroidx/media2/player/MediaPlayer$PendingFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->deselectTrack(Landroidx/media2/player/MediaPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
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

.field final synthetic val$trackId:I

.field final synthetic val$trackInfo:Landroidx/media2/player/MediaPlayer$TrackInfo;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ILandroidx/media2/player/MediaPlayer$TrackInfo;)V
    .registers 5

    .line 2335
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$27;->this$0:Landroidx/media2/player/MediaPlayer;

    iput p3, p0, Landroidx/media2/player/MediaPlayer$27;->val$trackId:I

    iput-object p4, p0, Landroidx/media2/player/MediaPlayer$27;->val$trackInfo:Landroidx/media2/player/MediaPlayer$TrackInfo;

    invoke-direct {p0, p2}, Landroidx/media2/player/MediaPlayer$PendingFuture;-><init>(Ljava/util/concurrent/Executor;)V

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

    .line 2338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2339
    invoke-static {}, Landroidx/media2/player/futures/ResolvableFuture;->create()Landroidx/media2/player/futures/ResolvableFuture;

    move-result-object v1

    .line 2340
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$27;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->mPendingCommands:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 2342
    :try_start_e
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$27;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->mPlayer:Landroidx/media2/player/MediaPlayer2;

    iget v4, p0, Landroidx/media2/player/MediaPlayer$27;->val$trackId:I

    invoke-virtual {v3, v4}, Landroidx/media2/player/MediaPlayer2;->deselectTrack(I)Ljava/lang/Object;

    move-result-object v3

    .line 2343
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$27;->this$0:Landroidx/media2/player/MediaPlayer;

    const/4 v5, 0x2

    iget-object v6, p0, Landroidx/media2/player/MediaPlayer$27;->val$trackInfo:Landroidx/media2/player/MediaPlayer$TrackInfo;

    invoke-virtual {v4, v5, v1, v6, v3}, Landroidx/media2/player/MediaPlayer;->addPendingCommandWithTrackInfoLocked(ILandroidx/media2/player/futures/ResolvableFuture;Landroidx/media2/player/MediaPlayer$TrackInfo;Ljava/lang/Object;)V

    .line 2345
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_25

    .line 2346
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_25
    move-exception v0

    .line 2345
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method
