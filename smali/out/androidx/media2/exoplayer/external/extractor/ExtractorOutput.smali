.class public interface abstract Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
.super Ljava/lang/Object;
.source "ExtractorOutput.java"


# virtual methods
.method public abstract endTracks()V
.end method

.method public abstract seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekMap"
        }
    .end annotation
.end method

.method public abstract track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "type"
        }
    .end annotation
.end method
