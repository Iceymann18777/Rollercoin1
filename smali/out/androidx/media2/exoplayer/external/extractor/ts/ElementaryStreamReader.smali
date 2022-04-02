.class public interface abstract Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;
.super Ljava/lang/Object;
.source "ElementaryStreamReader.java"


# virtual methods
.method public abstract consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation
.end method

.method public abstract createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extractorOutput",
            "idGenerator"
        }
    .end annotation
.end method

.method public abstract packetFinished()V
.end method

.method public abstract packetStarted(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pesTimeUs",
            "flags"
        }
    .end annotation
.end method

.method public abstract seek()V
.end method
