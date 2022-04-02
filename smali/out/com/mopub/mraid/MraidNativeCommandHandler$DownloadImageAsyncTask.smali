.class Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "MraidNativeCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidNativeCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadImageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;)V
    .registers 3

    .line 305
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mContext:Landroid/content/Context;

    .line 307
    iput-object p2, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mListener:Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;

    return-void
.end method

.method private getFileNameForUriAndHeaders(Ljava/net/URI;Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 366
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 367
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7f

    if-nez p2, :cond_d

    goto/16 :goto_7f

    .line 372
    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 374
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->CONTENT_TYPE:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v0}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_7e

    .line 375
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    const/4 v0, 0x0

    .line 376
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_32

    goto :goto_7e

    .line 385
    :cond_32
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 386
    array-length v1, p2

    :goto_3f
    if-ge v0, v1, :cond_7e

    aget-object v2, p2, v0

    const-string v3, "image/"

    .line 387
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 388
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 389
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7e

    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_7e
    :goto_7e
    return-object p1

    :cond_7f
    :goto_7f
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPictureStoragePath()Ljava/io/File;
    .registers 4

    .line 400
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Pictures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private loadPictureIntoGalleryApp(Ljava/lang/String;)V
    .registers 4

    .line 404
    new-instance v0, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$1;)V

    .line 406
    new-instance p1, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 408
    invoke-static {v0, p1}, Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;->access$100(Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;Landroid/media/MediaScannerConnection;)V

    .line 409
    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 10

    const/4 v0, 0x0

    .line 313
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p1, :cond_86

    .line 312
    array-length v2, p1

    if-eqz v2, :cond_86

    aget-object v2, p1, v0

    if-nez v2, :cond_10

    goto/16 :goto_86

    .line 316
    :cond_10
    invoke-direct {p0}, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->getPictureStoragePath()Ljava/io/File;

    move-result-object v2

    .line 319
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 321
    aget-object p1, p1, v0

    .line 322
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    const/4 v3, 0x0

    .line 328
    :try_start_1e
    invoke-static {p1}, Lcom/mopub/common/MoPubHttpUrlConnection;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 329
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_77
    .catchall {:try_start_1e .. :try_end_2b} :catchall_74

    .line 331
    :try_start_2b
    sget-object v5, Lcom/mopub/common/util/ResponseHeader;->LOCATION:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v5}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 333
    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 337
    :cond_3f
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->getFileNameForUriAndHeaders(Ljava/net/URI;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 338
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_51} :catch_71
    .catchall {:try_start_2b .. :try_end_51} :catchall_6d

    .line 340
    :try_start_51
    invoke-static {v4, p1}, Lcom/mopub/common/util/Streams;->copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 342
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->loadPictureIntoGalleryApp(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 345
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_60} :catch_72
    .catchall {:try_start_51 .. :try_end_60} :catchall_67

    .line 349
    invoke-static {v4}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 350
    invoke-static {p1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    return-object v0

    :catchall_67
    move-exception v0

    move-object v3, v4

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_7f

    :catchall_6d
    move-exception p1

    move-object v0, v3

    move-object v3, v4

    goto :goto_7f

    :catch_71
    move-object p1, v3

    :catch_72
    move-object v3, v4

    goto :goto_78

    :catchall_74
    move-exception p1

    move-object v0, v3

    goto :goto_7f

    :catch_77
    move-object p1, v3

    .line 349
    :goto_78
    invoke-static {v3}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 350
    invoke-static {p1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    return-object v1

    .line 349
    :goto_7f
    invoke-static {v3}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 350
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    throw p1

    :cond_86
    :goto_86
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 293
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method getListener()Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mListener:Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 2

    if-eqz p1, :cond_e

    .line 356
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 357
    iget-object p1, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mListener:Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;

    invoke-interface {p1}, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;->onSuccess()V

    goto :goto_13

    .line 359
    :cond_e
    iget-object p1, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->mListener:Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;

    invoke-interface {p1}, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;->onFailure()V

    :goto_13
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 293
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
