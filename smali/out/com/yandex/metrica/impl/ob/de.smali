.class public Lcom/yandex/metrica/impl/ob/de;
.super Lcom/yandex/metrica/impl/ob/dd;
.source "SourceFile"


# static fields
.field private static final c:Lcom/yandex/metrica/impl/ob/dk;

.field private static final d:Lcom/yandex/metrica/impl/ob/dk;

.field private static final e:Lcom/yandex/metrica/impl/ob/dk;

.field private static final f:Lcom/yandex/metrica/impl/ob/dk;

.field private static final g:Lcom/yandex/metrica/impl/ob/dk;

.field private static final h:Lcom/yandex/metrica/impl/ob/dk;

.field private static final i:Lcom/yandex/metrica/impl/ob/dk;

.field private static final j:Lcom/yandex/metrica/impl/ob/dk;

.field private static final k:Lcom/yandex/metrica/impl/ob/dk;

.field private static final l:Lcom/yandex/metrica/impl/ob/dk;


# instance fields
.field private m:Lcom/yandex/metrica/impl/ob/dk;

.field private n:Lcom/yandex/metrica/impl/ob/dk;

.field private o:Lcom/yandex/metrica/impl/ob/dk;

.field private p:Lcom/yandex/metrica/impl/ob/dk;

.field private q:Lcom/yandex/metrica/impl/ob/dk;

.field private r:Lcom/yandex/metrica/impl/ob/dk;

.field private s:Lcom/yandex/metrica/impl/ob/dk;

.field private t:Lcom/yandex/metrica/impl/ob/dk;

.field private u:Lcom/yandex/metrica/impl/ob/dk;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "UUID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/de;->c:Lcom/yandex/metrica/impl/ob/dk;

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "DEVICEID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/de;->d:Lcom/yandex/metrica/impl/ob/dk;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "DEVICEID_2"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/de;->e:Lcom/yandex/metrica/impl/ob/dk;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "DEVICEID_3"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/de;->f:Lcom/yandex/metrica/impl/ob/dk;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "AD_URL_GET"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/de;->g:Lcom/yandex/metrica/impl/ob/dk;

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "AD_URL_REPORT"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/de;->h:Lcom/yandex/metrica/impl/ob/dk;

    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "HOST_URL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/de;->i:Lcom/yandex/metrica/impl/ob/dk;

    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "UUID_SOURCE"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "SERVER_TIME_OFFSET"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/de;->j:Lcom/yandex/metrica/impl/ob/dk;

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "STARTUP_REQUEST_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/de;->k:Lcom/yandex/metrica/impl/ob/dk;

    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "CLIDS"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/de;->l:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/dd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(J)J
    .registers 5

    .line 102
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->s:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a()Ljava/lang/String;
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->o:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/de;->b:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/de;->n:Lcom/yandex/metrica/impl/ob/dk;

    .line 86
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->m:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(J)J
    .registers 5

    .line 106
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->t:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b()Lcom/yandex/metrica/impl/ob/de;
    .registers 2

    .line 146
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/de;->i()Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/de;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->p:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->q:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->r:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->u:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    const-string v0, "_startupinfopreferences"

    return-object v0
.end method

.method protected h()V
    .registers 3

    .line 57
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/dd;->h()V

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/de;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->m:Lcom/yandex/metrica/impl/ob/dk;

    .line 60
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/de;->d:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->n:Lcom/yandex/metrica/impl/ob/dk;

    .line 61
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/de;->e:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->o:Lcom/yandex/metrica/impl/ob/dk;

    .line 62
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/de;->f:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->p:Lcom/yandex/metrica/impl/ob/dk;

    .line 63
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/de;->g:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->q:Lcom/yandex/metrica/impl/ob/dk;

    .line 64
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/de;->h:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->r:Lcom/yandex/metrica/impl/ob/dk;

    .line 65
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/de;->i:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/de;->j:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->s:Lcom/yandex/metrica/impl/ob/dk;

    .line 67
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/de;->k:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->t:Lcom/yandex/metrica/impl/ob/dk;

    .line 68
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/de;->l:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->u:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method
