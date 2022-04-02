.class public final Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;
.super Ljava/lang/Object;
.source "DummyTrackOutput.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/TrackOutput;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Landroidx/media2/exoplayer/external/Format;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    return-void
.end method

.method public sampleData(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;IZ)I
    .registers 4
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

    .line 44
    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skip(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_10

    if-eqz p3, :cond_a

    return p2

    .line 49
    :cond_a
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_10
    return p1
.end method

.method public sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V
    .registers 3
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

    .line 56
    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    return-void
.end method

.method public sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V
    .registers 7
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
            "cryptoData"
        }
    .end annotation

    return-void
.end method
