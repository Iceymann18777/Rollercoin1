.class public Lcom/yandex/metrica/impl/ob/cp;
.super Lcom/yandex/metrica/impl/ob/cn;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/cn;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .registers 2

    monitor-enter p0

    .line 7
    :try_start_1
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/cn;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 8
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method
