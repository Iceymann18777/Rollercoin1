.class public final Landroidx/media2/exoplayer/external/source/hls/DefaultHlsDataSourceFactory;
.super Ljava/lang/Object;
.source "DefaultHlsDataSourceFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;


# instance fields
.field private final dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSourceFactory"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsDataSourceFactory;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public createDataSource(I)Landroidx/media2/exoplayer/external/upstream/DataSource;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataType"
        }
    .end annotation

    .line 42
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsDataSourceFactory;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;->createDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object p1

    return-object p1
.end method
