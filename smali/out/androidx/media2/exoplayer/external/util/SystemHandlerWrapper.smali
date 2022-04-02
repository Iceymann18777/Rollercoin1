.class final Landroidx/media2/exoplayer/external/util/SystemHandlerWrapper;
.super Ljava/lang/Object;
.source "SystemHandlerWrapper.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/util/HandlerWrapper;


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 2

    .line 40
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessage(III)Landroid/os/Message;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "what",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "what",
            "arg1",
            "arg2",
            "obj"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "what",
            "obj"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public removeMessages(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "what"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public sendEmptyMessage(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "what"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public sendEmptyMessageAtTime(IJ)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "what",
            "uptimeMs"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method
