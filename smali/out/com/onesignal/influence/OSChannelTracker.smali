.class public abstract Lcom/onesignal/influence/OSChannelTracker;
.super Ljava/lang/Object;
.source "OSChannelTracker.java"


# instance fields
.field dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

.field directId:Ljava/lang/String;

.field indirectIds:Lorg/json/JSONArray;

.field influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

.field protected logger:Lcom/onesignal/OSLogger;


# direct methods
.method constructor <init>(Lcom/onesignal/influence/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/onesignal/influence/OSChannelTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    .line 31
    iput-object p2, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    return-void
.end method

.method private isDirectSessionEnabled()Z
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->isDirectInfluenceEnabled()Z

    move-result v0

    return v0
.end method

.method private isIndirectSessionEnabled()Z
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->isIndirectInfluenceEnabled()Z

    move-result v0

    return v0
.end method

.method private isUnattributedSessionEnabled()Z
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->isUnattributedInfluenceEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method abstract addSessionData(Lorg/json/JSONObject;Lcom/onesignal/influence/model/OSInfluence;)V
.end method

.method public abstract cacheState()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 226
    :cond_12
    check-cast p1, Lcom/onesignal/influence/OSChannelTracker;

    .line 227
    iget-object v2, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    iget-object v3, p1, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    if-ne v2, v3, :cond_29

    invoke-virtual {p1}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method abstract getChannelLimit()I
.end method

.method abstract getChannelType()Lcom/onesignal/influence/model/OSInfluenceChannel;
.end method

.method public getCurrentSessionInfluence()Lcom/onesignal/influence/model/OSInfluence;
    .registers 3

    .line 144
    invoke-static {}, Lcom/onesignal/influence/model/OSInfluence$Builder;->newInstance()Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v0

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->DISABLED:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v0, v1}, Lcom/onesignal/influence/model/OSInfluence$Builder;->setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    if-nez v1, :cond_11

    .line 148
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->initInfluencedTypeFromCache()V

    .line 150
    :cond_11
    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 151
    invoke-direct {p0}, Lcom/onesignal/influence/OSChannelTracker;->isDirectSessionEnabled()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 152
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->directId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 153
    invoke-static {}, Lcom/onesignal/influence/model/OSInfluence$Builder;->newInstance()Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v1

    .line 154
    invoke-virtual {v1, v0}, Lcom/onesignal/influence/model/OSInfluence$Builder;->setIds(Lorg/json/JSONArray;)Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v0

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 155
    invoke-virtual {v0, v1}, Lcom/onesignal/influence/model/OSInfluence$Builder;->setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v0

    goto :goto_68

    .line 157
    :cond_39
    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->isIndirect()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 158
    invoke-direct {p0}, Lcom/onesignal/influence/OSChannelTracker;->isIndirectSessionEnabled()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 159
    invoke-static {}, Lcom/onesignal/influence/model/OSInfluence$Builder;->newInstance()Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->indirectIds:Lorg/json/JSONArray;

    .line 160
    invoke-virtual {v0, v1}, Lcom/onesignal/influence/model/OSInfluence$Builder;->setIds(Lorg/json/JSONArray;)Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v0

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 161
    invoke-virtual {v0, v1}, Lcom/onesignal/influence/model/OSInfluence$Builder;->setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v0

    goto :goto_68

    .line 163
    :cond_58
    invoke-direct {p0}, Lcom/onesignal/influence/OSChannelTracker;->isUnattributedSessionEnabled()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 164
    invoke-static {}, Lcom/onesignal/influence/model/OSInfluence$Builder;->newInstance()Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v0

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 165
    invoke-virtual {v0, v1}, Lcom/onesignal/influence/model/OSInfluence$Builder;->setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v0

    .line 169
    :cond_68
    :goto_68
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getChannelType()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/influence/model/OSInfluence$Builder;->setInfluenceChannel(Lcom/onesignal/influence/model/OSInfluenceChannel;)Lcom/onesignal/influence/model/OSInfluence$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluence$Builder;->build()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v0

    return-object v0
.end method

.method public getDirectId()Ljava/lang/String;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->directId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getIdTag()Ljava/lang/String;
.end method

.method abstract getIndirectAttributionWindow()I
.end method

.method public getIndirectIds()Lorg/json/JSONArray;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->indirectIds:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    return-object v0
.end method

.method abstract getLastChannelObjects()Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method abstract getLastChannelObjectsReceivedByNewId(Ljava/lang/String;)Lorg/json/JSONArray;
.end method

.method public getLastReceivedIds()Lorg/json/JSONArray;
    .registers 12

    .line 69
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 71
    :try_start_5
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getLastChannelObjects()Lorg/json/JSONArray;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OneSignal ChannelTracker getLastReceivedIds lastChannelObjectReceived: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIndirectAttributionWindow()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 76
    :goto_2f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_5b

    .line 77
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "time"

    .line 78
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v8, v4, v8

    cmp-long v10, v8, v2

    if-gtz v10, :cond_50

    .line 82
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_50} :catch_53

    :cond_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :catch_53
    move-exception v1

    .line 87
    iget-object v2, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    const-string v3, "Generating tracker getLastReceivedIds JSONObject "

    invoke-interface {v2, v3, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5b
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluenceType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 233
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method abstract initInfluencedTypeFromCache()V
.end method

.method public resetAndInitInfluence()V
    .registers 4

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->directId:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getLastReceivedIds()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->indirectIds:Lorg/json/JSONArray;

    .line 57
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_12

    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    goto :goto_14

    :cond_12
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    :goto_14
    iput-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 59
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->cacheState()V

    .line 60
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal OSChannelTracker resetAndInitInfluence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " finish with influenceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method abstract saveChannelObjects(Lorg/json/JSONArray;)V
.end method

.method public saveLastId(Ljava/lang/String;)V
    .registers 8

    .line 97
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal OSChannelTracker for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " saveLastId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_c4

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto/16 :goto_c4

    .line 101
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/onesignal/influence/OSChannelTracker;->getLastChannelObjectsReceivedByNewId(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " saveLastId with lastChannelObjectsReceived: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 105
    :try_start_50
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "time"

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_6a} :catch_bc

    .line 115
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getChannelLimit()I

    move-result p1

    .line 121
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-le v1, p1, :cond_98

    .line 122
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    sub-int/2addr v1, p1

    .line 124
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 125
    :goto_7e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_97

    .line 127
    :try_start_84
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_84 .. :try_end_8b} :catch_8c

    goto :goto_94

    :catch_8c
    move-exception v3

    .line 129
    iget-object v4, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    const-string v5, "Before KITKAT API, Generating tracker lastChannelObjectsReceived get JSONObject "

    invoke-interface {v4, v5, v3}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_94
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    :cond_97
    move-object v0, p1

    .line 134
    :cond_98
    iget-object p1, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with channelObjectToSave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/onesignal/influence/OSChannelTracker;->saveChannelObjects(Lorg/json/JSONArray;)V

    return-void

    :catch_bc
    move-exception p1

    .line 110
    iget-object v0, p0, Lcom/onesignal/influence/OSChannelTracker;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Generating tracker newInfluenceId JSONObject "

    invoke-interface {v0, v1, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c4
    :goto_c4
    return-void
.end method

.method public setDirectId(Ljava/lang/String;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/onesignal/influence/OSChannelTracker;->directId:Ljava/lang/String;

    return-void
.end method

.method public setIndirectIds(Lorg/json/JSONArray;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/onesignal/influence/OSChannelTracker;->indirectIds:Lorg/json/JSONArray;

    return-void
.end method

.method public setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSChannelTracker{tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0}, Lcom/onesignal/influence/OSChannelTracker;->getIdTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", influenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", indirectIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->indirectIds:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", directId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/influence/OSChannelTracker;->directId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
