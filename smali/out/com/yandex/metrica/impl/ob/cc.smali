.class public Lcom/yandex/metrica/impl/ob/cc;
.super Lcom/yandex/metrica/impl/ob/cb;
.source "SourceFile"


# static fields
.field static final a:Lcom/yandex/metrica/impl/ob/dk;

.field static final b:Lcom/yandex/metrica/impl/ob/dk;

.field static final c:Lcom/yandex/metrica/impl/ob/dk;

.field static final d:Lcom/yandex/metrica/impl/ob/dk;

.field private static final e:Lcom/yandex/metrica/impl/ob/dk;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "LOCATION_TRACKING_ENABLED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/cc;->a:Lcom/yandex/metrica/impl/ob/dk;

    .line 21
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "COLLECT_INSTALLED_APPS"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/cc;->b:Lcom/yandex/metrica/impl/ob/dk;

    .line 22
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "REFERRER"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/cc;->c:Lcom/yandex/metrica/impl/ob/dk;

    .line 23
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "PREF_KEY_OFFSET"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/cc;->d:Lcom/yandex/metrica/impl/ob/dk;

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "LAST_MIGRATION_VERSION"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/cc;->e:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bq;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cb;-><init>(Lcom/yandex/metrica/impl/ob/bq;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    .line 53
    sget-object v0, Lcom/yandex/metrica/impl/ob/cc;->e:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/cc;->b(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a()Lcom/yandex/metrica/CounterConfiguration$a;
    .registers 4

    .line 32
    sget-object v0, Lcom/yandex/metrica/impl/ob/cc;->b:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    iget v1, v1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/cc;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration$a;->a(I)Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/yandex/metrica/impl/ob/cc;
    .registers 4

    .line 73
    sget-object v0, Lcom/yandex/metrica/impl/ob/cc;->d:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/cc;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/cc;

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/cc;
    .registers 5

    .line 41
    sget-object v0, Lcom/yandex/metrica/impl/ob/cc;->b:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/cc;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/cc;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 37
    sget-object v0, Lcom/yandex/metrica/impl/ob/cc;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/cc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)V
    .registers 3

    .line 61
    sget-object v0, Lcom/yandex/metrica/impl/ob/cc;->a:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/cc;->a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cb;->h()V

    return-void
.end method

.method public b()Lcom/yandex/metrica/impl/ob/cc;
    .registers 2

    .line 49
    sget-object v0, Lcom/yandex/metrica/impl/ob/cc;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/cc;->r(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/cc;

    return-object v0
.end method

.method public b(I)Lcom/yandex/metrica/impl/ob/cc;
    .registers 3

    .line 57
    sget-object v0, Lcom/yandex/metrica/impl/ob/cc;->e:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/cc;->a(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/cc;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cc;
    .registers 3

    .line 45
    sget-object v0, Lcom/yandex/metrica/impl/ob/cc;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/cc;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/cc;

    return-object p1
.end method

.method public c(I)J
    .registers 5

    .line 69
    sget-object v0, Lcom/yandex/metrica/impl/ob/cc;->d:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/cc;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .registers 3

    .line 65
    sget-object v0, Lcom/yandex/metrica/impl/ob/cc;->a:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/cc;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
