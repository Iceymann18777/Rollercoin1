.class Lcom/yandex/metrica/impl/ob/dp$4;
.super Ljava/util/HashMap;
.source "SourceFile"


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
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/yandex/metrica/impl/ob/dp$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/dp;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/dp;)V
    .registers 3

    .line 214
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dp$4;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 216
    new-instance p1, Lcom/yandex/metrica/impl/ob/dp$4$1;

    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/ob/dp$4$1;-><init>(Lcom/yandex/metrica/impl/ob/dp$4;)V

    const-string v0, "p"

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/dp$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
