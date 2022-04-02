.class public final Lcom/android/billingclient/util/BillingHelper;
.super Ljava/lang/Object;
.source "BillingHelper.java"


# static fields
.field public static NUMBER_OF_CORES:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/billingclient/util/BillingHelper;->NUMBER_OF_CORES:I

    return-void
.end method

.method public static constructExtraParamsForAcknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    .line 340
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "playBillingLibraryVersion"

    .line 341
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->getDeveloperPayload()Ljava/lang/String;

    move-result-object p0

    .line 343
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_19

    const-string p1, "developerPayload"

    .line 344
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-object v0
.end method

.method public static constructExtraParamsForGetSkuDetails(ZZLjava/lang/String;)Landroid/os/Bundle;
    .registers 5

    .line 298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_c

    const-string v1, "playBillingLibraryVersion"

    .line 300
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz p0, :cond_16

    if-eqz p1, :cond_16

    const/4 p0, 0x1

    const-string p1, "enablePendingPurchases"

    .line 303
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_16
    return-object v0
.end method

.method public static constructExtraParamsForLaunchBillingFlow(Lcom/android/billingclient/api/BillingFlowParams;ZZLjava/lang/String;)Landroid/os/Bundle;
    .registers 9

    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "playBillingLibraryVersion"

    .line 218
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getReplaceSkusProrationMode()I

    move-result p3

    if-eqz p3, :cond_19

    .line 224
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getReplaceSkusProrationMode()I

    move-result p3

    const-string v1, "prorationMode"

    .line 222
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    :cond_19
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getAccountId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2c

    .line 227
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getAccountId()Ljava/lang/String;

    move-result-object p3

    const-string v1, "accountId"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_2c
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getVrPurchaseFlow()Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_38

    const-string p3, "vr"

    .line 230
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    :cond_38
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getOldSku()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_59

    .line 233
    new-instance p3, Ljava/util/ArrayList;

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getOldSku()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "skusToReplace"

    .line 233
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 237
    :cond_59
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getDeveloperId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6c

    .line 239
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getDeveloperId()Ljava/lang/String;

    move-result-object p0

    const-string p3, "developerId"

    .line 238
    invoke-virtual {v0, p3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    if-eqz p1, :cond_75

    if-eqz p2, :cond_75

    const-string p0, "enablePendingPurchases"

    .line 243
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_75
    return-object v0
.end method

.method public static constructExtraParamsForQueryPurchases(ZZLjava/lang/String;)Landroid/os/Bundle;
    .registers 5

    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "playBillingLibraryVersion"

    .line 261
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    const/4 p0, 0x1

    const-string p1, "enablePendingPurchases"

    .line 263
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_14
    return-object v0
.end method

.method private static extractPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;
    .registers 5

    const/4 v0, 0x0

    const-string v1, "BillingHelper"

    if-eqz p0, :cond_25

    if-nez p1, :cond_8

    goto :goto_25

    .line 358
    :cond_8
    :try_start_8
    new-instance v2, Lcom/android/billingclient/api/Purchase;

    invoke-direct {v2, p0, p1}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_d} :catch_f

    move-object v0, v2

    goto :goto_24

    :catch_f
    move-exception p0

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got JSONException while parsing purchase data: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-object v0

    :cond_25
    :goto_25
    const-string p0, "Received a bad purchase data."

    .line 352
    invoke-static {v1, p0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static extractPurchases(Landroid/os/Bundle;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "INAPP_PURCHASE_DATA_LIST"

    .line 171
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "INAPP_DATA_SIGNATURE_LIST"

    .line 172
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3f

    if-nez v2, :cond_1a

    goto :goto_3f

    :cond_1a
    const/4 p0, 0x0

    .line 192
    :goto_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_61

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_61

    .line 193
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/billingclient/util/BillingHelper;->extractPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 196
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 p0, p0, 0x1

    goto :goto_1b

    :cond_3f
    :goto_3f
    const-string v1, "BillingHelper"

    const-string v2, "Couldn\'t find purchase lists, trying to find single data."

    .line 178
    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "INAPP_PURCHASE_DATA"

    .line 180
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "INAPP_DATA_SIGNATURE"

    .line 181
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 183
    invoke-static {v2, p0}, Lcom/android/billingclient/util/BillingHelper;->extractPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    move-result-object p0

    if-nez p0, :cond_5e

    const-string p0, "Couldn\'t find single purchase data as well."

    .line 186
    invoke-static {v1, p0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 189
    :cond_5e
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_61
    return-object v3
.end method

.method public static getBillingResultFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .registers 4

    if-nez p0, :cond_1d

    const-string p0, "BillingHelper"

    const-string p1, "Got null intent!"

    .line 101
    invoke-static {p0, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p0

    const/4 p1, 0x6

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p0

    const-string p1, "An internal error occurred."

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    return-object p0

    .line 107
    :cond_1d
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/billingclient/util/BillingHelper;->getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    return-object p0
.end method

.method public static getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-nez p0, :cond_a

    const-string p0, "Unexpected null bundle received!"

    .line 142
    invoke-static {p1, p0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_a
    const-string v1, "DEBUG_MESSAGE"

    .line 146
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_18

    const-string p0, "getDebugMessageFromBundle() got null response code, assuming OK"

    .line 148
    invoke-static {p1, p0}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 150
    :cond_18
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 152
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 154
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for debug message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x6

    if-nez p0, :cond_9

    const-string p0, "Unexpected null bundle received!"

    .line 119
    invoke-static {p1, p0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_9
    const-string v1, "RESPONSE_CODE"

    .line 123
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_18

    const-string p0, "getResponseCodeFromBundle() got null response code, assuming OK"

    .line 125
    invoke-static {p1, p0}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 127
    :cond_18
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_23

    .line 129
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 131
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for bundle response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-static {p1, p0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getResponseCodeFromIntent(Landroid/content/Intent;Ljava/lang/String;)I
    .registers 2

    .line 95
    invoke-static {p0, p1}, Lcom/android/billingclient/util/BillingHelper;->getBillingResultFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    return p0
.end method

.method public static logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    .line 75
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public static logWarn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x5

    .line 87
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method
