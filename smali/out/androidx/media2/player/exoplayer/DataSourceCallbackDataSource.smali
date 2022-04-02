.class public final Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "DataSourceCallbackDataSource.java"


# instance fields
.field private mBytesRemaining:J

.field private final mDataSourceCallback:Landroidx/media2/common/DataSourceCallback;

.field private mOffset:J

.field private mOpened:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroidx/media2/common/DataSourceCallback;)V
    .registers 3

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 70
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/DataSourceCallback;

    iput-object p1, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mDataSourceCallback:Landroidx/media2/common/DataSourceCallback;

    return-void
.end method

.method static getFactory(Landroidx/media2/common/DataSourceCallback;)Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .registers 2

    .line 52
    new-instance v0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource$1;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource$1;-><init>(Landroidx/media2/common/DataSourceCallback;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mUri:Landroid/net/Uri;

    .line 123
    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOpened:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOpened:Z

    .line 125
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->transferEnded()V

    :cond_d
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 117
    iget-object v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mUri:Landroid/net/Uri;

    .line 76
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    iput-wide v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOffset:J

    .line 77
    invoke-virtual {p0, p1}, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 78
    iget-object v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mDataSourceCallback:Landroidx/media2/common/DataSourceCallback;

    invoke-virtual {v0}, Landroidx/media2/common/DataSourceCallback;->getSize()J

    move-result-wide v0

    .line 79
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1e

    .line 80
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iput-wide v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    goto :goto_2a

    :cond_1e
    cmp-long v2, v0, v4

    if-eqz v2, :cond_28

    .line 82
    iget-wide v2, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOffset:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    goto :goto_2a

    .line 84
    :cond_28
    iput-wide v4, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    :goto_2a
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOpened:Z

    .line 87
    invoke-virtual {p0, p1}, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 88
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    return-wide v0
.end method

.method public read([BII)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_4
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_e

    return v4

    :cond_e
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_15

    goto :goto_1b

    :cond_15
    int-to-long v5, p3

    .line 99
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_1b
    move v10, p3

    .line 100
    iget-object v5, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mDataSourceCallback:Landroidx/media2/common/DataSourceCallback;

    iget-wide v6, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOffset:J

    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v5 .. v10}, Landroidx/media2/common/DataSourceCallback;->readAt(J[BII)I

    move-result p1

    if-gez p1, :cond_35

    .line 102
    iget-wide p1, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_2f

    return v4

    .line 103
    :cond_2f
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 107
    :cond_35
    iget-wide p2, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOffset:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mOffset:J

    .line 108
    iget-wide p2, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    cmp-long v4, p2, v2

    if-eqz v4, :cond_44

    sub-long/2addr p2, v0

    .line 109
    iput-wide p2, p0, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->mBytesRemaining:J

    .line 111
    :cond_44
    invoke-virtual {p0, p1}, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->bytesTransferred(I)V

    return p1
.end method
