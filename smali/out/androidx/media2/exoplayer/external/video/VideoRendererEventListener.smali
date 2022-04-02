.class public interface abstract Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public abstract onDroppedFrames(IJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "elapsedMs"
        }
    .end annotation
.end method

.method public abstract onRenderedFirstFrame(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation
.end method

.method public abstract onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "decoderName",
            "initializedTimestampMs",
            "initializationDurationMs"
        }
    .end annotation
.end method

.method public abstract onVideoDisabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "counters"
        }
    .end annotation
.end method

.method public abstract onVideoEnabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "counters"
        }
    .end annotation
.end method

.method public abstract onVideoInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation
.end method

.method public abstract onVideoSizeChanged(IIIF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "unappliedRotationDegrees",
            "pixelWidthHeightRatio"
        }
    .end annotation
.end method
