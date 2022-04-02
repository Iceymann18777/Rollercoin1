.class public interface abstract Landroidx/media2/exoplayer/external/upstream/Allocator;
.super Ljava/lang/Object;
.source "Allocator.java"


# virtual methods
.method public abstract allocate()Landroidx/media2/exoplayer/external/upstream/Allocation;
.end method

.method public abstract getIndividualAllocationLength()I
.end method

.method public abstract release(Landroidx/media2/exoplayer/external/upstream/Allocation;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allocation"
        }
    .end annotation
.end method

.method public abstract release([Landroidx/media2/exoplayer/external/upstream/Allocation;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allocations"
        }
    .end annotation
.end method

.method public abstract trim()V
.end method
