.class public Lcom/yandex/metrica/impl/ob/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/s$e;,
        Lcom/yandex/metrica/impl/ob/s$f;,
        Lcom/yandex/metrica/impl/ob/s$b;,
        Lcom/yandex/metrica/impl/ob/s$d;,
        Lcom/yandex/metrica/impl/ob/s$c;,
        Lcom/yandex/metrica/impl/ob/s$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/t;

.field private final b:Lcom/yandex/metrica/impl/ob/db;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/s$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/db;)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/t;

    .line 31
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/s;->b:Lcom/yandex/metrica/impl/ob/db;

    .line 1036
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/s;->c:Ljava/util/List;

    .line 1037
    new-instance p2, Lcom/yandex/metrica/impl/ob/s$b;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/t;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s;->b:Lcom/yandex/metrica/impl/ob/db;

    invoke-direct {p2, v0, v1}, Lcom/yandex/metrica/impl/ob/s$b;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/db;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/s;->c:Ljava/util/List;

    new-instance p2, Lcom/yandex/metrica/impl/ob/s$d;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/t;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s;->b:Lcom/yandex/metrica/impl/ob/db;

    invoke-direct {p2, v0, v1}, Lcom/yandex/metrica/impl/ob/s$d;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/db;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/s;->c:Ljava/util/List;

    new-instance p2, Lcom/yandex/metrica/impl/ob/s$c;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-direct {p2, v0}, Lcom/yandex/metrica/impl/ob/s$c;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/s;->c:Ljava/util/List;

    new-instance p2, Lcom/yandex/metrica/impl/ob/s$a;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-direct {p2, v0}, Lcom/yandex/metrica/impl/ob/s$a;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/r;->a()Ljava/lang/String;

    move-result-object v0

    .line 1053
    sget-object v1, Lcom/yandex/metrica/impl/ob/db;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 46
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/s$e;

    .line 47
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/s$e;->d()V

    goto :goto_1c

    :cond_2c
    return-void
.end method
