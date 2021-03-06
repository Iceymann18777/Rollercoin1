.class final Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;
.super Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;
    }
.end annotation


# instance fields
.field private commentHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;

.field private previousPacketBlockSize:I

.field private seenFirstAudioPacket:Z

.field private vorbisIdHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

.field private vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method static appendNumberOfSamples(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "packetSampleCount"
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 163
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v1

    .line 164
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v1

    .line 165
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v1

    .line 166
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 v1, 0x18

    ushr-long/2addr p1, v1

    and-long/2addr p1, v2

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, p0

    return-void
.end method

.method private static decodeBlockSize(BLandroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "firstByteOfAudioPacket",
            "vorbisSetup"
        }
    .end annotation

    .line 171
    iget v0, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->readBits(BII)I

    move-result p0

    .line 173
    iget-object v0, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;

    aget-object p0, v0, p0

    iget-boolean p0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;->blockFlag:Z

    if-nez p0, :cond_14

    .line 174
    iget-object p0, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget p0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    goto :goto_18

    .line 176
    :cond_14
    iget-object p0, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget p0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize1:I

    :goto_18
    return p0
.end method

.method static readBits(BII)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "length",
            "leastSignificantBitIndex"
        }
    .end annotation

    shr-int/2addr p0, p2

    rsub-int/lit8 p1, p1, 0x8

    const/16 p2, 0xff

    ushr-int p1, p2, p1

    and-int/2addr p0, p1

    return p0
.end method

.method public static verifyBitstreamType(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x1

    .line 47
    :try_start_1
    invoke-static {v0, p0, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;Z)Z

    move-result p0
    :try_end_5
    .catch Landroidx/media2/exoplayer/external/ParserException; {:try_start_1 .. :try_end_5} :catch_6

    return p0

    :catch_6
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected onSeekEnd(J)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentGranule"
        }
    .end annotation

    .line 67
    invoke-super {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->onSeekEnd(J)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 68
    :goto_d
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 69
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    if-eqz p1, :cond_15

    iget v0, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    :cond_15
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    return-void
.end method

.method protected preparePayload(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packet"
        }
    .end annotation

    .line 75
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_c

    const-wide/16 v0, -0x1

    return-wide v0

    .line 80
    :cond_c
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->decodeBlockSize(BLandroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;)I

    move-result v0

    .line 83
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    if-eqz v3, :cond_1f

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_1f
    int-to-long v3, v1

    .line 86
    invoke-static {p1, v3, v4}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->appendNumberOfSamples(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V

    .line 89
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 90
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    return-wide v3
.end method

.method protected readHeaders(Landroidx/media2/exoplayer/external/util/ParsableByteArray;JLandroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;)Z
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packet",
            "position",
            "setupData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 97
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    if-eqz p2, :cond_6

    const/4 p1, 0x0

    return p1

    .line 101
    :cond_6
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->readSetupHeaders(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    const/4 p2, 0x1

    if-nez p1, :cond_10

    return p2

    .line 106
    :cond_10
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->data:[B

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 110
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v3, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    const/4 v4, -0x1

    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v5, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-wide v8, p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    long-to-int v6, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "audio/vorbis"

    invoke-static/range {v0 .. v10}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    iput-object p1, p4, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media2/exoplayer/external/Format;

    return p2
.end method

.method readSetupHeaders(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scratch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 121
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->readVorbisIdentificationHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    return-object v1

    .line 125
    :cond_c
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->commentHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;

    if-nez v0, :cond_17

    .line 126
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->readVorbisCommentHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->commentHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;

    return-object v1

    .line 131
    :cond_17
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v0

    new-array v4, v0, [B

    .line 133
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->readVorbisModes(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)[Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;

    move-result-object v5

    .line 137
    array-length p1, v5

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v6

    .line 139
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->commentHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;-><init>(Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;[B[Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;I)V

    return-object p1
.end method

.method protected reset(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "headerData"
        }
    .end annotation

    .line 55
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader$VorbisSetup;

    .line 58
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    .line 59
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->commentHeader:Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;

    :cond_c
    const/4 p1, 0x0

    .line 61
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 62
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    return-void
.end method
