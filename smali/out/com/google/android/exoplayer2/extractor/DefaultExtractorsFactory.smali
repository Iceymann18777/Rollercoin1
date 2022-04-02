.class public final Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field private static final FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
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
    const-string v0, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 64
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_13} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1e

    :catch_14
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1d
    const/4 v0, 0x0

    .line 74
    :goto_1e
    sput-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 88
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I

    return-void
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 9

    monitor-enter p0

    .line 211
    :try_start_1
    sget-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/16 v1, 0xd

    if-nez v0, :cond_a

    const/16 v0, 0xd

    goto :goto_c

    :cond_a
    const/16 v0, 0xe

    :goto_c
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 212
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->matroskaFlags:I

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 213
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x2

    .line 214
    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp4Flags:I

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>(I)V

    aput-object v5, v0, v2

    const/4 v2, 0x3

    .line 215
    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp3Flags:I

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    if-eqz v7, :cond_37

    const/4 v7, 0x1

    goto :goto_38

    :cond_37
    const/4 v7, 0x0

    :goto_38
    or-int/2addr v6, v7

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(I)V

    aput-object v5, v0, v2

    const/4 v2, 0x4

    .line 221
    new-instance v5, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->adtsFlags:I

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    if-eqz v7, :cond_49

    const/4 v7, 0x1

    goto :goto_4a

    :cond_49
    const/4 v7, 0x0

    :goto_4a
    or-int/2addr v6, v7

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>(I)V

    aput-object v5, v0, v2

    const/4 v2, 0x5

    .line 227
    new-instance v5, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    aput-object v5, v0, v2

    const/4 v2, 0x6

    .line 228
    new-instance v5, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsFlags:I

    invoke-direct {v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(II)V

    aput-object v5, v0, v2

    const/4 v2, 0x7

    .line 229
    new-instance v5, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;-><init>()V

    aput-object v5, v0, v2

    const/16 v2, 0x8

    .line 230
    new-instance v5, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;-><init>()V

    aput-object v5, v0, v2

    const/16 v2, 0x9

    .line 231
    new-instance v5, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;-><init>()V

    aput-object v5, v0, v2

    const/16 v2, 0xa

    .line 232
    new-instance v5, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;-><init>()V

    aput-object v5, v0, v2

    const/16 v2, 0xb

    .line 233
    new-instance v5, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->amrFlags:I

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    if-eqz v7, :cond_92

    goto :goto_93

    :cond_92
    const/4 v4, 0x0

    :goto_93
    or-int/2addr v4, v6

    invoke-direct {v5, v4}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;-><init>(I)V

    aput-object v5, v0, v2

    const/16 v2, 0xc

    .line 239
    new-instance v4, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    aput-object v4, v0, v2

    .line 240
    sget-object v2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    :try_end_a4
    .catchall {:try_start_1 .. :try_end_a4} :catchall_be

    if-eqz v2, :cond_bc

    .line 242
    :try_start_a6
    sget-object v2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/Extractor;

    aput-object v2, v0, v1
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b2} :catch_b3
    .catchall {:try_start_a6 .. :try_end_b2} :catchall_be

    goto :goto_bc

    :catch_b3
    move-exception v0

    .line 245
    :try_start_b4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating FLAC extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_bc
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_be

    .line 248
    :cond_bc
    :goto_bc
    monitor-exit p0

    return-object v0

    :catchall_be
    move-exception v0

    monitor-exit p0

    throw v0
.end method
