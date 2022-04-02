.class public Lcom/yandex/metrica/impl/ob/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cj;->a:Ljava/lang/String;

    .line 43
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cj;->b:Ljava/lang/String;

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_14

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_16

    :cond_14
    const-string v0, ""

    :goto_16
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cj;->c:Ljava/lang/String;

    .line 1219
    invoke-static {p1}, Lcom/yandex/metrica/impl/am;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 2215
    invoke-static {p1}, Lcom/yandex/metrica/impl/am;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 47
    new-instance v1, Landroid/graphics/Point;

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/cj;->d:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "manufacturer"

    .line 52
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cj;->a:Ljava/lang/String;

    const-string p1, "model"

    .line 53
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cj;->b:Ljava/lang/String;

    const-string p1, "serial"

    .line 54
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cj;->c:Ljava/lang/String;

    .line 55
    new-instance p1, Landroid/graphics/Point;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "height"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cj;->d:Landroid/graphics/Point;

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

    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cj;->a:Ljava/lang/String;

    const-string v2, "manufacturer"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cj;->b:Ljava/lang/String;

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cj;->c:Ljava/lang/String;

    const-string v2, "serial"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cj;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cj;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_58

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_58

    .line 73
    :cond_12
    check-cast p1, Lcom/yandex/metrica/impl/ob/cj;

    .line 75
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cj;->a:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/cj;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_25

    :cond_21
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/cj;->a:Ljava/lang/String;

    if-eqz v2, :cond_26

    :goto_25
    return v1

    .line 77
    :cond_26
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cj;->b:Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/cj;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_37

    :cond_33
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/cj;->b:Ljava/lang/String;

    if-eqz v2, :cond_38

    :goto_37
    return v1

    .line 78
    :cond_38
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cj;->c:Ljava/lang/String;

    if-eqz v2, :cond_45

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/cj;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_49

    :cond_45
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/cj;->c:Ljava/lang/String;

    if-eqz v2, :cond_4a

    :goto_49
    return v1

    .line 79
    :cond_4a
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cj;->d:Landroid/graphics/Point;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/cj;->d:Landroid/graphics/Point;

    if-eqz v2, :cond_55

    invoke-virtual {v2, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_55
    if-nez p1, :cond_58

    return v0

    :cond_58
    :goto_58
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cj;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cj;->b:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cj;->c:Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cj;->d:Landroid/graphics/Point;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Landroid/graphics/Point;->hashCode()I

    move-result v1

    :cond_2f
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceShapshot{mManufacturer=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mModel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cj;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSerial=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cj;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cj;->d:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
