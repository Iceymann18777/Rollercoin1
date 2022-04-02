.class public interface abstract Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;
.super Ljava/lang/Object;
.source "SectionPayloadReader.java"


# virtual methods
.method public abstract consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sectionData"
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
