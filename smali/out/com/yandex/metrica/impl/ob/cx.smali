.class public Lcom/yandex/metrica/impl/ob/cx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/cv;
    .registers 4

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_c

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/cy;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cy;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 39
    :cond_c
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cz;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/cw;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/cw;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/cx;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/cv;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/cv;->a()Ljava/util/List;

    move-result-object p1

    .line 27
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/utils/d;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p1, 0x0

    :cond_f
    return-object p1
.end method
