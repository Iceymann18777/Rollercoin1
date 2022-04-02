.class public interface abstract Landroidx/media2/exoplayer/external/video/VideoListener;
.super Ljava/lang/Object;
.source "VideoListener.java"


# virtual methods
.method public abstract onRenderedFirstFrame()V
.end method

.method public abstract onSurfaceSizeChanged(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
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
