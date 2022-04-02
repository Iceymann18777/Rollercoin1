.class final Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Track"
.end annotation


# instance fields
.field public audioBitDepth:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public colorRange:I

.field public colorSpace:I

.field public colorTransfer:I

.field public cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field public flagDefault:Z

.field public flagForced:Z

.field public hasColorInfo:Z

.field public hasContentEncryption:Z

.field public height:I

.field private language:Ljava/lang/String;

.field public maxContentLuminance:I

.field public maxFrameAverageLuminance:I

.field public maxMasteringLuminance:F

.field public minMasteringLuminance:F

.field public nalUnitLengthFieldLength:I

.field public name:Ljava/lang/String;

.field public number:I

.field public output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field public primaryBChromaticityX:F

.field public primaryBChromaticityY:F

.field public primaryGChromaticityX:F

.field public primaryGChromaticityY:F

.field public primaryRChromaticityX:F

.field public primaryRChromaticityY:F

.field public projectionData:[B

.field public projectionPosePitch:F

.field public projectionPoseRoll:F

.field public projectionPoseYaw:F

.field public projectionType:I

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public stereoMode:I

.field public trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

.field public type:I

.field public whitePointChromaticityX:F

.field public whitePointChromaticityY:F

.field public width:I


# direct methods
.method private constructor <init>()V
    .registers 5

    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1731
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 1732
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 1733
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 1734
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    const/4 v1, 0x0

    .line 1735
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 1736
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    const/4 v2, 0x0

    .line 1737
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 1738
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 1739
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/4 v2, 0x0

    .line 1740
    iput-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 1741
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 1743
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 1744
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 1746
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 1748
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    const/16 v1, 0x3e8

    .line 1750
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    const/16 v1, 0xc8

    .line 1751
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 1752
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 1753
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 1754
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 1755
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 1756
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 1757
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 1758
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 1759
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 1760
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 1761
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    const/4 v1, 0x1

    .line 1764
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 1765
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v0, 0x1f40

    .line 1766
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    const-wide/16 v2, 0x0

    .line 1767
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 1768
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 1773
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    const-string v0, "eng"

    .line 1774
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$1;)V
    .registers 2

    .line 1704
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;-><init>()V

    return-void
.end method

.method static synthetic access$202(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1704
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method private getHdrStaticInfo()[B
    .registers 6

    .line 2045
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_be

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_be

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_be

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_be

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_be

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_be

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_be

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_be

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_be

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_40

    goto/16 :goto_be

    :cond_40
    const/16 v0, 0x19

    new-array v0, v0, [B

    .line 2055
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 2056
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2057
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const v3, 0x47435000    # 50000.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2058
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2059
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2060
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2061
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2062
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2063
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2064
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2065
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2066
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2067
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2068
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_be
    :goto_be
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseFourCcPrivate(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 2083
    :try_start_2
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 2084
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x58564944

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_19

    .line 2086
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/divx"

    invoke-direct {p0, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_19
    const-wide/32 v2, 0x33363248

    cmp-long v5, v0, v2

    if-nez v5, :cond_28

    .line 2088
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/3gpp"

    invoke-direct {p0, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_28
    const-wide/32 v2, 0x31435657

    cmp-long v5, v0, v2

    if-nez v5, :cond_71

    .line 2092
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    .line 2093
    iget-object p0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 2094
    :goto_37
    array-length v1, p0

    add-int/lit8 v1, v1, -0x4

    if-ge v0, v1, :cond_69

    .line 2095
    aget-byte v1, p0, v0

    if-nez v1, :cond_66

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_66

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_66

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p0, v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_66

    .line 2100
    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 2101
    new-instance v0, Landroid/util/Pair;

    const-string v1, "video/wvc1"

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 2104
    :cond_69
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "Failed to find FourCC VC1 initialization data"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_71
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_71} :catch_80

    :cond_71
    const-string p0, "MatroskaExtractor"

    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    .line 2110
    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/x-unknown"

    invoke-direct {p0, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 2107
    :catch_80
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "Error parsing FourCC private data"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_89

    :goto_88
    throw p0

    :goto_89
    goto :goto_88
.end method

.method private static parseMsAcmCodecPrivate(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 2173
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    const v2, 0xfffe

    const/4 v3, 0x0

    if-ne v0, v2, :cond_36

    const/16 v0, 0x18

    .line 2177
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 2178
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->access$400()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_34

    .line 2179
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->access$400()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6
    :try_end_2f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_2f} :catch_37

    cmp-long p0, v4, v6

    if-nez p0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    return v1

    :cond_36
    return v3

    .line 2184
    :catch_37
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "Error parsing MS/ACM codec private"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecPrivate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    const-string v0, "Error parsing vorbis codec private"

    const/4 v1, 0x0

    .line 2123
    :try_start_3
    aget-byte v2, p0, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_65

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2128
    :goto_b
    aget-byte v6, p0, v4

    const/4 v7, -0x1

    if-ne v6, v7, :cond_15

    add-int/lit16 v5, v5, 0xff

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_15
    add-int/lit8 v6, v4, 0x1

    .line 2132
    aget-byte v4, p0, v4

    add-int/2addr v5, v4

    const/4 v4, 0x0

    .line 2135
    :goto_1b
    aget-byte v8, p0, v6

    if-ne v8, v7, :cond_24

    add-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_24
    add-int/lit8 v7, v6, 0x1

    .line 2139
    aget-byte v6, p0, v6

    add-int/2addr v4, v6

    .line 2141
    aget-byte v6, p0, v7

    if-ne v6, v2, :cond_5f

    .line 2144
    new-array v2, v5, [B

    .line 2145
    invoke-static {p0, v7, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v5

    .line 2147
    aget-byte v5, p0, v7

    const/4 v6, 0x3

    if-ne v5, v6, :cond_59

    add-int/2addr v7, v4

    .line 2151
    aget-byte v4, p0, v7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_53

    .line 2154
    array-length v4, p0

    sub-int/2addr v4, v7

    new-array v4, v4, [B

    .line 2155
    array-length v5, p0

    sub-int/2addr v5, v7

    invoke-static {p0, v7, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2156
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2157
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2158
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2152
    :cond_53
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2148
    :cond_59
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2142
    :cond_5f
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2124
    :cond_65
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_6b} :catch_6b

    .line 2161
    :catch_6b
    new-instance p0, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_72

    :goto_71
    throw p0

    :goto_72
    goto :goto_71
.end method


# virtual methods
.method public initializeOutput(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;I)V
    .registers 45
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "trackId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1786
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    sparse-switch v2, :sswitch_data_50a

    goto/16 :goto_169

    :sswitch_12
    const-string v2, "A_OPUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0xc

    goto/16 :goto_16a

    :sswitch_1e
    const-string v2, "A_FLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x16

    goto/16 :goto_16a

    :sswitch_2a
    const-string v2, "A_EAC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x11

    goto/16 :goto_16a

    :sswitch_36
    const-string v2, "V_MPEG2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/4 v1, 0x3

    goto/16 :goto_16a

    :sswitch_41
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x19

    goto/16 :goto_16a

    :sswitch_4d
    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x8

    goto/16 :goto_16a

    :sswitch_59
    const-string v2, "S_TEXT/ASS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x1a

    goto/16 :goto_16a

    :sswitch_65
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x18

    goto/16 :goto_16a

    :sswitch_71
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x14

    goto/16 :goto_16a

    :sswitch_7d
    const-string v2, "V_THEORA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0xa

    goto/16 :goto_16a

    :sswitch_89
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x1c

    goto/16 :goto_16a

    :sswitch_95
    const-string v2, "V_VP9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/4 v1, 0x1

    goto/16 :goto_16a

    :sswitch_a0
    const-string v2, "V_VP8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/4 v1, 0x0

    goto/16 :goto_16a

    :sswitch_ab
    const-string v2, "V_AV1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/4 v1, 0x2

    goto/16 :goto_16a

    :sswitch_b6
    const-string v2, "A_DTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x13

    goto/16 :goto_16a

    :sswitch_c2
    const-string v2, "A_AC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x10

    goto/16 :goto_16a

    :sswitch_ce
    const-string v2, "A_AAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0xd

    goto/16 :goto_16a

    :sswitch_da
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x15

    goto/16 :goto_16a

    :sswitch_e6
    const-string v2, "S_VOBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x1b

    goto/16 :goto_16a

    :sswitch_f2
    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/4 v1, 0x7

    goto/16 :goto_16a

    :sswitch_fd
    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/4 v1, 0x5

    goto/16 :goto_16a

    :sswitch_108
    const-string v2, "S_DVBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x1d

    goto :goto_16a

    :sswitch_113
    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x9

    goto :goto_16a

    :sswitch_11e
    const-string v2, "A_MPEG/L3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0xf

    goto :goto_16a

    :sswitch_129
    const-string v2, "A_MPEG/L2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0xe

    goto :goto_16a

    :sswitch_134
    const-string v2, "A_VORBIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0xb

    goto :goto_16a

    :sswitch_13f
    const-string v2, "A_TRUEHD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x12

    goto :goto_16a

    :sswitch_14a
    const-string v2, "A_MS/ACM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/16 v1, 0x17

    goto :goto_16a

    :sswitch_155
    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/4 v1, 0x4

    goto :goto_16a

    :sswitch_15f
    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    const/4 v1, 0x6

    goto :goto_16a

    :cond_169
    :goto_169
    const/4 v1, -0x1

    :goto_16a
    const-string v2, ". Setting mimeType to "

    const-string v10, "Unsupported PCM bit depth: "

    const-string v11, "application/dvbsubs"

    const-string v12, "application/pgs"

    const-string v13, "application/vobsub"

    const-string v14, "text/x-ssa"

    const-string v15, "application/x-subrip"

    const-string v16, "audio/raw"

    const/16 v17, 0x1000

    const-string v9, "MatroskaExtractor"

    const-string v4, "audio/x-unknown"

    const/16 v18, 0x0

    packed-switch v1, :pswitch_data_584

    .line 1921
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Unrecognized codec identifier."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_18d
    new-array v1, v3, [B

    .line 1917
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    aget-byte v3, v2, v7

    aput-byte v3, v1, v7

    aget-byte v3, v2, v5

    aput-byte v3, v1, v5

    aget-byte v3, v2, v6

    aput-byte v3, v1, v6

    aget-byte v2, v2, v8

    aput-byte v2, v1, v8

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v4, v11

    goto/16 :goto_336

    :pswitch_1a8
    move-object v4, v12

    goto/16 :goto_334

    .line 1909
    :pswitch_1ab
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v4, v13

    goto/16 :goto_336

    :pswitch_1b4
    move-object v4, v14

    goto/16 :goto_334

    :pswitch_1b7
    move-object v4, v15

    goto/16 :goto_334

    .line 1893
    :pswitch_1ba
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->getPcmEncoding(I)I

    move-result v1

    if-nez v1, :cond_1e4

    .line 1897
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_334

    :cond_1e4
    move/from16 v26, v1

    move-object/from16 v4, v16

    move-object/from16 v1, v18

    goto/16 :goto_338

    .line 1878
    :pswitch_1ec
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->parseMsAcmCodecPrivate(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_223

    .line 1879
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->getPcmEncoding(I)I

    move-result v1

    if-nez v1, :cond_1e4

    .line 1883
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_334

    :cond_223
    const-string v1, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    .line 1888
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_230

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_236

    :cond_230
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_236
    invoke-static {v9, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_334

    .line 1874
    :pswitch_23b
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v16, "audio/flac"

    goto/16 :goto_316

    :pswitch_245
    const-string v16, "audio/vnd.dts.hd"

    goto/16 :goto_332

    :pswitch_249
    const-string v16, "audio/vnd.dts"

    goto/16 :goto_332

    .line 1863
    :pswitch_24d
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    const-string v16, "audio/true-hd"

    goto/16 :goto_332

    :pswitch_258
    const-string v16, "audio/eac3"

    goto/16 :goto_332

    :pswitch_25c
    const-string v16, "audio/ac3"

    goto/16 :goto_332

    :pswitch_260
    const-string v16, "audio/mpeg"

    goto :goto_265

    :pswitch_263
    const-string v16, "audio/mpeg-L2"

    :goto_265
    move-object/from16 v4, v16

    move-object/from16 v1, v18

    const/16 v26, -0x1

    const/16 v31, 0x1000

    goto/16 :goto_33a

    .line 1845
    :pswitch_26f
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v16, "audio/mp4a-latm"

    goto/16 :goto_316

    :pswitch_279
    const/16 v17, 0x1680

    .line 1836
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1837
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    .line 1839
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 1838
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1841
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v3, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1840
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v16, "audio/opus"

    move-object/from16 v4, v16

    const/16 v26, -0x1

    const/16 v31, 0x1680

    goto/16 :goto_33a

    :pswitch_2c3
    const/16 v17, 0x2000

    .line 1831
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v1

    const-string v16, "audio/vorbis"

    move-object/from16 v4, v16

    const/16 v26, -0x1

    const/16 v31, 0x2000

    goto/16 :goto_33a

    :pswitch_2d5
    const-string v16, "video/x-unknown"

    goto :goto_332

    .line 1819
    :pswitch_2d8
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->parseFourCcPrivate(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    .line 1820
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    .line 1821
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    goto :goto_316

    .line 1814
    :pswitch_2ee
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Landroidx/media2/exoplayer/external/video/HevcConfig;->parse(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/HevcConfig;

    move-result-object v1

    .line 1815
    iget-object v2, v1, Landroidx/media2/exoplayer/external/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 1816
    iget v1, v1, Landroidx/media2/exoplayer/external/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    const-string v16, "video/hevc"

    goto :goto_315

    .line 1808
    :pswitch_302
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Landroidx/media2/exoplayer/external/video/AvcConfig;->parse(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/AvcConfig;

    move-result-object v1

    .line 1809
    iget-object v2, v1, Landroidx/media2/exoplayer/external/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 1810
    iget v1, v1, Landroidx/media2/exoplayer/external/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    const-string v16, "video/avc"

    :goto_315
    move-object v1, v2

    :goto_316
    move-object/from16 v4, v16

    goto :goto_336

    .line 1804
    :pswitch_319
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v1, :cond_320

    move-object/from16 v1, v18

    goto :goto_324

    :cond_320
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_324
    const-string v16, "video/mp4v-es"

    goto :goto_316

    :pswitch_327
    const-string v16, "video/mpeg2"

    goto :goto_332

    :pswitch_32a
    const-string v16, "video/av01"

    goto :goto_332

    :pswitch_32d
    const-string v16, "video/x-vnd.on2.vp9"

    goto :goto_332

    :pswitch_330
    const-string v16, "video/x-vnd.on2.vp8"

    :goto_332
    move-object/from16 v4, v16

    :goto_334
    move-object/from16 v1, v18

    :goto_336
    const/16 v26, -0x1

    :goto_338
    const/16 v31, -0x1

    .line 1927
    :goto_33a
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    or-int/2addr v2, v7

    .line 1928
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v3, :cond_343

    const/4 v3, 0x2

    goto :goto_344

    :cond_343
    const/4 v3, 0x0

    :goto_344
    or-int/2addr v2, v3

    .line 1931
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_372

    .line 1933
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, -0x1

    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    move-object/from16 v20, v4

    move/from16 v23, v31

    move/from16 v24, v3

    move/from16 v25, v5

    move-object/from16 v27, v1

    move-object/from16 v28, v6

    move/from16 v29, v2

    move-object/from16 v30, v7

    invoke-static/range {v19 .. v30}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    const/4 v5, 0x1

    goto/16 :goto_4fc

    .line 1936
    :cond_372
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_478

    .line 1938
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v2, :cond_38e

    .line 1939
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_383

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->width:I

    :cond_383
    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 1940
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-ne v2, v3, :cond_38b

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->height:I

    :cond_38b
    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto :goto_38f

    :cond_38e
    const/4 v3, -0x1

    :goto_38f
    const/high16 v2, -0x40800000    # -1.0f

    .line 1943
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-eq v5, v3, :cond_3a7

    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-eq v8, v3, :cond_3a7

    .line 1944
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->height:I

    mul-int v2, v2, v5

    int-to-float v2, v2

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->width:I

    mul-int v5, v5, v8

    int-to-float v5, v5

    div-float/2addr v2, v5

    move/from16 v37, v2

    goto :goto_3a9

    :cond_3a7
    const/high16 v37, -0x40800000    # -1.0f

    .line 1947
    :goto_3a9
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    if-eqz v2, :cond_3bf

    .line 1948
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->getHdrStaticInfo()[B

    move-result-object v2

    .line 1949
    new-instance v5, Landroidx/media2/exoplayer/external/video/ColorInfo;

    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    iget v10, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    invoke-direct {v5, v8, v9, v10, v2}, Landroidx/media2/exoplayer/external/video/ColorInfo;-><init>(III[B)V

    move-object/from16 v40, v5

    goto :goto_3c1

    :cond_3bf
    move-object/from16 v40, v18

    .line 1953
    :goto_3c1
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    const-string v5, "htc_video_rotA-000"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x5a

    if-eqz v2, :cond_3cf

    const/4 v9, 0x0

    goto :goto_3f7

    .line 1955
    :cond_3cf
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    const-string v8, "htc_video_rotA-090"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3dc

    const/16 v9, 0x5a

    goto :goto_3f7

    .line 1957
    :cond_3dc
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    const-string v8, "htc_video_rotA-180"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e9

    const/16 v9, 0xb4

    goto :goto_3f7

    .line 1959
    :cond_3e9
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    const-string v8, "htc_video_rotA-270"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f6

    const/16 v9, 0x10e

    goto :goto_3f7

    :cond_3f6
    const/4 v9, -0x1

    .line 1962
    :goto_3f7
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    if-nez v2, :cond_44d

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    const/4 v3, 0x0

    .line 1963
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_44d

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 1964
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_44d

    .line 1966
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_417

    const/16 v36, 0x0

    goto :goto_44f

    .line 1968
    :cond_417
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_424

    const/16 v36, 0x5a

    goto :goto_44f

    .line 1970
    :cond_424
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v3, -0x3ccc0000    # -180.0f

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_448

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v3, 0x43340000    # 180.0f

    .line 1971
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_439

    goto :goto_448

    .line 1973
    :cond_439
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_44d

    const/16 v7, 0x10e

    const/16 v36, 0x10e

    goto :goto_44f

    :cond_448
    :goto_448
    const/16 v7, 0xb4

    const/16 v36, 0xb4

    goto :goto_44f

    :cond_44d
    move/from16 v36, v9

    .line 1979
    :goto_44f
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x0

    const/16 v30, -0x1

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->width:I

    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->height:I

    const/high16 v34, -0x40800000    # -1.0f

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v28, v4

    move/from16 v32, v2

    move/from16 v33, v3

    move-object/from16 v35, v1

    move-object/from16 v38, v5

    move/from16 v39, v7

    move-object/from16 v41, v8

    .line 1978
    invoke-static/range {v27 .. v41}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILandroidx/media2/exoplayer/external/video/ColorInfo;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    const/4 v5, 0x2

    goto/16 :goto_4fc

    .line 1994
    :cond_478
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48d

    .line 1996
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {v1, v4, v2, v3, v5}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    :goto_48a
    const/4 v5, 0x3

    goto/16 :goto_4fc

    .line 1998
    :cond_48d
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c6

    .line 2000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2001
    invoke-static {}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;->access$300()[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2002
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2003
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x0

    const/16 v30, -0x1

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    const/16 v33, -0x1

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const-wide v35, 0x7fffffffffffffffL

    move-object/from16 v28, v4

    move/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v5

    move-object/from16 v37, v1

    invoke-static/range {v27 .. v37}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    goto :goto_48a

    .line 2006
    :cond_4c6
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e1

    .line 2007
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e1

    .line 2008
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d9

    goto :goto_4e1

    .line 2021
    :cond_4d9
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Unexpected MIME type."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2012
    :cond_4e1
    :goto_4e1
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x0

    const/16 v30, -0x1

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v28, v4

    move/from16 v31, v2

    move-object/from16 v32, v1

    move-object/from16 v33, v3

    move-object/from16 v34, v5

    .line 2011
    invoke-static/range {v27 .. v34}, Landroidx/media2/exoplayer/external/Format;->createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    goto :goto_48a

    .line 2024
    :goto_4fc
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->number:I

    move-object/from16 v3, p1

    invoke-interface {v3, v2, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v2

    iput-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 2025
    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    return-void

    :sswitch_data_50a
    .sparse-switch
        -0x7ce7f5de -> :sswitch_15f
        -0x7ce7f3b0 -> :sswitch_155
        -0x76567dc0 -> :sswitch_14a
        -0x6a615338 -> :sswitch_13f
        -0x672350af -> :sswitch_134
        -0x585f4fce -> :sswitch_129
        -0x585f4fcd -> :sswitch_11e
        -0x51dc40b2 -> :sswitch_113
        -0x37a9c464 -> :sswitch_108
        -0x2016c535 -> :sswitch_fd
        -0x2016c4e5 -> :sswitch_f2
        -0x19552dbd -> :sswitch_e6
        -0x1538b2ba -> :sswitch_da
        0x3c02325 -> :sswitch_ce
        0x3c02353 -> :sswitch_c2
        0x3c030c5 -> :sswitch_b6
        0x4e81333 -> :sswitch_ab
        0x4e86155 -> :sswitch_a0
        0x4e86156 -> :sswitch_95
        0x5e8da3e -> :sswitch_89
        0x1a8350d6 -> :sswitch_7d
        0x2056f406 -> :sswitch_71
        0x2b453ce4 -> :sswitch_65
        0x2c0618eb -> :sswitch_59
        0x32fdf009 -> :sswitch_4d
        0x54c61e47 -> :sswitch_41
        0x6bd6c624 -> :sswitch_36
        0x7446132a -> :sswitch_2a
        0x7446b0a6 -> :sswitch_1e
        0x744ad97d -> :sswitch_12
    .end sparse-switch

    :pswitch_data_584
    .packed-switch 0x0
        :pswitch_330
        :pswitch_32d
        :pswitch_32a
        :pswitch_327
        :pswitch_319
        :pswitch_319
        :pswitch_319
        :pswitch_302
        :pswitch_2ee
        :pswitch_2d8
        :pswitch_2d5
        :pswitch_2c3
        :pswitch_279
        :pswitch_26f
        :pswitch_263
        :pswitch_260
        :pswitch_25c
        :pswitch_258
        :pswitch_24d
        :pswitch_249
        :pswitch_249
        :pswitch_245
        :pswitch_23b
        :pswitch_1ec
        :pswitch_1ba
        :pswitch_1b7
        :pswitch_1b4
        :pswitch_1ab
        :pswitch_1a8
        :pswitch_18d
    .end packed-switch
.end method

.method public outputPendingSampleMetadata()V
    .registers 2

    .line 2030
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v0, :cond_7

    .line 2031
    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->outputPendingSampleMetadata(Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;)V

    :cond_7
    return-void
.end method

.method public reset()V
    .registers 2

    .line 2037
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v0, :cond_7

    .line 2038
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->reset()V

    :cond_7
    return-void
.end method
