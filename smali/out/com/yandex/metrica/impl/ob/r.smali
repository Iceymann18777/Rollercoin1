.class public Lcom/yandex/metrica/impl/ob/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/ob/r;->a:Z

    .line 33
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/r;->b:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/r;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/Integer;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/r;
    .registers 7

    .line 72
    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->f()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    if-eqz p2, :cond_26

    .line 75
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1322
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_23

    .line 1323
    array-length p3, p2

    if-lez p3, :cond_23

    const/4 p3, 0x0

    aget-object p2, p2, p3

    move-object p3, p2

    goto :goto_26

    :cond_23
    move-object p3, v2

    goto :goto_26

    :cond_25
    move-object p3, v0

    .line 81
    :cond_26
    :goto_26
    invoke-static {p3}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3a

    .line 83
    invoke-static {p0, p1, p3}, Lcom/yandex/metrica/impl/bk;->a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 84
    new-instance p2, Lcom/yandex/metrica/impl/ob/r;

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->C()Z

    move-result p1

    invoke-direct {p2, p3, p0, p1}, Lcom/yandex/metrica/impl/ob/r;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p2

    :cond_3a
    return-object v2
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/r;
    .registers 4

    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 92
    new-instance v0, Lcom/yandex/metrica/impl/ob/r;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/yandex/metrica/impl/ob/r;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_e
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 46
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/r;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/r;->a:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r;->b:Ljava/lang/String;

    .line 57
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/r;->a:Z

    if-nez v1, :cond_1c

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1c
    return-object v0
.end method
