.class public Lcom/yandex/metrica/impl/ob/dc;
.super Lcom/yandex/metrica/impl/ob/dd;
.source "SourceFile"


# instance fields
.field private final c:Lcom/yandex/metrica/impl/ob/dk;

.field private final d:Lcom/yandex/metrica/impl/ob/dk;

.field private final e:Lcom/yandex/metrica/impl/ob/dk;

.field private final f:Lcom/yandex/metrica/impl/ob/dk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/dd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    new-instance p1, Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dc;->j()Ljava/lang/String;

    move-result-object p2

    const-string v0, "init_event_pref_key"

    invoke-direct {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dc;->c:Lcom/yandex/metrica/impl/ob/dk;

    .line 36
    new-instance p1, Lcom/yandex/metrica/impl/ob/dk;

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dc;->d:Lcom/yandex/metrica/impl/ob/dk;

    .line 37
    new-instance p1, Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dc;->j()Ljava/lang/String;

    move-result-object p2

    const-string v0, "first_event_pref_key"

    invoke-direct {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dc;->e:Lcom/yandex/metrica/impl/ob/dk;

    .line 38
    new-instance p1, Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dc;->j()Ljava/lang/String;

    move-result-object p2

    const-string v0, "fitst_event_description_key"

    invoke-direct {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dc;->f:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/dk;)V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dc;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "init_event_pref_key"

    invoke-direct {v0, v1, p0}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "init_event_pref_key"

    const-string v1, ""

    .line 119
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 46
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dc;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dc;->d:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dc;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DONE"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/dc;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dd;->k()V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dc;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dc;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dc;->d:Lcom/yandex/metrica/impl/ob/dk;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/dc;->a(Lcom/yandex/metrica/impl/ob/dk;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dc;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dc;->e:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dc;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/dc;->a(Lcom/yandex/metrica/impl/ob/dk;)V

    return-void
.end method

.method public d()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dc;->e:Lcom/yandex/metrica/impl/ob/dk;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/dc;->a(Lcom/yandex/metrica/impl/ob/dk;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    .line 70
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "init_event_pref_key"

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/dc;->a(Lcom/yandex/metrica/impl/ob/dk;)V

    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dc;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dc;->f:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dc;->f:Lcom/yandex/metrica/impl/ob/dk;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/dc;->a(Lcom/yandex/metrica/impl/ob/dk;)V

    return-void
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    const-string v0, "_initpreferences"

    return-object v0
.end method

.method g()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dc;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
