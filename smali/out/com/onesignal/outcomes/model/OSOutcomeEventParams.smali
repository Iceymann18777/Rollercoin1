.class public Lcom/onesignal/outcomes/model/OSOutcomeEventParams;
.super Ljava/lang/Object;
.source "OSOutcomeEventParams.java"


# instance fields
.field private outcomeId:Ljava/lang/String;

.field private outcomeSource:Lcom/onesignal/outcomes/model/OSOutcomeSource;

.field private timestamp:J

.field private weight:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onesignal/outcomes/model/OSOutcomeSource;F)V
    .registers 10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;-><init>(Ljava/lang/String;Lcom/onesignal/outcomes/model/OSOutcomeSource;FJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/onesignal/outcomes/model/OSOutcomeSource;FJ)V
    .registers 6

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->outcomeId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->outcomeSource:Lcom/onesignal/outcomes/model/OSOutcomeSource;

    .line 32
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->weight:Ljava/lang/Float;

    .line 33
    iput-wide p4, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->timestamp:J

    return-void
.end method


# virtual methods
.method public getOutcomeId()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->outcomeId:Ljava/lang/String;

    return-object v0
.end method

.method public getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->outcomeSource:Lcom/onesignal/outcomes/model/OSOutcomeSource;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->timestamp:J

    return-wide v0
.end method

.method public getWeight()Ljava/lang/Float;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->weight:Ljava/lang/Float;

    return-object v0
.end method

.method public isUnattributed()Z
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->outcomeSource:Lcom/onesignal/outcomes/model/OSOutcomeSource;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->outcomeSource:Lcom/onesignal/outcomes/model/OSOutcomeSource;

    invoke-virtual {v0}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public setTimestamp(J)V
    .registers 3

    .line 69
    iput-wide p1, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->timestamp:J

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->outcomeId:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    iget-object v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->outcomeSource:Lcom/onesignal/outcomes/model/OSOutcomeSource;

    if-eqz v1, :cond_19

    .line 40
    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sources"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    :cond_19
    iget-object v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->weight:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2b

    .line 42
    iget-object v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->weight:Ljava/lang/Float;

    const-string v2, "weight"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :cond_2b
    iget-wide v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->timestamp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_38

    const-string v3, "timestamp"

    .line 44
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_38
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSOutcomeEventParams{outcomeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->outcomeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", outcomeSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->outcomeSource:Lcom/onesignal/outcomes/model/OSOutcomeSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->weight:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
