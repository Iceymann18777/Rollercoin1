.class final Lcom/tappx/a/r3$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/r3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tappx/a/r3$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/tappx/a/r3$c;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 9

    .line 2
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    :try_start_5
    invoke-direct {p0, p2}, Lcom/tappx/a/r3$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    const/16 v2, 0x3a98

    .line 10
    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 11
    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 12
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_77
    .catchall {:try_start_5 .. :try_end_25} :catchall_6e

    :try_start_25
    const-string v3, "Location"

    .line 14
    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 16
    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 19
    :cond_35
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/tappx/a/r3$c;->a(Ljava/net/URI;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_47} :catch_6c
    .catchall {:try_start_25 .. :try_end_47} :catchall_68

    const/16 p3, 0x4000

    :try_start_49
    new-array p3, p3, [B

    .line 25
    :goto_4b
    invoke-virtual {v2, p3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_57

    const/4 v4, 0x0

    .line 26
    invoke-virtual {p2, p3, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4b

    .line 28
    :cond_57
    new-instance p3, Lcom/tappx/a/a4;

    invoke-direct {p3, p1}, Lcom/tappx/a/a4;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v0, v1}, Lcom/tappx/a/a4;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5f} :catch_79
    .catchall {:try_start_49 .. :try_end_5f} :catchall_66

    .line 33
    invoke-direct {p0, v2}, Lcom/tappx/a/r3$c;->a(Ljava/io/Closeable;)V

    .line 34
    invoke-direct {p0, p2}, Lcom/tappx/a/r3$c;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_66
    move-exception p1

    goto :goto_6a

    :catchall_68
    move-exception p1

    move-object p2, v1

    :goto_6a
    move-object v1, v2

    goto :goto_70

    :catch_6c
    move-object p2, v1

    goto :goto_79

    :catchall_6e
    move-exception p1

    move-object p2, v1

    .line 35
    :goto_70
    invoke-direct {p0, v1}, Lcom/tappx/a/r3$c;->a(Ljava/io/Closeable;)V

    .line 36
    invoke-direct {p0, p2}, Lcom/tappx/a/r3$c;->a(Ljava/io/Closeable;)V

    .line 37
    throw p1

    :catch_77
    move-object p2, v1

    move-object v2, p2

    .line 38
    :catch_79
    :goto_79
    invoke-direct {p0, v2}, Lcom/tappx/a/r3$c;->a(Ljava/io/Closeable;)V

    .line 39
    invoke-direct {p0, p2}, Lcom/tappx/a/r3$c;->a(Ljava/io/Closeable;)V

    return-object v1
.end method

.method static synthetic a(Lcom/tappx/a/r3$c;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tappx/a/r3$c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method private a(Ljava/net/URI;Ljava/util/Map;)Ljava/lang/String;
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

    .line 41
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_77

    if-nez p2, :cond_9

    goto :goto_77

    .line 46
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Type"

    .line 48
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_76

    .line 49
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    const/4 v0, 0x0

    .line 50
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2a

    goto :goto_76

    .line 53
    :cond_2a
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 54
    array-length v1, p2

    :goto_37
    if-ge v0, v1, :cond_76

    aget-object v2, p2, v0

    const-string v3, "image/"

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 56
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

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_76

    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_76
    :goto_76
    return-object p1

    :cond_77
    :goto_77
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 40
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method
