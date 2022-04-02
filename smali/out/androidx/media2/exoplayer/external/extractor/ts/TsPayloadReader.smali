.class public interface abstract Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;,
        Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;,
        Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;,
        Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;
    }
.end annotation


# virtual methods
.method public abstract consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation
.end method

.method public abstract init(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timestampAdjuster",
            "extractorOutput",
            "idGenerator"
        }
    .end annotation
.end method

.method public abstract seek()V
.end method
