.class final Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/util/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandlerAndListener"
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
.field private final handler:Landroid/os/Handler;

.field private final listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private released:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 3
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

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;->handler:Landroid/os/Handler;

    .line 90
    iput-object p2, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;->listener:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;)Ljava/lang/Object;
    .registers 1

    .line 81
    iget-object p0, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;->listener:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
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

    .line 98
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener$$Lambda$0;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic lambda$dispatch$0$EventDispatcher$HandlerAndListener(Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;)V
    .registers 3

    .line 100
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;->released:Z

    if-nez v0, :cond_9

    .line 101
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;->listener:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/util/EventDispatcher$Event;->sendTo(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener;->released:Z

    return-void
.end method
