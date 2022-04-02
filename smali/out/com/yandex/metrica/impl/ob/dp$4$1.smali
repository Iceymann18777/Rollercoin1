.class Lcom/yandex/metrica/impl/ob/dp$4$1;
.super Lcom/yandex/metrica/impl/ob/dp$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/dp$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/dp$4;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/dp$4;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dp$4$1;->a:Lcom/yandex/metrica/impl/ob/dp$4;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dp$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/net/Socket;)Lcom/yandex/metrica/impl/ob/dp$b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/net/Socket;",
            ")",
            "Lcom/yandex/metrica/impl/ob/dp$b;"
        }
    .end annotation

    .line 219
    new-instance v0, Lcom/yandex/metrica/impl/ob/dp$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dp$4$1;->a:Lcom/yandex/metrica/impl/ob/dp$4;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/dp$4;->a:Lcom/yandex/metrica/impl/ob/dp;

    invoke-direct {v0, v1, p1, p2}, Lcom/yandex/metrica/impl/ob/dp$a;-><init>(Lcom/yandex/metrica/impl/ob/dp;Landroid/net/Uri;Ljava/net/Socket;)V

    return-object v0
.end method
