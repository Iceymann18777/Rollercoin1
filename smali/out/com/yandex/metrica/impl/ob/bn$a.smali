.class Lcom/yandex/metrica/impl/ob/bn$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/bn;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yandex/metrica/impl/ob/u;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bn;)V
    .registers 2

    .line 608
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 609
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bn$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 2

    monitor-enter p0

    .line 642
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bn$a;->interrupt()V

    const/4 v0, 0x0

    .line 643
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bn$a;->c:Lcom/yandex/metrica/impl/ob/u;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 644
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/yandex/metrica/impl/ob/u;)V
    .registers 2

    monitor-enter p0

    .line 647
    :try_start_1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bn$a;->c:Lcom/yandex/metrica/impl/ob/u;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 648
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b()V
    .registers 2

    monitor-enter p0

    .line 651
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn$a;->c:Lcom/yandex/metrica/impl/ob/u;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn$a;->c:Lcom/yandex/metrica/impl/ob/u;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/u;->o()Z

    move-result v0

    if-nez v0, :cond_12

    .line 652
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn$a;->c:Lcom/yandex/metrica/impl/ob/u;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/u;->b()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 654
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 4

    .line 614
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_62

    .line 616
    :try_start_a
    monitor-enter p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b} :catch_1b

    .line 617
    :try_start_b
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bn;->a(Lcom/yandex/metrica/impl/ob/bn;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 618
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 620
    :cond_16
    monitor-exit p0

    goto :goto_22

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1b} :catch_1b

    .line 622
    :catch_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 625
    :goto_22
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bn;->b(Lcom/yandex/metrica/impl/ob/bn;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 626
    :try_start_29
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 627
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn$a;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/bn;->c(Lcom/yandex/metrica/impl/ob/bn;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 628
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/bn;->c(Lcom/yandex/metrica/impl/ob/bn;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 630
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/bn;->d(Lcom/yandex/metrica/impl/ob/bn;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/bn;->a(Lcom/yandex/metrica/impl/ob/bn;Landroid/content/ContentValues;)V

    .line 631
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bn$a;->b:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/bn;->a(Lcom/yandex/metrica/impl/ob/bn;Ljava/util/List;)V

    .line 633
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn$a;->a:Lcom/yandex/metrica/impl/ob/bn;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/bn;->b(Lcom/yandex/metrica/impl/ob/bn;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 634
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_29 .. :try_end_5b} :catchall_5f

    .line 637
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bn$a;->b()V

    goto :goto_0

    :catchall_5f
    move-exception v1

    .line 634
    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1

    :cond_62
    return-void
.end method
