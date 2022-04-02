.class Lcom/yandex/metrica/impl/ob/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/i;

.field private final b:Lcom/yandex/metrica/impl/ob/k;
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
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/i;",
            "Lcom/yandex/metrica/impl/ob/k<",
            "+",
            "Lcom/yandex/metrica/impl/ob/i;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/g$a;->a:Lcom/yandex/metrica/impl/ob/i;

    .line 55
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/g$a;->b:Lcom/yandex/metrica/impl/ob/k;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/k;B)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/g$a;-><init>(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/k;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/g$a;->b:Lcom/yandex/metrica/impl/ob/k;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/g$a;->a:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/k;->b(Lcom/yandex/metrica/impl/ob/i;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/g$a;->b:Lcom/yandex/metrica/impl/ob/k;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/g$a;->a:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/k;->a(Lcom/yandex/metrica/impl/ob/i;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_11

    :catchall_11
    :cond_11
    return-void
.end method
