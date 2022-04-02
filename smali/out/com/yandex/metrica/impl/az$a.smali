.class Lcom/yandex/metrica/impl/az$a;
.super Lcom/yandex/metrica/impl/az$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/az;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/az;Lcom/yandex/metrica/impl/az$d;)V
    .registers 4

    .line 136
    iput-object p1, p0, Lcom/yandex/metrica/impl/az$a;->a:Lcom/yandex/metrica/impl/az;

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/az$b;-><init>(Lcom/yandex/metrica/impl/az;Lcom/yandex/metrica/impl/az$d;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/az;Lcom/yandex/metrica/impl/az$d;B)V
    .registers 4

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/az$a;-><init>(Lcom/yandex/metrica/impl/az;Lcom/yandex/metrica/impl/az$d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/az$a;->a:Lcom/yandex/metrica/impl/az;

    invoke-static {v0}, Lcom/yandex/metrica/impl/az;->a(Lcom/yandex/metrica/impl/az;)Lcom/yandex/metrica/impl/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->b()V

    .line 143
    invoke-super {p0}, Lcom/yandex/metrica/impl/az$b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method b()Z
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/yandex/metrica/impl/az$a;->b:Lcom/yandex/metrica/impl/az$d;

    .line 1154
    iget-object v1, p0, Lcom/yandex/metrica/impl/az$a;->a:Lcom/yandex/metrica/impl/az;

    invoke-static {v1}, Lcom/yandex/metrica/impl/az;->b(Lcom/yandex/metrica/impl/az;)Lcom/yandex/metrica/impl/s;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/metrica/impl/s;->b()Landroid/content/Context;

    move-result-object v1

    .line 1155
    invoke-static {v1}, Lcom/yandex/metrica/impl/be;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1156
    invoke-static {v0}, Lcom/yandex/metrica/impl/az$d;->b(Lcom/yandex/metrica/impl/az$d;)Lcom/yandex/metrica/impl/h;

    move-result-object v3

    invoke-static {v0}, Lcom/yandex/metrica/impl/az$d;->a(Lcom/yandex/metrica/impl/az$d;)Lcom/yandex/metrica/impl/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->c()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/impl/h;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1157
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/az$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
