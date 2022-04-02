.class public abstract Landroidx/media2/exoplayer/external/source/chunk/DataChunk;
.super Landroidx/media2/exoplayer/external/source/chunk/Chunk;
.source "DataChunk.java"


# instance fields
.field private data:[B

.field private volatile loadCanceled:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;[B)V
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "type",
            "trackFormat",
            "trackSelectionReason",
            "trackSelectionData",
            "data"
        }
    .end annotation

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 55
    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p7

    .line 57
    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->data:[B

    return-void
.end method

.method private maybeExpandData(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limit"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->data:[B

    const/16 v1, 0x4000

    if-nez v0, :cond_b

    new-array p1, v1, [B

    .line 111
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->data:[B

    goto :goto_17

    .line 112
    :cond_b
    array-length v2, v0

    add-int/2addr p1, v1

    if-ge v2, p1, :cond_17

    .line 115
    array-length p1, v0

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->data:[B

    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .registers 2

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->loadCanceled:Z

    return-void
.end method

.method protected abstract consume([BI)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDataHolder()[B
    .registers 2

    .line 68
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->data:[B

    return-object v0
.end method

.method public final load()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_9
    :goto_9
    const/4 v2, -0x1

    if-eq v0, v2, :cond_21

    .line 84
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v0, :cond_21

    .line 85
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->maybeExpandData(I)V

    .line 86
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->data:[B

    const/16 v4, 0x4000

    invoke-virtual {v0, v3, v1, v4}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->read([BII)I

    move-result v0

    if-eq v0, v2, :cond_9

    add-int/2addr v1, v0

    goto :goto_9

    .line 91
    :cond_21
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v0, :cond_2a

    .line 92
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->data:[B

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->consume([BI)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_30

    .line 95
    :cond_2a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    return-void

    :catchall_30
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    goto :goto_38

    :goto_37
    throw v0

    :goto_38
    goto :goto_37
.end method
