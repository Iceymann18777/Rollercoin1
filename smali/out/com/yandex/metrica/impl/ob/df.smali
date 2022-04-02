.class public Lcom/yandex/metrica/impl/ob/df;
.super Lcom/yandex/metrica/impl/ob/dd;
.source "SourceFile"


# static fields
.field public static final c:Lcom/yandex/metrica/impl/ob/dk;

.field public static final d:Lcom/yandex/metrica/impl/ob/dk;

.field private static final e:Lcom/yandex/metrica/impl/ob/dk;

.field private static final f:Lcom/yandex/metrica/impl/ob/dk;

.field private static final g:Lcom/yandex/metrica/impl/ob/dk;

.field private static final h:Lcom/yandex/metrica/impl/ob/dk;

.field private static final i:Lcom/yandex/metrica/impl/ob/dk;

.field private static final j:Lcom/yandex/metrica/impl/ob/dk;

.field private static final k:Lcom/yandex/metrica/impl/ob/dk;

.field private static final l:Lcom/yandex/metrica/impl/ob/dk;

.field private static final m:Lcom/yandex/metrica/impl/ob/dk;

.field private static final n:Lcom/yandex/metrica/impl/ob/dk;

.field private static final o:Lcom/yandex/metrica/impl/ob/dk;

.field private static final p:Lcom/yandex/metrica/impl/ob/dk;

.field private static final q:Lcom/yandex/metrica/impl/ob/dk;

.field private static final r:Lcom/yandex/metrica/impl/ob/dk;

.field private static final s:Lcom/yandex/metrica/impl/ob/dk;

.field private static final t:Lcom/yandex/metrica/impl/ob/dk;


# instance fields
.field private A:Lcom/yandex/metrica/impl/ob/dk;

.field private B:Lcom/yandex/metrica/impl/ob/dk;

.field private C:Lcom/yandex/metrica/impl/ob/dk;

.field private D:Lcom/yandex/metrica/impl/ob/dk;

.field private E:Lcom/yandex/metrica/impl/ob/dk;

.field private F:Lcom/yandex/metrica/impl/ob/dk;

.field private G:Lcom/yandex/metrica/impl/ob/dk;

.field private H:Lcom/yandex/metrica/impl/ob/dk;

.field private I:Lcom/yandex/metrica/impl/ob/dk;

.field private J:Lcom/yandex/metrica/impl/ob/dk;

.field private u:Lcom/yandex/metrica/impl/ob/dk;

.field private v:Lcom/yandex/metrica/impl/ob/dk;

.field private w:Lcom/yandex/metrica/impl/ob/dk;

.field private x:Lcom/yandex/metrica/impl/ob/dk;

.field private y:Lcom/yandex/metrica/impl/ob/dk;

.field private z:Lcom/yandex/metrica/impl/ob/dk;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "SESSION_SLEEP_START_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->e:Lcom/yandex/metrica/impl/ob/dk;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "SESSION_ID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->f:Lcom/yandex/metrica/impl/ob/dk;

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "SESSION_COUNTER_ID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->g:Lcom/yandex/metrica/impl/ob/dk;

    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "SESSION_INIT_TIME_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->h:Lcom/yandex/metrica/impl/ob/dk;

    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "SESSION_ALIVE_TIME_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->i:Lcom/yandex/metrica/impl/ob/dk;

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "SESSION_IS_ALIVE_REPORT_NEEDED_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->j:Lcom/yandex/metrica/impl/ob/dk;

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "BG_SESSION_ID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->k:Lcom/yandex/metrica/impl/ob/dk;

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "BG_SESSION_SLEEP_START_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->l:Lcom/yandex/metrica/impl/ob/dk;

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "BG_SESSION_COUNTER_ID_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->m:Lcom/yandex/metrica/impl/ob/dk;

    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "BG_SESSION_INIT_TIME_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->n:Lcom/yandex/metrica/impl/ob/dk;

    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "COLLECT_INSTALLED_APPS_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->o:Lcom/yandex/metrica/impl/ob/dk;

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "IDENTITY_SEND_TIME_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->p:Lcom/yandex/metrica/impl/ob/dk;

    .line 48
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "USER_INFO_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->q:Lcom/yandex/metrica/impl/ob/dk;

    .line 49
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "REFERRER_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->r:Lcom/yandex/metrica/impl/ob/dk;

    .line 52
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "APP_ENVIRONMENT"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->c:Lcom/yandex/metrica/impl/ob/dk;

    .line 54
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "APP_ENVIRONMENT_REVISION"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->d:Lcom/yandex/metrica/impl/ob/dk;

    .line 55
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "APP_ENVIRONMENT_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->s:Lcom/yandex/metrica/impl/ob/dk;

    .line 56
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "APP_ENVIRONMENT_REVISION_"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/df;->t:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/dd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->d()V

    const/4 p1, -0x1

    .line 89
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/df;->a(I)V

    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/df;->b(I)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/df;->c(I)V

    return-void
.end method

.method private a(Ljava/lang/String;J)J
    .registers 5

    .line 156
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public a(J)J
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->x:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/df;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a()Lcom/yandex/metrica/impl/a$a;
    .registers 7

    .line 165
    monitor-enter p0

    .line 166
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->I:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->J:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 167
    new-instance v0, Lcom/yandex/metrica/impl/a$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/df;->I:Lcom/yandex/metrica/impl/ob/dk;

    .line 168
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/df;->J:Lcom/yandex/metrica/impl/ob/dk;

    .line 169
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/a$a;-><init>(Ljava/lang/String;J)V

    monitor-exit p0

    return-object v0

    :cond_40
    const/4 v0, 0x0

    .line 172
    monitor-exit p0

    return-object v0

    :catchall_43
    move-exception v0

    .line 173
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public a(Lcom/yandex/metrica/impl/a$a;)Lcom/yandex/metrica/impl/ob/df;
    .registers 5

    .line 211
    monitor-enter p0

    .line 212
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->I:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/df;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/dd;

    .line 213
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->J:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Lcom/yandex/metrica/impl/a$a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/df;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/dd;

    .line 214
    monitor-exit p0

    return-object p0

    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public a(Z)Ljava/lang/Boolean;
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->z:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->G:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .registers 4

    .line 271
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->y:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/dl;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public b(J)J
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->D:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/df;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b()Lcom/yandex/metrica/CounterConfiguration$a;
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->F:Lcom/yandex/metrica/impl/ob/dk;

    .line 190
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    iget v2, v2, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 189
    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration$a;->a(I)Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->H:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .registers 4

    .line 275
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->u:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/dl;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public c(J)J
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->E:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/df;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public c()Lcom/yandex/metrica/impl/ob/df;
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->H:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/df;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/df;

    return-object v0
.end method

.method public c(I)V
    .registers 4

    .line 279
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->w:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/dl;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public d(J)J
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->v:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/df;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public d()V
    .registers 4

    .line 283
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->F:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_27

    .line 1072
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x0

    .line 1075
    :try_start_11
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1076
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    iget v2, v2, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    return-void
.end method

.method public e(J)J
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->A:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/df;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public e()Lcom/yandex/metrica/impl/ob/df;
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->F:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/df;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/df;

    return-object v0
.end method

.method public f(J)J
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->w:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/df;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    const-string v0, "_boundentrypreferences"

    return-object v0
.end method

.method public g(J)J
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->C:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/df;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public g()Z
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->x:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->y:Lcom/yandex/metrica/impl/ob/dk;

    .line 296
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->z:Lcom/yandex/metrica/impl/ob/dk;

    .line 297
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->u:Lcom/yandex/metrica/impl/ob/dk;

    .line 298
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->v:Lcom/yandex/metrica/impl/ob/dk;

    .line 299
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->w:Lcom/yandex/metrica/impl/ob/dk;

    .line 300
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->D:Lcom/yandex/metrica/impl/ob/dk;

    .line 301
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->B:Lcom/yandex/metrica/impl/ob/dk;

    .line 302
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->A:Lcom/yandex/metrica/impl/ob/dk;

    .line 303
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->C:Lcom/yandex/metrica/impl/ob/dk;

    .line 304
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->I:Lcom/yandex/metrica/impl/ob/dk;

    .line 305
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->F:Lcom/yandex/metrica/impl/ob/dk;

    .line 306
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->G:Lcom/yandex/metrica/impl/ob/dk;

    .line 307
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->H:Lcom/yandex/metrica/impl/ob/dk;

    .line 308
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->E:Lcom/yandex/metrica/impl/ob/dk;

    .line 309
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d3

    goto :goto_d5

    :cond_d3
    const/4 v0, 0x0

    return v0

    :cond_d5
    :goto_d5
    const/4 v0, 0x1

    return v0
.end method

.method public h(J)J
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->u:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/df;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected h()V
    .registers 4

    .line 96
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/dd;->h()V

    .line 98
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->e:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->u:Lcom/yandex/metrica/impl/ob/dk;

    .line 99
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->f:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->v:Lcom/yandex/metrica/impl/ob/dk;

    .line 100
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->g:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->w:Lcom/yandex/metrica/impl/ob/dk;

    .line 101
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->h:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->x:Lcom/yandex/metrica/impl/ob/dk;

    .line 102
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->i:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->y:Lcom/yandex/metrica/impl/ob/dk;

    .line 103
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->j:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->z:Lcom/yandex/metrica/impl/ob/dk;

    .line 107
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->k:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->A:Lcom/yandex/metrica/impl/ob/dk;

    .line 108
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->l:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->B:Lcom/yandex/metrica/impl/ob/dk;

    .line 109
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->m:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->C:Lcom/yandex/metrica/impl/ob/dk;

    .line 110
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->n:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->D:Lcom/yandex/metrica/impl/ob/dk;

    .line 113
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->p:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->E:Lcom/yandex/metrica/impl/ob/dk;

    .line 114
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->o:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->F:Lcom/yandex/metrica/impl/ob/dk;

    .line 115
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->q:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->G:Lcom/yandex/metrica/impl/ob/dk;

    .line 116
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->r:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->H:Lcom/yandex/metrica/impl/ob/dk;

    .line 118
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->s:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->I:Lcom/yandex/metrica/impl/ob/dk;

    .line 119
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->t:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/df;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->J:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method

.method public i(J)J
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->B:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/df;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public l()V
    .registers 3

    .line 313
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/df;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->D:Lcom/yandex/metrica/impl/ob/dk;

    .line 314
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->C:Lcom/yandex/metrica/impl/ob/dk;

    .line 315
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->A:Lcom/yandex/metrica/impl/ob/dk;

    .line 316
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->B:Lcom/yandex/metrica/impl/ob/dk;

    .line 317
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->x:Lcom/yandex/metrica/impl/ob/dk;

    .line 318
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->w:Lcom/yandex/metrica/impl/ob/dk;

    .line 319
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->v:Lcom/yandex/metrica/impl/ob/dk;

    .line 320
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->u:Lcom/yandex/metrica/impl/ob/dk;

    .line 321
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->z:Lcom/yandex/metrica/impl/ob/dk;

    .line 322
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->y:Lcom/yandex/metrica/impl/ob/dk;

    .line 323
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->G:Lcom/yandex/metrica/impl/ob/dk;

    .line 324
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->F:Lcom/yandex/metrica/impl/ob/dk;

    .line 325
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->I:Lcom/yandex/metrica/impl/ob/dk;

    .line 326
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->J:Lcom/yandex/metrica/impl/ob/dk;

    .line 327
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->H:Lcom/yandex/metrica/impl/ob/dk;

    .line 328
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/df;->E:Lcom/yandex/metrica/impl/ob/dk;

    .line 329
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
