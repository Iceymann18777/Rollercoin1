.class public Lcom/yandex/metrica/impl/ob/dj;
.super Lcom/yandex/metrica/impl/ob/dd;
.source "SourceFile"


# instance fields
.field private c:Lcom/yandex/metrica/impl/ob/dk;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/dj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/dd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dj;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dj;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dj;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/dj;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dd;->k()V

    return-void
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    const-string v0, "_serviceproviderspreferences"

    return-object v0
.end method

.method protected h()V
    .registers 3

    .line 36
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/dd;->h()V

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "LOCATION_TRACKING_ENABLED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dj;->c:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method
