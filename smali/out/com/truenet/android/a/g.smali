.class public final Lcom/truenet/android/a/g;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static final a(Ljava/net/URL;Ljava/lang/String;Landroid/content/Context;)Z
    .registers 9

    const-string v0, "stream closed with error!"

    const-string v1, "$receiver"

    invoke-static {p0, v1}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {p1, v1}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 14
    move-object v2, v1

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 15
    check-cast v1, Ljava/io/BufferedOutputStream;

    const/4 v3, 0x0

    .line 18
    :try_start_13
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    if-eqz v4, :cond_8a

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_92

    :try_start_1b
    const-string v2, "Cache-Control"

    const-string v5, "no-cache"

    .line 20
    invoke-virtual {v4, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2f

    const-string v2, "User-Agent"

    .line 22
    sget-object v5, Lcom/truenet/android/a/i;->a:Lcom/truenet/android/a/i$a;

    invoke-virtual {v5, p2}, Lcom/truenet/android/a/i$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, v2, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    const-string p2, "PUT"

    .line 25
    invoke-virtual {v4, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 26
    invoke-virtual {v4, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v2, "Content-Type"

    const-string v5, "text/html"

    .line 27
    invoke-virtual {v4, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v2, La/a/e/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v2}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    array-length v2, p1

    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const v2, 0xc350

    .line 31
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 33
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5d
    .catchall {:try_start_1b .. :try_end_5d} :catchall_88

    .line 35
    :try_start_5d
    invoke-virtual {v2, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 36
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    const/16 p1, 0x12b

    const/16 v1, 0xc8

    .line 39
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_87

    if-le v1, v5, :cond_6e

    goto :goto_71

    :cond_6e
    if-lt p1, v5, :cond_71

    const/4 v3, 0x1

    .line 45
    :cond_71
    :goto_71
    :try_start_71
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_81

    :catchall_75
    move-exception p1

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_81
    if-eqz v4, :cond_86

    .line 49
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_86
    return v3

    :catchall_87
    move-object v1, v2

    :catchall_88
    move-object v2, v4

    goto :goto_92

    .line 18
    :cond_8a
    :try_start_8a
    new-instance p1, La/a/h;

    const-string p2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {p1, p2}, La/a/h;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_92

    :catchall_92
    :goto_92
    if-eqz v1, :cond_a4

    .line 45
    :try_start_94
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_98

    goto :goto_a4

    :catchall_98
    move-exception p1

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a4
    :goto_a4
    if-eqz v2, :cond_a9

    .line 49
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a9
    return v3
.end method

.method public static final b(Ljava/net/URL;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    const-string v0, "stream closed with error!"

    const-string v1, "$receiver"

    invoke-static {p0, v1}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {p1, v1}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 54
    move-object v2, v1

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 55
    move-object v3, v1

    check-cast v3, Ljava/io/BufferedOutputStream;

    .line 56
    move-object v4, v1

    check-cast v4, Ljava/io/BufferedInputStream;

    .line 59
    :try_start_16
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    if-eqz v5, :cond_d4

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_dc

    :try_start_1e
    const-string v2, "Cache-Control"

    const-string v6, "no-cache"

    .line 61
    invoke-virtual {v5, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_32

    const-string v2, "User-Agent"

    .line 63
    sget-object v6, Lcom/truenet/android/a/i;->a:Lcom/truenet/android/a/i$a;

    invoke-virtual {v6, p2}, Lcom/truenet/android/a/i$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, v2, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    const-string p2, "POST"

    .line 68
    invoke-virtual {v5, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 69
    invoke-virtual {v5, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 70
    invoke-virtual {v5, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 72
    sget-object p2, La/a/e/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    array-length p2, p1

    invoke-virtual {v5, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string p2, "Content-Type"

    const-string v2, "application/json"

    .line 74
    invoke-virtual {v5, p2, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0xc350

    .line 76
    invoke-virtual {v5, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 78
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_63
    .catchall {:try_start_1e .. :try_end_63} :catchall_d2

    .line 80
    :try_start_63
    invoke-virtual {p2, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 81
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 84
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_b6

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7f
    .catchall {:try_start_63 .. :try_end_7f} :catchall_d1

    .line 87
    :try_start_7f
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    move-object v6, v2

    check-cast v6, Ljava/io/InputStream;

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v4, Ljava/io/Reader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 88
    new-instance v4, La/a/b/b/m$a;

    invoke-direct {v4}, La/a/b/b/m$a;-><init>()V

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, La/a/b/b/m$a;->element:Ljava/lang/Object;

    .line 89
    :goto_98
    new-instance v6, Lcom/truenet/android/a/g$a;

    invoke-direct {v6, v4, v3}, Lcom/truenet/android/a/g$a;-><init>(La/a/b/b/m$a;Ljava/io/BufferedReader;)V

    check-cast v6, La/a/b/a/a;

    invoke-interface {v6}, La/a/b/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_ad

    .line 90
    iget-object v6, v4, La/a/b/b/m$a;->element:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_98

    .line 92
    :cond_ad
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_b1
    .catchall {:try_start_7f .. :try_end_b1} :catchall_b3

    move-object v4, v2

    goto :goto_b6

    :catchall_b3
    move-object v3, p2

    move-object v4, v2

    goto :goto_d2

    .line 99
    :cond_b6
    :goto_b6
    :try_start_b6
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V

    if-eqz v4, :cond_cb

    .line 100
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_bf

    goto :goto_cb

    :catchall_bf
    move-exception p1

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_cb
    :goto_cb
    if-eqz v5, :cond_d0

    .line 104
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d0
    return-object v1

    :catchall_d1
    move-object v3, p2

    :catchall_d2
    :goto_d2
    move-object v2, v5

    goto :goto_dc

    .line 59
    :cond_d4
    :try_start_d4
    new-instance p1, La/a/h;

    const-string p2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {p1, p2}, La/a/h;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_dc
    .catchall {:try_start_d4 .. :try_end_dc} :catchall_dc

    :catchall_dc
    :goto_dc
    if-eqz v3, :cond_e4

    .line 99
    :try_start_de
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_e4

    :catchall_e2
    move-exception p1

    goto :goto_ea

    :cond_e4
    :goto_e4
    if-eqz v4, :cond_f5

    .line 100
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e9
    .catchall {:try_start_de .. :try_end_e9} :catchall_e2

    goto :goto_f5

    .line 102
    :goto_ea
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f5
    :goto_f5
    if-eqz v2, :cond_fa

    .line 104
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_fa
    return-object v1
.end method
