.class final Lcom/android/billingclient/api/PurchaseApiResponseChecker;
.super Ljava/lang/Object;
.source "PurchaseApiResponseChecker.java"


# direct methods
.method static checkPurchasesBundleValidity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .registers 10

    .line 26
    sget-object v0, Lcom/android/billingclient/api/BillingResults;->INTERNAL_ERROR:Lcom/android/billingclient/api/BillingResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_14

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p2, p0, v1

    const-string p2, "%s got null owned items list"

    .line 29
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 33
    :cond_14
    invoke-static {p0, p1}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    .line 34
    invoke-static {p0, p1}, Lcom/android/billingclient/util/BillingHelper;->getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v5

    .line 37
    invoke-virtual {v5, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v5

    .line 38
    invoke-virtual {v5, v4}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v4

    .line 39
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    if-eqz v3, :cond_43

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p2, p0, v1

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v2

    const-string p2, "%s failed. Response code: %s"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {p1, p0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_43
    const-string v3, "INAPP_PURCHASE_ITEM_LIST"

    .line 47
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    const-string v4, "INAPP_PURCHASE_DATA_LIST"

    .line 48
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9b

    const-string v5, "INAPP_DATA_SIGNATURE_LIST"

    .line 49
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5c

    goto :goto_9b

    .line 56
    :cond_5c
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 58
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 60
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez v3, :cond_78

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p2, p0, v1

    const-string p2, "Bundle returned from %s contains null SKUs list."

    .line 64
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-static {p1, p0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_78
    if-nez v4, :cond_88

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p2, p0, v1

    const-string p2, "Bundle returned from %s contains null purchases list."

    .line 71
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-static {p1, p0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_88
    if-nez p0, :cond_98

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p2, p0, v1

    const-string p2, "Bundle returned from %s contains null signatures list."

    .line 78
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-static {p1, p0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 82
    :cond_98
    sget-object p0, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    return-object p0

    :cond_9b
    :goto_9b
    new-array p0, v2, [Ljava/lang/Object;

    aput-object p2, p0, v1

    const-string p2, "Bundle returned from %s doesn\'t contain required fields."

    .line 52
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {p1, p0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
