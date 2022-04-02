.class public Lcom/yandex/metrica/impl/ob/db;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/yandex/metrica/impl/ob/dc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lcom/yandex/metrica/impl/ob/db$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/db$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/db;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/dc;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/db;->b:Lcom/yandex/metrica/impl/ob/dc;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/db;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 32
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/db;->g()V

    .line 33
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/db;->h()V

    :cond_c
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 56
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/db;->b(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/db;->g()V

    :cond_8
    return-void
.end method

.method public b()V
    .registers 4

    .line 38
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/db;->d()Ljava/lang/String;

    move-result-object v0

    .line 1045
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/db;->b:Lcom/yandex/metrica/impl/ob/dc;

    .line 1046
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dc;->g()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/dc;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "DONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    if-eqz v1, :cond_28

    .line 40
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/db;->a(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/db;->b:Lcom/yandex/metrica/impl/ob/dc;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dc;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/db;->e()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/db;->a(Ljava/lang/String;)V

    return-void
.end method

.method d()Ljava/lang/String;
    .registers 3

    .line 62
    sget-object v0, Lcom/yandex/metrica/impl/ob/db;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/db;->b:Lcom/yandex/metrica/impl/ob/dc;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dc;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/db;->b:Lcom/yandex/metrica/impl/ob/dc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dc;->g()Ljava/util/Map;

    move-result-object v0

    .line 67
    sget-object v1, Lcom/yandex/metrica/impl/ob/db;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/dc;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 70
    :cond_24
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    :try_start_3d
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/dc;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_4d

    goto :goto_31

    :catchall_4d
    nop

    goto :goto_31

    .line 76
    :cond_4f
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_61

    .line 77
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_61
    const/4 v0, 0x0

    return-object v0
.end method

.method f()Z
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/db;->b:Lcom/yandex/metrica/impl/ob/dc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method g()V
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/db;->b:Lcom/yandex/metrica/impl/ob/dc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dc;->a()V

    return-void
.end method

.method h()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/db;->b:Lcom/yandex/metrica/impl/ob/dc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dc;->b()V

    return-void
.end method
