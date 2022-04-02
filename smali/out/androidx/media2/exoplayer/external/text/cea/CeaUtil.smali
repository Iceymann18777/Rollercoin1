.class public final Landroidx/media2/exoplayer/external/text/cea/CeaUtil;
.super Ljava/lang/Object;
.source "CeaUtil.java"


# direct methods
.method public static consume(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;[Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "presentationTimeUs",
            "seiBuffer",
            "outputs"
        }
    .end annotation

    .line 54
    :goto_0
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_70

    .line 55
    invoke-static {p2}, Landroidx/media2/exoplayer/external/text/cea/CeaUtil;->readNon255TerminatedValue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v0

    .line 56
    invoke-static {p2}, Landroidx/media2/exoplayer/external/text/cea/CeaUtil;->readNon255TerminatedValue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v2

    .line 57
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_61

    .line 59
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v2, v4, :cond_1e

    goto :goto_61

    :cond_1e
    const/4 v4, 0x4

    if-ne v0, v4, :cond_6c

    const/16 v0, 0x8

    if-lt v2, v0, :cond_6c

    .line 64
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 65
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    const/16 v4, 0x31

    const/4 v5, 0x0

    if-ne v2, v4, :cond_37

    .line 68
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v6

    goto :goto_38

    :cond_37
    const/4 v6, 0x0

    .line 70
    :goto_38
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    const/16 v8, 0x2f

    if-ne v2, v8, :cond_43

    .line 72
    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    :cond_43
    const/16 v9, 0xb5

    if-ne v0, v9, :cond_50

    if-eq v2, v4, :cond_4b

    if-ne v2, v8, :cond_50

    :cond_4b
    const/4 v0, 0x3

    if-ne v7, v0, :cond_50

    const/4 v0, 0x1

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    if-ne v2, v4, :cond_5b

    const v2, 0x47413934

    if-ne v6, v2, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    and-int/2addr v0, v1

    :cond_5b
    if-eqz v0, :cond_6c

    .line 82
    invoke-static {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/text/cea/CeaUtil;->consumeCcData(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;[Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    goto :goto_6c

    :cond_61
    :goto_61
    const-string v0, "CeaUtil"

    const-string v1, "Skipping remainder of malformed SEI NAL unit."

    .line 61
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v3

    .line 85
    :cond_6c
    :goto_6c
    invoke-virtual {p2, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_70
    return-void
.end method

.method public static consumeCcData(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;[Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "presentationTimeUs",
            "ccDataBuffer",
            "outputs"
        }
    .end annotation

    .line 99
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-nez v1, :cond_10

    return-void

    :cond_10
    and-int/lit8 v0, v0, 0x1f

    .line 106
    invoke-virtual {p2, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    mul-int/lit8 v0, v0, 0x3

    .line 110
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 111
    array-length v3, p3

    :goto_1c
    if-ge v2, v3, :cond_31

    aget-object v4, p3, v2

    .line 112
    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 113
    invoke-interface {v4, p2, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, p0

    move v8, v0

    .line 114
    invoke-interface/range {v4 .. v10}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_31
    return-void
.end method

.method private static readNon255TerminatedValue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    const/4 v0, 0x0

    .line 135
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-nez v1, :cond_9

    const/4 p0, -0x1

    return p0

    .line 138
    :cond_9
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1

    return v0
.end method
