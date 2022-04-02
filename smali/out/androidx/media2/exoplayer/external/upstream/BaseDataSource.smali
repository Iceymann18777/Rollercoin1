.class public abstract Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.super Ljava/lang/Object;
.source "BaseDataSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/DataSource;


# instance fields
.field private dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

.field private final isNetwork:Z

.field private listenerCount:I

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/upstream/TransferListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNetwork"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->isNetwork:Z

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transferListener"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 57
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget p1, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->listenerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->listenerCount:I

    :cond_13
    return-void
.end method

.method protected final bytesTransferred(I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytesTransferred"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;

    const/4 v1, 0x0

    .line 93
    :goto_9
    iget v2, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->listenerCount:I

    if-ge v1, v2, :cond_1d

    .line 94
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/upstream/TransferListener;

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->isNetwork:Z

    .line 96
    invoke-interface {v2, p0, v0, v3, p1}, Landroidx/media2/exoplayer/external/upstream/TransferListener;->onBytesTransferred(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2

    invoke-static {p0}, Landroidx/media2/exoplayer/external/upstream/DataSource$$CC;->getResponseHeaders$$dflt$$(Landroidx/media2/exoplayer/external/upstream/DataSource;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final transferEnded()V
    .registers 5

    .line 102
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;

    const/4 v1, 0x0

    .line 103
    :goto_9
    iget v2, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->listenerCount:I

    if-ge v1, v2, :cond_1d

    .line 104
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/upstream/TransferListener;

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->isNetwork:Z

    invoke-interface {v2, p0, v0, v3}, Landroidx/media2/exoplayer/external/upstream/TransferListener;->onTransferEnd(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1d
    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    return-void
.end method

.method protected final transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSpec"
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    :goto_1
    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->listenerCount:I

    if-ge v0, v1, :cond_15

    .line 69
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/upstream/TransferListener;

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->isNetwork:Z

    invoke-interface {v1, p0, p1, v2}, Landroidx/media2/exoplayer/external/upstream/TransferListener;->onTransferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method protected final transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSpec"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    const/4 v0, 0x0

    .line 80
    :goto_3
    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->listenerCount:I

    if-ge v0, v1, :cond_17

    .line 81
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/upstream/TransferListener;

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;->isNetwork:Z

    invoke-interface {v1, p0, p1, v2}, Landroidx/media2/exoplayer/external/upstream/TransferListener;->onTransferStart(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_17
    return-void
.end method
