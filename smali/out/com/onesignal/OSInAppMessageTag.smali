.class public Lcom/onesignal/OSInAppMessageTag;
.super Ljava/lang/Object;
.source "OSInAppMessageTag.java"


# instance fields
.field private tagsToAdd:Lorg/json/JSONObject;

.field private tagsToRemove:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "adds"

    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_12

    :cond_11
    move-object v0, v2

    :goto_12
    iput-object v0, p0, Lcom/onesignal/OSInAppMessageTag;->tagsToAdd:Lorg/json/JSONObject;

    const-string v0, "removes"

    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :cond_20
    iput-object v2, p0, Lcom/onesignal/OSInAppMessageTag;->tagsToRemove:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public getTagsToAdd()Lorg/json/JSONObject;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageTag;->tagsToAdd:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTagsToRemove()Lorg/json/JSONArray;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageTag;->tagsToRemove:Lorg/json/JSONArray;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSInAppMessageTag{adds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageTag;->tagsToAdd:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", removes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageTag;->tagsToRemove:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
