.class Lcom/onesignal/OSInAppMessage;
.super Ljava/lang/Object;
.source "OSInAppMessage.java"


# instance fields
.field private actionTaken:Z

.field private clickedClickIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayDuration:D

.field private displayedInSession:Z

.field isPreview:Z

.field public messageId:Ljava/lang/String;

.field private redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

.field private triggerChanged:Z

.field public triggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSTrigger;",
            ">;>;"
        }
    .end annotation
.end field

.field public variants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Set;ZLcom/onesignal/OSInAppMessageRedisplayStats;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/onesignal/OSInAppMessageRedisplayStats;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-direct {v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    .line 58
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    .line 67
    iput-object p1, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    .line 69
    iput-boolean p3, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    .line 70
    iput-object p4, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-direct {v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    .line 58
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    const-string v0, "id"

    .line 75
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    const-string v0, "variants"

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessage;->parseVariants(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->variants:Ljava/util/HashMap;

    const-string v0, "triggers"

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/OSInAppMessage;->parseTriggerJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    const-string v0, "redisplay"

    .line 80
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 81
    new-instance v1, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    :cond_49
    return-void
.end method

.method constructor <init>(Z)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-direct {v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    .line 58
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    .line 63
    iput-boolean p1, p0, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    return-void
.end method

.method private parseVariants(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 91
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 93
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 94
    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 95
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 96
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 99
    :cond_36
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_3a
    return-object v0
.end method


# virtual methods
.method addClickId(Ljava/lang/String;)V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clearClickIds()V
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 237
    :cond_11
    check-cast p1, Lcom/onesignal/OSInAppMessage;

    .line 238
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    iget-object p1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method getClickedClickIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    return-object v0
.end method

.method getDisplayDuration()D
    .registers 3

    .line 173
    iget-wide v0, p0, Lcom/onesignal/OSInAppMessage;->displayDuration:D

    return-wide v0
.end method

.method getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isClickAvailable(Ljava/lang/String;)Z
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isDisplayedInSession()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    return v0
.end method

.method isTriggerChanged()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    return v0
.end method

.method protected parseTriggerJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSTrigger;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 109
    :goto_7
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 110
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 111
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 112
    :goto_17
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2c

    .line 113
    new-instance v6, Lcom/onesignal/OSTrigger;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/onesignal/OSTrigger;-><init>(Lorg/json/JSONObject;)V

    .line 114
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 116
    :cond_2c
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_32
    return-object v0
.end method

.method setDisplayDuration(D)V
    .registers 3

    .line 177
    iput-wide p1, p0, Lcom/onesignal/OSInAppMessage;->displayDuration:D

    return-void
.end method

.method public setDisplayedInSession(Z)V
    .registers 2

    .line 193
    iput-boolean p1, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    return-void
.end method

.method setTriggerChanged(Z)V
    .registers 2

    .line 185
    iput-boolean p1, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    return-void
.end method

.method takeActionAsUnique()Z
    .registers 2

    .line 167
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->actionTaken:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->actionTaken:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSInAppMessage{messageId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", triggers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickedClickIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actionTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onesignal/OSInAppMessage;->actionTaken:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
