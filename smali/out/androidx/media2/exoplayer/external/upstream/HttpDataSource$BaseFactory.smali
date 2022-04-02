.class public abstract Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/HttpDataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseFactory"
.end annotation


# instance fields
.field private final defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;
    .registers 2

    .line 174
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;->createDataSource()Landroidx/media2/exoplayer/external/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public final createDataSource()Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
    .registers 2

    .line 184
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory;->createDataSourceInternal(Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;)Landroidx/media2/exoplayer/external/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createDataSourceInternal(Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;)Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultRequestProperties"
        }
    .end annotation
.end method
