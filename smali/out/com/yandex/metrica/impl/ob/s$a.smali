.class Lcom/yandex/metrica/impl/ob/s$a;
.super Lcom/yandex/metrica/impl/ob/s$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/df;

.field private final b:Lcom/yandex/metrica/impl/ob/ca;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 5

    .line 62
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/s$e;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 63
    new-instance v0, Lcom/yandex/metrica/impl/ob/df;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/df;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    .line 64
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->F()Lcom/yandex/metrica/impl/ob/ca;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/df;->g()Z

    move-result v0

    return v0
.end method

.method protected b()V
    .registers 12

    .line 1128
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/df;->e(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1b

    .line 1129
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    .line 1130
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ca;->f(J)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_1b

    .line 1131
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, v3, v4}, Lcom/yandex/metrica/impl/ob/ca;->p(J)Lcom/yandex/metrica/impl/ob/ca;

    .line 1133
    :cond_1b
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-virtual {v0, v3, v4}, Lcom/yandex/metrica/impl/ob/df;->b(J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_36

    .line 1134
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, v3, v4}, Lcom/yandex/metrica/impl/ob/ca;->b(J)J

    move-result-wide v7

    cmp-long v0, v7, v3

    if-nez v0, :cond_36

    .line 1135
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, v5, v6}, Lcom/yandex/metrica/impl/ob/ca;->l(J)Lcom/yandex/metrica/impl/ob/ca;

    .line 1137
    :cond_36
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/yandex/metrica/impl/ob/df;->g(J)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_51

    .line 1138
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    .line 1139
    invoke-virtual {v0, v5, v6}, Lcom/yandex/metrica/impl/ob/ca;->h(J)J

    move-result-wide v9

    cmp-long v0, v9, v5

    if-nez v0, :cond_51

    .line 1140
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, v7, v8}, Lcom/yandex/metrica/impl/ob/ca;->r(J)Lcom/yandex/metrica/impl/ob/ca;

    .line 1142
    :cond_51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    invoke-virtual {v0, v5, v6}, Lcom/yandex/metrica/impl/ob/df;->i(J)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_6a

    .line 1143
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    .line 1144
    invoke-virtual {v0, v5, v6}, Lcom/yandex/metrica/impl/ob/ca;->j(J)J

    move-result-wide v9

    cmp-long v0, v9, v5

    if-nez v0, :cond_6a

    .line 1145
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, v7, v8}, Lcom/yandex/metrica/impl/ob/ca;->t(J)Lcom/yandex/metrica/impl/ob/ca;

    .line 2105
    :cond_6a
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/df;->d(J)J

    move-result-wide v7

    cmp-long v0, v1, v7

    if-eqz v0, :cond_83

    .line 2106
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ca;->e(J)J

    move-result-wide v9

    cmp-long v0, v9, v1

    if-nez v0, :cond_83

    .line 2107
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, v7, v8}, Lcom/yandex/metrica/impl/ob/ca;->o(J)Lcom/yandex/metrica/impl/ob/ca;

    .line 2109
    :cond_83
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/df;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2110
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/ca;->a(Z)Z

    move-result v1

    if-nez v1, :cond_9e

    if-eqz v0, :cond_9e

    .line 2111
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/ca;->b(Z)Lcom/yandex/metrica/impl/ob/ca;

    .line 2113
    :cond_9e
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    invoke-virtual {v0, v3, v4}, Lcom/yandex/metrica/impl/ob/df;->a(J)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_b7

    .line 2114
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/ca;->a(J)J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-nez v2, :cond_b7

    .line 2115
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/ca;->k(J)Lcom/yandex/metrica/impl/ob/ca;

    .line 2117
    :cond_b7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    invoke-virtual {v0, v5, v6}, Lcom/yandex/metrica/impl/ob/df;->f(J)J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-eqz v2, :cond_d0

    .line 2118
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v2, v5, v6}, Lcom/yandex/metrica/impl/ob/ca;->g(J)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-nez v2, :cond_d0

    .line 2119
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/ca;->q(J)Lcom/yandex/metrica/impl/ob/ca;

    .line 2121
    :cond_d0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    invoke-virtual {v0, v5, v6}, Lcom/yandex/metrica/impl/ob/df;->h(J)J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-eqz v2, :cond_e9

    .line 2122
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v2, v5, v6}, Lcom/yandex/metrica/impl/ob/ca;->i(J)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-nez v2, :cond_e9

    .line 2123
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/ca;->s(J)Lcom/yandex/metrica/impl/ob/ca;

    .line 3081
    :cond_e9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/df;->a()Lcom/yandex/metrica/impl/a$a;

    move-result-object v0

    if-eqz v0, :cond_f6

    .line 3083
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/ca;->a(Lcom/yandex/metrica/impl/a$a;)Lcom/yandex/metrica/impl/ob/ca;

    .line 3085
    :cond_f6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/df;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3086
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_114

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/ca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 3087
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/ca;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ca;

    .line 3089
    :cond_114
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/df;->b()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    .line 3090
    sget-object v1, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    if-eq v0, v1, :cond_12d

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    .line 3091
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ca;->c()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v1

    sget-object v2, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    if-ne v1, v2, :cond_12d

    .line 3092
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/ca;->a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/ca;

    .line 3094
    :cond_12d
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    invoke-virtual {v0, v3, v4}, Lcom/yandex/metrica/impl/ob/df;->c(J)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_146

    .line 3095
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/ca;->c(J)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_146

    .line 3096
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/ca;->m(J)Lcom/yandex/metrica/impl/ob/ca;

    .line 3099
    :cond_146
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->b:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ca;->h()V

    .line 3100
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$a;->a:Lcom/yandex/metrica/impl/ob/df;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/df;->l()V

    return-void
.end method
