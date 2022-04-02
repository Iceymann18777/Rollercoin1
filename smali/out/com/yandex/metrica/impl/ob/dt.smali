.class public Lcom/yandex/metrica/impl/ob/dt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dt;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dt;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4

    .line 20
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dt;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
