.class public final Lcom/truenet/android/a/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static final a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "stream closed with error!"

    const-string v1, "$receiver"

    invoke-static {p0, v1}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-static {p1, v1}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 15
    move-object v2, v1

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 16
    check-cast v1, Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x0

    .line 19
    :try_start_13
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    if-eqz p1, :cond_7e

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_86

    const/4 v2, 0x1

    .line 21
    :try_start_21
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v4, "PUT"

    .line 22
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "image/jpeg"

    .line 23
    invoke-virtual {p1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_7c

    .line 26
    :try_start_35
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object v6, v4

    check-cast v6, Ljava/io/OutputStream;

    invoke-virtual {p0, v1, v5, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 28
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 29
    array-length v5, v1

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 30
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 31
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    const/16 v1, 0x12b

    const/16 v5, 0xc8

    .line 33
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6
    :try_end_5d
    .catchall {:try_start_35 .. :try_end_5d} :catchall_79

    if-le v5, v6, :cond_60

    goto :goto_63

    :cond_60
    if-lt v1, v6, :cond_63

    const/4 v3, 0x1

    .line 39
    :cond_63
    :goto_63
    :try_start_63
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_73

    :catchall_67
    move-exception v1

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_73
    if-eqz p1, :cond_78

    .line 43
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_78
    return v3

    :catchall_79
    move-object v2, p1

    move-object v1, v4

    goto :goto_86

    :catchall_7c
    move-object v2, p1

    goto :goto_86

    .line 19
    :cond_7e
    :try_start_7e
    new-instance p1, La/a/h;

    const-string v4, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {p1, v4}, La/a/h;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_86

    :catchall_86
    :goto_86
    if-eqz v1, :cond_98

    .line 39
    :try_start_88
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_98

    :catchall_8c
    move-exception p1

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_98
    :goto_98
    if-eqz v2, :cond_9d

    .line 43
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9d
    return v3
.end method
