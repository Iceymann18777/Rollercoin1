.class public final Lcom/yandex/metrica/c$a$d$a$a;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a$d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1393
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 1394
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$d$a$a;->d()Lcom/yandex/metrica/c$a$d$a$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1408
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a$a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a$a;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x2

    .line 1410
    iget-object v2, p0, Lcom/yandex/metrica/c$a$d$a$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1412
    :cond_16
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x3

    .line 1413
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1415
    :cond_24
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method protected c()I
    .registers 5

    .line 1420
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 1421
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a$a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1422
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1423
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a$a;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x2

    .line 1424
    iget-object v3, p0, Lcom/yandex/metrica/c$a$d$a$a;->c:Ljava/lang/String;

    .line 1425
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1427
    :cond_1e
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$a$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x3

    .line 1428
    iget-object v2, p0, Lcom/yandex/metrica/c$a$d$a$a;->d:Ljava/lang/String;

    .line 1429
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2e
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$d$a$a;
    .registers 2

    const-string v0, ""

    .line 1398
    iput-object v0, p0, Lcom/yandex/metrica/c$a$d$a$a;->b:Ljava/lang/String;

    .line 1399
    iput-object v0, p0, Lcom/yandex/metrica/c$a$d$a$a;->c:Ljava/lang/String;

    .line 1400
    iput-object v0, p0, Lcom/yandex/metrica/c$a$d$a$a;->d:Ljava/lang/String;

    const/4 v0, -0x1

    .line 1401
    iput v0, p0, Lcom/yandex/metrica/c$a$d$a$a;->a:I

    return-object p0
.end method
