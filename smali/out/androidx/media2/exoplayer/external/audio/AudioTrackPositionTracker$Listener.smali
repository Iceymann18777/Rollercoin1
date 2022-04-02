.class public interface abstract Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;
.super Ljava/lang/Object;
.source "AudioTrackPositionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onInvalidLatency(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latencyUs"
        }
    .end annotation
.end method

.method public abstract onPositionFramesMismatch(JJJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioTimestampPositionFrames",
            "audioTimestampSystemTimeUs",
            "systemTimeUs",
            "playbackPositionUs"
        }
    .end annotation
.end method

.method public abstract onSystemTimeUsMismatch(JJJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioTimestampPositionFrames",
            "audioTimestampSystemTimeUs",
            "systemTimeUs",
            "playbackPositionUs"
        }
    .end annotation
.end method

.method public abstract onUnderrun(IJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferSize",
            "bufferSizeMs"
        }
    .end annotation
.end method
