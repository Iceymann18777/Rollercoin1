.class public interface abstract Landroidx/media2/exoplayer/external/source/MediaPeriod;
.super Ljava/lang/Object;
.source "MediaPeriod.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/SequenceableLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;
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

.method public abstract discardBuffer(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "toKeyframe"
        }
    .end annotation
.end method

.method public abstract getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "seekParameters"
        }
    .end annotation
.end method

.method public abstract getBufferedPositionUs()J
.end method

.method public abstract getNextLoadPositionUs()J
.end method

.method public abstract getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
.end method

.method public abstract maybeThrowPrepareError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "positionUs"
        }
    .end annotation
.end method

.method public abstract readDiscontinuity()J
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

.method public abstract seekToUs(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation
.end method

.method public abstract selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "selections",
            "mayRetainStreamFlags",
            "streams",
            "streamResetFlags",
            "positionUs"
        }
    .end annotation
.end method
