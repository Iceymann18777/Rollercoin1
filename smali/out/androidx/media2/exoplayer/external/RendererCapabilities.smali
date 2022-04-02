.class public interface abstract Landroidx/media2/exoplayer/external/RendererCapabilities;
.super Ljava/lang/Object;
.source "RendererCapabilities.java"


# virtual methods
.method public abstract getTrackType()I
.end method

.method public abstract supportsFormat(Landroidx/media2/exoplayer/external/Format;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract supportsMixedMimeTypeAdaptation()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation
.end method
