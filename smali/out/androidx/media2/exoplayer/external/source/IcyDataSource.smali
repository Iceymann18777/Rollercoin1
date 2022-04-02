.class final Landroidx/media2/exoplayer/external/source/IcyDataSource;
.super Ljava/lang/Object;
.source "IcyDataSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/IcyDataSource$Listener;
    }
.end annotation


# instance fields
.field private bytesUntilMetadata:I

.field private final listener:Landroidx/media2/exoplayer/external/source/IcyDataSource$Listener;

.field private final metadataIntervalBytes:I

.field private final metadataLengthByteHolder:[B

.field private final upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;ILandroidx/media2/exoplayer/external/source/IcyDataSource$Listener;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "upstream",
            "metadataIntervalBytes",
            "listener"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 66
    :goto_9
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 67
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 68
    iput p2, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->metadataIntervalBytes:I

    .line 69
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->listener:Landroidx/media2/exoplayer/external/source/IcyDataSource$Listener;

    new-array p1, v0, [B

    .line 70
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->metadataLengthByteHolder:[B

    .line 71
    iput p2, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->bytesUntilMetadata:I

    return-void
.end method

.method private readMetadata()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->metadataLengthByteHolder:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/upstream/DataSource;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    return v2

    .line 128
    :cond_e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->metadataLengthByteHolder:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_19

    return v3

    .line 135
    :cond_19
    new-array v4, v0, [B

    move v5, v0

    const/4 v6, 0x0

    :goto_1d
    if-lez v5, :cond_2b

    .line 137
    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v7, v4, v6, v5}, Landroidx/media2/exoplayer/external/upstream/DataSource;->read([BII)I

    move-result v7

    if-ne v7, v1, :cond_28

    return v2

    :cond_28
    add-int/2addr v6, v7

    sub-int/2addr v5, v7

    goto :goto_1d

    :cond_2b
    :goto_2b
    if-lez v0, :cond_36

    add-int/lit8 v1, v0, -0x1

    .line 146
    aget-byte v1, v4, v1

    if-nez v1, :cond_36

    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    :cond_36
    if-lez v0, :cond_42

    .line 151
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->listener:Landroidx/media2/exoplayer/external/source/IcyDataSource$Listener;

    new-instance v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v2, v4, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([BI)V

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/source/IcyDataSource$Listener;->onIcyMetadata(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    :cond_42
    return v3
.end method


# virtual methods
.method public addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transferListener"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 103
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .registers 2
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
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public read([BII)I
    .registers 7
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
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->bytesUntilMetadata:I

    const/4 v1, -0x1

    if-nez v0, :cond_11

    .line 87
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/IcyDataSource;->readMetadata()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 88
    iget v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->metadataIntervalBytes:I

    iput v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->bytesUntilMetadata:I

    goto :goto_11

    :cond_10
    return v1

    .line 93
    :cond_11
    :goto_11
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->upstream:Landroidx/media2/exoplayer/external/upstream/DataSource;

    iget v2, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->bytesUntilMetadata:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/DataSource;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_24

    .line 95
    iget p2, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->bytesUntilMetadata:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/source/IcyDataSource;->bytesUntilMetadata:I

    :cond_24
    return p1
.end method
