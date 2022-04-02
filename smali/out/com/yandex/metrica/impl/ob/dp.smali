.class public Lcom/yandex/metrica/impl/ob/dp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/dp$a;,
        Lcom/yandex/metrica/impl/ob/dp$c;,
        Lcom/yandex/metrica/impl/ob/dp$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ServiceConnection;

.field private final b:Landroid/os/Handler;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/dp$c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private e:Z

.field private f:Ljava/net/ServerSocket;

.field private final g:Lcom/yandex/metrica/impl/ob/dq;

.field private h:Lcom/yandex/metrica/impl/ob/ds;

.field private i:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lcom/yandex/metrica/impl/ob/dp$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/dp$1;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->a:Landroid/content/ServiceConnection;

    .line 147
    new-instance v0, Lcom/yandex/metrica/impl/ob/dp$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/dp$3;-><init>(Lcom/yandex/metrica/impl/ob/dp;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->b:Landroid/os/Handler;

    .line 214
    new-instance v0, Lcom/yandex/metrica/impl/ob/dp$4;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/dp$4;-><init>(Lcom/yandex/metrica/impl/ob/dp;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->c:Ljava/util/HashMap;

    .line 231
    new-instance v0, Lcom/yandex/metrica/impl/ob/dq;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/dq;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->g:Lcom/yandex/metrica/impl/ob/dq;

    .line 238
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dp;->d:Landroid/content/Context;

    .line 1243
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object p1

    const-class v0, Lcom/yandex/metrica/impl/ob/p;

    new-instance v1, Lcom/yandex/metrica/impl/ob/dp$6;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/dp$6;-><init>(Lcom/yandex/metrica/impl/ob/dp;)V

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/k;->a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v1

    new-instance v2, Lcom/yandex/metrica/impl/ob/dp$5;

    invoke-direct {v2, p0}, Lcom/yandex/metrica/impl/ob/dp$5;-><init>(Lcom/yandex/metrica/impl/ob/dp;)V

    .line 1247
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/k$a;->a(Lcom/yandex/metrica/impl/ob/h;)Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v1

    .line 1251
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/k$a;->a()Lcom/yandex/metrica/impl/ob/k;

    move-result-object v1

    .line 1243
    invoke-virtual {p1, p0, v0, v1}, Lcom/yandex/metrica/impl/ob/g;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/k;)V

    .line 1252
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object p1

    const-class v0, Lcom/yandex/metrica/impl/ob/n;

    new-instance v1, Lcom/yandex/metrica/impl/ob/dp$7;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/dp$7;-><init>(Lcom/yandex/metrica/impl/ob/dp;)V

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/k;->a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v1

    .line 1256
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/k$a;->a()Lcom/yandex/metrica/impl/ob/k;

    move-result-object v1

    .line 1252
    invoke-virtual {p1, p0, v0, v1}, Lcom/yandex/metrica/impl/ob/g;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/k;)V

    .line 1257
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object p1

    const-class v0, Lcom/yandex/metrica/impl/ob/l;

    new-instance v1, Lcom/yandex/metrica/impl/ob/dp$8;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/dp$8;-><init>(Lcom/yandex/metrica/impl/ob/dp;)V

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/k;->a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v1

    .line 1261
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/k$a;->a()Lcom/yandex/metrica/impl/ob/k;

    move-result-object v1

    .line 1257
    invoke-virtual {p1, p0, v0, v1}, Lcom/yandex/metrica/impl/ob/g;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/k;)V

    .line 1262
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object p1

    const-class v0, Lcom/yandex/metrica/impl/ob/m;

    new-instance v1, Lcom/yandex/metrica/impl/ob/dp$9;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/dp$9;-><init>(Lcom/yandex/metrica/impl/ob/dp;)V

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/k;->a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v1

    .line 1266
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/k$a;->a()Lcom/yandex/metrica/impl/ob/k;

    move-result-object v1

    .line 1262
    invoke-virtual {p1, p0, v0, v1}, Lcom/yandex/metrica/impl/ob/g;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/k;)V

    .line 1267
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object p1

    const-class v0, Lcom/yandex/metrica/impl/ob/o;

    new-instance v1, Lcom/yandex/metrica/impl/ob/dp$10;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/dp$10;-><init>(Lcom/yandex/metrica/impl/ob/dp;)V

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/k;->a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/ob/k$a;

    move-result-object v1

    .line 1272
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/k$a;->a()Lcom/yandex/metrica/impl/ob/k;

    move-result-object v1

    .line 1267
    invoke-virtual {p1, p0, v0, v1}, Lcom/yandex/metrica/impl/ob/g;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/k;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/dp;)Landroid/content/ServiceConnection;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/dp;->a:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/dp;)Landroid/content/Context;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/dp;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(I)Ljava/util/HashMap;
    .registers 1

    .line 57
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/dp;->c(I)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/dp;)Lcom/yandex/metrica/impl/ob/ds;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/dp;->h:Lcom/yandex/metrica/impl/ob/ds;

    return-object p0
.end method

.method private static c(I)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 397
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "port"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/dp;)Lcom/yandex/metrica/impl/ob/dq;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/dp;->g:Lcom/yandex/metrica/impl/ob/dq;

    return-object p0
.end method


# virtual methods
.method a(I)Ljava/net/ServerSocket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    return-object v0
.end method

.method public a()V
    .registers 7

    .line 276
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/dp;->e:Z

    if-eqz v0, :cond_1c

    .line 277
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dp;->b()V

    .line 279
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->b:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dp;->h:Lcom/yandex/metrica/impl/ob/ds;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/ds;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1c
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/ds;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dp;->h:Lcom/yandex/metrica/impl/ob/ds;

    return-void
.end method

.method public b()V
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->b:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public declared-synchronized c()V
    .registers 3

    monitor-enter p0

    .line 294
    :try_start_1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/dp;->e:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->h:Lcom/yandex/metrica/impl/ob/ds;

    if-eqz v0, :cond_19

    .line 296
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/dp;->e:Z

    .line 297
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dp;->d()V

    .line 298
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->i:Ljava/lang/Thread;

    .line 299
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 301
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()V
    .registers 6

    const-string v0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 310
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dp;->d:Landroid/content/Context;

    const-class v3, Lcom/yandex/metrica/MetricaService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER"

    .line 311
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    :try_start_10
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dp;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/dp;->a:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 315
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dp;->d:Landroid/content/Context;

    .line 2022
    invoke-static {v1, v0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v1

    const-string v2, "socket_bind_has_failed"

    .line 315
    invoke-interface {v1, v2}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_26} :catch_27

    :cond_26
    return-void

    .line 319
    :catch_27
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dp;->d:Landroid/content/Context;

    .line 3022
    invoke-static {v1, v0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    const-string v1, "socket_bind_has_thrown_exception"

    .line 319
    invoke-interface {v0, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized e()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 326
    :try_start_2
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/dp;->e:Z

    .line 327
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->i:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 328
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 329
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/dp;->i:Ljava/lang/Thread;

    .line 331
    :cond_10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->f:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1b

    .line 332
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->f:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 333
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/dp;->f:Ljava/net/ServerSocket;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1b} :catch_20
    .catchall {:try_start_2 .. :try_end_1b} :catchall_1d

    .line 337
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 338
    :catch_20
    monitor-exit p0

    return-void
.end method

.method f()Ljava/net/ServerSocket;
    .registers 7

    .line 366
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->h:Lcom/yandex/metrica/impl/ob/ds;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ds;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_c
    if-nez v1, :cond_41

    .line 369
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 371
    :try_start_14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_1a
    .catch Ljava/net/SocketException; {:try_start_14 .. :try_end_1a} :catch_2b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1a} :catch_29

    if-eqz v3, :cond_27

    .line 373
    :try_start_1c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ob/dp;->a(I)Ljava/net/ServerSocket;

    move-result-object v1
    :try_end_24
    .catch Ljava/net/SocketException; {:try_start_1c .. :try_end_24} :catch_25
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_27

    goto :goto_27

    :catch_25
    move-object v2, v3

    goto :goto_2b

    :catch_27
    :cond_27
    :goto_27
    move-object v2, v3

    goto :goto_c

    :catch_29
    nop

    goto :goto_c

    .line 377
    :catch_2b
    :goto_2b
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/dp;->d:Landroid/content/Context;

    const-string v4, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 5022
    invoke-static {v3, v4}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v3

    .line 377
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/dp;->c(I)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "socket_port_already_in_use"

    invoke-interface {v3, v5, v4}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_c

    :cond_41
    return-object v1
.end method

.method public run()V
    .registers 10

    .line 342
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dp;->f()Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->f:Ljava/net/ServerSocket;

    if-eqz v0, :cond_c8

    .line 344
    :cond_8
    :goto_8
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/dp;->e:Z

    if-eqz v0, :cond_c8

    const/4 v0, 0x0

    .line 347
    :try_start_d
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dp;->f:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_c0
    .catchall {:try_start_d .. :try_end_13} :catchall_b6

    const/16 v2, 0x3e8

    .line 3404
    :try_start_15
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 3406
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3408
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_a9

    .line 3409
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 3410
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9a

    const-string v5, "GET /"

    .line 3411
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    const/16 v0, 0x2f

    .line 3412
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x20

    .line 3413
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 3414
    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3417
    :cond_4f
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3418
    :goto_53
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_72

    const-string v6, ": "

    .line 3419
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    .line 3420
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 3424
    :cond_72
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dp;->c:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/dp$c;

    if-eqz v2, :cond_88

    .line 3426
    invoke-virtual {v2, v4, v1}, Lcom/yandex/metrica/impl/ob/dp$c;->a(Landroid/net/Uri;Ljava/net/Socket;)Lcom/yandex/metrica/impl/ob/dp$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dp$b;->a()V

    goto :goto_9a

    .line 3429
    :cond_88
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dp;->d:Landroid/content/Context;

    const-string v4, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 4022
    invoke-static {v2, v4}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v2

    const-string v4, "socket_request_to_unknown_path"

    .line 3429
    new-instance v5, Lcom/yandex/metrica/impl/ob/dp$2;

    invoke-direct {v5, v0}, Lcom/yandex/metrica/impl/ob/dp$2;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4, v5}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_9a
    .catchall {:try_start_2b .. :try_end_9a} :catchall_a7

    .line 3442
    :cond_9a
    :goto_9a
    :try_start_9a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_b4
    .catchall {:try_start_9a .. :try_end_9d} :catchall_b2

    if-eqz v1, :cond_8

    .line 354
    :try_start_9f
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a4

    goto/16 :goto_8

    :catch_a4
    nop

    goto/16 :goto_8

    :catchall_a7
    move-exception v0

    goto :goto_ac

    :catchall_a9
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    :goto_ac
    if-eqz v3, :cond_b1

    .line 3442
    :try_start_ae
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_b1
    throw v0
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b2} :catch_b4
    .catchall {:try_start_ae .. :try_end_b2} :catchall_b2

    :catchall_b2
    move-exception v0

    goto :goto_ba

    :catch_b4
    move-object v0, v1

    goto :goto_c1

    :catchall_b6
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_ba
    if-eqz v1, :cond_bf

    .line 354
    :try_start_bc
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_bf

    .line 357
    :catch_bf
    :cond_bf
    throw v0

    :catch_c0
    nop

    :goto_c1
    if-eqz v0, :cond_8

    .line 354
    :try_start_c3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_a4

    goto/16 :goto_8

    :cond_c8
    return-void
.end method
