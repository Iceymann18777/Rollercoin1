.class Lcom/yandex/metrica/impl/ob/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ce$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ch;

.field private final b:Lcom/yandex/metrica/impl/be$a;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/be$a;Lcom/yandex/metrica/impl/ob/ch;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ce;->a:Lcom/yandex/metrica/impl/ob/ch;

    .line 16
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ce;->b:Lcom/yandex/metrica/impl/be$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/cj;)Lcom/yandex/metrica/impl/ob/ce$a;
    .registers 2

    .line 24
    sget-object p1, Lcom/yandex/metrica/impl/ob/ce$a;->a:Lcom/yandex/metrica/impl/ob/ce$a;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ce;->a:Lcom/yandex/metrica/impl/ob/ch;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ch;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/ch;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ce;->a:Lcom/yandex/metrica/impl/ob/ch;

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/be$a;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ce;->b:Lcom/yandex/metrica/impl/be$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bid{mCredentials=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ce;->a:Lcom/yandex/metrica/impl/ob/ch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mDescriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ce;->b:Lcom/yandex/metrica/impl/be$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
