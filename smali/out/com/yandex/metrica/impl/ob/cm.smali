.class public final Lcom/yandex/metrica/impl/ob/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cm;->a:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/yandex/metrica/impl/ob/cm;->b:I

    .line 42
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/ob/cm;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, -0x1

    .line 46
    invoke-direct {p0, p1, v0, p2}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cm;->a:Ljava/lang/String;

    const-string v0, "required"

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/cm;->c:Z

    const-string v0, "version"

    const/4 v1, -0x1

    .line 36
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/yandex/metrica/impl/ob/cm;->b:I

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cm;->a:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/cm;->c:Z

    const-string v2, "required"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 63
    iget v1, p0, Lcom/yandex/metrica/impl/ob/cm;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    const-string v2, "version"

    .line 64
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1f
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 74
    :cond_12
    check-cast p1, Lcom/yandex/metrica/impl/ob/cm;

    .line 76
    iget v2, p0, Lcom/yandex/metrica/impl/ob/cm;->b:I

    iget v3, p1, Lcom/yandex/metrica/impl/ob/cm;->b:I

    if-eq v2, v3, :cond_1b

    return v1

    .line 77
    :cond_1b
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/cm;->c:Z

    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/cm;->c:Z

    if-eq v2, v3, :cond_22

    return v1

    .line 78
    :cond_22
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cm;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/cm;->a:Ljava/lang/String;

    if-eqz v2, :cond_2d

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2d
    if-nez p1, :cond_30

    return v0

    :cond_30
    :goto_30
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cm;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget v1, p0, Lcom/yandex/metrica/impl/ob/cm;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/cm;->c:Z

    add-int/2addr v0, v1

    return v0
.end method
