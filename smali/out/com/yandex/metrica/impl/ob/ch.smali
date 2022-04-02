.class public Lcom/yandex/metrica/impl/ob/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/metrica/impl/ob/cj;

.field private final c:J

.field private final d:Z

.field private final e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/cj;J)V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ch;->a:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ch;->b:Lcom/yandex/metrica/impl/ob/cj;

    .line 58
    iput-wide p3, p0, Lcom/yandex/metrica/impl/ob/ch;->c:J

    .line 59
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ch;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/ch;->d:Z

    const-wide/16 p1, -0x1

    .line 60
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/ch;->e:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "device_id"

    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ch;->a:Ljava/lang/String;

    const-string v0, "device_snapshot_key"

    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 46
    new-instance v1, Lcom/yandex/metrica/impl/ob/cj;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/cj;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ch;->b:Lcom/yandex/metrica/impl/ob/cj;

    goto :goto_22

    :cond_1f
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ch;->b:Lcom/yandex/metrica/impl/ob/cj;

    :goto_22
    const-wide/16 v0, -0x1

    const-string v2, "last_elections_time"

    .line 50
    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ch;->c:J

    .line 51
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ch;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/ch;->d:Z

    .line 52
    iput-wide p2, p0, Lcom/yandex/metrica/impl/ob/ch;->e:J

    return-void
.end method

.method private f()Z
    .registers 7

    .line 96
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ch;->c:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-lez v5, :cond_19

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/yandex/metrica/impl/ob/ch;->c:J

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x240c8400

    cmp-long v5, v0, v3

    if-gez v5, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_19
    return v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ch;->a:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ch;->b:Lcom/yandex/metrica/impl/ob/cj;

    if-eqz v1, :cond_19

    .line 67
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cj;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "device_snapshot_key"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_19
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ch;->c:J

    const-string v3, "last_elections_time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 70
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 107
    :cond_12
    check-cast p1, Lcom/yandex/metrica/impl/ob/ch;

    .line 109
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/ch;->d:Z

    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/ch;->d:Z

    if-eq v2, v3, :cond_1b

    return v1

    .line 110
    :cond_1b
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ch;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/ch;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 111
    :cond_26
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ch;->b:Lcom/yandex/metrica/impl/ob/cj;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ch;->b:Lcom/yandex/metrica/impl/ob/cj;

    if-eqz v2, :cond_31

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/cj;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_31
    if-nez p1, :cond_34

    return v0

    :cond_34
    :goto_34
    return v1
.end method

.method public b()Z
    .registers 7

    .line 74
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ch;->e:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-lez v5, :cond_1c

    .line 75
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    iget-wide v3, p0, Lcom/yandex/metrica/impl/ob/ch;->e:J

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v3, 0x7b2

    if-ne v0, v3, :cond_1c

    return v1

    :cond_1c
    return v2
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ch;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/cj;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ch;->b:Lcom/yandex/metrica/impl/ob/cj;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ch;->d:Z

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ch;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 118
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ch;->b:Lcom/yandex/metrica/impl/ob/cj;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cj;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 119
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/ch;->d:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Credentials{mFresh="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/ch;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLastElectionsTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ch;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ch;->b:Lcom/yandex/metrica/impl/ob/cj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ch;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
