.class Lcom/yandex/metrica/impl/ob/cf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/metrica/impl/ob/cj;

.field private c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/ce;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/ce;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/ce;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/cj;)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cf;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/cf;->b:Lcom/yandex/metrica/impl/ob/cj;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cf;->d:Ljava/util/List;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cf;->e:Ljava/util/List;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cf;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/ce;)V
    .registers 4

    .line 28
    iget v0, p0, Lcom/yandex/metrica/impl/ob/cf;->c:I

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ce;->c()Lcom/yandex/metrica/impl/be$a;

    move-result-object v1

    iget v1, v1, Lcom/yandex/metrica/impl/be$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/cf;->c:I

    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/yandex/metrica/impl/ob/cf$1;->a:[I

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->b:Lcom/yandex/metrica/impl/ob/cj;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/ce;->a(Lcom/yandex/metrica/impl/ob/cj;)Lcom/yandex/metrica/impl/ob/ce$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ce$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    goto :goto_2a

    .line 33
    :cond_25
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a
    return-void

    .line 31
    :cond_2b
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()Z
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/ce;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->d:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/lang/Long;
    .registers 5

    const-wide v0, 0x7fffffffffffffffL

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cf;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/ce;

    .line 65
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/ce;->c()Lcom/yandex/metrica/impl/be$a;

    move-result-object v2

    iget-wide v2, v2, Lcom/yandex/metrica/impl/be$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v3

    if-gez v3, :cond_f

    move-object v0, v2

    goto :goto_f

    :cond_2d
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 76
    :cond_11
    check-cast p1, Lcom/yandex/metrica/impl/ob/cf;

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/cf;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cf;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
