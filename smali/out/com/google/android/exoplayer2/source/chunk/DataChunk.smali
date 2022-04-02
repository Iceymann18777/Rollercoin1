.class public abstract Lcom/google/android/exoplayer2/source/chunk/DataChunk;
.super Lcom/google/android/exoplayer2/source/chunk/Chunk;
.source "DataChunk.java"


# instance fields
.field private data:[B

.field private volatile loadCanceled:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;[B)V
    .registers 19

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 56
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/chunk/Chunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p7

    .line 58
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    return-void
.end method

.method private maybeExpandData(I)V
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    const/16 v1, 0x4000

    if-nez v0, :cond_b

    new-array p1, v1, [B

    .line 112
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    goto :goto_17

    .line 113
    :cond_b
    array-length v2, v0

    add-int/2addr p1, v1

    if-ge v2, p1, :cond_17

    .line 116
    array-length p1, v0

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .registers 2

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    return-void
.end method

.method protected abstract consume([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDataHolder()[B
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

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

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_9
    :goto_9
    const/4 v2, -0x1

    if-eq v0, v2, :cond_21

    .line 85
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v0, :cond_21

    .line 86
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->maybeExpandData(I)V

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    const/16 v4, 0x4000

    invoke-virtual {v0, v3, v1, v4}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->read([BII)I

    move-result v0

    if-eq v0, v2, :cond_9

    add-int/2addr v1, v0

    goto :goto_9

    .line 92
    :cond_21
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v0, :cond_2a

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->data:[B

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->consume([BI)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_30

    .line 96
    :cond_2a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-void

    :catchall_30
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/DataChunk;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 97
    goto :goto_38

    :goto_37
    throw v0

    :goto_38
    goto :goto_37
.end method