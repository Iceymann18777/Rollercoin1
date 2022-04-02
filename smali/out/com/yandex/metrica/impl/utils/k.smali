.class public Lcom/yandex/metrica/impl/utils/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/utils/k$a;
    }
.end annotation


# instance fields
.field private volatile a:J

.field private b:Lcom/yandex/metrica/impl/ob/cc;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/yandex/metrica/impl/utils/k;-><init>()V

    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/utils/k;
    .registers 1

    .line 25
    sget-object v0, Lcom/yandex/metrica/impl/utils/k$a;->a:Lcom/yandex/metrica/impl/utils/k;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(J)V
    .registers 5

    monitor-enter p0

    .line 48
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/yandex/metrica/impl/utils/k;->a:J

    .line 50
    iget-object p1, p0, Lcom/yandex/metrica/impl/utils/k;->b:Lcom/yandex/metrica/impl/ob/cc;

    if-eqz p1, :cond_1b

    .line 51
    iget-object p1, p0, Lcom/yandex/metrica/impl/utils/k;->b:Lcom/yandex/metrica/impl/ob/cc;

    iget-wide v0, p0, Lcom/yandex/metrica/impl/utils/k;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/cc;->a(J)Lcom/yandex/metrica/impl/ob/cc;

    .line 52
    iget-object p1, p0, Lcom/yandex/metrica/impl/utils/k;->b:Lcom/yandex/metrica/impl/ob/cc;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cc;->h()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 56
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_1d

    .line 39
    :try_start_3
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/bp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bp;->b()Lcom/yandex/metrica/impl/ob/bq;

    move-result-object p1

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/ob/cc;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cc;-><init>(Lcom/yandex/metrica/impl/ob/bq;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/utils/k;->b:Lcom/yandex/metrica/impl/ob/cc;

    const/4 p1, 0x0

    .line 41
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/cc;->c(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/utils/k;->a:J
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    goto :goto_1d

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1

    .line 45
    :cond_1d
    :goto_1d
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()J
    .registers 3

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/utils/k;->a:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
