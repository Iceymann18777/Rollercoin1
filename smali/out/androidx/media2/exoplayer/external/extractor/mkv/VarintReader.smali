.class final Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;
.super Ljava/lang/Object;
.source "VarintReader.java"


# static fields
.field private static final VARINT_LENGTH_MASKS:[J


# instance fields
.field private length:I

.field private final scratch:[B

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    .line 43
    fill-array-data v0, :array_a

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    return-void

    :array_a
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 53
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->scratch:[B

    return-void
.end method

.method public static assembleVarint([BIZ)J
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "varintBytes",
            "varintLength",
            "removeLengthMask"
        }
    .end annotation

    const/4 v0, 0x0

    .line 151
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    if-eqz p2, :cond_13

    .line 153
    sget-object p2, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    add-int/lit8 v4, p1, -0x1

    aget-wide v4, p2, v4

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v0, v4

    :cond_13
    const/4 p2, 0x1

    :goto_14
    if-ge p2, p1, :cond_21

    const/16 v4, 0x8

    shl-long/2addr v0, v4

    .line 156
    aget-byte v4, p0, p2

    int-to-long v4, v4

    and-long/2addr v4, v2

    or-long/2addr v0, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_21
    return-wide v0
.end method

.method public static parseUnsignedVarintLength(I)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstByte"
        }
    .end annotation

    const/4 v0, 0x0

    .line 132
    :goto_1
    sget-object v1, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 133
    aget-wide v2, v1, v0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    const/4 v0, -0x1

    :goto_17
    return v0
.end method


# virtual methods
.method public getLastLength()I
    .registers 2

    .line 120
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->length:I

    return v0
.end method

.method public readUnsignedVarint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;ZZI)J
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "allowEndOfInput",
            "removeLengthMask",
            "maximumAllowedLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 89
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2b

    .line 91
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->scratch:[B

    invoke-interface {p1, v0, v1, v2, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p2

    if-nez p2, :cond_11

    const-wide/16 p1, -0x1

    return-wide p1

    .line 94
    :cond_11
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->scratch:[B

    aget-byte p2, p2, v1

    and-int/lit16 p2, p2, 0xff

    .line 95
    invoke-static {p2}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->length:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_23

    .line 99
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->state:I

    goto :goto_2b

    .line 97
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No valid varint length mask found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_2b
    :goto_2b
    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->length:I

    if-le p2, p4, :cond_34

    .line 103
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->state:I

    const-wide/16 p1, -0x2

    return-wide p1

    :cond_34
    if-eq p2, v2, :cond_3c

    .line 109
    iget-object p4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->scratch:[B

    sub-int/2addr p2, v2

    invoke-interface {p1, p4, v2, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 112
    :cond_3c
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->state:I

    .line 113
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->scratch:[B

    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->length:I

    invoke-static {p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->state:I

    .line 61
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->length:I

    return-void
.end method
