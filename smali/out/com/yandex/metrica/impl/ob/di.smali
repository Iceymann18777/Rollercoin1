.class public Lcom/yandex/metrica/impl/ob/di;
.super Lcom/yandex/metrica/impl/ob/dd;
.source "SourceFile"


# static fields
.field static final c:Lcom/yandex/metrica/impl/ob/dk;

.field static final d:Lcom/yandex/metrica/impl/ob/dk;

.field static final e:Lcom/yandex/metrica/impl/ob/dk;

.field static final f:Lcom/yandex/metrica/impl/ob/dk;

.field private static final g:Lcom/yandex/metrica/impl/ob/dk;

.field private static final h:Lcom/yandex/metrica/impl/ob/dk;

.field private static final i:Lcom/yandex/metrica/impl/ob/dk;

.field private static final j:Lcom/yandex/metrica/impl/ob/dk;

.field private static final k:Lcom/yandex/metrica/impl/ob/dk;

.field private static final l:Lcom/yandex/metrica/impl/ob/dk;

.field private static final m:Lcom/yandex/metrica/impl/ob/dk;

.field private static final n:Lcom/yandex/metrica/impl/ob/dk;


# instance fields
.field private o:Lcom/yandex/metrica/impl/ob/dk;

.field private p:Lcom/yandex/metrica/impl/ob/dk;

.field private q:Lcom/yandex/metrica/impl/ob/dk;

.field private r:Lcom/yandex/metrica/impl/ob/dk;

.field private s:Lcom/yandex/metrica/impl/ob/dk;

.field private t:Lcom/yandex/metrica/impl/ob/dk;

.field private u:Lcom/yandex/metrica/impl/ob/dk;

.field private v:Lcom/yandex/metrica/impl/ob/dk;

.field private w:Lcom/yandex/metrica/impl/ob/dk;

.field private x:Lcom/yandex/metrica/impl/ob/dk;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "PREF_KEY_DEVICE_ID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/di;->c:Lcom/yandex/metrica/impl/ob/dk;

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "PREF_KEY_UID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/di;->d:Lcom/yandex/metrica/impl/ob/dk;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "PREF_KEY_HOST_URL_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/di;->g:Lcom/yandex/metrica/impl/ob/dk;

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "PREF_KEY_REPORT_URL_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/di;->h:Lcom/yandex/metrica/impl/ob/dk;

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "PREF_KEY_GET_AD_URL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/di;->i:Lcom/yandex/metrica/impl/ob/dk;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "PREF_KEY_REPORT_AD_URL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/di;->j:Lcom/yandex/metrica/impl/ob/dk;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "PREF_KEY_STARTUP_OBTAIN_TIME_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/di;->k:Lcom/yandex/metrica/impl/ob/dk;

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "PREF_KEY_STARTUP_ENCODED_CLIDS_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/di;->l:Lcom/yandex/metrica/impl/ob/dk;

    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "PREF_KEY_DISTRIBUTION_REFERRER_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/di;->m:Lcom/yandex/metrica/impl/ob/dk;

    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "STARTUP_CLIDS_MATCH_WITH_APP_CLIDS_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/di;->e:Lcom/yandex/metrica/impl/ob/dk;

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "PREF_KEY_PINNING_UPDATE_URL"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/di;->f:Lcom/yandex/metrica/impl/ob/dk;

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "PREF_KEY_EASY_COLLECTING_ENABLED_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/di;->n:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/di;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/dd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    const-string v0, "_startupserviceinfopreferences"

    .line 182
    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/ob/dl;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 183
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/yandex/metrica/impl/ob/di;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public a(J)J
    .registers 5

    .line 81
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->u:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a()Ljava/lang/String;
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->w:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->o:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->p:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->o:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/di;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->p:Lcom/yandex/metrica/impl/ob/dk;

    .line 188
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dd;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->q:Lcom/yandex/metrica/impl/ob/dk;

    .line 189
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dd;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->r:Lcom/yandex/metrica/impl/ob/dk;

    .line 190
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dd;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->s:Lcom/yandex/metrica/impl/ob/dk;

    .line 191
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dd;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->t:Lcom/yandex/metrica/impl/ob/dk;

    .line 192
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dd;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->u:Lcom/yandex/metrica/impl/ob/dk;

    .line 193
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dd;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->x:Lcom/yandex/metrica/impl/ob/dk;

    .line 194
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dd;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->v:Lcom/yandex/metrica/impl/ob/dk;

    .line 195
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dd;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->w:Lcom/yandex/metrica/impl/ob/dk;

    .line 196
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dd;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/di;->e:Lcom/yandex/metrica/impl/ob/dk;

    .line 197
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dd;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/di;->f:Lcom/yandex/metrica/impl/ob/dk;

    .line 198
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dd;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dd;->k()V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->q:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->v:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->r:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    const-string v0, "_startupserviceinfopreferences"

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->s:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/di;->t:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected h()V
    .registers 4

    .line 61
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/dd;->h()V

    .line 63
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/di;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->o:Lcom/yandex/metrica/impl/ob/dk;

    .line 64
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/di;->d:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/di;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->p:Lcom/yandex/metrica/impl/ob/dk;

    .line 65
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/di;->g:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/di;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->q:Lcom/yandex/metrica/impl/ob/dk;

    .line 66
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/di;->h:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/di;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->r:Lcom/yandex/metrica/impl/ob/dk;

    .line 67
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/di;->i:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/di;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->s:Lcom/yandex/metrica/impl/ob/dk;

    .line 68
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/di;->j:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/di;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->t:Lcom/yandex/metrica/impl/ob/dk;

    .line 69
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/di;->k:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/di;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->u:Lcom/yandex/metrica/impl/ob/dk;

    .line 70
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/di;->l:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/di;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->v:Lcom/yandex/metrica/impl/ob/dk;

    .line 71
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/di;->m:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/di;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->w:Lcom/yandex/metrica/impl/ob/dk;

    .line 72
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/di;->n:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/di;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->x:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method

.method public i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/di;
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->p:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/di;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/di;

    return-object p1
.end method

.method public j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/di;
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/di;->o:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/di;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/di;

    return-object p1
.end method
