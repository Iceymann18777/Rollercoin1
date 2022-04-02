.class Lcom/yandex/metrica/impl/ob/fh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/fu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/fh;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/fu$b<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/fh;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/fh;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fh$1;->a:Lcom/yandex/metrica/impl/ob/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 81
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/fh$1;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fh$1;->a:Lcom/yandex/metrica/impl/ob/fh;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/fh;->a(Lcom/yandex/metrica/impl/ob/fh;Lorg/json/JSONObject;)Z

    .line 85
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fh$1;->a:Lcom/yandex/metrica/impl/ob/fh;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fh;->a(Lcom/yandex/metrica/impl/ob/fh;Lcom/yandex/metrica/impl/ob/fi;)Lcom/yandex/metrica/impl/ob/fi;

    return-void
.end method
