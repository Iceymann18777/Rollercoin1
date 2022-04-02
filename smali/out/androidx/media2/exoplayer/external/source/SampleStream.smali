.class public interface abstract Landroidx/media2/exoplayer/external/source/SampleStream;
.super Ljava/lang/Object;
.source "SampleStream.java"


# virtual methods
.method public abstract isReady()Z
.end method

.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readData(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "formatHolder",
            "buffer",
            "formatRequired"
        }
    .end annotation
.end method

.method public abstract skipData(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation
.end method
