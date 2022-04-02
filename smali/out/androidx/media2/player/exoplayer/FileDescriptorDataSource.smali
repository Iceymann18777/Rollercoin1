.class Landroidx/media2/player/exoplayer/FileDescriptorDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "FileDescriptorDataSource.java"


# instance fields
.field private mBytesRemaining:J

.field private final mFileDescriptor:Ljava/io/FileDescriptor;

.field private mInputStream:Ljava/io/InputStream;

.field private final mLength:J

.field private final mLock:Ljava/lang/Object;

.field private final mOffset:J

.field private mOpened:Z

.field private mPosition:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ljava/io/FileDescriptor;JJLjava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 85
    iput-object p1, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 86
    iput-wide p2, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mOffset:J

    .line 87
    iput-wide p4, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mLength:J

    .line 88
    iput-object p6, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static getFactory(Ljava/io/FileDescriptor;JJLjava/lang/Object;)Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;
    .registers 14

    .line 61
    new-instance v7, Landroidx/media2/player/exoplayer/FileDescriptorDataSource$1;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media2/player/exoplayer/FileDescriptorDataSource$1;-><init>(Ljava/io/FileDescriptor;JJLjava/lang/Object;)V

    return-object v7
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 147
    :try_start_4
    iget-object v2, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mInputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_d

    .line 148
    iget-object v2, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_19

    .line 151
    :cond_d
    iput-object v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mInputStream:Ljava/io/InputStream;

    .line 152
    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mOpened:Z

    if-eqz v0, :cond_18

    .line 153
    iput-boolean v1, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mOpened:Z

    .line 154
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->transferEnded()V

    :cond_18
    return-void

    :catchall_19
    move-exception v2

    .line 151
    iput-object v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mInputStream:Ljava/io/InputStream;

    .line 152
    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mOpened:Z

    if-eqz v0, :cond_25

    .line 153
    iput-boolean v1, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mOpened:Z

    .line 154
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->transferEnded()V

    :cond_25
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 140
    iget-object v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .registers 7

    .line 93
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mUri:Landroid/net/Uri;

    .line 94
    invoke-virtual {p0, p1}, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 95
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mInputStream:Ljava/io/InputStream;

    .line 96
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1d

    .line 97
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iput-wide v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

    goto :goto_2b

    .line 98
    :cond_1d
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mLength:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_29

    .line 99
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

    goto :goto_2b

    .line 101
    :cond_29
    iput-wide v2, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

    .line 103
    :goto_2b
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mOffset:J

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mPosition:J

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mOpened:Z

    .line 105
    invoke-virtual {p0, p1}, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 106
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

    return-wide v0
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 113
    :cond_4
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

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

    .line 117
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 119
    :goto_1b
    iget-object v0, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_1e
    iget-object v1, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-wide v5, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mPosition:J

    invoke-static {v1, v5, v6}, Landroidx/media2/player/exoplayer/FileDescriptorUtil;->seek(Ljava/io/FileDescriptor;J)V

    .line 122
    iget-object v1, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mInputStream:Ljava/io/InputStream;

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_41

    .line 124
    iget-wide p1, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_3b

    .line 127
    monitor-exit v0

    return v4

    .line 125
    :cond_3b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 129
    :cond_41
    iget-wide p2, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mPosition:J

    int-to-long v4, p1

    add-long/2addr p2, v4

    iput-wide p2, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mPosition:J

    .line 130
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_1e .. :try_end_48} :catchall_55

    .line 131
    iget-wide p2, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_51

    sub-long/2addr p2, v4

    .line 132
    iput-wide p2, p0, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->mBytesRemaining:J

    .line 134
    :cond_51
    invoke-virtual {p0, p1}, Landroidx/media2/player/exoplayer/FileDescriptorDataSource;->bytesTransferred(I)V

    return p1

    :catchall_55
    move-exception p1

    .line 130
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p1
.end method
