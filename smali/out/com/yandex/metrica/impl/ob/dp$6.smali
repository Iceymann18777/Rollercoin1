.class Lcom/yandex/metrica/impl/ob/dp$6;
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
        "Lcom/yandex/metrica/impl/ob/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/dp;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/dp;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dp$6;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/i;)V
    .registers 2

    .line 243
    check-cast p1, Lcom/yandex/metrica/impl/ob/p;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/dp$6;->a(Lcom/yandex/metrica/impl/ob/p;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/p;)V
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp$6;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/dp;->d(Lcom/yandex/metrica/impl/ob/dp;)Lcom/yandex/metrica/impl/ob/dq;

    move-result-object v0

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/p;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dq;->a(Ljava/lang/String;)V

    return-void
.end method
