.class public final Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field private closed:Z

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private opened:Z

.field private final singleByteArray:[B

.field private totalBytesRead:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->opened:Z

    .line 35
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    .line 43
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 44
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->singleByteArray:[B

    return-void
.end method

.method private checkOpened()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->opened:Z

    if-nez v0, :cond_e

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->opened:Z

    :cond_e
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_c

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    :cond_c
    return-void
.end method

.method public open()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->checkOpened()V

    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->singleByteArray:[B

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    goto :goto_11

    .line 71
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->singleByteArray:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    :goto_11
    return v1
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 82
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->checkOpened()V

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_14

    return p2

    .line 87
    :cond_14
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    return p1
.end method
