.class Lcom/yandex/metrica/impl/ob/dp$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/j;


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
        "Lcom/yandex/metrica/impl/ob/j<",
        "Lcom/yandex/metrica/impl/ob/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/dp;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/dp;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dp$10;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/i;)V
    .registers 2

    .line 267
    check-cast p1, Lcom/yandex/metrica/impl/ob/o;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/dp$10;->a(Lcom/yandex/metrica/impl/ob/o;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/o;)V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp$10;->a:Lcom/yandex/metrica/impl/ob/dp;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/o;->a:Lcom/yandex/metrica/impl/ob/ds;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dp;->a(Lcom/yandex/metrica/impl/ob/ds;)V

    .line 270
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dp$10;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dp;->c()V

    return-void
.end method
