.class public Lcom/yandex/metrica/impl/ob/cw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cw;->a:Ljava/lang/String;

    .line 21
    iput-boolean p2, p0, Lcom/yandex/metrica/impl/ob/cw;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 25
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/cw;->b:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_24

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_24

    .line 37
    :cond_12
    check-cast p1, Lcom/yandex/metrica/impl/ob/cw;

    .line 39
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/cw;->b:Z

    iget-boolean v2, p1, Lcom/yandex/metrica/impl/ob/cw;->b:Z

    if-eq v1, v2, :cond_1b

    return v0

    .line 40
    :cond_1b
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cw;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/cw;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_24
    :goto_24
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cw;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 47
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/cw;->b:Z

    add-int/2addr v0, v1

    return v0
.end method
