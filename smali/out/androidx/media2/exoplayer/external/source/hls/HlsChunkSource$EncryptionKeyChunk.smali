.class final Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;
.super Landroidx/media2/exoplayer/external/source/chunk/DataChunk;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EncryptionKeyChunk"
.end annotation


# instance fields
.field private result:[B


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;[B)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataSource",
            "dataSpec",
            "trackFormat",
            "trackSelectionReason",
            "trackSelectionData",
            "scratchSpace"
        }
    .end annotation

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 595
    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;[B)V

    return-void
.end method


# virtual methods
.method protected consume([BI)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "limit"
        }
    .end annotation

    .line 601
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    return-void
.end method

.method public getResult()[B
    .registers 2

    .line 605
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    return-object v0
.end method
