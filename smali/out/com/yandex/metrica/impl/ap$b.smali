.class Lcom/yandex/metrica/impl/ap$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/p$a;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/p$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:J

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/Integer;

.field protected i:Ljava/lang/Integer;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:I

.field protected m:I

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 391
    const-class v0, Lcom/yandex/metrica/impl/ap$b;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 392
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->c:Lcom/yandex/metrica/impl/p$a;

    const-class v3, Lcom/yandex/metrica/impl/ap$e;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->h:Lcom/yandex/metrica/impl/p$a;

    const-class v3, Lcom/yandex/metrica/impl/ap$f;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->d:Lcom/yandex/metrica/impl/p$a;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->f:Lcom/yandex/metrica/impl/p$a;

    const-class v3, Lcom/yandex/metrica/impl/ap$f;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->o:Lcom/yandex/metrica/impl/p$a;

    const-class v3, Lcom/yandex/metrica/impl/ap$h;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->g:Lcom/yandex/metrica/impl/p$a;

    const-class v3, Lcom/yandex/metrica/impl/ap$e;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->r:Lcom/yandex/metrica/impl/p$a;

    const-class v3, Lcom/yandex/metrica/impl/ap$g;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->s:Lcom/yandex/metrica/impl/p$a;

    const-class v3, Lcom/yandex/metrica/impl/ap$e;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->k:Lcom/yandex/metrica/impl/p$a;

    const-class v3, Lcom/yandex/metrica/impl/ap$e;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->l:Lcom/yandex/metrica/impl/p$a;

    const-class v3, Lcom/yandex/metrica/impl/ap$e;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->y:Lcom/yandex/metrica/impl/p$a;

    const-class v3, Lcom/yandex/metrica/impl/ap$e;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->B:Lcom/yandex/metrica/impl/p$a;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->C:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/ap$c;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->D:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/ap$e;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->F:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/ap$a;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->G:Lcom/yandex/metrica/impl/p$a;

    const-class v2, Lcom/yandex/metrica/impl/ap$a;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ap$b;->p:Ljava/util/Map;

    .line 411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 412
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->b:Lcom/yandex/metrica/impl/p$a;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->c:Lcom/yandex/metrica/impl/p$a;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->h:Lcom/yandex/metrica/impl/p$a;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->d:Lcom/yandex/metrica/impl/p$a;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->f:Lcom/yandex/metrica/impl/p$a;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->y:Lcom/yandex/metrica/impl/p$a;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->o:Lcom/yandex/metrica/impl/p$a;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->g:Lcom/yandex/metrica/impl/p$a;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->r:Lcom/yandex/metrica/impl/p$a;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->s:Lcom/yandex/metrica/impl/p$a;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->k:Lcom/yandex/metrica/impl/p$a;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->l:Lcom/yandex/metrica/impl/p$a;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->A:Lcom/yandex/metrica/impl/p$a;

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->B:Lcom/yandex/metrica/impl/p$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->D:Lcom/yandex/metrica/impl/p$a;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->E:Lcom/yandex/metrica/impl/p$a;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->F:Lcom/yandex/metrica/impl/p$a;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->G:Lcom/yandex/metrica/impl/p$a;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ap$b;->q:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IZ)Lcom/yandex/metrica/impl/ap$b;
    .registers 4

    .line 435
    invoke-static {p0}, Lcom/yandex/metrica/impl/p$a;->a(I)Lcom/yandex/metrica/impl/p$a;

    move-result-object p0

    .line 1452
    sget-object v0, Lcom/yandex/metrica/impl/ap$1;->a:[I

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/p$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    .line 1463
    sget-object p1, Lcom/yandex/metrica/impl/ap$b;->p:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    goto :goto_25

    :cond_1e
    if-eqz p1, :cond_23

    .line 1457
    const-class p1, Lcom/yandex/metrica/impl/ap$e;

    goto :goto_25

    .line 1459
    :cond_23
    const-class p1, Lcom/yandex/metrica/impl/ap$d;

    .line 437
    :goto_25
    sget-object v0, Lcom/yandex/metrica/impl/ap$b;->q:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 441
    :try_start_2d
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ap$b;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_34

    goto :goto_39

    .line 443
    :catch_34
    new-instance p1, Lcom/yandex/metrica/impl/ap$b;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ap$b;-><init>()V

    .line 446
    :goto_39
    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ap$b;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ap$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(I)Lcom/yandex/metrica/impl/ap$b;
    .registers 2

    .line 497
    iput p1, p0, Lcom/yandex/metrica/impl/ap$b;->c:I

    return-object p0
.end method

.method a(J)Lcom/yandex/metrica/impl/ap$b;
    .registers 3

    .line 502
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ap$b;->d:J

    return-object p0
.end method

.method a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ap$b;
    .registers 2

    .line 522
    iput-object p1, p0, Lcom/yandex/metrica/impl/ap$b;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;
    .registers 2

    .line 487
    iput-object p1, p0, Lcom/yandex/metrica/impl/ap$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method protected a()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method b(I)Lcom/yandex/metrica/impl/ap$b;
    .registers 2

    .line 547
    iput p1, p0, Lcom/yandex/metrica/impl/ap$b;->l:I

    return-object p0
.end method

.method b(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ap$b;
    .registers 2

    .line 532
    iput-object p1, p0, Lcom/yandex/metrica/impl/ap$b;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;
    .registers 2

    .line 492
    iput-object p1, p0, Lcom/yandex/metrica/impl/ap$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method protected b()[B
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method c(I)Lcom/yandex/metrica/impl/ap$b;
    .registers 2

    .line 552
    iput p1, p0, Lcom/yandex/metrica/impl/ap$b;->m:I

    return-object p0
.end method

.method c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;
    .registers 2

    .line 507
    iput-object p1, p0, Lcom/yandex/metrica/impl/ap$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method protected c()Ljava/lang/Integer;
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap$b;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;
    .registers 2

    .line 512
    iput-object p1, p0, Lcom/yandex/metrica/impl/ap$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    .line 578
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap$b;->j:Ljava/lang/String;

    return-object v0
.end method

.method e()Lcom/yandex/metrica/c$a$d$a;
    .registers 7

    .line 582
    new-instance v0, Lcom/yandex/metrica/c$a$d$a;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$d$a;-><init>()V

    .line 584
    iget v1, p0, Lcom/yandex/metrica/impl/ap$b;->m:I

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap$b;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ap$b;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ap$b;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/yandex/metrica/impl/ap$b;->o:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ap;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/c$a$d$a$b;

    move-result-object v1

    .line 586
    iget-object v2, p0, Lcom/yandex/metrica/impl/ap$b;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ap;->d(Ljava/lang/String;)Lcom/yandex/metrica/c$a$b;

    move-result-object v2

    .line 587
    iget-object v3, p0, Lcom/yandex/metrica/impl/ap$b;->k:Ljava/lang/String;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ap;->e(Ljava/lang/String;)Lcom/yandex/metrica/c$a$d$a$a;

    move-result-object v3

    if-eqz v1, :cond_23

    .line 591
    iput-object v1, v0, Lcom/yandex/metrica/c$a$d$a;->h:Lcom/yandex/metrica/c$a$d$a$b;

    :cond_23
    if-eqz v2, :cond_27

    .line 594
    iput-object v2, v0, Lcom/yandex/metrica/c$a$d$a;->g:Lcom/yandex/metrica/c$a$b;

    .line 596
    :cond_27
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap$b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 597
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap$b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$d$a;->e:Ljava/lang/String;

    .line 599
    :cond_33
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap$b;->b()[B

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 600
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap$b;->b()[B

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$d$a;->f:[B

    .line 602
    :cond_3f
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap$b;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 603
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap$b;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a$d$a;->i:Ljava/lang/String;

    :cond_4b
    if-eqz v3, :cond_4f

    .line 606
    iput-object v3, v0, Lcom/yandex/metrica/c$a$d$a;->j:Lcom/yandex/metrica/c$a$d$a$a;

    .line 609
    :cond_4f
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap$b;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$d$a;->d:I

    .line 610
    iget v1, p0, Lcom/yandex/metrica/impl/ap$b;->c:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/yandex/metrica/c$a$d$a;->b:J

    .line 611
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ap$b;->d:J

    iput-wide v1, v0, Lcom/yandex/metrica/c$a$d$a;->c:J

    .line 612
    iget v1, p0, Lcom/yandex/metrica/impl/ap$b;->l:I

    iput v1, v0, Lcom/yandex/metrica/c$a$d$a;->k:I

    .line 613
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ap$b;->f()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/c$a$d$a;->l:I

    return-object v0
.end method

.method e(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;
    .registers 2

    .line 517
    iput-object p1, p0, Lcom/yandex/metrica/impl/ap$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method protected f()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;
    .registers 2

    .line 527
    iput-object p1, p0, Lcom/yandex/metrica/impl/ap$b;->o:Ljava/lang/String;

    return-object p0
.end method

.method g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;
    .registers 2

    .line 537
    iput-object p1, p0, Lcom/yandex/metrica/impl/ap$b;->j:Ljava/lang/String;

    return-object p0
.end method

.method h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;
    .registers 2

    .line 542
    iput-object p1, p0, Lcom/yandex/metrica/impl/ap$b;->k:Ljava/lang/String;

    return-object p0
.end method

.method i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;
    .registers 2

    .line 557
    iput-object p1, p0, Lcom/yandex/metrica/impl/ap$b;->n:Ljava/lang/String;

    return-object p0
.end method
