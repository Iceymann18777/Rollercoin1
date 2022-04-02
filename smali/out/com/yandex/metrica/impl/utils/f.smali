.class public Lcom/yandex/metrica/impl/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/utils/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    const-string v0, "UTF-8"

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 86
    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 87
    array-length v2, v1

    if-le v2, p2, :cond_16

    .line 88
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, p2, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_15} :catch_16

    move-object p1, v2

    :catch_16
    :cond_16
    return-object p1
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_26

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_26

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {}, Lcom/yandex/metrica/impl/utils/j;->f()Lcom/yandex/metrica/impl/utils/j;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v0

    const/4 p3, 0x1

    aput-object p1, v3, p3

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "\"%s\"\'s parameter %s size exceeded limit of %d characters"

    invoke-virtual {v2, p1, v3}, Lcom/yandex/metrica/impl/utils/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_26
    return-object p1
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/utils/f$a;Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/utils/f$a;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2d

    .line 60
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/utils/f$a;->b()I

    move-result v0

    invoke-virtual {p0, p2, v0, p5}, Lcom/yandex/metrica/impl/utils/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 61
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/utils/f$a;->c()I

    move-result v0

    invoke-virtual {p0, p3, v0, p5}, Lcom/yandex/metrica/impl/utils/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 63
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p4}, Lcom/yandex/metrica/impl/utils/f$a;->a()I

    move-result v1

    if-lt v0, v1, :cond_2a

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 64
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/utils/f$a;->a()I

    move-result p3

    invoke-virtual {p0, p2, p3, p5}, Lcom/yandex/metrica/impl/utils/f;->b(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2d

    .line 66
    :cond_2a
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    :goto_2d
    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 53
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public a([BI)[B
    .registers 5

    .line 99
    array-length v0, p1

    if-le v0, p2, :cond_a

    .line 100
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 101
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_a
    return-object p1
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 107
    invoke-static {}, Lcom/yandex/metrica/impl/utils/j;->f()Lcom/yandex/metrica/impl/utils/j;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 108
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "The %s has reached the limit of %d items. Item with key %s will be ignored"

    .line 107
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/utils/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
