.class Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;
.super Landroid/os/AsyncTask;
.source "VideoDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VideoDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoDownloaderTask"
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
.field private final mListener:Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;

.field private final mWeakSelf:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;)V
    .registers 3

    .line 103
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mListener:Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;

    .line 105
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mWeakSelf:Ljava/lang/ref/WeakReference;

    .line 106
    invoke-static {}, Lcom/mopub/mobileads/VideoDownloader;->access$000()Ljava/util/Deque;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mWeakSelf:Ljava/lang/ref/WeakReference;

    invoke-interface {p1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz p1, :cond_bf

    .line 111
    array-length v3, p1

    if-eqz v3, :cond_bf

    aget-object v3, p1, v1

    if-nez v3, :cond_11

    goto/16 :goto_bf

    .line 116
    :cond_11
    aget-object p1, p1, v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 120
    :try_start_15
    invoke-static {p1}, Lcom/mopub/common/MoPubHttpUrlConnection;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_9e
    .catchall {:try_start_15 .. :try_end_19} :catchall_9b

    .line 121
    :try_start_19
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_99
    .catchall {:try_start_19 .. :try_end_22} :catchall_97

    .line 124
    :try_start_22
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v7, 0xc8

    if-lt v4, v7, :cond_6e

    const/16 v7, 0x12c

    if-lt v4, v7, :cond_2f

    goto :goto_6e

    .line 133
    :cond_2f
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    const/high16 v7, 0x1900000

    if-le v4, v7, :cond_5d

    .line 135
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v8, v0, [Ljava/lang/Object;

    const-string v9, "VideoDownloader encountered video larger than disk cap. (%d bytes / %d maximum)."

    new-array v10, v3, [Ljava/lang/Object;

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v1

    .line 139
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v0

    .line 135
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-static {p1, v8}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_54} :catch_94
    .catchall {:try_start_22 .. :try_end_54} :catchall_91

    .line 149
    invoke-static {v6}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    if-eqz v5, :cond_5c

    .line 151
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5c
    return-object v2

    .line 143
    :cond_5d
    :try_start_5d
    invoke-static {p1, v6}, Lcom/mopub/common/CacheService;->putToDiskCache(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    .line 144
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_65} :catch_94
    .catchall {:try_start_5d .. :try_end_65} :catchall_91

    .line 149
    invoke-static {v6}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    if-eqz v5, :cond_6d

    .line 151
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6d
    return-object p1

    .line 127
    :cond_6e
    :goto_6e
    :try_start_6e
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v7, v0, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VideoDownloader encountered unexpected statusCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-static {p1, v7}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_88} :catch_94
    .catchall {:try_start_6e .. :try_end_88} :catchall_91

    .line 149
    invoke-static {v6}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    if-eqz v5, :cond_90

    .line 151
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_90
    return-object v2

    :catchall_91
    move-exception p1

    move-object v4, v6

    goto :goto_b6

    :catch_94
    move-exception p1

    move-object v4, v6

    goto :goto_a0

    :catchall_97
    move-exception p1

    goto :goto_b6

    :catch_99
    move-exception p1

    goto :goto_a0

    :catchall_9b
    move-exception p1

    move-object v5, v4

    goto :goto_b6

    :catch_9e
    move-exception p1

    move-object v5, v4

    .line 146
    :goto_a0
    :try_start_a0
    sget-object v6, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "VideoDownloader task threw an internal exception."

    aput-object v7, v3, v1

    aput-object p1, v3, v0

    invoke-static {v6, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_ad
    .catchall {:try_start_a0 .. :try_end_ad} :catchall_97

    .line 149
    invoke-static {v4}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    if-eqz v5, :cond_b5

    .line 151
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b5
    return-object v2

    .line 149
    :goto_b6
    invoke-static {v4}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    if-eqz v5, :cond_be

    .line 151
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_be
    throw p1

    .line 112
    :cond_bf
    :goto_bf
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "VideoDownloader task tried to execute null or empty url."

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 97
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .registers 5

    .line 175
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoDownloader task was cancelled."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lcom/mopub/mobileads/VideoDownloader;->access$000()Ljava/util/Deque;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mWeakSelf:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mListener:Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;

    invoke-interface {v0, v3}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;->onComplete(Z)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4

    .line 158
    invoke-virtual {p0}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 159
    invoke-virtual {p0}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->onCancelled()V

    return-void

    .line 163
    :cond_a
    invoke-static {}, Lcom/mopub/mobileads/VideoDownloader;->access$000()Ljava/util/Deque;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mWeakSelf:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    if-nez p1, :cond_1c

    .line 166
    iget-object p1, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mListener:Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;->onComplete(Z)V

    return-void

    .line 170
    :cond_1c
    iget-object v0, p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->mListener:Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;->onComplete(Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 97
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
