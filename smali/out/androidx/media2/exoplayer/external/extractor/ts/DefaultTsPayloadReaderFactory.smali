.class public final Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "application/cea-608"

    const/4 v2, 0x0

    .line 120
    invoke-static {v0, v1, v2, v0}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flags",
            "closedCaptionFormats"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    .line 135
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-void
.end method

.method private buildSeiReader(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "esInfo"
        }
    .end annotation

    .line 198
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private buildUserDataReader(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "esInfo"
        }
    .end annotation

    .line 211
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private getClosedCaptionFormats(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "esInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x20

    .line 224
    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 225
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-object v1

    .line 227
    :cond_d
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-object/from16 v2, p1

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    .line 228
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 229
    :goto_18
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_8e

    .line 230
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 231
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 232
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v4

    const/16 v4, 0x86

    if-ne v3, v4, :cond_8a

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit8 v3, v3, 0x1f

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_3c
    if-ge v6, v3, :cond_8a

    const/4 v7, 0x3

    .line 238
    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v13

    .line 239
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit16 v8, v7, 0x80

    const/4 v9, 0x1

    if-eqz v8, :cond_4e

    const/4 v8, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v8, 0x0

    :goto_4f
    if-eqz v8, :cond_58

    and-int/lit8 v7, v7, 0x3f

    const-string v10, "application/cea-708"

    move v14, v7

    move-object v7, v10

    goto :goto_5b

    :cond_58
    const-string v7, "application/cea-608"

    const/4 v14, 0x1

    .line 252
    :goto_5b
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    int-to-byte v10, v10

    .line 254
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    const/4 v11, 0x0

    if-eqz v8, :cond_73

    and-int/lit8 v8, v10, 0x40

    if-eqz v8, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v9, 0x0

    .line 260
    :goto_6c
    invoke-static {v9}, Landroidx/media2/exoplayer/external/text/cea/Cea708InitializationData;->buildData(Z)Ljava/util/List;

    move-result-object v8

    move-object/from16 v18, v8

    goto :goto_75

    :cond_73
    move-object/from16 v18, v11

    :goto_75
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    const-wide v16, 0x7fffffffffffffffL

    move-object v9, v7

    .line 264
    invoke-static/range {v8 .. v18}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    .line 263
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 279
    :cond_8a
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    goto :goto_18

    :cond_8e
    return-object v2
.end method

.method private isSet(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 286
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method


# virtual methods
.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public createPayloadReader(ILandroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "esInfo"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_fd

    const/4 v1, 0x3

    if-eq p1, v1, :cond_f0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_f0

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-eq p1, v2, :cond_db

    const/16 v2, 0x11

    if-eq p1, v2, :cond_c7

    const/16 v0, 0x15

    if-eq p1, v0, :cond_bc

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_9b

    const/16 v0, 0x24

    if-eq p1, v0, :cond_8c

    const/16 v0, 0x59

    if-eq p1, v0, :cond_7f

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_72

    const/16 v0, 0xac

    if-eq p1, v0, :cond_65

    const/16 v0, 0x81

    if-eq p1, v0, :cond_58

    const/16 v0, 0x82

    if-eq p1, v0, :cond_4f

    const/16 v0, 0x86

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x87

    if-eq p1, v0, :cond_58

    return-object v3

    :cond_3b
    const/16 p1, 0x10

    .line 176
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_44

    goto :goto_4e

    .line 177
    :cond_44
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;

    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;-><init>()V

    invoke-direct {v3, p1}, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;)V

    :goto_4e
    return-object v3

    :cond_4f
    const/16 p1, 0x40

    .line 161
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-nez p1, :cond_72

    return-object v3

    .line 157
    :cond_58
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 159
    :cond_65
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 166
    :cond_72
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 181
    :cond_7f
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 174
    :cond_8c
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;

    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    move-result-object p2

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 170
    :cond_9b
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_a2

    goto :goto_bb

    .line 171
    :cond_a2
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;

    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    move-result-object p2

    const/4 v0, 0x1

    .line 172
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;ZZ)V

    invoke-direct {v3, p1}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    :goto_bb
    return-object v3

    .line 179
    :cond_bc
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance p2, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 153
    :cond_c7
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_ce

    goto :goto_da

    .line 154
    :cond_ce
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    :goto_da
    return-object v3

    .line 150
    :cond_db
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_e2

    goto :goto_ef

    .line 151
    :cond_e2
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    const/4 v0, 0x0

    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    invoke-direct {v3, p1}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    :goto_ef
    return-object v3

    .line 148
    :cond_f0
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 168
    :cond_fd
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;

    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;

    move-result-object p2

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object p1
.end method
