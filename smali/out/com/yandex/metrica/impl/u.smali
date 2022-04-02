.class Lcom/yandex/metrica/impl/u;
.super Lcom/yandex/metrica/impl/aw;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/yandex/metrica/impl/aw;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Lcom/yandex/metrica/impl/u;-><init>()V

    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/u;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->c(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/yandex/metrica/impl/u;->b:Lcom/yandex/metrica/CounterConfiguration;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/CounterConfiguration;->h(Z)V

    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
