.class public Lcom/yandex/metrica/impl/ob/au;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/utils/n$a;)V
    .registers 3

    .line 61
    invoke-static {p2}, Lcom/yandex/metrica/impl/utils/n;->a(Lcom/yandex/metrica/impl/utils/n$a;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/h;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    .line 62
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/au;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/t;->d(Lcom/yandex/metrica/impl/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/au;->b(Lcom/yandex/metrica/impl/h;)V

    const/4 p1, 0x1

    return p1
.end method

.method b(Lcom/yandex/metrica/impl/h;)V
    .registers 9

    .line 34
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->k()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/yandex/metrica/impl/utils/n;->a(Ljava/lang/String;)Lcom/yandex/metrica/d;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/au;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/t;->g()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v2}, Lcom/yandex/metrica/impl/utils/n;->a(Ljava/lang/String;)Lcom/yandex/metrica/d;

    move-result-object v3

    .line 40
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/d;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b

    .line 1066
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_32

    invoke-virtual {v3}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32

    const/4 v4, 0x1

    goto :goto_33

    :cond_32
    const/4 v4, 0x0

    :goto_33
    if-eqz v4, :cond_3e

    .line 42
    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/h;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    .line 43
    sget-object v1, Lcom/yandex/metrica/impl/utils/n$a;->b:Lcom/yandex/metrica/impl/utils/n$a;

    invoke-direct {p0, p1, v1}, Lcom/yandex/metrica/impl/ob/au;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/utils/n$a;)V

    goto :goto_84

    .line 1074
    :cond_3e
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    invoke-virtual {v3}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    const/4 v2, 0x1

    goto :goto_55

    :cond_54
    const/4 v2, 0x0

    :goto_55
    if-eqz v2, :cond_5d

    .line 45
    sget-object v1, Lcom/yandex/metrica/impl/utils/n$a;->a:Lcom/yandex/metrica/impl/utils/n$a;

    invoke-direct {p0, p1, v1}, Lcom/yandex/metrica/impl/ob/au;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/utils/n$a;)V

    goto :goto_84

    .line 2070
    :cond_5d
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_76

    invoke-virtual {v1}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    goto :goto_77

    :cond_76
    const/4 v5, 0x0

    :goto_77
    if-eqz v5, :cond_7f

    .line 47
    sget-object v1, Lcom/yandex/metrica/impl/utils/n$a;->c:Lcom/yandex/metrica/impl/utils/n$a;

    invoke-direct {p0, p1, v1}, Lcom/yandex/metrica/impl/ob/au;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/utils/n$a;)V

    goto :goto_84

    .line 49
    :cond_7f
    sget-object v1, Lcom/yandex/metrica/impl/utils/n$a;->d:Lcom/yandex/metrica/impl/utils/n$a;

    invoke-direct {p0, p1, v1}, Lcom/yandex/metrica/impl/ob/au;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/utils/n$a;)V

    .line 52
    :goto_84
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/au;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/t;->a(Ljava/lang/String;)V

    .line 55
    :cond_8b
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/au;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->C()Z

    move-result p1

    if-nez p1, :cond_a0

    .line 56
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/au;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->c()V

    :cond_a0
    return-void
.end method
