.class public Lcom/onesignal/OutcomeEvent;
.super Ljava/lang/Object;
.source "OutcomeEvent.java"


# instance fields
.field private name:Ljava/lang/String;

.field private notificationIds:Lorg/json/JSONArray;

.field private session:Lcom/onesignal/influence/model/OSInfluenceType;

.field private timestamp:J

.field private weight:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Lcom/onesignal/influence/model/OSInfluenceType;Lorg/json/JSONArray;Ljava/lang/String;JF)V
    .registers 7

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/onesignal/OutcomeEvent;->session:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 30
    iput-object p2, p0, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    .line 31
    iput-object p3, p0, Lcom/onesignal/OutcomeEvent;->name:Ljava/lang/String;

    .line 32
    iput-wide p4, p0, Lcom/onesignal/OutcomeEvent;->timestamp:J

    .line 33
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    return-void
.end method

.method public static fromOutcomeEventParamsV2toOutcomeEventV1(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)Lcom/onesignal/OutcomeEvent;
    .registers 10

    .line 40
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 42
    invoke-virtual {p0}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 43
    invoke-virtual {p0}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_35

    .line 45
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 46
    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_5f

    .line 47
    :cond_35
    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5e

    .line 48
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 49
    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x0

    :goto_5f
    move-object v3, v0

    move-object v4, v1

    .line 53
    new-instance v0, Lcom/onesignal/OutcomeEvent;

    invoke-virtual {p0}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getWeight()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/onesignal/OutcomeEvent;-><init>(Lcom/onesignal/influence/model/OSInfluenceType;Lorg/json/JSONArray;Ljava/lang/String;JF)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_47

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_47

    .line 106
    :cond_12
    check-cast p1, Lcom/onesignal/OutcomeEvent;

    .line 107
    iget-object v2, p0, Lcom/onesignal/OutcomeEvent;->session:Lcom/onesignal/influence/model/OSInfluenceType;

    iget-object v3, p1, Lcom/onesignal/OutcomeEvent;->session:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v2, v3}, Lcom/onesignal/influence/model/OSInfluenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    iget-object v3, p1, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    .line 108
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/onesignal/OutcomeEvent;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/onesignal/OutcomeEvent;->name:Ljava/lang/String;

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-wide v2, p0, Lcom/onesignal/OutcomeEvent;->timestamp:J

    iget-wide v4, p1, Lcom/onesignal/OutcomeEvent;->timestamp:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_45

    iget-object v2, p0, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    iget-object p1, p1, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    .line 111
    invoke-virtual {v2, p1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    return v0

    :cond_47
    :goto_47
    return v1
.end method

.method public getSession()Lcom/onesignal/influence/model/OSInfluenceType;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/onesignal/OutcomeEvent;->session:Lcom/onesignal/influence/model/OSInfluenceType;

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    .line 116
    iget-object v2, p0, Lcom/onesignal/OutcomeEvent;->session:Lcom/onesignal/influence/model/OSInfluenceType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/onesignal/OutcomeEvent;->name:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-wide v5, p0, Lcom/onesignal/OutcomeEvent;->timestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_33

    .line 120
    aget-object v5, v1, v2

    mul-int/lit8 v4, v4, 0x1f

    if-nez v5, :cond_2b

    const/4 v5, 0x0

    goto :goto_2f

    .line 121
    :cond_2b
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_2f
    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_33
    return v4
.end method

.method public toJSONObjectForMeasure()Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_16

    .line 89
    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    const-string v2, "notification_ids"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_16
    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->name:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2f

    .line 92
    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    const-string v2, "weight"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_2f
    iget-wide v1, p0, Lcom/onesignal/OutcomeEvent;->timestamp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3c

    const-string v3, "timestamp"

    .line 94
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_3c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutcomeEvent{session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->session:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->notificationIds:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onesignal/OutcomeEvent;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OutcomeEvent;->weight:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
