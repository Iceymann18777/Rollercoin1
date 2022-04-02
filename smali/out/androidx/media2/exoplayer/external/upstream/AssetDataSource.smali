.class public final Landroidx/media2/exoplayer/external/upstream/AssetDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "AssetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;
    }
.end annotation


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private opened:Z

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

    .line 61
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 144
    :try_start_4
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_d

    .line 145
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_1b
    .catchall {:try_start_4 .. :try_end_d} :catchall_19

    .line 150
    :cond_d
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 151
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->opened:Z

    if-eqz v0, :cond_18

    .line 152
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->opened:Z

    .line 153
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->transferEnded()V

    :cond_18
    return-void

    :catchall_19
    move-exception v2

    goto :goto_22

    :catch_1b
    move-exception v2

    .line 148
    :try_start_1c
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_19

    .line 150
    :goto_22
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 151
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->opened:Z

    if-eqz v0, :cond_2d

    .line 152
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->opened:Z

    .line 153
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->transferEnded()V

    :cond_2d
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 137
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .registers 10
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
            Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    .line 69
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/android_asset/"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    const/16 v1, 0xf

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_1e
    const-string v1, "/"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_2a
    :goto_2a
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 76
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 77
    iget-wide v3, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 78
    iget-wide v3, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_68

    .line 83
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4e

    .line 84
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J

    goto :goto_60

    .line 86
    :cond_4e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v0, v5

    if-nez v7, :cond_60

    .line 91
    iput-wide v3, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_60} :catch_6e

    .line 98
    :cond_60
    :goto_60
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->opened:Z

    .line 99
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 100
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J

    return-wide v0

    .line 81
    :cond_68
    :try_start_68
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6e} :catch_6e

    :catch_6e
    move-exception p1

    .line 95
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

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
            Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 107
    :cond_4
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J

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

    .line 114
    :try_start_16
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 115
    :goto_1b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_27} :catch_49

    if-ne p1, v4, :cond_3b

    .line 121
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_30

    return v4

    .line 123
    :cond_30
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 127
    :cond_3b
    iget-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_45

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 128
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesRemaining:J

    .line 130
    :cond_45
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;->bytesTransferred(I)V

    return p1

    :catch_49
    move-exception p1

    .line 117
    new-instance p2, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {p2, p1}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
