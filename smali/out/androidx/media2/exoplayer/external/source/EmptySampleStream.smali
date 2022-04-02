.class public final Landroidx/media2/exoplayer/external/source/EmptySampleStream;
.super Ljava/lang/Object;
.source "EmptySampleStream.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/SampleStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public maybeThrowError()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public readData(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I
    .registers 4
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

    const/4 p1, 0x4

    .line 47
    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->setFlags(I)V

    const/4 p1, -0x4

    return p1
.end method

.method public skipData(J)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
