.class abstract Lcom/yandex/metrica/impl/l;
.super Lcom/yandex/metrica/impl/ak;
.source "SourceFile"


# static fields
.field static final a:Landroid/content/ContentValues;


# instance fields
.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/yandex/metrica/impl/ba;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/l;->a:Landroid/content/ContentValues;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ak;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/l;->b:Ljava/util/Map;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ba;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ba;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ba;

    return-void
.end method


# virtual methods
.method a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/l;
    .registers 6

    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 32
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    iget-object v2, p0, Lcom/yandex/metrica/impl/l;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 36
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/l;->b(Landroid/content/ContentValues;)V

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/yandex/metrica/impl/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->b:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/content/ContentValues;)V
    .registers 5

    const-string v0, "report_request_parameters"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 45
    :try_start_c
    new-instance v0, Lcom/yandex/metrica/impl/utils/g$a;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/utils/g$a;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ba;

    const-string v1, "dId"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ba;->b(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ba;

    const-string v1, "uId"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ba;->a(Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ba;

    const-string v1, "kitVer"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ba;->e(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ba;

    const-string v1, "clientKitVer"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ba;->f(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ba;

    const-string v1, "kitBuildNumber"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ba;->g(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ba;

    const-string v1, "kitBuildType"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ba;->h(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ba;

    const-string v1, "appVer"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ba;->k(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ba;

    const-string v1, "app_debuggable"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/g$a;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ba;->s(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ba;

    const-string v1, "appBuild"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ba;->m(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ba;

    const-string v1, "osVer"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ba;->i(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ba;

    const-string v1, "osApiLev"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/g$a;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ba;->a(I)V

    .line 57
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ba;

    const-string v1, "lang"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ba;->j(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ba;

    const-string v1, "root"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ba;->q(Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_a3} :catch_a3

    :catch_a3
    :cond_a3
    return-void
.end method
