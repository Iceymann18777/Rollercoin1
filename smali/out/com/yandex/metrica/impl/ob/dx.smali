.class public Lcom/yandex/metrica/impl/ob/dx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/dx$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final j:Lcom/yandex/metrica/impl/ob/bz;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bz;Ljava/lang/String;)V
    .registers 6

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->j:Lcom/yandex/metrica/impl/ob/bz;

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/bz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->b:Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->j:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/bz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->c:Ljava/lang/String;

    .line 46
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->j:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/bz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->d:Ljava/lang/String;

    .line 47
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->j:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bz;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->f:Ljava/util/List;

    .line 48
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->j:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/bz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->a:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->j:Lcom/yandex/metrica/impl/ob/bz;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/bz;->a(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/yandex/metrica/impl/ob/dx;->g:J

    .line 50
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->j:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/bz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->h:Ljava/lang/String;

    .line 51
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->j:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/bz;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->i:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->j:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/bz;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->e:Ljava/lang/String;

    .line 54
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/dx;->b(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dx;->e()V

    return-void
.end method

.method private declared-synchronized b(J)V
    .registers 3

    monitor-enter p0

    .line 217
    :try_start_1
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/dx;->g:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 218
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Landroid/os/Bundle;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "UuId"

    .line 176
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/dx;->b(Ljava/lang/String;)V

    const-string v0, "DeviceId"

    .line 179
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-static {p1}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 181
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/dx;->a(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 183
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 60
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->a:Ljava/lang/String;

    :cond_10
    return-void
.end method

.method private declared-synchronized c(Landroid/os/Bundle;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "AdUrlGet"

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 188
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/dx;->c(Ljava/lang/String;)V

    :cond_10
    const-string v0, "AdUrlReport"

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 192
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/dx;->d(Ljava/lang/String;)V

    :cond_1f
    const-string v0, "BindIdUrl"

    .line 194
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 196
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/dx;->e(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 198
    :cond_2e
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 205
    :try_start_1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->c:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 206
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 209
    :try_start_1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 210
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private e()V
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->j:Lcom/yandex/metrica/impl/ob/bz;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dx;->b:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dx;->c:Ljava/lang/String;

    .line 114
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dx;->d:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/dx;->g:J

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bz;->d(J)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dx;->h:Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dx;->i:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->m(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dx;->e:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->o(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bz;->h()V

    return-void
.end method

.method private declared-synchronized e(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 213
    :try_start_1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->e:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 214
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized f()Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dx;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dx;->b:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a([Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_17

    monitor-exit p0

    if-nez v0, :cond_16

    return v3

    :cond_16
    return v2

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    new-array v1, v0, [Ljava/lang/String;

    .line 168
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dx;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/yandex/metrica/impl/bi;->a([Ljava/lang/String;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_12

    monitor-exit p0

    if-nez v1, :cond_11

    return v0

    :cond_11
    return v3

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()Z
    .registers 2

    monitor-enter p0

    .line 172
    :try_start_1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dx;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dx;->g()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_12

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    goto :goto_16

    :goto_15
    throw v0

    :goto_16
    goto :goto_15
.end method


# virtual methods
.method a(J)V
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->j:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bz;->e(J)Lcom/yandex/metrica/impl/ob/bz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bz;->h()V

    return-void
.end method

.method declared-synchronized a(Landroid/os/Bundle;)V
    .registers 4

    monitor-enter p0

    .line 102
    :try_start_1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/dx;->b(Landroid/os/Bundle;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/dx;->c(Landroid/os/Bundle;)V

    const-string v0, "ServerTimeOffset"

    .line 1156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/dx;->b(J)V

    const-string v0, "Clids"

    .line 2124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2125
    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2126
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->h:Ljava/lang/String;

    :cond_1e
    const-string v0, "CookieBrowsers"

    .line 2131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2133
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->i:Ljava/lang/String;

    .line 108
    :cond_2c
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dx;->e()V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 109
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 201
    :try_start_1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 202
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dx;->f:Ljava/util/List;

    .line 152
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->j:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bz;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/bz;

    return-void
.end method

.method declared-synchronized a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 65
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/dx;->b(Ljava/util/Map;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/dx;->c(Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 67
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a()Z
    .registers 8

    .line 3029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 142
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dx;->j:Lcom/yandex/metrica/impl/ob/bz;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/bz;->b(J)J

    move-result-wide v5

    sub-long/2addr v0, v5

    const-wide/32 v5, 0x15180

    cmp-long v2, v0, v5

    if-gtz v2, :cond_1e

    cmp-long v2, v0, v3

    if-gez v2, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized a(Lcom/yandex/metrica/impl/ob/dx$a;)Z
    .registers 3

    monitor-enter p0

    .line 70
    :try_start_1
    sget-object v0, Lcom/yandex/metrica/impl/ob/dx$a;->c:Lcom/yandex/metrica/impl/ob/dx$a;

    if-ne v0, p1, :cond_b

    .line 71
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dx;->h()Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22

    monitor-exit p0

    return p1

    .line 72
    :cond_b
    :try_start_b
    sget-object v0, Lcom/yandex/metrica/impl/ob/dx$a;->a:Lcom/yandex/metrica/impl/ob/dx$a;

    if-ne v0, p1, :cond_15

    .line 73
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dx;->f()Z

    move-result p1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_22

    monitor-exit p0

    return p1

    .line 74
    :cond_15
    :try_start_15
    sget-object v0, Lcom/yandex/metrica/impl/ob/dx$a;->b:Lcom/yandex/metrica/impl/ob/dx$a;

    if-ne v0, p1, :cond_1f

    .line 75
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dx;->g()Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_22

    monitor-exit p0

    return p1

    :cond_1f
    const/4 p1, 0x0

    .line 78
    monitor-exit p0

    return p1

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->f:Ljava/util/List;

    return-object v0
.end method

.method declared-synchronized b(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "yandex_mobile_metrica_uuid"

    .line 83
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dx;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "yandex_mobile_metrica_device_id"

    .line 87
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dx;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 89
    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method c()Ljava/lang/String;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->a:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized c(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "yandex_mobile_metrica_get_ad_url"

    .line 93
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dx;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "yandex_mobile_metrica_report_ad_url"

    .line 97
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dx;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 99
    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method d()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dx;->b:Ljava/lang/String;

    return-object v0
.end method
