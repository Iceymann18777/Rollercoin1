.class Lcom/yandex/metrica/impl/bh;
.super Lcom/yandex/metrica/impl/ak;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ba;

.field private b:Landroid/content/Context;

.field private c:Lcom/yandex/metrica/impl/ob/t;

.field private m:Lcom/yandex/metrica/impl/ob/cd;

.field private n:Z

.field private o:Lcom/yandex/metrica/impl/ob/du;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ak;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/bh;->n:Z

    .line 55
    iput-object p1, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/t;

    .line 56
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bh;->b:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->h()Lcom/yandex/metrica/impl/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    .line 58
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->E()Lcom/yandex/metrica/impl/ob/cd;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/bh;->m:Lcom/yandex/metrica/impl/ob/cd;

    .line 59
    iget-object p1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->D()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/bh;->p:Ljava/util/List;

    return-void
.end method

.method private static a(Lcom/yandex/metrica/impl/ba;)Ljava/lang/String;
    .registers 3

    .line 112
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ba;->c()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ba;->e()Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, ""

    :cond_16
    return-object p0

    :cond_17
    return-object v0
.end method

.method private static a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 168
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 169
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_9
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Startup task for component: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized a(J)V
    .registers 4

    monitor-enter p0

    .line 296
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->m:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/cd;->b(J)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cd;->h()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 297
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Landroid/net/Uri$Builder;)V
    .registers 7

    const-string v0, "analytics/startup"

    .line 118
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 121
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bh;->a(Lcom/yandex/metrica/impl/ba;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceid"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 123
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_platform"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "protocol_version"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "analytics_sdk_version"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 126
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "analytics_sdk_version_name"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 128
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "os_version"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 130
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->s()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_width"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 131
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_height"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 132
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_dpi"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 133
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->v()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "scalefactor"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 134
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->G()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_type"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "query_hosts"

    const-string v1, "2"

    .line 136
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "easy_collecting"

    const-string v1, "package_info"

    const-string v2, "socket"

    const-string v3, "permissions_collecting"

    const-string v4, "features_collecting"

    .line 137
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "features"

    .line 137
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "browsers"

    const-string v1, "1"

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 147
    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 148
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_id"

    invoke-virtual {p1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 149
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->N()Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_debuggable"

    invoke-virtual {p1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 151
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->u()Ljava/util/Map;

    move-result-object v0

    .line 152
    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->v()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 154
    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->m:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cd;->c()Ljava/lang/String;

    move-result-object v2

    .line 156
    :cond_111
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_130

    const-string v3, "distribution_customization"

    .line 157
    invoke-virtual {p1, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 158
    invoke-static {v0}, Lcom/yandex/metrica/impl/utils/l;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clids_set"

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/bh;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_130

    const-string v0, "install_referrer"

    .line 160
    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 164
    :cond_130
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uuid"

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/bh;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized a(Lcom/yandex/metrica/impl/ba;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 239
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->t()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_cf

    if-eqz v0, :cond_9

    .line 240
    monitor-exit p0

    return-void

    .line 2258
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->m:Lcom/yandex/metrica/impl/ob/cd;

    .line 2259
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    .line 2260
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->E()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    .line 2261
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->l(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    .line 2262
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->m(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    .line 2263
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->n(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    .line 2264
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    .line 2265
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->a(Z)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    .line 2266
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->I()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->b(Z)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    .line 2267
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->J()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->c(Z)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    .line 2268
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->K()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->d(Z)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v0

    .line 2269
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/cd;->t(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    .line 2271
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->y()Ljava/lang/String;

    move-result-object p2

    .line 2272
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 2273
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->m:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/cd;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    .line 2276
    :cond_6d
    iget-object p2, p0, Lcom/yandex/metrica/impl/bh;->m:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/cd;->h()V

    .line 3029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 248
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/bh;->a(J)V

    .line 250
    invoke-static {}, Lcom/yandex/metrica/impl/ob/co;->a()Lcom/yandex/metrica/impl/ob/co;

    move-result-object p2

    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    .line 251
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3285
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_cd

    .line 3286
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.yandex.metrica.intent.action.SYNC"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "CAUSE"

    const-string v1, "CAUSE_DEVICE_ID"

    .line 3287
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SYNC_TO_PKG"

    .line 3288
    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SYNC_DATA"

    .line 3289
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SYNC_DATA_2"

    .line 3290
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3291
    iget-object p1, p0, Lcom/yandex/metrica/impl/bh;->b:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_cd
    .catchall {:try_start_9 .. :try_end_cd} :catchall_cf

    .line 255
    :cond_cd
    monitor-exit p0

    return-void

    :catchall_cf
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Z)V
    .registers 2

    monitor-enter p0

    .line 300
    :try_start_1
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/bh;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 301
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Z
    .registers 4

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bh;->a(Z)V

    .line 67
    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ba;->b(Lcom/yandex/metrica/impl/ob/t;)V

    .line 69
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->s()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public c()Z
    .registers 8

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/bh;->k:Z

    .line 177
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 178
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/bh;->k:Z

    goto/16 :goto_ba

    :cond_e
    const/16 v0, 0xc8

    .line 179
    iget v2, p0, Lcom/yandex/metrica/impl/bh;->h:I

    if-ne v0, v2, :cond_ba

    .line 180
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->u()Ljava/util/Map;

    move-result-object v0

    .line 182
    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->i:[B

    .line 183
    invoke-static {v2}, Lcom/yandex/metrica/impl/bg;->a([B)Lcom/yandex/metrica/impl/bg$a;

    move-result-object v2

    .line 185
    sget-object v3, Lcom/yandex/metrica/impl/bg$a$a;->b:Lcom/yandex/metrica/impl/bg$a$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/bg$a;->k()Lcom/yandex/metrica/impl/bg$a$a;

    move-result-object v4

    if-ne v3, v4, :cond_b6

    .line 186
    iget-object v3, p0, Lcom/yandex/metrica/impl/bh;->m:Lcom/yandex/metrica/impl/ob/cd;

    iget-object v4, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ba;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/cd;->u(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    .line 187
    iget-object v3, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v3, v2}, Lcom/yandex/metrica/impl/ba;->a(Lcom/yandex/metrica/impl/bg$a;)V

    .line 1232
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->l()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 1234
    invoke-static {}, Lcom/yandex/metrica/impl/utils/k;->a()Lcom/yandex/metrica/impl/utils/k;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/yandex/metrica/impl/utils/k;->a(J)V

    .line 189
    :cond_51
    iget-object v3, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-static {}, Lcom/yandex/metrica/impl/ob/ci;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v4

    iget-object v5, p0, Lcom/yandex/metrica/impl/bh;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    .line 190
    invoke-virtual {v6}, Lcom/yandex/metrica/impl/ba;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/yandex/metrica/impl/ob/ci;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ba;->b(Ljava/lang/String;)V

    const-string v3, ""

    .line 192
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/bg$a;->o()Lcom/yandex/metrica/impl/ob/ds;

    move-result-object v4

    if-nez v4, :cond_78

    .line 193
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v4

    const-class v5, Lcom/yandex/metrica/impl/ob/o;

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ob/g;->a(Ljava/lang/Class;)V

    goto :goto_90

    .line 196
    :cond_78
    :try_start_78
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/bg$a;->o()Lcom/yandex/metrica/impl/ob/ds;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/ds;->d()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v4

    new-instance v5, Lcom/yandex/metrica/impl/ob/o;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/bg$a;->o()Lcom/yandex/metrica/impl/ob/ds;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/yandex/metrica/impl/ob/o;-><init>(Lcom/yandex/metrica/impl/ob/ds;)V

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/i;)V
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_90} :catch_90

    .line 201
    :catch_90
    :goto_90
    iget-object v4, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {p0, v4, v3}, Lcom/yandex/metrica/impl/bh;->a(Lcom/yandex/metrica/impl/ba;Ljava/lang/String;)V

    .line 1280
    iget-object v3, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ba;->y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yandex/metrica/impl/utils/l;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 1281
    iget-object v4, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-interface {v3, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/yandex/metrica/impl/ob/t;->a(Z)V

    .line 204
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->k()Landroid/os/ResultReceiver;

    move-result-object v0

    iget-object v3, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-static {v0, v3, v2}, Lcom/yandex/metrica/impl/j;->a(Landroid/os/ResultReceiver;Lcom/yandex/metrica/impl/ba;Lcom/yandex/metrica/impl/bg$a;)V

    .line 205
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/bh;->k:Z

    goto :goto_ba

    .line 207
    :cond_b6
    sget-object v0, Lcom/yandex/metrica/impl/ob/du;->c:Lcom/yandex/metrica/impl/ob/du;

    iput-object v0, p0, Lcom/yandex/metrica/impl/bh;->o:Lcom/yandex/metrica/impl/ob/du;

    .line 211
    :cond_ba
    :goto_ba
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bh;->k:Z

    return v0
.end method

.method d()Lcom/yandex/metrica/impl/ob/cq;
    .registers 4

    .line 84
    new-instance v0, Lcom/yandex/metrica/impl/ob/cu;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->m:Lcom/yandex/metrica/impl/ob/cd;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/cd;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cu;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cu;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cq;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .registers 3

    .line 322
    invoke-super {p0}, Lcom/yandex/metrica/impl/ak;->e()V

    .line 4077
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->p:Ljava/util/List;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->q()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4078
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bh;->a(Landroid/net/Uri$Builder;)V

    .line 4079
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bh;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .registers 3

    .line 223
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bh;->k:Z

    if-nez v0, :cond_17

    .line 224
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->o:Lcom/yandex/metrica/impl/ob/du;

    if-nez v0, :cond_c

    .line 225
    sget-object v0, Lcom/yandex/metrica/impl/ob/du;->a:Lcom/yandex/metrica/impl/ob/du;

    iput-object v0, p0, Lcom/yandex/metrica/impl/bh;->o:Lcom/yandex/metrica/impl/ob/du;

    .line 227
    :cond_c
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->k()Landroid/os/ResultReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->o:Lcom/yandex/metrica/impl/ob/du;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/j;->a(Landroid/os/ResultReceiver;Lcom/yandex/metrica/impl/ob/du;)V

    :cond_17
    return-void
.end method

.method public g()V
    .registers 2

    .line 216
    sget-object v0, Lcom/yandex/metrica/impl/ob/du;->b:Lcom/yandex/metrica/impl/ob/du;

    iput-object v0, p0, Lcom/yandex/metrica/impl/bh;->o:Lcom/yandex/metrica/impl/ob/du;

    return-void
.end method

.method public n()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .registers 4

    .line 312
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->q()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public p()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method s()Z
    .registers 7

    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->m:Lcom/yandex/metrica/impl/ob/cd;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/cd;->a(J)J

    move-result-wide v0

    .line 89
    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ba;->a(J)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 90
    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/CounterConfiguration;->u()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/utils/l;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_4b

    .line 91
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 92
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->m:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->m()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    :goto_32
    const/4 v0, 0x1

    goto :goto_4b

    .line 96
    :cond_34
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->m:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->n()J

    move-result-wide v2

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v4, v2

    const-wide/32 v2, 0x15180

    cmp-long v0, v4, v2

    if-lez v0, :cond_4a

    goto :goto_32

    :cond_4a
    const/4 v0, 0x0

    :cond_4b
    :goto_4b
    if-nez v0, :cond_71

    .line 101
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ci;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ci;->d()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 103
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bh;->a(Lcom/yandex/metrica/impl/ba;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_70

    .line 105
    :cond_66
    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/ba;

    invoke-static {v2}, Lcom/yandex/metrica/impl/bh;->a(Lcom/yandex/metrica/impl/ba;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_70
    xor-int/2addr v0, v1

    :cond_71
    return v0
.end method

.method declared-synchronized t()Z
    .registers 2

    monitor-enter p0

    .line 304
    :try_start_1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bh;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
