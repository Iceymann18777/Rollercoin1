.class public final Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "RawResourceDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;
    }
.end annotation


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private opened:Z

.field private final resources:Landroid/content/res/Resources;

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

    .line 86
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawResourceId"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "rawresource:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 182
    :try_start_4
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_d

    .line 183
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_3b
    .catchall {:try_start_4 .. :try_end_d} :catchall_39

    .line 188
    :cond_d
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 190
    :try_start_f
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_18

    .line 191
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_26
    .catchall {:try_start_f .. :try_end_18} :catchall_24

    .line 196
    :cond_18
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 197
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_23

    .line 198
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    .line 199
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->transferEnded()V

    :cond_23
    return-void

    :catchall_24
    move-exception v2

    goto :goto_2d

    :catch_26
    move-exception v2

    .line 194
    :try_start_27
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_24

    .line 196
    :goto_2d
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 197
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_38

    .line 198
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    .line 199
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->transferEnded()V

    :cond_38
    throw v2

    :catchall_39
    move-exception v2

    goto :goto_42

    :catch_3b
    move-exception v2

    .line 186
    :try_start_3c
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_39

    .line 188
    :goto_42
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 190
    :try_start_44
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_4d

    .line 191
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4d} :catch_5b
    .catchall {:try_start_44 .. :try_end_4d} :catchall_59

    .line 196
    :cond_4d
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 197
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_58

    .line 198
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    .line 199
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->transferEnded()V

    :cond_58
    throw v2

    :catchall_59
    move-exception v2

    goto :goto_62

    :catch_5b
    move-exception v2

    .line 194
    :try_start_5c
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_59

    .line 196
    :goto_62
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 197
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_6d

    .line 198
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    .line 199
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->transferEnded()V

    :cond_6d
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 174
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .registers 8
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
            Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .line 93
    :try_start_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 94
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    const-string v1, "rawresource"

    .line 95
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_a9

    if-eqz v1, :cond_a1

    .line 101
    :try_start_10
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1e} :catch_99
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_a9

    .line 106
    :try_start_1e
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 107
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 108
    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_74

    .line 112
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 113
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 115
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    .line 116
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    invoke-virtual {v0, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v2

    .line 117
    iget-wide v4, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_6e

    .line 122
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_56

    .line 123
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesRemaining:J

    goto :goto_65

    .line 125
    :cond_56
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_5f

    goto :goto_63

    .line 128
    :cond_5f
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    sub-long v4, v0, v2

    :goto_63
    iput-wide v4, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesRemaining:J
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_65} :catch_a9

    :goto_65
    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->opened:Z

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 137
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesRemaining:J

    return-wide v0

    .line 120
    :cond_6e
    :try_start_6e
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 110
    :cond_74
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Resource is compressed: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :catch_99
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v0, "Resource identifier must be an integer."

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_a1
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string v0, "URI must use scheme rawresource"

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_a9} :catch_a9

    :catch_a9
    move-exception p1

    .line 131
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

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
            Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 144
    :cond_4
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesRemaining:J

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

    .line 151
    :try_start_16
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 152
    :goto_1b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_27} :catch_49

    if-ne p1, v4, :cond_3b

    .line 158
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_30

    return v4

    .line 160
    :cond_30
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 164
    :cond_3b
    iget-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_45

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 165
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesRemaining:J

    .line 167
    :cond_45
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->bytesTransferred(I)V

    return p1

    :catch_49
    move-exception p1

    .line 154
    new-instance p2, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {p2, p1}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
