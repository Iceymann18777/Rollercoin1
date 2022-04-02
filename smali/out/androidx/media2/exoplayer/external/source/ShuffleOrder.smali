.class public interface abstract Landroidx/media2/exoplayer/external/source/ShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;
    }
.end annotation


# virtual methods
.method public abstract cloneAndClear()Landroidx/media2/exoplayer/external/source/ShuffleOrder;
.end method

.method public abstract cloneAndInsert(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "insertionIndex",
            "insertionCount"
        }
    .end annotation
.end method

.method public abstract cloneAndRemove(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "indexFrom",
            "indexToExclusive"
        }
    .end annotation
.end method

.method public abstract getFirstIndex()I
.end method

.method public abstract getLastIndex()I
.end method

.method public abstract getLength()I
.end method

.method public abstract getNextIndex(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getPreviousIndex(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method
