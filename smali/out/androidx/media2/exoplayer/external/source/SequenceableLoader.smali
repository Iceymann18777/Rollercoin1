.class public interface abstract Landroidx/media2/exoplayer/external/source/SequenceableLoader;
.super Ljava/lang/Object;
.source "SequenceableLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/SequenceableLoader$Callback;
    }
.end annotation


# virtual methods
.method public abstract continueLoading(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation
.end method

.method public abstract getBufferedPositionUs()J
.end method

.method public abstract getNextLoadPositionUs()J
.end method

.method public abstract reevaluateBuffer(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation
.end method
