.class public Lcom/yandex/metrica/impl/ob/ca;
.super Lcom/yandex/metrica/impl/ob/cb;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/dk;

.field private static final b:Lcom/yandex/metrica/impl/ob/dk;

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

.field private static final m:Lcom/yandex/metrica/impl/ob/dk;

.field private static final n:Lcom/yandex/metrica/impl/ob/dk;

.field private static final o:Lcom/yandex/metrica/impl/ob/dk;

.field private static final p:Lcom/yandex/metrica/impl/ob/dk;

.field private static final q:Lcom/yandex/metrica/impl/ob/dk;

.field private static final r:Lcom/yandex/metrica/impl/ob/dk;

.field private static final s:Lcom/yandex/metrica/impl/ob/dk;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "SESSION_SLEEP_START"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->a:Lcom/yandex/metrica/impl/ob/dk;

    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "SESSION_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->b:Lcom/yandex/metrica/impl/ob/dk;

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "SESSION_COUNTER_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->c:Lcom/yandex/metrica/impl/ob/dk;

    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "SESSION_INIT_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->d:Lcom/yandex/metrica/impl/ob/dk;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "SESSION_ALIVE_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->e:Lcom/yandex/metrica/impl/ob/dk;

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "BG_SESSION_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->f:Lcom/yandex/metrica/impl/ob/dk;

    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "BG_SESSION_SLEEP_START"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->g:Lcom/yandex/metrica/impl/ob/dk;

    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "BG_SESSION_COUNTER_ID"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->h:Lcom/yandex/metrica/impl/ob/dk;

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "BG_SESSION_INIT_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->i:Lcom/yandex/metrica/impl/ob/dk;

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "BG_SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->j:Lcom/yandex/metrica/impl/ob/dk;

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "COLLECT_INSTALLED_APPS"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->k:Lcom/yandex/metrica/impl/ob/dk;

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "IDENTITY_SEND_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->l:Lcom/yandex/metrica/impl/ob/dk;

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "PERMISSIONS_CHECK_TIME"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->m:Lcom/yandex/metrica/impl/ob/dk;

    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "USER_INFO"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->n:Lcom/yandex/metrica/impl/ob/dk;

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "APP_ENVIRONMENT"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->o:Lcom/yandex/metrica/impl/ob/dk;

    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "APP_ENVIRONMENT_REVISION"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->p:Lcom/yandex/metrica/impl/ob/dk;

    .line 48
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "LAST_MIGRATION_VERSION"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->q:Lcom/yandex/metrica/impl/ob/dk;

    .line 49
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "LAST_APP_VERSION_WITH_FEATURES"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->r:Lcom/yandex/metrica/impl/ob/dk;

    .line 50
    new-instance v0, Lcom/yandex/metrica/impl/ob/dk;

    const-string v1, "APPLICATION_FEATURES"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->s:Lcom/yandex/metrica/impl/ob/dk;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bq;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cb;-><init>(Lcom/yandex/metrica/impl/ob/bq;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    .line 73
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->r:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(J)J
    .registers 4

    .line 57
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->d:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a()Lcom/yandex/metrica/impl/a$a;
    .registers 6

    .line 93
    monitor-enter p0

    .line 94
    :try_start_1
    new-instance v0, Lcom/yandex/metrica/impl/a$a;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ca;->o:Lcom/yandex/metrica/impl/ob/dk;

    .line 95
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}"

    invoke-virtual {p0, v1, v2}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yandex/metrica/impl/ob/ca;->p:Lcom/yandex/metrica/impl/ob/dk;

    .line 96
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/a$a;-><init>(Ljava/lang/String;J)V

    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception v0

    .line 98
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/ca;
    .registers 5

    .line 175
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->k:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/a$a;)Lcom/yandex/metrica/impl/ob/ca;
    .registers 5

    .line 135
    monitor-enter p0

    .line 136
    :try_start_1
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->o:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cb;

    .line 137
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->p:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Lcom/yandex/metrica/impl/a$a;->b:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;

    .line 138
    monitor-exit p0

    return-object p0

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 123
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->n:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Z
    .registers 3

    .line 114
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->e:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public b(J)J
    .registers 4

    .line 61
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->i:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(I)Lcom/yandex/metrica/impl/ob/ca;
    .registers 3

    .line 203
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->r:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ca;
    .registers 3

    .line 179
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->n:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public b(Z)Lcom/yandex/metrica/impl/ob/ca;
    .registers 3

    .line 183
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->e:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .line 110
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->s:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(J)J
    .registers 4

    .line 65
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->l:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public c()Lcom/yandex/metrica/CounterConfiguration$a;
    .registers 4

    .line 118
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->k:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    iget v1, v1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration$a;->a(I)Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ca;
    .registers 3

    .line 207
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->s:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public c(Z)Z
    .registers 3

    .line 195
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->j:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public d()J
    .registers 4

    .line 187
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->q:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)J
    .registers 4

    .line 69
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->m:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public d(Z)Lcom/yandex/metrica/impl/ob/ca;
    .registers 3

    .line 199
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->j:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public e(J)J
    .registers 4

    .line 77
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->b:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public f(J)J
    .registers 4

    .line 81
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->f:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public g(J)J
    .registers 4

    .line 85
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public h(J)J
    .registers 4

    .line 89
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->h:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public i(J)J
    .registers 4

    .line 102
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->a:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public j(J)J
    .registers 4

    .line 106
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->g:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public k(J)Lcom/yandex/metrica/impl/ob/ca;
    .registers 4

    .line 127
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->d:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public l(J)Lcom/yandex/metrica/impl/ob/ca;
    .registers 4

    .line 131
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->i:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public m(J)Lcom/yandex/metrica/impl/ob/ca;
    .registers 4

    .line 143
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->l:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public n(J)Lcom/yandex/metrica/impl/ob/ca;
    .registers 4

    .line 147
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->m:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public o(J)Lcom/yandex/metrica/impl/ob/ca;
    .registers 4

    .line 151
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->b:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public p(J)Lcom/yandex/metrica/impl/ob/ca;
    .registers 4

    .line 155
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->f:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public q(J)Lcom/yandex/metrica/impl/ob/ca;
    .registers 4

    .line 159
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public r(J)Lcom/yandex/metrica/impl/ob/ca;
    .registers 4

    .line 163
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->h:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public s(J)Lcom/yandex/metrica/impl/ob/ca;
    .registers 4

    .line 167
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->a:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public t(J)Lcom/yandex/metrica/impl/ob/ca;
    .registers 4

    .line 171
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->g:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method

.method public u(J)Lcom/yandex/metrica/impl/ob/ca;
    .registers 4

    .line 191
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->q:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ca;

    return-object p1
.end method
