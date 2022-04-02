.class public Lcom/startapp/common/a/d;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/common/a/d$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 20
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 21
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 26
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p1}, Lcom/startapp/common/a/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    .line 33
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_3d
    .catchall {:try_start_1 .. :try_end_c} :catchall_33

    .line 35
    :try_start_c
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 36
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 37
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    new-instance v3, Lcom/startapp/common/a/d$a;

    invoke-direct {v3, v1}, Lcom/startapp/common/a/d$a;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 40
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_2f
    .catchall {:try_start_c .. :try_end_27} :catchall_2d

    if-eqz p0, :cond_44

    .line 44
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_44

    :catchall_2d
    move-exception v0

    goto :goto_37

    :catch_2f
    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_3e

    :catchall_33
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    :goto_37
    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3c
    throw v0

    :catch_3d
    move-object p0, v0

    :goto_3e
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_43
    move-object v0, p0

    :cond_44
    :goto_44
    return-object v0
.end method
