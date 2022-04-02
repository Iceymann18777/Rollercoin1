.class Lcom/yandex/metrica/impl/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ai$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/bz;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bz;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    return-void
.end method

.method private static a(JJJ)Z
    .registers 7

    cmp-long v0, p0, p4

    if-eqz v0, :cond_a

    cmp-long p0, p2, p4

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 115
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 13

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/de;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/de;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/de;->c()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_dc

    iget-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/bz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/bz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_dc

    .line 63
    :cond_20
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/de;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/bz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 65
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/bz;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 68
    :cond_35
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/de;->a()Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 70
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/bz;->k(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 73
    :cond_4a
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/de;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/bz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 75
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/bz;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 78
    :cond_5f
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/de;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/bz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 80
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/bz;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 83
    :cond_74
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/de;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/bz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 85
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/bz;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 88
    :cond_89
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/de;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object v2, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/bz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 90
    iget-object v1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/bz;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    :cond_9e
    const-wide/16 v1, -0x1

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/de;->a(J)J

    move-result-wide v9

    .line 96
    iget-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/bz;->a(J)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    move-wide v3, v9

    invoke-static/range {v3 .. v8}, Lcom/yandex/metrica/impl/f$a;->a(JJJ)Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 97
    iget-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {p1, v9, v10}, Lcom/yandex/metrica/impl/ob/bz;->d(J)Lcom/yandex/metrica/impl/ob/bz;

    .line 100
    :cond_b8
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/de;->b(J)J

    move-result-wide v9

    .line 101
    iget-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/bz;->b(J)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    move-wide v3, v9

    invoke-static/range {v3 .. v8}, Lcom/yandex/metrica/impl/f$a;->a(JJJ)Z

    move-result p1

    if-eqz p1, :cond_d0

    .line 102
    iget-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {p1, v9, v10}, Lcom/yandex/metrica/impl/ob/bz;->e(J)Lcom/yandex/metrica/impl/ob/bz;

    .line 105
    :cond_d0
    iget-object p1, p0, Lcom/yandex/metrica/impl/f$a;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bz;->h()V

    .line 106
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/de;->b()Lcom/yandex/metrica/impl/ob/de;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/de;->k()V

    :cond_dc
    return-void
.end method
