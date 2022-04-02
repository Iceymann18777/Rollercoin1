.class Lcom/yandex/metrica/impl/ob/dp$2;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 431
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dp$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 433
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dp$2;->a:Ljava/lang/String;

    const-string v0, "uri"

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/dp$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
