.class Lcom/yandex/metrica/impl/ob/dp$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/h<",
        "Lcom/yandex/metrica/impl/ob/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/dp;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/dp;)V
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dp$5;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/i;)Z
    .registers 2

    .line 247
    check-cast p1, Lcom/yandex/metrica/impl/ob/p;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/dp$5;->a(Lcom/yandex/metrica/impl/ob/p;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/p;)Z
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp$5;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/dp;->b(Lcom/yandex/metrica/impl/ob/dp;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/p;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method
