.class public Lcom/yandex/metrica/impl/bf;
.super Lcom/yandex/metrica/impl/aw;
.source "SourceFile"


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/yandex/metrica/impl/aw;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yandex/metrica/impl/bf;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method c()Landroid/os/Bundle;
    .registers 4

    .line 26
    invoke-super {p0}, Lcom/yandex/metrica/impl/aw;->c()Landroid/os/Bundle;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bf;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v1

    .line 28
    new-instance v2, Lcom/yandex/metrica/CounterConfiguration;

    invoke-direct {v2, v1}, Lcom/yandex/metrica/CounterConfiguration;-><init>(Lcom/yandex/metrica/CounterConfiguration;)V

    .line 29
    iget-object v1, p0, Lcom/yandex/metrica/impl/bf;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/CounterConfiguration;->b(Ljava/lang/String;)V

    const-string v1, "COUNTER_MIGRATION_CFG_OBJ"

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method
