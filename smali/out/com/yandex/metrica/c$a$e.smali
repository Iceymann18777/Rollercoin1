.class public final Lcom/yandex/metrica/c$a$e;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field private static volatile g:[Lcom/yandex/metrica/c$a$e;


# instance fields
.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2412
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 2413
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$e;->e()Lcom/yandex/metrica/c$a$e;

    return-void
.end method

.method public static d()[Lcom/yandex/metrica/c$a$e;
    .registers 2

    .line 2386
    sget-object v0, Lcom/yandex/metrica/c$a$e;->g:[Lcom/yandex/metrica/c$a$e;

    if-nez v0, :cond_15

    .line 2387
    sget-object v0, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2389
    :try_start_7
    sget-object v1, Lcom/yandex/metrica/c$a$e;->g:[Lcom/yandex/metrica/c$a$e;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/yandex/metrica/c$a$e;

    .line 2390
    sput-object v1, Lcom/yandex/metrica/c$a$e;->g:[Lcom/yandex/metrica/c$a$e;

    .line 2392
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 2394
    :cond_15
    :goto_15
    sget-object v0, Lcom/yandex/metrica/c$a$e;->g:[Lcom/yandex/metrica/c$a$e;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2429
    iget v0, p0, Lcom/yandex/metrica/c$a$e;->b:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 2430
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 2432
    :cond_8
    iget v0, p0, Lcom/yandex/metrica/c$a$e;->c:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 2433
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 2435
    :cond_10
    iget-object v0, p0, Lcom/yandex/metrica/c$a$e;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x3

    .line 2436
    iget-object v2, p0, Lcom/yandex/metrica/c$a$e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 2438
    :cond_20
    iget-boolean v0, p0, Lcom/yandex/metrica/c$a$e;->e:Z

    if-eqz v0, :cond_28

    const/4 v2, 0x4

    .line 2439
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(IZ)V

    .line 2441
    :cond_28
    iget-object v0, p0, Lcom/yandex/metrica/c$a$e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const/4 v0, 0x5

    .line 2442
    iget-object v1, p0, Lcom/yandex/metrica/c$a$e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 2444
    :cond_36
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method protected c()I
    .registers 5

    .line 2449
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 2450
    iget v1, p0, Lcom/yandex/metrica/c$a$e;->b:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 2452
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2454
    :cond_e
    iget v1, p0, Lcom/yandex/metrica/c$a$e;->c:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 2456
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2458
    :cond_18
    iget-object v1, p0, Lcom/yandex/metrica/c$a$e;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const/4 v1, 0x3

    .line 2459
    iget-object v3, p0, Lcom/yandex/metrica/c$a$e;->d:Ljava/lang/String;

    .line 2460
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2462
    :cond_2a
    iget-boolean v1, p0, Lcom/yandex/metrica/c$a$e;->e:Z

    if-eqz v1, :cond_34

    const/4 v1, 0x4

    .line 2464
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->e(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2466
    :cond_34
    iget-object v1, p0, Lcom/yandex/metrica/c$a$e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    const/4 v1, 0x5

    .line 2467
    iget-object v2, p0, Lcom/yandex/metrica/c$a$e;->f:Ljava/lang/String;

    .line 2468
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_44
    return v0
.end method

.method public e()Lcom/yandex/metrica/c$a$e;
    .registers 3

    const/4 v0, 0x0

    .line 2417
    iput v0, p0, Lcom/yandex/metrica/c$a$e;->b:I

    .line 2418
    iput v0, p0, Lcom/yandex/metrica/c$a$e;->c:I

    const-string v1, ""

    .line 2419
    iput-object v1, p0, Lcom/yandex/metrica/c$a$e;->d:Ljava/lang/String;

    .line 2420
    iput-boolean v0, p0, Lcom/yandex/metrica/c$a$e;->e:Z

    .line 2421
    iput-object v1, p0, Lcom/yandex/metrica/c$a$e;->f:Ljava/lang/String;

    const/4 v0, -0x1

    .line 2422
    iput v0, p0, Lcom/yandex/metrica/c$a$e;->a:I

    return-object p0
.end method
