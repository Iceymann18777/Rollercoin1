.class public final Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;


# static fields
.field private static final FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media2/exoplayer/external/extractor/Extractor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adtsFlags:I

.field private amrFlags:I

.field private constantBitrateSeekingEnabled:Z

.field private fragmentedMp4Flags:I

.field private matroskaFlags:I

.field private mp3Flags:I

.field private mp4Flags:I

.field private tsFlags:I

.field private tsMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-string v0, "androidx.media2.exoplayer.external.ext.flac.FlacExtractor"

    .line 70
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_13} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1e

    :catch_14
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1d
    const/4 v0, 0x0

    .line 80
    :goto_1e
    sput-object v0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 94
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->tsMode:I

    return-void
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .registers 11

    monitor-enter p0

    .line 217
    :try_start_1
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/16 v1, 0xd

    if-nez v0, :cond_a

    const/16 v0, 0xd

    goto :goto_c

    :cond_a
    const/16 v0, 0xe

    :goto_c
    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 218
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->matroskaFlags:I

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/extractor/mkv/MatroskaExtractor;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 219
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I

    invoke-direct {v2, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x2

    .line 220
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->mp4Flags:I

    invoke-direct {v5, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/Mp4Extractor;-><init>(I)V

    aput-object v5, v0, v2

    const/4 v2, 0x3

    .line 221
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->mp3Flags:I

    .line 224
    iget-boolean v7, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    if-eqz v7, :cond_37

    const/4 v7, 0x1

    goto :goto_38

    :cond_37
    const/4 v7, 0x0

    :goto_38
    or-int/2addr v6, v7

    .line 226
    invoke-direct {v5, v6}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;-><init>(I)V

    aput-object v5, v0, v2

    const/4 v2, 0x4

    .line 227
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    const-wide/16 v6, 0x0

    iget v8, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->adtsFlags:I

    .line 231
    iget-boolean v9, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    if-eqz v9, :cond_4b

    const/4 v9, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v9, 0x0

    :goto_4c
    or-int/2addr v8, v9

    .line 233
    invoke-direct {v5, v6, v7, v8}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;-><init>(JI)V

    aput-object v5, v0, v2

    const/4 v2, 0x5

    .line 234
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;-><init>()V

    aput-object v5, v0, v2

    const/4 v2, 0x6

    .line 235
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->tsMode:I

    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->tsFlags:I

    invoke-direct {v5, v6, v7}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;-><init>(II)V

    aput-object v5, v0, v2

    const/4 v2, 0x7

    .line 236
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/extractor/flv/FlvExtractor;-><init>()V

    aput-object v5, v0, v2

    const/16 v2, 0x8

    .line 237
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/extractor/ogg/OggExtractor;-><init>()V

    aput-object v5, v0, v2

    const/16 v2, 0x9

    .line 238
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/extractor/ts/PsExtractor;-><init>()V

    aput-object v5, v0, v2

    const/16 v2, 0xa

    .line 239
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/extractor/wav/WavExtractor;-><init>()V

    aput-object v5, v0, v2

    const/16 v2, 0xb

    .line 240
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->amrFlags:I

    .line 243
    iget-boolean v7, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    if-eqz v7, :cond_94

    goto :goto_95

    :cond_94
    const/4 v4, 0x0

    :goto_95
    or-int/2addr v4, v6

    .line 245
    invoke-direct {v5, v4}, Landroidx/media2/exoplayer/external/extractor/amr/AmrExtractor;-><init>(I)V

    aput-object v5, v0, v2

    const/16 v2, 0xc

    .line 246
    new-instance v4, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;

    invoke-direct {v4}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;-><init>()V

    aput-object v4, v0, v2

    .line 247
    sget-object v2, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    :try_end_a6
    .catchall {:try_start_1 .. :try_end_a6} :catchall_c0

    if-eqz v2, :cond_be

    .line 249
    :try_start_a8
    sget-object v2, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/Extractor;

    aput-object v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b4} :catch_b5
    .catchall {:try_start_a8 .. :try_end_b4} :catchall_c0

    goto :goto_be

    :catch_b5
    move-exception v0

    .line 252
    :try_start_b6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating FLAC extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_c0

    .line 255
    :cond_be
    :goto_be
    monitor-exit p0

    return-object v0

    :catchall_c0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAdtsExtractorFlags(I)Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_1
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->adtsFlags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 124
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
