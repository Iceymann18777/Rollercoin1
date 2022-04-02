.class public Lcom/android/billingclient/api/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/Purchase$PurchasesResult;
    }
.end annotation


# instance fields
.field private final mOriginalJson:Ljava/lang/String;

.field private final mParsedJson:Lorg/json/JSONObject;

.field private final mSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/billingclient/api/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/android/billingclient/api/Purchase;->mSignature:Ljava/lang/String;

    .line 46
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/android/billingclient/api/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 139
    :cond_4
    instance-of v1, p1, Lcom/android/billingclient/api/Purchase;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 143
    :cond_a
    check-cast p1, Lcom/android/billingclient/api/Purchase;

    .line 145
    iget-object v1, p0, Lcom/android/billingclient/api/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/billingclient/api/Purchase;->mSignature:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    const-string v1, "purchaseState"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    return v2

    :cond_d
    const/4 v0, 0x2

    return v0
.end method

.method public getPurchaseTime()J
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    const-string v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    const-string v1, "purchaseToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAcknowledged()Z
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    const-string v1, "acknowledged"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase. Json: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/billingclient/api/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
