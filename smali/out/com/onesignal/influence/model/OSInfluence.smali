.class public Lcom/onesignal/influence/model/OSInfluence;
.super Ljava/lang/Object;
.source "OSInfluence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/influence/model/OSInfluence$Builder;
    }
.end annotation


# instance fields
.field private ids:Lorg/json/JSONArray;

.field private influenceChannel:Lcom/onesignal/influence/model/OSInfluenceChannel;

.field private influenceType:Lcom/onesignal/influence/model/OSInfluenceType;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/onesignal/influence/model/OSInfluence$Builder;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/onesignal/influence/model/OSInfluence$Builder;->access$000(Lcom/onesignal/influence/model/OSInfluence$Builder;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/influence/model/OSInfluence;->ids:Lorg/json/JSONArray;

    .line 39
    invoke-static {p1}, Lcom/onesignal/influence/model/OSInfluence$Builder;->access$100(Lcom/onesignal/influence/model/OSInfluence$Builder;)Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 40
    invoke-static {p1}, Lcom/onesignal/influence/model/OSInfluence$Builder;->access$200(Lcom/onesignal/influence/model/OSInfluence$Builder;)Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceChannel:Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "influence_channel"

    .line 29
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "influence_type"

    .line 30
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "influence_ids"

    .line 31
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {p1}, Lcom/onesignal/influence/model/OSInfluenceChannel;->fromString(Ljava/lang/String;)Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceChannel:Lcom/onesignal/influence/model/OSInfluenceChannel;

    .line 33
    invoke-static {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->fromString(Ljava/lang/String;)Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 p1, 0x0

    goto :goto_33

    :cond_2e
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_33
    iput-object p1, p0, Lcom/onesignal/influence/model/OSInfluence;->ids:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public copy()Lcom/onesignal/influence/model/OSInfluence;
    .registers 3

    .line 100
    new-instance v0, Lcom/onesignal/influence/model/OSInfluence;

    invoke-direct {v0}, Lcom/onesignal/influence/model/OSInfluence;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/onesignal/influence/model/OSInfluence;->ids:Lorg/json/JSONArray;

    iput-object v1, v0, Lcom/onesignal/influence/model/OSInfluence;->ids:Lorg/json/JSONArray;

    .line 102
    iget-object v1, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    iput-object v1, v0, Lcom/onesignal/influence/model/OSInfluence;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 103
    iget-object v1, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceChannel:Lcom/onesignal/influence/model/OSInfluenceChannel;

    iput-object v1, v0, Lcom/onesignal/influence/model/OSInfluence;->influenceChannel:Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_23

    .line 128
    :cond_12
    check-cast p1, Lcom/onesignal/influence/model/OSInfluence;

    .line 129
    iget-object v2, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceChannel:Lcom/onesignal/influence/model/OSInfluenceChannel;

    iget-object v3, p1, Lcom/onesignal/influence/model/OSInfluence;->influenceChannel:Lcom/onesignal/influence/model/OSInfluenceChannel;

    if-ne v2, v3, :cond_21

    iget-object v2, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    iget-object p1, p1, Lcom/onesignal/influence/model/OSInfluence;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    if-ne v2, p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public getIds()Lorg/json/JSONArray;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/onesignal/influence/model/OSInfluence;->ids:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getInfluenceChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceChannel:Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-object v0
.end method

.method public getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceChannel:Lcom/onesignal/influence/model/OSInfluenceChannel;

    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluenceChannel;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 136
    iget-object v1, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setIds(Lorg/json/JSONArray;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/onesignal/influence/model/OSInfluence;->ids:Lorg/json/JSONArray;

    return-void
.end method

.method public toJSONString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 108
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceChannel:Lcom/onesignal/influence/model/OSInfluenceChannel;

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceChannel;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "influence_channel"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    iget-object v1, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "influence_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    iget-object v1, p0, Lcom/onesignal/influence/model/OSInfluence;->ids:Lorg/json/JSONArray;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_24
    const-string v1, ""

    :goto_26
    const-string v2, "influence_ids"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionInfluence{influenceChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceChannel:Lcom/onesignal/influence/model/OSInfluenceChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", influenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/influence/model/OSInfluence;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/influence/model/OSInfluence;->ids:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
