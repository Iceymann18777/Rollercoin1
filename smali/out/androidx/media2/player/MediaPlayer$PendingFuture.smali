.class abstract Landroidx/media2/player/MediaPlayer$PendingFuture;
.super Landroidx/media2/player/futures/AbstractResolvableFuture;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PendingFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/media2/common/SessionPlayer$PlayerResult;",
        ">",
        "Landroidx/media2/player/futures/AbstractResolvableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field mExecuteCalled:Z

.field mFutures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final mIsSeekTo:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    const/4 v0, 0x0

    .line 543
    invoke-direct {p0, p1, v0}, Landroidx/media2/player/MediaPlayer$PendingFuture;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .registers 4

    .line 546
    invoke-direct {p0}, Landroidx/media2/player/futures/AbstractResolvableFuture;-><init>()V

    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mExecuteCalled:Z

    .line 547
    iput-boolean p2, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mIsSeekTo:Z

    .line 548
    new-instance p2, Landroidx/media2/player/MediaPlayer$PendingFuture$1;

    invoke-direct {p2, p0}, Landroidx/media2/player/MediaPlayer$PendingFuture$1;-><init>(Landroidx/media2/player/MediaPlayer$PendingFuture;)V

    invoke-virtual {p0, p2, p1}, Landroidx/media2/player/MediaPlayer$PendingFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private setResultIfFinished()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 581
    :goto_2
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mFutures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 582
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mFutures:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/futures/ResolvableFuture;

    .line 583
    invoke-virtual {v0}, Landroidx/media2/player/futures/ResolvableFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v0}, Landroidx/media2/player/futures/ResolvableFuture;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1f

    return-void

    .line 587
    :cond_1f
    :try_start_1f
    invoke-virtual {v0}, Landroidx/media2/player/futures/ResolvableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/SessionPlayer$PlayerResult;

    .line 588
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer$PlayerResult;->getResultCode()I

    move-result v2

    if-eqz v2, :cond_35

    const/4 v3, 0x1

    if-eq v2, v3, :cond_35

    .line 590
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->cancelFutures()V

    .line 591
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->set(Landroidx/media2/common/SessionPlayer$PlayerResult;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_34} :catch_38

    return-void

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_38
    move-exception v0

    .line 595
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->cancelFutures()V

    .line 596
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->setException(Ljava/lang/Throwable;)Z

    return-void

    .line 601
    :cond_40
    :try_start_40
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->set(Landroidx/media2/common/SessionPlayer$PlayerResult;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception v0

    .line 603
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_48
    return-void
.end method


# virtual methods
.method cancelFutures()V
    .registers 4

    .line 611
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mFutures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/player/futures/ResolvableFuture;

    .line 612
    invoke-virtual {v1}, Landroidx/media2/player/futures/ResolvableFuture;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Landroidx/media2/player/futures/ResolvableFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    .line 613
    invoke-virtual {v1, v2}, Landroidx/media2/player/futures/ResolvableFuture;->cancel(Z)Z

    goto :goto_6

    :cond_23
    return-void
.end method

.method public execute()Z
    .registers 3

    .line 569
    iget-boolean v0, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mExecuteCalled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 570
    iput-boolean v1, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mExecuteCalled:Z

    .line 571
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->onExecute()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer$PendingFuture;->mFutures:Ljava/util/List;

    .line 573
    :cond_13
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_22

    .line 574
    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->setResultIfFinished()V

    .line 576
    :cond_22
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$PendingFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :cond_30
    :goto_30
    return v1
.end method

.method abstract onExecute()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/futures/ResolvableFuture<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public set(Landroidx/media2/common/SessionPlayer$PlayerResult;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 560
    invoke-super {p0, p1}, Landroidx/media2/player/futures/AbstractResolvableFuture;->set(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;)Z
    .registers 2

    .line 532
    check-cast p1, Landroidx/media2/common/SessionPlayer$PlayerResult;

    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer$PendingFuture;->set(Landroidx/media2/common/SessionPlayer$PlayerResult;)Z

    move-result p1

    return p1
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .registers 2

    .line 565
    invoke-super {p0, p1}, Landroidx/media2/player/futures/AbstractResolvableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
