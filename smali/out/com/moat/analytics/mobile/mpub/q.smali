.class Lcom/moat/analytics/mobile/mpub/q;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/moat/analytics/mobile/mpub/a/b/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/moat/analytics/mobile/mpub/a/b/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v1, 0x3a98

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_33

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/a/b/a;->a()Lcom/moat/analytics/mobile/mpub/a/b/a;

    move-result-object p0

    return-object p0

    :cond_33
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/q;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/moat/analytics/mobile/mpub/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/mpub/a/b/a;

    move-result-object p0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3f} :catch_47
    .catchall {:try_start_1 .. :try_end_3f} :catchall_45

    if-eqz v0, :cond_44

    :try_start_41
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_44

    :catch_44
    :cond_44
    return-object p0

    :catchall_45
    move-exception p0

    goto :goto_51

    :catch_47
    :try_start_47
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/a/b/a;->a()Lcom/moat/analytics/mobile/mpub/a/b/a;

    move-result-object p0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_45

    if-eqz v0, :cond_50

    :try_start_4d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_50

    :catch_50
    :cond_50
    return-object p0

    :goto_51
    if-eqz v0, :cond_56

    :try_start_53
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_56

    :catch_56
    :cond_56
    throw p0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x100

    new-array v1, v0, [C

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v4, 0x0

    :cond_12
    invoke-virtual {v3, v1, p0, v0}, Ljava/io/Reader;->read([CII)I

    move-result v5

    if-lez v5, :cond_20

    add-int/2addr v4, v5

    invoke-virtual {v2, v1, p0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    if-lt v4, v5, :cond_12

    :cond_20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/lang/String;)V
    .registers 2

    new-instance v0, Lcom/moat/analytics/mobile/mpub/q$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/mpub/q$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/q$1;->start()V

    return-void
.end method
