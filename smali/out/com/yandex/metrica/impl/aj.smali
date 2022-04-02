.class Lcom/yandex/metrica/impl/aj;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/aj$a;,
        Lcom/yandex/metrica/impl/aj$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/yandex/metrica/impl/aj$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private volatile e:Lcom/yandex/metrica/impl/aj$b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/r;)V
    .registers 6

    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/aj;->c:Ljava/util/concurrent/BlockingQueue;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/aj;->d:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lcom/yandex/metrica/impl/aj;->a:Ljava/util/concurrent/Executor;

    .line 51
    new-instance p1, Lcom/yandex/metrica/impl/ob/cn;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/cn;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/aj;->b:Ljava/util/concurrent/Executor;

    .line 52
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "NetworkTaskQueue"

    aput-object v2, v0, v1

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "[%s:%s]"

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/aj$b;)Z
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/yandex/metrica/impl/aj;->e:Lcom/yandex/metrica/impl/aj$b;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/aj$b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/yandex/metrica/impl/aj;->e:Lcom/yandex/metrica/impl/aj$b;

    .line 73
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 75
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/aj;->interrupt()V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ak;)V
    .registers 5

    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/aj;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_3
    new-instance v1, Lcom/yandex/metrica/impl/aj$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/yandex/metrica/impl/aj$b;-><init>(Lcom/yandex/metrica/impl/ak;B)V

    .line 62
    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/aj;->a(Lcom/yandex/metrica/impl/aj$b;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 63
    iget-object p1, p0, Lcom/yandex/metrica/impl/aj;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 66
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public b(Lcom/yandex/metrica/impl/ak;)Z
    .registers 4

    .line 117
    new-instance v0, Lcom/yandex/metrica/impl/aj$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/aj$b;-><init>(Lcom/yandex/metrica/impl/ak;B)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/aj;->a(Lcom/yandex/metrica/impl/aj$b;)Z

    move-result p1

    return p1
.end method

.method c(Lcom/yandex/metrica/impl/ak;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ak;->b()Z

    move-result v0

    .line 128
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ak;->d()Lcom/yandex/metrica/impl/ob/cq;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 130
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cq;->b()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v0, 0x0

    .line 139
    :cond_12
    :goto_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_3a

    if-eqz v0, :cond_3a

    .line 147
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/aj;->d(Lcom/yandex/metrica/impl/ak;)V

    .line 149
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ak;->c()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 150
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ak;->o()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    if-eqz v0, :cond_12

    .line 153
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ak;->p()J

    move-result-wide v3

    .line 160
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_12

    .line 164
    :cond_3a
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ak;->f()V

    return-void
.end method

.method d(Lcom/yandex/metrica/impl/ak;)V
    .registers 9

    const/4 v0, 0x0

    .line 177
    :try_start_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ak;->e()V

    .line 181
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ak;->d()Lcom/yandex/metrica/impl/ob/cq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cq;->a()Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_95

    const/4 v2, 0x2

    .line 183
    :try_start_d
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ak;->i()I

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_49

    .line 184
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ak;->j()[B

    move-result-object v2

    if-eqz v2, :cond_49

    .line 186
    array-length v3, v2

    if-lez v3, :cond_49

    .line 187
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ak;->m()Ljava/lang/String;

    move-result-object v3

    .line 1225
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v5, "Accept-Encoding"

    .line 1226
    invoke-virtual {v1, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Encoding"

    .line 1227
    invoke-virtual {v1, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_93

    .line 190
    :try_start_32
    new-instance v5, Ljava/io/BufferedOutputStream;

    array-length v2, v2

    invoke-direct {v5, v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_46

    .line 192
    :try_start_38
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ak;->j()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    .line 193
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 195
    invoke-static {v3}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    goto :goto_4b

    :catchall_46
    move-object v2, v0

    move-object v4, v2

    goto :goto_99

    :cond_49
    move-object v3, v0

    move-object v5, v3

    .line 199
    :goto_4b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 200
    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ak;->a(I)V

    .line 201
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/yandex/metrica/impl/ak;->a(Ljava/util/Map;)V

    const/16 v6, 0x190

    if-eq v2, v6, :cond_62

    const/16 v6, 0x1f4

    if-eq v2, v6, :cond_62

    goto :goto_63

    :cond_62
    const/4 v4, 0x0

    :goto_63
    if-eqz v4, :cond_7e

    .line 206
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_69
    .catchall {:try_start_38 .. :try_end_69} :catchall_8f

    .line 207
    :try_start_69
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v6, 0x1f40

    invoke-direct {v4, v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_7c

    .line 208
    :try_start_70
    invoke-static {v4}, Lcom/yandex/metrica/impl/r;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ak;->b([B)V

    .line 209
    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V
    :try_end_7a
    .catchall {:try_start_70 .. :try_end_7a} :catchall_91

    move-object v0, v4

    goto :goto_7f

    :catchall_7c
    move-object v4, v0

    goto :goto_91

    :cond_7e
    move-object v2, v0

    .line 216
    :goto_7f
    invoke-static {v5}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 217
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 218
    :goto_85
    invoke-static {v3}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 219
    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 220
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/net/HttpURLConnection;)V

    return-void

    :catchall_8f
    move-object v2, v0

    move-object v4, v2

    :catchall_91
    :goto_91
    move-object v0, v5

    goto :goto_99

    :catchall_93
    move-object v2, v0

    goto :goto_97

    :catchall_95
    move-object v1, v0

    move-object v2, v1

    :goto_97
    move-object v3, v2

    move-object v4, v3

    .line 214
    :goto_99
    :try_start_99
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ak;->g()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_a3

    .line 216
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 217
    invoke-static {v4}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    goto :goto_85

    :catchall_a3
    move-exception p1

    .line 216
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 217
    invoke-static {v4}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 218
    invoke-static {v3}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 219
    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 220
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/net/HttpURLConnection;)V

    goto :goto_b5

    :goto_b4
    throw p1

    :goto_b5
    goto :goto_b4
.end method

.method public run()V
    .registers 6

    .line 82
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3f

    const/4 v0, 0x0

    .line 86
    :try_start_b
    iget-object v1, p0, Lcom/yandex/metrica/impl/aj;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/aj$b;

    iput-object v1, p0, Lcom/yandex/metrica/impl/aj;->e:Lcom/yandex/metrica/impl/aj$b;

    .line 88
    iget-object v1, p0, Lcom/yandex/metrica/impl/aj;->e:Lcom/yandex/metrica/impl/aj$b;

    invoke-static {v1}, Lcom/yandex/metrica/impl/aj$b;->a(Lcom/yandex/metrica/impl/aj$b;)Lcom/yandex/metrica/impl/ak;

    move-result-object v1

    .line 1103
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ak;->n()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1105
    iget-object v2, p0, Lcom/yandex/metrica/impl/aj;->a:Ljava/util/concurrent/Executor;

    goto :goto_26

    .line 1108
    :cond_24
    iget-object v2, p0, Lcom/yandex/metrica/impl/aj;->b:Ljava/util/concurrent/Executor;

    .line 1113
    :goto_26
    new-instance v3, Lcom/yandex/metrica/impl/aj$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/yandex/metrica/impl/aj$a;-><init>(Lcom/yandex/metrica/impl/aj;Lcom/yandex/metrica/impl/ak;B)V

    .line 89
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_2f} :catch_32
    .catchall {:try_start_b .. :try_end_2f} :catchall_30

    goto :goto_39

    :catchall_30
    move-exception v1

    goto :goto_3c

    .line 93
    :catch_32
    :try_start_32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_30

    .line 95
    :goto_39
    iput-object v0, p0, Lcom/yandex/metrica/impl/aj;->e:Lcom/yandex/metrica/impl/aj$b;

    goto :goto_0

    :goto_3c
    iput-object v0, p0, Lcom/yandex/metrica/impl/aj;->e:Lcom/yandex/metrica/impl/aj$b;

    throw v1

    :cond_3f
    return-void
.end method
