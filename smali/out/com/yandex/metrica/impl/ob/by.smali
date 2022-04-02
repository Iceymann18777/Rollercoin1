.class public Lcom/yandex/metrica/impl/ob/by;
.super Lcom/yandex/metrica/impl/ob/cb;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/dk;

.field private final b:Lcom/yandex/metrica/impl/ob/dk;

.field private final c:Lcom/yandex/metrica/impl/ob/dk;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bq;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cb;-><init>(Lcom/yandex/metrica/impl/ob/bq;)V

    .line 29
    new-instance p1, Lcom/yandex/metrica/impl/ob/dk;

    const-string v0, "init_event_pref_key"

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/by;->a:Lcom/yandex/metrica/impl/ob/dk;

    .line 30
    new-instance p1, Lcom/yandex/metrica/impl/ob/dk;

    const-string v0, "first_event_pref_key"

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/by;->b:Lcom/yandex/metrica/impl/ob/dk;

    .line 31
    new-instance p1, Lcom/yandex/metrica/impl/ob/dk;

    const-string v0, "first_event_description_key"

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/by;->c:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/by;->a:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/by;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/by;->a:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DONE"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/by;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cb;->h()V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/by;->b:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/by;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/by;->b:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DONE"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/by;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cb;->h()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/by;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/by;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cb;->h()V

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/by;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/by;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/by;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/by;->c:Lcom/yandex/metrica/impl/ob/dk;

    .line 1071
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/by;->r(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cb;->h()V

    return-void
.end method
