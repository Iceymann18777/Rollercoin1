.class public Lcom/integralads/avid/library/mopub/DownloadAvidTask;
.super Landroid/os/AsyncTask;
.source "DownloadAvidTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 18
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, "AvidLoader: can not close Stream"

    const/4 v1, 0x0

    .line 39
    aget-object p1, p1, v1

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    const-string p1, "AvidLoader: URL is empty"

    .line 41
    invoke-static {p1}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;)V

    return-object v3

    .line 47
    :cond_12
    :try_start_12
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 50
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_27
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_27} :catch_77
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_27} :catch_52
    .catchall {:try_start_12 .. :try_end_27} :catchall_4f

    .line 51
    :try_start_27
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 55
    :goto_30
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_40

    .line 56
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5, v1, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_30

    .line 58
    :cond_40
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_44
    .catch Ljava/net/MalformedURLException; {:try_start_27 .. :try_end_44} :catch_78
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_44} :catch_4d
    .catchall {:try_start_27 .. :try_end_44} :catchall_9c

    .line 68
    :try_start_44
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    return-object p1

    :catch_48
    move-exception p1

    .line 71
    invoke-static {v0, p1}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v3

    :catch_4d
    move-exception p1

    goto :goto_54

    :catchall_4f
    move-exception p1

    move-object v4, v3

    goto :goto_9d

    :catch_52
    move-exception p1

    move-object v4, v3

    .line 63
    :goto_54
    :try_start_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvidLoader: IO error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_54 .. :try_end_6c} :catchall_9c

    if-eqz v4, :cond_76

    .line 68
    :try_start_6e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_76

    :catch_72
    move-exception p1

    .line 71
    invoke-static {v0, p1}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_76
    :goto_76
    return-object v3

    :catch_77
    move-object v4, v3

    .line 60
    :catch_78
    :try_start_78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvidLoader: something is wrong with the URL \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;)V
    :try_end_91
    .catchall {:try_start_78 .. :try_end_91} :catchall_9c

    if-eqz v4, :cond_9b

    .line 68
    :try_start_93
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_9b

    :catch_97
    move-exception p1

    .line 71
    invoke-static {v0, p1}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_9b
    :goto_9b
    return-object v3

    :catchall_9c
    move-exception p1

    :goto_9d
    if-eqz v4, :cond_a8

    .line 68
    :try_start_9f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_a8

    :catch_a3
    move-exception p1

    .line 71
    invoke-static {v0, p1}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v3

    .line 72
    :cond_a8
    :goto_a8
    goto :goto_aa

    :goto_a9
    throw p1

    :goto_aa
    goto :goto_a9
.end method

.method public getListener()Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    return-object v0
.end method

.method protected onCancelled()V
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    if-eqz v0, :cond_7

    .line 91
    invoke-interface {v0}, Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;->failedToLoadAvid()V

    :cond_7
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    if-eqz v0, :cond_15

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 81
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    invoke-interface {v0, p1}, Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;->onLoadAvid(Ljava/lang/String;)V

    goto :goto_15

    .line 83
    :cond_10
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    invoke-interface {p1}, Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;->failedToLoadAvid()V

    :cond_15
    :goto_15
    return-void
.end method

.method public setListener(Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    return-void
.end method
