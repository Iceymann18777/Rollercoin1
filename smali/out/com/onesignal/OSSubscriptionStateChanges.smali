.class public Lcom/onesignal/OSSubscriptionStateChanges;
.super Ljava/lang/Object;
.source "OSSubscriptionStateChanges.java"


# instance fields
.field from:Lcom/onesignal/OSSubscriptionState;

.field to:Lcom/onesignal/OSSubscriptionState;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .registers 4

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "from"

    .line 47
    iget-object v2, p0, Lcom/onesignal/OSSubscriptionStateChanges;->from:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v2}, Lcom/onesignal/OSSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "to"

    .line 48
    iget-object v2, p0, Lcom/onesignal/OSSubscriptionStateChanges;->to:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v2}, Lcom/onesignal/OSSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_20
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 59
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionStateChanges;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
