.class public Lcom/yandex/metrica/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/yandex/metrica/d;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
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

    .line 47
    iput-object p1, p0, Lcom/yandex/metrica/d;->c:Ljava/util/Map;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/yandex/metrica/d;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/d;->c:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 58
    instance-of v0, p1, Lcom/yandex/metrica/d;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 61
    :cond_6
    check-cast p1, Lcom/yandex/metrica/d;

    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/d;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/yandex/metrica/d;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 65
    :cond_13
    iget-object v0, p0, Lcom/yandex/metrica/d;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/yandex/metrica/d;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    return v1

    .line 68
    :cond_1e
    iget-object v0, p0, Lcom/yandex/metrica/d;->c:Ljava/util/Map;

    iget-object p1, p1, Lcom/yandex/metrica/d;->c:Ljava/util/Map;

    if-eq v0, p1, :cond_2d

    if-eqz v0, :cond_2d

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v1

    :cond_2d
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v2, p0, Lcom/yandex/metrica/d;->b:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget-object v2, p0, Lcom/yandex/metrica/d;->c:Ljava/util/Map;

    if-eqz v2, :cond_22

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_22
    add-int/2addr v0, v1

    return v0
.end method
