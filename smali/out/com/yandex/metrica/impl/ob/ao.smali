.class public Lcom/yandex/metrica/impl/ob/ao;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yandex/metrica/impl/ob/af;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 6

    .line 29
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ao;->a:Ljava/util/ArrayList;

    .line 30
    new-instance v1, Lcom/yandex/metrica/impl/ob/ai;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/ai;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/r;->d()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 33
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ao;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/yandex/metrica/impl/ob/al;

    .line 36
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ao;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/bp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/cx;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/cx;-><init>()V

    invoke-direct {v1, p1, v2, v3}, Lcom/yandex/metrica/impl/ob/al;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/bp;Lcom/yandex/metrica/impl/ob/cx;)V

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ao;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ag;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/ag;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ao;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/af;

    .line 45
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/af;->a(Lcom/yandex/metrica/impl/h;)Z

    goto :goto_6

    :cond_16
    const/4 p1, 0x0

    return p1
.end method
