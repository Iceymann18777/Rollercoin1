.class final Landroidx/media2/session/futures/AbstractResolvableFuture$SetFuture;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final future:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation
.end field

.field final owner:Landroidx/media2/session/futures/AbstractResolvableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/session/futures/AbstractResolvableFuture<",
            "TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method public run()V
    .registers 4

    .line 275
    iget-object v0, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/media2/session/futures/AbstractResolvableFuture;

    iget-object v0, v0, Landroidx/media2/session/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-eq v0, p0, :cond_7

    return-void

    .line 279
    :cond_7
    iget-object v0, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Landroidx/media2/session/futures/AbstractResolvableFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    .line 280
    sget-object v1, Landroidx/media2/session/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/media2/session/futures/AbstractResolvableFuture$AtomicHelper;

    iget-object v2, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/media2/session/futures/AbstractResolvableFuture;

    invoke-virtual {v1, v2, p0, v0}, Landroidx/media2/session/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/media2/session/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 281
    iget-object v0, p0, Landroidx/media2/session/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/media2/session/futures/AbstractResolvableFuture;

    invoke-static {v0}, Landroidx/media2/session/futures/AbstractResolvableFuture;->complete(Landroidx/media2/session/futures/AbstractResolvableFuture;)V

    :cond_1c
    return-void
.end method
