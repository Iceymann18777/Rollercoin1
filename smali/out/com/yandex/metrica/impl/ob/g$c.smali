.class Lcom/yandex/metrica/impl/ob/g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/yandex/metrica/impl/ob/k<",
            "+",
            "Lcom/yandex/metrica/impl/ob/i;",
            ">;>;"
        }
    .end annotation
.end field

.field final b:Lcom/yandex/metrica/impl/ob/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/k<",
            "+",
            "Lcom/yandex/metrica/impl/ob/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/yandex/metrica/impl/ob/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/yandex/metrica/impl/ob/k<",
            "+",
            "Lcom/yandex/metrica/impl/ob/i;",
            ">;>;",
            "Lcom/yandex/metrica/impl/ob/k<",
            "+",
            "Lcom/yandex/metrica/impl/ob/i;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/g$c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/g$c;->b:Lcom/yandex/metrica/impl/ob/k;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/yandex/metrica/impl/ob/k;B)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/g$c;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/yandex/metrica/impl/ob/k;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/g$c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/g$c;->b:Lcom/yandex/metrica/impl/ob/k;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 44
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/g$c;->a()V

    return-void
.end method
