.class public final Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field private closed:Z

.field private final dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private final dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

.field private opened:Z

.field private final singleByteArray:[B

.field private totalBytesRead:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataSource",
            "dataSpec"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->opened:Z

    .line 41
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->closed:Z

    .line 49
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 50
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 51
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->singleByteArray:[B

    return-void
.end method

.method private checkOpened()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->opened:Z

    if-nez v0, :cond_e

    .line 108
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->opened:Z

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

    .line 100
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_c

    .line 101
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->close()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->closed:Z

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

    .line 71
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->checkOpened()V

    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->singleByteArray:[B

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    goto :goto_11

    .line 77
    :cond_a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->singleByteArray:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    :goto_11
    return v1
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 88
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->checkOpened()V

    .line 89
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/DataSource;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_14

    return p2

    .line 93
    :cond_14
    iget-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->totalBytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceInputStream;->totalBytesRead:J

    return p1
.end method
