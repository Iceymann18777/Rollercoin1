.class public interface abstract Landroidx/media2/exoplayer/external/LoadControl;
.super Ljava/lang/Object;
.source "LoadControl.java"


# virtual methods
.method public abstract getAllocator()Landroidx/media2/exoplayer/external/upstream/Allocator;
.end method

.method public abstract getBackBufferDurationUs()J
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onReleased()V
.end method

.method public abstract onStopped()V
.end method

.method public abstract onTracksSelected([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "renderers",
            "trackGroups",
            "trackSelections"
        }
    .end annotation
.end method

.method public abstract retainBackBufferFromKeyframe()Z
.end method

.method public abstract shouldContinueLoading(JF)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferedDurationUs",
            "playbackSpeed"
        }
    .end annotation
.end method

.method public abstract shouldStartPlayback(JFZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bufferedDurationUs",
            "playbackSpeed",
            "rebuffering"
        }
    .end annotation
.end method
