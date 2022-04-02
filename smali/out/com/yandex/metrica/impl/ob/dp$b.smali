.class abstract Lcom/yandex/metrica/impl/ob/dp$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "b"
.end annotation


# instance fields
.field b:Landroid/net/Uri;

.field c:Ljava/net/Socket;


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/net/Socket;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dp$b;->b:Landroid/net/Uri;

    .line 87
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/dp$b;->c:Ljava/net/Socket;

    return-void
.end method

.method private static a(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\r\n"

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 125
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/dp$b;->a(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method a(Ljava/lang/String;Ljava/util/Map;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 99
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dp$b;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_5c
    .catchall {:try_start_1 .. :try_end_c} :catchall_5a

    .line 101
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 102
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/dp$b;->a(Ljava/io/OutputStream;)V

    .line 103
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {v1, v0, p2}, Lcom/yandex/metrica/impl/ob/dp$b;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_3a
    const-string p1, "Content-Length"

    .line 106
    array-length p2, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/yandex/metrica/impl/ob/dp$b;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/dp$b;->a(Ljava/io/OutputStream;)V

    .line 108
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 109
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 110
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dp$b;->b()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_50} :catch_57
    .catchall {:try_start_c .. :try_end_50} :catchall_54

    .line 114
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_54
    move-exception p1

    move-object v0, v1

    goto :goto_64

    :catch_57
    move-exception p1

    move-object v0, v1

    goto :goto_5d

    :catchall_5a
    move-exception p1

    goto :goto_64

    :catch_5c
    move-exception p1

    .line 112
    :goto_5d
    :try_start_5d
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/dp$b;->a(Ljava/lang/Throwable;)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_5a

    .line 114
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    return-void

    :goto_64
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    goto :goto_69

    :goto_68
    throw p1

    :goto_69
    goto :goto_68
.end method

.method protected a(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method protected b()V
    .registers 1

    return-void
.end method
