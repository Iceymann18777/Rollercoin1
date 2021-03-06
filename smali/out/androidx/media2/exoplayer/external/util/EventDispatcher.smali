.class public final Landroidx/media2/exoplayer/external/util/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;,
        Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "eventListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 55
    :goto_7
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 56
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;

    invoke-direct {v1, p1, p2}, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;-><init>(Landroid/os/Handler;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/EventDispatcher$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;

    .line 77
    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;->dispatch(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public removeListener(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;

    .line 63
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;->access$000(Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_6

    .line 64
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;->release()V

    .line 65
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_21
    return-void
.end method
