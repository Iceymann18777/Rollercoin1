.class abstract Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field protected final output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;


# direct methods
.method protected constructor <init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "timeUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;->parseHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;->parsePayload(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V

    :cond_9
    return-void
.end method

.method protected abstract parseHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
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

.method protected abstract parsePayload(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "timeUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation
.end method
