.class public interface abstract Landroidx/media2/exoplayer/external/util/HandlerWrapper;
.super Ljava/lang/Object;
.source "HandlerWrapper.java"


# virtual methods
.method public abstract getLooper()Landroid/os/Looper;
.end method

.method public abstract obtainMessage(III)Landroid/os/Message;
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
.end method

.method public abstract obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
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
.end method

.method public abstract obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
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
.end method

.method public abstract removeMessages(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "what"
        }
    .end annotation
.end method

.method public abstract sendEmptyMessage(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "what"
        }
    .end annotation
.end method

.method public abstract sendEmptyMessageAtTime(IJ)Z
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
.end method
