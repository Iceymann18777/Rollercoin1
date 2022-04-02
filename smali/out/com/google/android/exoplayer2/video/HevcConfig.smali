.class public final Lcom/google/android/exoplayer2/video/HevcConfig;
.super Ljava/lang/Object;
.source "HevcConfig.java"


# instance fields
.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I


# direct methods
.method private constructor <init>(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 88
    iput p2, p0, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    return-void
.end method

.method public static parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x15

    .line 43
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    .line 47
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 49
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_16
    const/4 v6, 0x1

    if-ge v4, v1, :cond_33

    .line 51
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const/4 v7, 0x0

    :goto_21
    if-ge v7, v6, :cond_30

    .line 54
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v9, v8, 0x4

    add-int/2addr v5, v9

    .line 56
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 61
    :cond_33
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 62
    new-array v2, v5, [B

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_3a
    if-ge v4, v1, :cond_69

    .line 65
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    const/4 v9, 0x0

    :goto_44
    if-ge v9, v8, :cond_66

    .line 68
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 69
    sget-object v11, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    sget-object v12, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v12, v12

    invoke-static {v11, v3, v2, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    sget-object v11, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v11, v11

    add-int/2addr v7, v11

    .line 72
    iget-object v11, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 73
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v12

    invoke-static {v11, v12, v2, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v10

    .line 75
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_44

    :cond_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_69
    if-nez v5, :cond_6d

    const/4 p0, 0x0

    goto :goto_71

    .line 79
    :cond_6d
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 80
    :goto_71
    new-instance v1, Lcom/google/android/exoplayer2/video/HevcConfig;

    add-int/2addr v0, v6

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/video/HevcConfig;-><init>(Ljava/util/List;I)V
    :try_end_77
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_77} :catch_78

    return-object v1

    :catch_78
    move-exception p0

    .line 82
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Error parsing HEVC config"

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_82

    :goto_81
    throw v0

    :goto_82
    goto :goto_81
.end method
