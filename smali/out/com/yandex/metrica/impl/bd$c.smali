.class Lcom/yandex/metrica/impl/bd$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ai$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 9

    .line 107
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/bp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bp;->b()Lcom/yandex/metrica/impl/ob/bq;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/yandex/metrica/impl/ob/cc;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/cc;-><init>(Lcom/yandex/metrica/impl/ob/bq;)V

    .line 1158
    new-instance v0, Lcom/yandex/metrica/impl/ob/dj;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/dj;-><init>(Landroid/content/Context;)V

    .line 1159
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dj;->a()Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    .line 1160
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/cc;->a(Z)V

    .line 1161
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dj;->b()V

    .line 2149
    :cond_1f
    new-instance v0, Lcom/yandex/metrica/impl/ob/dh;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/yandex/metrica/impl/ob/dh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2150
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/dh;->a(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_36

    .line 2152
    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/cc;->a(J)Lcom/yandex/metrica/impl/ob/cc;

    .line 2154
    :cond_36
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dh;->a()V

    .line 3132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/r;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/r;

    move-result-object v0

    .line 3133
    new-instance v2, Lcom/yandex/metrica/impl/ob/df;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/yandex/metrica/impl/ob/df;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3135
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/df;->b()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    .line 3136
    sget-object v3, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    if-eq v0, v3, :cond_55

    .line 3137
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/cc;->a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/cc;

    :cond_55
    const/4 v0, 0x0

    .line 3140
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/df;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 3142
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/cc;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cc;

    .line 3145
    :cond_63
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/df;->e()Lcom/yandex/metrica/impl/ob/df;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/df;->c()Lcom/yandex/metrica/impl/ob/df;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/df;->k()V

    .line 114
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cc;->h()V

    .line 116
    new-instance v0, Lcom/yandex/metrica/impl/ob/da;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/da;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/da;->a()V

    .line 118
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/da;->b()V

    .line 4124
    new-instance v0, Lcom/yandex/metrica/impl/ob/cd;

    .line 4125
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/bp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bp;->d()Lcom/yandex/metrica/impl/ob/bq;

    move-result-object v1

    .line 4126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/cd;-><init>(Lcom/yandex/metrica/impl/ob/bq;Ljava/lang/String;)V

    .line 4128
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ci;->a()Lcom/yandex/metrica/impl/ob/ci;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/cd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/yandex/metrica/impl/ob/ci;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
