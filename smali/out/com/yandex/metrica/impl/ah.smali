.class Lcom/yandex/metrica/impl/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/yandex/metrica/impl/i;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ah;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    iput-object p1, p0, Lcom/yandex/metrica/impl/ah;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ah;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/yandex/metrica/impl/i;)V
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ah;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .line 19
    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ao;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ao;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/i;)V

    .line 1029
    iget-object v0, p0, Lcom/yandex/metrica/impl/ah;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/i;

    .line 1030
    invoke-virtual {v1, p2}, Lcom/yandex/metrica/impl/i;->a(Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_2a

    goto :goto_12

    .line 22
    :cond_22
    iget-object v0, p0, Lcom/yandex/metrica/impl/ah;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_29

    .line 23
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_29
    return-void

    :catchall_2a
    move-exception v0

    .line 22
    iget-object v1, p0, Lcom/yandex/metrica/impl/ah;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_32

    .line 23
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_32
    goto :goto_34

    :goto_33
    throw v0

    :goto_34
    goto :goto_33
.end method
