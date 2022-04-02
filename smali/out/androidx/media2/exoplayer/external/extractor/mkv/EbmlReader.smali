.class interface abstract Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;
.super Ljava/lang/Object;
.source "EbmlReader.java"


# virtual methods
.method public abstract init(Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processor"
        }
    .end annotation
.end method

.method public abstract read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
