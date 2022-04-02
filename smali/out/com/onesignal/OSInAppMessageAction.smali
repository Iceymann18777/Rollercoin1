.class public Lcom/onesignal/OSInAppMessageAction;
.super Ljava/lang/Object;
.source "OSInAppMessageAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;
    }
.end annotation


# instance fields
.field clickId:Ljava/lang/String;

.field public clickName:Ljava/lang/String;

.field public clickUrl:Ljava/lang/String;

.field public closesMessage:Z

.field public firstClick:Z

.field public outcomes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessageOutcome;",
            ">;"
        }
    .end annotation
.end field

.field public prompts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessagePrompt;",
            ">;"
        }
    .end annotation
.end field

.field public tags:Lcom/onesignal/OSInAppMessageTag;

.field public urlTarget:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->prompts:Ljava/util/List;

    const-string v0, "id"

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->clickId:Ljava/lang/String;

    const-string v0, "name"

    .line 85
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->clickName:Ljava/lang/String;

    const-string v0, "url"

    .line 86
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    const-string v0, "url_target"

    .line 87
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->fromString(Ljava/lang/String;)Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->urlTarget:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    if-nez v0, :cond_3c

    .line 89
    sget-object v0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->IN_APP_WEBVIEW:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->urlTarget:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    :cond_3c
    const/4 v0, 0x1

    const-string v1, "close"

    .line 91
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageAction;->closesMessage:Z

    const-string v0, "outcomes"

    .line 93
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 94
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageAction;->parseOutcomes(Lorg/json/JSONObject;)V

    :cond_50
    const-string v0, "tags"

    .line 96
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 97
    new-instance v1, Lcom/onesignal/OSInAppMessageTag;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/onesignal/OSInAppMessageTag;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    :cond_63
    const-string v0, "prompts"

    .line 99
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 100
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageAction;->parsePrompts(Lorg/json/JSONObject;)V

    :cond_6e
    return-void
.end method

.method private parseOutcomes(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "outcomes"

    .line 104
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 105
    :goto_7
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 106
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    new-instance v2, Lcom/onesignal/OSInAppMessageOutcome;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lcom/onesignal/OSInAppMessageOutcome;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_20
    return-void
.end method

.method private parsePrompts(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "prompts"

    .line 111
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 112
    :goto_7
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 113
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 114
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageAction;->prompts:Ljava/util/List;

    new-instance v2, Lcom/onesignal/OSInAppMessageLocationPrompt;

    invoke-direct {v2}, Lcom/onesignal/OSInAppMessageLocationPrompt;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_26
    return-void
.end method
