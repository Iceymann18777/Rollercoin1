.class Lcom/onesignal/influence/OSInAppMessageTracker;
.super Lcom/onesignal/influence/OSChannelTracker;
.source "OSInAppMessageTracker.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lcom/onesignal/influence/OSInAppMessageTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/influence/OSInAppMessageTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/onesignal/influence/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/onesignal/influence/OSChannelTracker;-><init>(Lcom/onesignal/influence/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;)V

    return-void
.end method


# virtual methods
.method addSessionData(Lorg/json/JSONObject;Lcom/onesignal/influence/model/OSInfluence;)V
    .registers 3

    return-void
.end method

.method public cacheState()V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    if-nez v0, :cond_7

    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 102
    :goto_9
    iget-object v1, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    if-ne v0, v2, :cond_11

    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    :cond_11
    invoke-virtual {v1, v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->cacheIAMInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)V

    return-void
.end method

.method getChannelLimit()I
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getIAMLimit()I

    move-result v0

    return v0
.end method

.method getChannelType()Lcom/onesignal/influence/model/OSInfluenceChannel;
    .registers 2

    .line 30
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceChannel;->IAM:Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-object v0
.end method

.method public getIdTag()Ljava/lang/String;
    .registers 2

    const-string v0, "iam_id"

    return-object v0
.end method

.method getIndirectAttributionWindow()I
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getIAMIndirectAttributionWindow()I

    move-result v0

    return v0
.end method

.method getLastChannelObjects()Lorg/json/JSONArray;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getLastIAMsReceivedData()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method getLastChannelObjectsReceivedByNewId(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 7

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/influence/OSInAppMessageTracker;->getLastChannelObjects()Lorg/json/JSONArray;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_37

    .line 46
    :try_start_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 47
    :goto_a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 48
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onesignal/influence/OSInAppMessageTracker;->getIdTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 50
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_29} :catch_2e

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2c
    move-object v0, v1

    goto :goto_36

    :catch_2e
    move-exception p1

    .line 55
    iget-object v1, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->logger:Lcom/onesignal/OSLogger;

    const-string v2, "Before KITKAT API, Generating tracker lastChannelObjectReceived get JSONObject "

    invoke-interface {v1, v2, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_36
    return-object v0

    :catch_37
    move-exception p1

    .line 39
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Generating IAM tracker getLastChannelObjects JSONObject "

    invoke-interface {v0, v1, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1
.end method

.method initInfluencedTypeFromCache()V
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0}, Lcom/onesignal/influence/OSInfluenceDataRepository;->getIAMCachedInfluenceType()Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/influence/OSInAppMessageTracker;->setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)V

    .line 85
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v0}, Lcom/onesignal/influence/model/OSInfluenceType;->isIndirect()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 86
    invoke-virtual {p0}, Lcom/onesignal/influence/OSInAppMessageTracker;->getLastReceivedIds()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/influence/OSInAppMessageTracker;->setIndirectIds(Lorg/json/JSONArray;)V

    .line 88
    :cond_1c
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal InAppMessageTracker initInfluencedTypeFromCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/influence/OSInAppMessageTracker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method saveChannelObjects(Lorg/json/JSONArray;)V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/onesignal/influence/OSInAppMessageTracker;->dataRepository:Lcom/onesignal/influence/OSInfluenceDataRepository;

    invoke-virtual {v0, p1}, Lcom/onesignal/influence/OSInfluenceDataRepository;->saveIAMs(Lorg/json/JSONArray;)V

    return-void
.end method
