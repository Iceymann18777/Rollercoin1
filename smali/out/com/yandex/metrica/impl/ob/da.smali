.class public Lcom/yandex/metrica/impl/ob/da;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/da;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, ""

    .line 54
    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_29
    return-object v0
.end method

.method private a(Lcom/yandex/metrica/impl/ob/bq;Ljava/lang/String;)V
    .registers 9

    .line 90
    new-instance v0, Lcom/yandex/metrica/impl/ob/cd;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/cd;-><init>(Lcom/yandex/metrica/impl/ob/bq;Ljava/lang/String;)V

    .line 91
    new-instance p1, Lcom/yandex/metrica/impl/ob/di;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/da;->a:Landroid/content/Context;

    invoke-direct {p1, v1, p2}, Lcom/yandex/metrica/impl/ob/di;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 93
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/di;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 95
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    .line 97
    :cond_1a
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/di;->a()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 99
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->s(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    .line 101
    :cond_27
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/di;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 103
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    .line 105
    :cond_34
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/di;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 107
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->n(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    .line 109
    :cond_41
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/di;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 111
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->m(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    .line 113
    :cond_4e
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/di;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 115
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->o(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    :cond_5b
    const-wide/16 v1, -0x1

    .line 117
    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/di;->a(J)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_68

    .line 119
    invoke-virtual {v0, v3, v4}, Lcom/yandex/metrica/impl/ob/cd;->b(J)Lcom/yandex/metrica/impl/ob/cd;

    .line 121
    :cond_68
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/di;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 122
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 123
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/cd;->l(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    .line 126
    :cond_75
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->h()V

    .line 127
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/di;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/da;->a:Landroid/content/Context;

    const-string v1, "_bidoptpreferences"

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/dl;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_ad

    .line 1062
    sget-object v1, Lcom/yandex/metrica/impl/ob/di;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1063
    new-instance v3, Lcom/yandex/metrica/impl/ob/di;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/da;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/di;-><init>(Landroid/content/Context;)V

    .line 1064
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4c

    invoke-virtual {v3, v2}, Lcom/yandex/metrica/impl/ob/di;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1065
    invoke-virtual {v3, v1}, Lcom/yandex/metrica/impl/ob/di;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/di;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/di;->k()V

    .line 1066
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v3, Lcom/yandex/metrica/impl/ob/di;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2037
    :cond_4c
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 2038
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_a2

    .line 2039
    sget-object v3, Lcom/yandex/metrica/impl/ob/di;->d:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/da;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2040
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_64
    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2041
    new-instance v4, Lcom/yandex/metrica/impl/ob/dk;

    sget-object v5, Lcom/yandex/metrica/impl/ob/di;->d:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v5}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/dk;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2042
    new-instance v5, Lcom/yandex/metrica/impl/ob/di;

    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/da;->a:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Lcom/yandex/metrica/impl/ob/di;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2043
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_64

    invoke-virtual {v5, v2}, Lcom/yandex/metrica/impl/ob/di;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 2044
    invoke-virtual {v5, v4}, Lcom/yandex/metrica/impl/ob/di;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/di;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/di;->k()V

    goto :goto_64

    .line 32
    :cond_a2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_ad
    return-void
.end method

.method public b()V
    .registers 7

    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/da;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bp;->d()Lcom/yandex/metrica/impl/ob/bq;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/da;->a:Landroid/content/Context;

    const-string v2, "_startupserviceinfopreferences"

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/dl;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2131
    new-instance v2, Lcom/yandex/metrica/impl/ob/cd;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/yandex/metrica/impl/ob/cd;-><init>(Lcom/yandex/metrica/impl/ob/bq;Ljava/lang/String;)V

    .line 2132
    sget-object v4, Lcom/yandex/metrica/impl/ob/di;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2133
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/cd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 2134
    invoke-virtual {v2, v4}, Lcom/yandex/metrica/impl/ob/cd;->k(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cd;->h()V

    .line 2135
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v4, Lcom/yandex/metrica/impl/ob/di;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2140
    :cond_4a
    new-instance v2, Lcom/yandex/metrica/impl/ob/cd;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/da;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/yandex/metrica/impl/ob/cd;-><init>(Lcom/yandex/metrica/impl/ob/bq;Ljava/lang/String;)V

    .line 2141
    sget-object v4, Lcom/yandex/metrica/impl/ob/di;->e:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 2143
    invoke-virtual {v2, v4}, Lcom/yandex/metrica/impl/ob/cd;->e(Z)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cd;->h()V

    .line 2148
    :cond_69
    new-instance v2, Lcom/yandex/metrica/impl/ob/cd;

    invoke-direct {v2, v0, v3}, Lcom/yandex/metrica/impl/ob/cd;-><init>(Lcom/yandex/metrica/impl/ob/bq;Ljava/lang/String;)V

    .line 2149
    sget-object v4, Lcom/yandex/metrica/impl/ob/di;->f:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2150
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8f

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/cd;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 2151
    invoke-virtual {v2, v4}, Lcom/yandex/metrica/impl/ob/cd;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cd;->h()V

    .line 77
    :cond_8f
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/da;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/yandex/metrica/impl/ob/da;->a(Lcom/yandex/metrica/impl/ob/bq;Ljava/lang/String;)V

    .line 3082
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 3083
    sget-object v2, Lcom/yandex/metrica/impl/ob/di;->d:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/da;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3084
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3085
    invoke-direct {p0, v0, v2}, Lcom/yandex/metrica/impl/ob/da;->a(Lcom/yandex/metrica/impl/ob/bq;Ljava/lang/String;)V

    goto :goto_aa

    :cond_ba
    return-void
.end method
