.class public interface abstract Landroidx/media2/exoplayer/external/extractor/TrackOutput;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;
    }
.end annotation


# virtual methods
.method public abstract format(Landroidx/media2/exoplayer/external/Format;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation
.end method

.method public abstract sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "length",
            "allowEndOfInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "length"
        }
    .end annotation
.end method

.method public abstract sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeUs",
            "flags",
            "size",
            "offset",
            "encryptionData"
        }
    .end annotation
.end method
