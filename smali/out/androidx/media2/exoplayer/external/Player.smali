.class public interface abstract Landroidx/media2/exoplayer/external/Player;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/Player$DefaultEventListener;,
        Landroidx/media2/exoplayer/external/Player$EventListener;
    }
.end annotation


# virtual methods
.method public abstract getBufferedPosition()J
.end method

.method public abstract getContentPosition()J
.end method

.method public abstract getCurrentAdGroupIndex()I
.end method

.method public abstract getCurrentAdIndexInAdGroup()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;
.end method

.method public abstract getCurrentTrackSelections()Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;
.end method

.method public abstract getCurrentWindowIndex()I
.end method

.method public abstract getDuration()J
.end method

.method public abstract getTotalBufferedDuration()J
.end method

.method public abstract seekTo(IJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "positionMs"
        }
    .end annotation
.end method
