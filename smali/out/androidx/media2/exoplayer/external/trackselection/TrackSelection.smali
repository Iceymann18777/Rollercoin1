.class public interface abstract Landroidx/media2/exoplayer/external/trackselection/TrackSelection;
.super Ljava/lang/Object;
.source "TrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Factory;,
        Landroidx/media2/exoplayer/external/trackselection/TrackSelection$Definition;
    }
.end annotation


# virtual methods
.method public abstract blacklist(IJ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "blacklistDurationMs"
        }
    .end annotation
.end method

.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract getFormat(I)Landroidx/media2/exoplayer/external/Format;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getIndexInTrackGroup(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getSelectedFormat()Landroidx/media2/exoplayer/external/Format;
.end method

.method public abstract getSelectedIndex()I
.end method

.method public abstract getSelectedIndexInTrackGroup()I
.end method

.method public abstract getSelectionData()Ljava/lang/Object;
.end method

.method public abstract getSelectionReason()I
.end method

.method public abstract getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;
.end method

.method public abstract indexOf(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indexInTrackGroup"
        }
    .end annotation
.end method

.method public abstract length()I
.end method

.method public abstract onDiscontinuity()V
.end method

.method public abstract onPlaybackSpeed(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation
.end method

.method public abstract updateSelectedTrack(JJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "playbackPositionUs",
            "bufferedDurationUs",
            "availableDurationUs"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateSelectedTrack(JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "playbackPositionUs",
            "bufferedDurationUs",
            "availableDurationUs",
            "queue",
            "mediaChunkIterators"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;",
            ">;[",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation
.end method
