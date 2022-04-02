.class public final Lcom/yandex/metrica/c$a$d$c;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field private static volatile f:[Lcom/yandex/metrica/c$a$d$c;


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 358
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 359
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$d$c;->e()Lcom/yandex/metrica/c$a$d$c;

    return-void
.end method

.method public static d()[Lcom/yandex/metrica/c$a$d$c;
    .registers 2

    .line 335
    sget-object v0, Lcom/yandex/metrica/c$a$d$c;->f:[Lcom/yandex/metrica/c$a$d$c;

    if-nez v0, :cond_15

    .line 336
    sget-object v0, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_7
    sget-object v1, Lcom/yandex/metrica/c$a$d$c;->f:[Lcom/yandex/metrica/c$a$d$c;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/yandex/metrica/c$a$d$c;

    .line 339
    sput-object v1, Lcom/yandex/metrica/c$a$d$c;->f:[Lcom/yandex/metrica/c$a$d$c;

    .line 341
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 343
    :cond_15
    :goto_15
    sget-object v0, Lcom/yandex/metrica/c$a$d$c;->f:[Lcom/yandex/metrica/c$a$d$c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$c;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 375
    iget v0, p0, Lcom/yandex/metrica/c$a$d$c;->c:I

    if-eqz v0, :cond_e

    const/4 v1, 0x2

    .line 376
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->c(II)V

    .line 378
    :cond_e
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$c;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x3

    .line 379
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 381
    :cond_1e
    iget-boolean v0, p0, Lcom/yandex/metrica/c$a$d$c;->e:Z

    if-eqz v0, :cond_26

    const/4 v1, 0x4

    .line 382
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(IZ)V

    .line 384
    :cond_26
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method protected c()I
    .registers 4

    .line 389
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$c;->b:Ljava/lang/String;

    const/4 v2, 0x1

    .line 391
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    iget v1, p0, Lcom/yandex/metrica/c$a$d$c;->c:I

    if-eqz v1, :cond_16

    const/4 v2, 0x2

    .line 394
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 396
    :cond_16
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$c;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x3

    .line 397
    iget-object v2, p0, Lcom/yandex/metrica/c$a$d$c;->d:Ljava/lang/String;

    .line 398
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 400
    :cond_28
    iget-boolean v1, p0, Lcom/yandex/metrica/c$a$d$c;->e:Z

    if-eqz v1, :cond_32

    const/4 v1, 0x4

    .line 402
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->e(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_32
    return v0
.end method

.method public e()Lcom/yandex/metrica/c$a$d$c;
    .registers 3

    const-string v0, ""

    .line 363
    iput-object v0, p0, Lcom/yandex/metrica/c$a$d$c;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 364
    iput v1, p0, Lcom/yandex/metrica/c$a$d$c;->c:I

    .line 365
    iput-object v0, p0, Lcom/yandex/metrica/c$a$d$c;->d:Ljava/lang/String;

    .line 366
    iput-boolean v1, p0, Lcom/yandex/metrica/c$a$d$c;->e:Z

    const/4 v0, -0x1

    .line 367
    iput v0, p0, Lcom/yandex/metrica/c$a$d$c;->a:I

    return-object p0
.end method
