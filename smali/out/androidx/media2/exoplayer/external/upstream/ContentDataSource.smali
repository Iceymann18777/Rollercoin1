.class public final Landroidx/media2/exoplayer/external/upstream/ContentDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "ContentDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/FileInputStream;

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 158
    :try_start_4
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    if-eqz v2, :cond_d

    .line 159
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_3b
    .catchall {:try_start_4 .. :try_end_d} :catchall_39

    .line 164
    :cond_d
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 166
    :try_start_f
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_18

    .line 167
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_26
    .catchall {:try_start_f .. :try_end_18} :catchall_24

    .line 172
    :cond_18
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 173
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_23

    .line 174
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    .line 175
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->transferEnded()V

    :cond_23
    return-void

    :catchall_24
    move-exception v2

    goto :goto_2d

    :catch_26
    move-exception v2

    .line 170
    :try_start_27
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_24

    .line 172
    :goto_2d
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 173
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_38

    .line 174
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    .line 175
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->transferEnded()V

    :cond_38
    throw v2

    :catchall_39
    move-exception v2

    goto :goto_42

    :catch_3b
    move-exception v2

    .line 162
    :try_start_3c
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_39

    .line 164
    :goto_42
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 166
    :try_start_44
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_4d

    .line 167
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4d} :catch_5b
    .catchall {:try_start_44 .. :try_end_4d} :catchall_59

    .line 172
    :cond_4d
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 173
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_58

    .line 174
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    .line 175
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->transferEnded()V

    :cond_58
    throw v2

    :catchall_59
    move-exception v2

    goto :goto_62

    :catch_5b
    move-exception v2

    .line 170
    :try_start_5c
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_59

    .line 172
    :goto_62
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 173
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_6d

    .line 174
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    .line 175
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->transferEnded()V

    :cond_6d
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 150
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSpec"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .line 73
    :try_start_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 74
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    .line 76
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 77
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    const-string v2, "r"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 78
    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_6f

    .line 82
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 83
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 85
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 86
    iget-wide v4, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    add-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 87
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_69

    .line 92
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_3d

    .line 93
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J

    goto :goto_60

    .line 95
    :cond_3d
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    cmp-long v3, v1, v6

    if-nez v3, :cond_5d

    .line 99
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_54

    goto :goto_5a

    .line 101
    :cond_54
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    sub-long v6, v1, v3

    :goto_5a
    iput-wide v6, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J

    goto :goto_60

    :cond_5d
    sub-long/2addr v1, v4

    .line 103
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_60} :catch_94

    :goto_60
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->opened:Z

    .line 111
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 113
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J

    return-wide v0

    .line 90
    :cond_69
    :try_start_69
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 80
    :cond_6f
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not open file descriptor for: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_94} :catch_94

    :catch_94
    move-exception p1

    .line 107
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "offset",
            "readLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 120
    :cond_4
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J

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

    .line 127
    :try_start_16
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 128
    :goto_1b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_27} :catch_49

    if-ne p1, v4, :cond_3b

    .line 134
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_30

    return v4

    .line 136
    :cond_30
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 140
    :cond_3b
    iget-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_45

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 141
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesRemaining:J

    .line 143
    :cond_45
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->bytesTransferred(I)V

    return p1

    :catch_49
    move-exception p1

    .line 130
    new-instance p2, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {p2, p1}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
