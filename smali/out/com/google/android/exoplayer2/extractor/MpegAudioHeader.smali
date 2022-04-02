.class public final Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;
.super Ljava/lang/Object;
.source "MpegAudioHeader.java"


# static fields
.field private static final BITRATE_V1_L1:[I

.field private static final BITRATE_V1_L2:[I

.field private static final BITRATE_V1_L3:[I

.field private static final BITRATE_V2:[I

.field private static final BITRATE_V2_L1:[I

.field private static final MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field private static final SAMPLING_RATE_V1:[I


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "audio/mpeg-L1"

    const-string v1, "audio/mpeg-L2"

    const-string v2, "audio/mpeg"

    .line 35
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 37
    fill-array-data v0, :array_3a

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    const/16 v0, 0xe

    new-array v1, v0, [I

    .line 38
    fill-array-data v1, :array_44

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    new-array v1, v0, [I

    .line 42
    fill-array-data v1, :array_64

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    new-array v1, v0, [I

    .line 46
    fill-array-data v1, :array_84

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    new-array v1, v0, [I

    .line 50
    fill-array-data v1, :array_a4

    sput-object v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    new-array v0, v0, [I

    .line 54
    fill-array-data v0, :array_c4

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    return-void

    :array_3a
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    :array_44
    .array-data 4
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
    .end array-data

    :array_64
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
    .end array-data

    :array_84
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
    .end array-data

    :array_a4
    .array-data 4
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
    .end array-data

    :array_c4
    .array-data 4
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameSize(I)I
    .registers 8

    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v0, :cond_8

    return v2

    :cond_8
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/2addr v0, v1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    return v2

    :cond_10
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v1

    if-nez v4, :cond_16

    return v2

    :cond_16
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_74

    if-ne v5, v6, :cond_20

    goto :goto_74

    :cond_20
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_26

    return v2

    .line 89
    :cond_26
    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v2, v2, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_30

    .line 92
    div-int/lit8 v2, v2, 0x2

    goto :goto_34

    :cond_30
    if-nez v0, :cond_34

    .line 95
    div-int/lit8 v2, v2, 0x4

    :cond_34
    :goto_34
    ushr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v3

    if-ne v4, v1, :cond_4d

    if-ne v0, v1, :cond_41

    .line 102
    sget-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_46

    :cond_41
    sget-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_46
    mul-int/lit8 v0, v0, 0xc

    .line 103
    div-int/2addr v0, v2

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0

    :cond_4d
    if-ne v0, v1, :cond_5d

    if-ne v4, v6, :cond_57

    .line 107
    sget-object v6, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_62

    :cond_57
    sget-object v6, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_62

    .line 110
    :cond_5d
    sget-object v6, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    :goto_62
    const/16 v6, 0x90

    if-ne v0, v1, :cond_6b

    mul-int/lit16 v5, v5, 0x90

    .line 116
    div-int/2addr v5, v2

    add-int/2addr v5, p0

    return v5

    :cond_6b
    if-ne v4, v3, :cond_6f

    const/16 v6, 0x48

    :cond_6f
    mul-int v6, v6, v5

    .line 119
    div-int/2addr v6, v2

    add-int/2addr v6, p0

    return v6

    :cond_74
    :goto_74
    return v2
.end method

.method public static populateHeader(ILcom/google/android/exoplayer2/extractor/MpegAudioHeader;)Z
    .registers 13

    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_8

    return v2

    :cond_8
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/lit8 v4, v0, 0x3

    const/4 v0, 0x1

    if-ne v4, v0, :cond_11

    return v2

    :cond_11
    ushr-int/lit8 v3, p0, 0x11

    and-int/2addr v3, v1

    if-nez v3, :cond_17

    return v2

    :cond_17
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_9a

    if-ne v5, v6, :cond_22

    goto/16 :goto_9a

    :cond_22
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_28

    return v2

    .line 157
    :cond_28
    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v2, v2, v6

    const/4 v6, 0x2

    if-ne v4, v6, :cond_32

    .line 160
    div-int/lit8 v2, v2, 0x2

    goto :goto_36

    :cond_32
    if-nez v4, :cond_36

    .line 163
    div-int/lit8 v2, v2, 0x4

    :cond_36
    :goto_36
    move v7, v2

    ushr-int/lit8 v2, p0, 0x9

    and-int/2addr v2, v0

    const/16 v8, 0x480

    if-ne v3, v1, :cond_58

    if-ne v4, v1, :cond_46

    .line 172
    sget-object v8, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    goto :goto_4b

    :cond_46
    sget-object v8, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    sub-int/2addr v5, v0

    aget v5, v8, v5

    :goto_4b
    mul-int/lit8 v8, v5, 0xc

    .line 173
    div-int/2addr v8, v7

    add-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0x4

    const/16 v2, 0x180

    move v2, v5

    move v9, v8

    const/16 v10, 0x180

    goto :goto_85

    :cond_58
    if-ne v4, v1, :cond_6f

    if-ne v3, v6, :cond_62

    .line 179
    sget-object v9, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    sub-int/2addr v5, v0

    aget v5, v9, v5

    goto :goto_67

    :cond_62
    sget-object v9, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    sub-int/2addr v5, v0

    aget v5, v9, v5

    :goto_67
    mul-int/lit16 v9, v5, 0x90

    .line 181
    div-int/2addr v9, v7

    add-int/2addr v9, v2

    move v2, v5

    const/16 v10, 0x480

    goto :goto_85

    .line 184
    :cond_6f
    sget-object v9, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    sub-int/2addr v5, v0

    aget v5, v9, v5

    if-ne v3, v0, :cond_78

    const/16 v8, 0x240

    :cond_78
    if-ne v3, v0, :cond_7d

    const/16 v9, 0x48

    goto :goto_7f

    :cond_7d
    const/16 v9, 0x90

    :goto_7f
    mul-int v9, v9, v5

    .line 186
    div-int/2addr v9, v7

    add-int/2addr v9, v2

    move v2, v5

    move v10, v8

    .line 190
    :goto_85
    sget-object v5, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    rsub-int/lit8 v3, v3, 0x3

    aget-object v5, v5, v3

    shr-int/lit8 p0, p0, 0x6

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_92

    const/4 v8, 0x1

    goto :goto_93

    :cond_92
    const/4 v8, 0x2

    :goto_93
    move-object v3, p1

    move v6, v9

    move v9, v2

    .line 192
    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->setValues(ILjava/lang/String;IIIII)V

    return v0

    :cond_9a
    :goto_9a
    return v2
.end method

.method private setValues(ILjava/lang/String;IIIII)V
    .registers 8

    .line 219
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->version:I

    .line 220
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    .line 221
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    .line 222
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    .line 223
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->channels:I

    .line 224
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->bitrate:I

    .line 225
    iput p7, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->samplesPerFrame:I

    return-void
.end method
