.class public Lcom/mopub/common/UrlResolutionTask;
.super Landroid/os/AsyncTask;
.source "UrlResolutionTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;
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


# static fields
.field private static final REDIRECT_LIMIT:I = 0xa


# instance fields
.field private final mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;


# direct methods
.method constructor <init>(Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/mopub/common/UrlResolutionTask;->mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;

    return-void
.end method

.method private getRedirectLocation(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const-string v0, "IOException when closing httpUrlConnection. Ignoring."

    .line 93
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 97
    :try_start_a
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_33

    .line 98
    :try_start_10
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 100
    invoke-static {p1, v1}, Lcom/mopub/common/UrlResolutionTask;->resolveRedirectLocation(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_30

    if-eqz v1, :cond_2f

    .line 103
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 106
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_2c

    .line 108
    :catch_23
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v4, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 111
    :cond_2c
    :goto_2c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2f
    return-object p1

    :catchall_30
    move-exception p1

    move-object v4, v1

    goto :goto_34

    :catchall_33
    move-exception p1

    :goto_34
    if-eqz v4, :cond_4c

    .line 103
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 106
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_49

    .line 108
    :catch_40
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 111
    :cond_49
    :goto_49
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 112
    :cond_4c
    throw p1
.end method

.method public static getResolvedUrl(Ljava/lang/String;Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;)V
    .registers 5

    .line 37
    new-instance v0, Lcom/mopub/common/UrlResolutionTask;

    invoke-direct {v0, p1}, Lcom/mopub/common/UrlResolutionTask;-><init>(Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;)V

    const/4 v1, 0x1

    :try_start_6
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 40
    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    move-exception p0

    const-string v0, "Failed to resolve url"

    .line 42
    invoke-interface {p1, v0, p0}, Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    return-void
.end method

.method static resolveRedirectLocation(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const-string v0, "\n redirectUrl="

    const-string v1, "Invalid URL redirection. baseUrl="

    .line 120
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const-string v4, "location"

    .line 122
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x12c

    if-lt v3, v4, :cond_6c

    const/16 v4, 0x190

    if-ge v3, v4, :cond_6c

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 129
    :try_start_1d
    invoke-virtual {v2, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_25} :catch_46
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_25} :catch_26

    goto :goto_6d

    :catch_26
    move-exception v2

    .line 135
    sget-object v5, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-static {v5, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 136
    throw v2

    .line 132
    :catch_46
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-static {v2, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 133
    new-instance p0, Ljava/net/URISyntaxException;

    const-string v0, "Unable to parse invalid URL"

    invoke-direct {p0, p1, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_6c
    const/4 p0, 0x0

    :goto_6d
    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 24
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/common/UrlResolutionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 53
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_36

    :cond_7
    const/4 v1, 0x0

    .line 59
    :try_start_8
    aget-object p1, p1, v1

    move-object v2, v0

    :goto_b
    if-eqz p1, :cond_35

    const/16 v3, 0xa

    if-ge v1, v3, :cond_35

    .line 65
    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1e

    return-object p1

    .line 70
    :cond_1e
    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2b

    return-object p1

    .line 75
    :cond_2b
    invoke-direct {p0, p1}, Lcom/mopub/common/UrlResolutionTask;->getRedirectLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2f} :catch_36
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_2f} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_2f} :catch_36

    add-int/lit8 v1, v1, 0x1

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_b

    :cond_35
    return-object v2

    :catch_36
    :cond_36
    :goto_36
    return-object v0
.end method

.method protected onCancelled()V
    .registers 4

    .line 156
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 158
    iget-object v0, p0, Lcom/mopub/common/UrlResolutionTask;->mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;

    const-string v1, "Task for resolving url was cancelled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/common/UrlResolutionTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3

    .line 145
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lcom/mopub/common/UrlResolutionTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_12

    if-nez p1, :cond_c

    goto :goto_12

    .line 150
    :cond_c
    iget-object v0, p0, Lcom/mopub/common/UrlResolutionTask;->mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;

    invoke-interface {v0, p1}, Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_15

    .line 148
    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/mopub/common/UrlResolutionTask;->onCancelled()V

    :goto_15
    return-void
.end method
