.class Lcom/yandex/metrica/impl/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final b:Lcom/yandex/metrica/CounterConfiguration;

.field protected c:Lcom/yandex/metrica/impl/o;

.field protected d:Lcom/yandex/metrica/impl/an;

.field private e:Lcom/yandex/metrica/impl/q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/aw$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/aw$1;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/aw;->a:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/yandex/metrica/impl/q;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/q;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/aw;->e:Lcom/yandex/metrica/impl/q;

    .line 40
    new-instance v0, Lcom/yandex/metrica/CounterConfiguration;

    invoke-direct {v0}, Lcom/yandex/metrica/CounterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/aw;->b:Lcom/yandex/metrica/CounterConfiguration;

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/an;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/yandex/metrica/impl/aw;->d:Lcom/yandex/metrica/impl/an;

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/j;)V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Landroid/os/ResultReceiver;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/dw;)V
    .registers 2

    .line 61
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/aw;->b(Lcom/yandex/metrica/impl/ob/dw;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/utils/f$a;)V
    .registers 3

    .line 49
    new-instance v0, Lcom/yandex/metrica/impl/o;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/o;-><init>(Lcom/yandex/metrica/impl/utils/f$a;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/aw;->c:Lcom/yandex/metrica/impl/o;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->c:Lcom/yandex/metrica/impl/o;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a()Z
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->e:Lcom/yandex/metrica/impl/q;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/q;->c()Z

    move-result v0

    return v0
.end method

.method b()Lcom/yandex/metrica/CounterConfiguration;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->b:Lcom/yandex/metrica/CounterConfiguration;

    return-object v0
.end method

.method b(Lcom/yandex/metrica/impl/ob/dw;)V
    .registers 4

    if-eqz p1, :cond_1d

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/dw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->d(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/dw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->e(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/dw;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->f(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method c()Landroid/os/Bundle;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->F()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->e:Lcom/yandex/metrica/impl/q;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/q;->b()V

    return-void
.end method

.method e()Z
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->e:Lcom/yandex/metrica/impl/q;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/q;->a()Z

    move-result v0

    return v0
.end method

.method f()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->c:Lcom/yandex/metrica/impl/o;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/o;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method g()Lcom/yandex/metrica/impl/an;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->d:Lcom/yandex/metrica/impl/an;

    return-object v0
.end method
