.class Lcom/yandex/metrica/impl/ob/fh$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/fu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/fh;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/fh;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/fh;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fh$2;->a:Lcom/yandex/metrica/impl/ob/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/fr;)V
    .registers 5

    .line 90
    invoke-static {}, Lcom/yandex/metrica/impl/ob/fh;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t update pins on schedule: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fr;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fh$2;->a:Lcom/yandex/metrica/impl/ob/fh;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fh;->a(Lcom/yandex/metrica/impl/ob/fh;)V

    .line 92
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fh$2;->a:Lcom/yandex/metrica/impl/ob/fh;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fh;->a(Lcom/yandex/metrica/impl/ob/fh;Lcom/yandex/metrica/impl/ob/fi;)Lcom/yandex/metrica/impl/ob/fi;

    return-void
.end method
