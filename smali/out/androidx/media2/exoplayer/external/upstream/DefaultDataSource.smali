.class public final Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/DataSource;


# instance fields
.field private assetDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private final baseDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private contentDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private final context:Landroid/content/Context;

.field private dataSchemeDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private fileDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private rawResourceDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private rtmpDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private final transferListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/upstream/TransferListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/DataSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "baseDataSource"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->context:Landroid/content/Context;

    .line 136
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/upstream/DataSource;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->baseDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->transferListeners:Ljava/util/List;

    return-void
.end method

.method private addListenersToDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    const/4 v0, 0x0

    .line 271
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->transferListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 272
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->transferListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/upstream/TransferListener;

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private getAssetDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;
    .registers 3

    .line 217
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->assetDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    if-nez v0, :cond_10

    .line 218
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/upstream/AssetDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->assetDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 219
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->addListenersToDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    .line 221
    :cond_10
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->assetDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    return-object v0
.end method

.method private getContentDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;
    .registers 3

    .line 225
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->contentDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    if-nez v0, :cond_10

    .line 226
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->contentDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 227
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->addListenersToDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    .line 229
    :cond_10
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->contentDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    return-object v0
.end method

.method private getDataSchemeDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;
    .registers 2

    .line 255
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSchemeDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    if-nez v0, :cond_e

    .line 256
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/upstream/DataSchemeDataSource;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSchemeDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 257
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->addListenersToDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    .line 259
    :cond_e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSchemeDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    return-object v0
.end method

.method private getFileDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;
    .registers 2

    .line 209
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->fileDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    if-nez v0, :cond_e

    .line 210
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/FileDataSource;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/upstream/FileDataSource;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->fileDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 211
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->addListenersToDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    .line 213
    :cond_e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->fileDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    return-object v0
.end method

.method private getRawResourceDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;
    .registers 3

    .line 263
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->rawResourceDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    if-nez v0, :cond_10

    .line 264
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->rawResourceDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 265
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->addListenersToDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    .line 267
    :cond_10
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->rawResourceDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    return-object v0
.end method

.method private getRtmpDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;
    .registers 4

    .line 233
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->rtmpDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    if-nez v0, :cond_37

    :try_start_4
    const-string v0, "androidx.media2.exoplayer.external.ext.rtmp.RtmpDataSource"

    .line 236
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/DataSource;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->rtmpDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 239
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->addListenersToDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;)V
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_1e} :catch_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_1f

    goto :goto_2f

    :catch_1f
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_28
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 242
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_2f
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->rtmpDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    if-nez v0, :cond_37

    .line 248
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->baseDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->rtmpDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 251
    :cond_37
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->rtmpDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    return-object v0
.end method

.method private maybeAddListenerToDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataSource",
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 279
    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/upstream/DataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    :cond_5
    return-void
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

    .line 142
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->baseDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 143
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->transferListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->fileDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 145
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->assetDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 146
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->contentDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 147
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->rtmpDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 148
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSchemeDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 149
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->rawResourceDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 201
    :try_start_5
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->close()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 203
    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    goto :goto_f

    :catchall_b
    move-exception v0

    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    throw v0

    :cond_f
    :goto_f
    return-void
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

    .line 194
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 189
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .registers 4
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

    .line 154
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 156
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 158
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    const-string v1, "/android_asset/"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 160
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->getAssetDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    goto :goto_85

    .line 162
    :cond_2f
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->getFileDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    goto :goto_85

    :cond_36
    const-string v1, "asset"

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 165
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->getAssetDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    goto :goto_85

    :cond_45
    const-string v1, "content"

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 167
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->getContentDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    goto :goto_85

    :cond_54
    const-string v1, "rtmp"

    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 169
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->getRtmpDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    goto :goto_85

    :cond_63
    const-string v1, "data"

    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 171
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->getDataSchemeDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    goto :goto_85

    :cond_72
    const-string v1, "rawresource"

    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 173
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->getRawResourceDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    goto :goto_85

    .line 175
    :cond_81
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->baseDataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 178
    :goto_85
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/DataSource;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BII)I
    .registers 5
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

    .line 183
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultDataSource;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/DataSource;->read([BII)I

    move-result p1

    return p1
.end method
