.class public final Lcom/yandex/metrica/impl/ob/eg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/ee;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/dz;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/dz;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/dz;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/ee;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eg;->b:Lcom/yandex/metrica/impl/ob/dz;

    .line 25
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/eg;->a:Ljava/util/List;

    .line 26
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/eg;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/ee;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/dz;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->b:Lcom/yandex/metrica/impl/ob/dz;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->c:Ljava/util/List;

    return-object v0
.end method
