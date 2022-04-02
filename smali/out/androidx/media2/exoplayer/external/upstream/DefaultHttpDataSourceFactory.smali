.class public final Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSourceFactory;
.super Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;
.source "DefaultHttpDataSourceFactory.java"


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private final connectTimeoutMillis:I

.field private final listener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

.field private final readTimeoutMillis:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userAgent",
            "listener"
        }
    .end annotation

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 63
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/TransferListener;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/TransferListener;IIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userAgent",
            "listener",
            "connectTimeoutMillis",
            "readTimeoutMillis",
            "allowCrossProtocolRedirects"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;-><init>()V

    .line 105
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSourceFactory;->listener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 107
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSourceFactory;->connectTimeoutMillis:I

    .line 108
    iput p4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSourceFactory;->readTimeoutMillis:I

    .line 109
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSourceFactory;->allowCrossProtocolRedirects:Z

    return-void
.end method


# virtual methods
.method protected createDataSourceInternal(Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;)Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultRequestProperties"
        }
    .end annotation

    .line 115
    new-instance v6, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    iget v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSourceFactory;->connectTimeoutMillis:I

    iget v3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSourceFactory;->readTimeoutMillis:I

    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSourceFactory;->allowCrossProtocolRedirects:Z

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;)V

    .line 122
    iget-object p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSourceFactory;->listener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    if-eqz p1, :cond_16

    .line 123
    invoke-virtual {v6, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    :cond_16
    return-object v6
.end method

.method protected bridge synthetic createDataSourceInternal(Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;)Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "defaultRequestProperties"
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSourceFactory;->createDataSourceInternal(Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;)Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;

    move-result-object p1

    return-object p1
.end method
