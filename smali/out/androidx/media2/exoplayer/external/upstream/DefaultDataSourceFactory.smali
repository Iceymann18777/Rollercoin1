.class public final Landroidx/media2/exoplayer/external/upstream/DefaultDataSourceFactory;
.super Ljava/lang/Object;
.source "DefaultDataSourceFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;


# instance fields
.field private final baseDataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

.field private final context:Landroid/content/Context;

.field private final listener:Landroidx/media2/exoplayer/external/upstream/TransferListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/TransferListener;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "listener",
            "baseDataSourceFactory"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSourceFactory;->context:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSourceFactory;->listener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 79
    iput-object p3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSourceFactory;->baseDataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "userAgent"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "userAgent",
            "listener"
        }
    .end annotation

    .line 53
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v0, p2, p3}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    invoke-direct {p0, p1, p3, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/TransferListener;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;
    .registers 2

    .line 31
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSourceFactory;->createDataSource()Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;
    .registers 4

    .line 84
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSourceFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSourceFactory;->baseDataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 85
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;->createDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    .line 86
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSourceFactory;->listener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    if-eqz v1, :cond_14

    .line 87
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    :cond_14
    return-object v0
.end method
