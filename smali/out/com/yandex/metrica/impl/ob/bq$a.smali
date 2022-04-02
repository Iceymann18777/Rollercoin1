.class Lcom/yandex/metrica/impl/ob/bq$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/bq;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/bq;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bq$a;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/bq;B)V
    .registers 3

    .line 61
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bq$a;-><init>(Lcom/yandex/metrica/impl/ob/bq;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bq$a;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bq;->a(Lcom/yandex/metrica/impl/ob/bq;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 66
    :try_start_7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq$a;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/bq;->b(Lcom/yandex/metrica/impl/ob/bq;)V

    .line 67
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq$a;->a:Lcom/yandex/metrica/impl/ob/bq;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/bq;->a(Lcom/yandex/metrica/impl/ob/bq;Z)Z

    .line 68
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq$a;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/bq;->a(Lcom/yandex/metrica/impl/ob/bq;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 69
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_5e

    .line 72
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bq$a;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 73
    monitor-enter p0

    .line 74
    :try_start_23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bq$a;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bq;->c(Lcom/yandex/metrica/impl/ob/bq;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_5a

    if-nez v0, :cond_36

    .line 76
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_33
    .catchall {:try_start_2f .. :try_end_32} :catchall_5a

    goto :goto_36

    .line 78
    :catch_33
    :try_start_33
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bq$a;->interrupt()V

    .line 81
    :cond_36
    :goto_36
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq$a;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/bq;->c(Lcom/yandex/metrica/impl/ob/bq;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 82
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq$a;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/bq;->c(Lcom/yandex/metrica/impl/ob/bq;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 83
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_5a

    .line 85
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1c

    .line 86
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq$a;->a:Lcom/yandex/metrica/impl/ob/bq;

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ob/bq;->a(Lcom/yandex/metrica/impl/ob/bq;Ljava/util/Map;)V

    .line 87
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_1c

    :catchall_5a
    move-exception v0

    .line 83
    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0

    :cond_5d
    return-void

    :catchall_5e
    move-exception v1

    .line 69
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    goto :goto_62

    :goto_61
    throw v1

    :goto_62
    goto :goto_61
.end method
