.class Landroidx/media2/player/MediaPlayer$PendingFuture$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$PendingFuture;-><init>(Ljava/util/concurrent/Executor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/MediaPlayer$PendingFuture;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer$PendingFuture;)V
    .registers 2

    .line 548
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$PendingFuture$1;->this$0:Landroidx/media2/player/MediaPlayer$PendingFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 551
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$PendingFuture$1;->this$0:Landroidx/media2/player/MediaPlayer$PendingFuture;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$PendingFuture$1;->this$0:Landroidx/media2/player/MediaPlayer$PendingFuture;

    iget-boolean v0, v0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mExecuteCalled:Z

    if-eqz v0, :cond_13

    .line 552
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$PendingFuture$1;->this$0:Landroidx/media2/player/MediaPlayer$PendingFuture;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->cancelFutures()V

    :cond_13
    return-void
.end method
