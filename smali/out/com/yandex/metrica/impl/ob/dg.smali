.class public Lcom/yandex/metrica/impl/ob/dg;
.super Lcom/yandex/metrica/impl/ob/dd;
.source "SourceFile"


# static fields
.field private static final c:Lcom/yandex/metrica/impl/ob/dk;

.field private static final d:Lcom/yandex/metrica/impl/ob/dk;


# instance fields
.field private e:Lcom/yandex/metrica/impl/ob/dk;

.field private f:Lcom/yandex/metrica/impl/ob/dk;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "SERVICE_API_LEVEL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/dg;->c:Lcom/yandex/metrica/impl/ob/dk;

    .line 18
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "CLIENT_API_LEVEL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/dd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dg;->e:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/dg;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->e:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/dg;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    return-object p0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/dg;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->f:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/dg;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    return-object p0
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    const-string v0, "_migrationpreferences"

    return-object v0
.end method

.method protected h()V
    .registers 3

    .line 30
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/dd;->h()V

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/dg;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->e:Lcom/yandex/metrica/impl/ob/dk;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->f:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method
