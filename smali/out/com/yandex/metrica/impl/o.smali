.class public Lcom/yandex/metrica/impl/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yandex/metrica/impl/utils/f;

.field private c:Lcom/yandex/metrica/impl/utils/f$a;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/utils/f$a;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/o;->a:Ljava/util/Map;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/utils/f;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/f;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/o;->b:Lcom/yandex/metrica/impl/utils/f;

    .line 32
    iput-object p1, p0, Lcom/yandex/metrica/impl/o;->c:Lcom/yandex/metrica/impl/utils/f$a;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/yandex/metrica/impl/o;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    if-nez p2, :cond_8

    .line 37
    iget-object p2, p0, Lcom/yandex/metrica/impl/o;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 39
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/o;->b:Lcom/yandex/metrica/impl/utils/f;

    iget-object v1, p0, Lcom/yandex/metrica/impl/o;->a:Ljava/util/Map;

    iget-object v4, p0, Lcom/yandex/metrica/impl/o;->c:Lcom/yandex/metrica/impl/utils/f$a;

    const-string v5, "Crash Environment"

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/metrica/impl/utils/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/utils/f$a;Ljava/lang/String;)Ljava/util/Map;

    return-void
.end method
