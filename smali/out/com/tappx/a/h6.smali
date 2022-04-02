.class public Lcom/tappx/a/h6;
.super Lcom/tappx/a/b6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/h6$a;,
        Lcom/tappx/a/h6$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/h6$b;

.field private final b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/tappx/a/h6;-><init>(Lcom/tappx/a/h6$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/tappx/a/h6$b;)V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/tappx/a/h6;-><init>(Lcom/tappx/a/h6$b;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/tappx/a/h6$b;Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Lcom/tappx/a/b6;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/tappx/a/h6;->a:Lcom/tappx/a/h6$b;

    .line 5
    iput-object p2, p0, Lcom/tappx/a/h6;->b:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method static synthetic a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/tappx/a/h6;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/net/URL;Lcom/tappx/a/s5;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/tappx/a/s5<",
            "*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Lcom/tappx/a/h6;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 84
    invoke-virtual {p2}, Lcom/tappx/a/s5;->p()I

    move-result p2

    .line 85
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 86
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x0

    .line 87
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 p2, 0x1

    .line 88
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 91
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string p2, "https"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/tappx/a/h6;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_2c

    .line 92
    move-object p2, v0

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2c
    return-object v0
.end method

.method static a(Ljava/util/Map;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/tappx/a/m5;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 75
    new-instance v4, Lcom/tappx/a/m5;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/tappx/a/m5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_48
    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/tappx/a/s5;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/tappx/a/s5<",
            "*>;)V"
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Lcom/tappx/a/s5;->b()[B

    move-result-object v0

    if-eqz v0, :cond_9

    .line 95
    invoke-static {p0, p1, v0}, Lcom/tappx/a/h6;->a(Ljava/net/HttpURLConnection;Lcom/tappx/a/s5;[B)V

    :cond_9
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/tappx/a/s5;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/tappx/a/s5<",
            "*>;[B)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 98
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 100
    invoke-virtual {p1}, Lcom/tappx/a/s5;->c()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p0, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_17
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 105
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 106
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method

.method private static a(II)Z
    .registers 3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/16 p0, 0x64

    if-gt p0, p1, :cond_b

    const/16 p0, 0xc8

    if-lt p1, p0, :cond_15

    :cond_b
    const/16 p0, 0xcc

    if-eq p1, p0, :cond_15

    const/16 p0, 0x130

    if-eq p1, p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private static b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_9

    .line 3
    :catch_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method static b(Ljava/net/HttpURLConnection;Lcom/tappx/a/s5;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/tappx/a/s5<",
            "*>;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lcom/tappx/a/s5;->g()I

    move-result v0

    const-string v1, "POST"

    packed-switch v0, :pswitch_data_56

    .line 45
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown method type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_11
    const-string v0, "PATCH"

    .line 46
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 47
    invoke-static {p0, p1}, Lcom/tappx/a/h6;->a(Ljava/net/HttpURLConnection;Lcom/tappx/a/s5;)V

    goto :goto_54

    :pswitch_1a
    const-string p1, "TRACE"

    .line 48
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_54

    :pswitch_20
    const-string p1, "OPTIONS"

    .line 49
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_54

    :pswitch_26
    const-string p1, "HEAD"

    .line 50
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_54

    :pswitch_2c
    const-string p1, "DELETE"

    .line 51
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_54

    :pswitch_32
    const-string v0, "PUT"

    .line 58
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 59
    invoke-static {p0, p1}, Lcom/tappx/a/h6;->a(Ljava/net/HttpURLConnection;Lcom/tappx/a/s5;)V

    goto :goto_54

    .line 60
    :pswitch_3b
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 61
    invoke-static {p0, p1}, Lcom/tappx/a/h6;->a(Ljava/net/HttpURLConnection;Lcom/tappx/a/s5;)V

    goto :goto_54

    :pswitch_42
    const-string p1, "GET"

    .line 62
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_54

    .line 63
    :pswitch_48
    invoke-virtual {p1}, Lcom/tappx/a/s5;->j()[B

    move-result-object v0

    if-eqz v0, :cond_54

    .line 65
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 66
    invoke-static {p0, p1, v0}, Lcom/tappx/a/h6;->a(Ljava/net/HttpURLConnection;Lcom/tappx/a/s5;[B)V

    :cond_54
    :goto_54
    return-void

    nop

    :pswitch_data_56
    .packed-switch -0x1
        :pswitch_48
        :pswitch_42
        :pswitch_3b
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_1a
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/tappx/a/s5;Ljava/util/Map;)Lcom/tappx/a/g6;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/s5<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tappx/a/g6;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/tappx/a/s5;->r()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 6
    invoke-virtual {p1}, Lcom/tappx/a/s5;->f()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 7
    iget-object p2, p0, Lcom/tappx/a/h6;->a:Lcom/tappx/a/h6$b;

    if-eqz p2, :cond_36

    .line 8
    invoke-interface {p2, v0}, Lcom/tappx/a/h6$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1f

    move-object v0, p2

    goto :goto_36

    .line 10
    :cond_1f
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL blocked by rewriter: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_36
    :goto_36
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p2, p1}, Lcom/tappx/a/h6;->a(Ljava/net/URL;Lcom/tappx/a/s5;)Ljava/net/HttpURLConnection;

    move-result-object p2

    const/4 v0, 0x0

    .line 18
    :try_start_40
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 19
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 21
    :cond_5e
    invoke-static {p2, p1}, Lcom/tappx/a/h6;->b(Ljava/net/HttpURLConnection;Lcom/tappx/a/s5;)V

    .line 23
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9b

    .line 30
    invoke-virtual {p1}, Lcom/tappx/a/s5;->g()I

    move-result p1

    invoke-static {p1, v1}, Lcom/tappx/a/h6;->a(II)Z

    move-result p1

    if-nez p1, :cond_83

    .line 31
    new-instance p1, Lcom/tappx/a/g6;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/tappx/a/h6;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/tappx/a/g6;-><init>(ILjava/util/List;)V
    :try_end_7f
    .catchall {:try_start_40 .. :try_end_7f} :catchall_a3

    .line 44
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_83
    const/4 v0, 0x1

    .line 45
    :try_start_84
    new-instance p1, Lcom/tappx/a/g6;

    .line 47
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/tappx/a/h6;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 48
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    new-instance v4, Lcom/tappx/a/h6$a;

    invoke-direct {v4, p2}, Lcom/tappx/a/h6$a;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/tappx/a/g6;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-object p1

    .line 49
    :cond_9b
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a3
    .catchall {:try_start_84 .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception p1

    if-nez v0, :cond_a9

    .line 66
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 68
    :cond_a9
    goto :goto_ab

    :goto_aa
    throw p1

    :goto_ab
    goto :goto_aa
.end method

.method protected a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3

    .line 76
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 81
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object p1
.end method
