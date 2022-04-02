.class public Lcom/yandex/metrica/impl/ob/al;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/bp;

.field private final b:Lcom/yandex/metrica/impl/ob/cx;


# direct methods
.method protected constructor <init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/bp;Lcom/yandex/metrica/impl/ob/cx;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 35
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/al;->a:Lcom/yandex/metrica/impl/ob/bp;

    .line 36
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/al;->b:Lcom/yandex/metrica/impl/ob/cx;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 7

    .line 40
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/al;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->C()Lcom/yandex/metrica/impl/ob/by;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/by;->d()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->A()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 52
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/al;->a:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bp;->c()Lcom/yandex/metrica/impl/ob/br;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/al;->b:Lcom/yandex/metrica/impl/ob/cx;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/al;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/br;->a()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/cx;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_32

    .line 55
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->q()V

    goto :goto_3c

    .line 57
    :cond_32
    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Ljava/util/List;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/t;->f(Lcom/yandex/metrica/impl/h;)V

    .line 59
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/br;->a(Ljava/util/List;)V

    :cond_3c
    :goto_3c
    const/4 p1, 0x0

    return p1
.end method
