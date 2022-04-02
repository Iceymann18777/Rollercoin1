.class public Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;
.super Ljava/lang/Object;
.source "InAppPurchaseController.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# static fields
.field private static instance:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;


# instance fields
.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private context:Landroid/content/Context;

.field private disableAdsPurchased:Z

.field private disableAdsSkudetails:Lcom/android/billingclient/api/SkuDetails;

.field handler:Landroid/os/Handler;

.field private isDisableAdsPurchaseButtonHidden:Z

.field final reportingDetails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->reportingDetails:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$002(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->isDisableAdsPurchaseButtonHidden:Z

    return p1
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->queryDisableAdsInAppProductDetails()V

    return-void
.end method

.method static synthetic access$200(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;)Lcom/android/billingclient/api/BillingClient;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method static synthetic access$302(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->disableAdsPurchased:Z

    return p1
.end method

.method static synthetic access$400(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;Lcom/android/billingclient/api/Purchase;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->acknowledgeDisableAdsPurchase(Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->connectToBilling()V

    return-void
.end method

.method private acknowledgeDisableAdsPurchase(Lcom/android/billingclient/api/Purchase;)V
    .registers 5

    const-string v0, "inAppPurchaseTag"

    const-string v1, "attempt to acknowledge purchase"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$R9IiAlFHgWXav9fz58GjvCy222Q;

    invoke-direct {v2, p0, p1}, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$R9IiAlFHgWXav9fz58GjvCy222Q;-><init>(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    return-void
.end method

.method private connectToBilling()V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;-><init>(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;
    .registers 2

    const-class v0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->instance:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    if-nez v1, :cond_e

    .line 45
    new-instance v1, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    invoke-direct {v1}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;-><init>()V

    sput-object v1, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->instance:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    .line 47
    :cond_e
    sget-object v1, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->instance:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    .registers 7

    .line 142
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disable_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "inAppPurchaseTag"

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    if-ne v0, v2, :cond_28

    .line 143
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->disableAdsPurchased:Z

    .line 144
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->isDisableAdsPurchaseButtonHidden:Z

    const-string v0, "purchase successfull"

    .line 145
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_66

    .line 147
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->acknowledgeDisableAdsPurchase(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_66

    .line 149
    :cond_28
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_66

    .line 150
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->reportingDetails:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 152
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 153
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->reportingDetails:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "date"

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "purchase pending"

    .line 154
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->reportingDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->context:Landroid/content/Context;

    const-string v3, "inapp_disable_ads_pending"

    .line 156
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    :cond_66
    :goto_66
    return-void
.end method

.method private queryDisableAdsInAppProductDetails()V
    .registers 4

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "disable_ads"

    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 101
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v1

    new-instance v2, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$aC6Q1PeOoooXIIPeYsOg2YbK-PQ;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$aC6Q1PeOoooXIIPeYsOg2YbK-PQ;-><init>(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 4

    .line 51
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->context:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->handler:Landroid/os/Handler;

    .line 53
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string p1, "inAppPurchaseTag"

    const-string v0, "init GP billing client"

    .line 57
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->connectToBilling()V

    return-void
.end method

.method public isDisableAdsPurchaseButtonHidden()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->isDisableAdsPurchaseButtonHidden:Z

    return v0
.end method

.method public isDisableAdsPurchased()Z
    .registers 2

    .line 180
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->disableAdsPurchased:Z

    return v0
.end method

.method public synthetic lambda$acknowledgeDisableAdsPurchase$1$InAppPurchaseController(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/BillingResult;)V
    .registers 6

    .line 168
    iget-object p2, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->reportingDetails:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 170
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 171
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->reportingDetails:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "date"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "inAppPurchaseTag"

    const-string p2, "purchase successfully acknowledged"

    .line 172
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->reportingDetails:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->context:Landroid/content/Context;

    const-string v1, "inapp_disable_ads_acknowledged"

    const/4 v2, 0x1

    .line 174
    invoke-virtual {p1, v1, p2, v0, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    return-void
.end method

.method public synthetic lambda$queryDisableAdsInAppProductDetails$0$InAppPurchaseController(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 5

    .line 103
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_25

    .line 104
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    .line 105
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disable_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 106
    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->disableAdsSkudetails:Lcom/android/billingclient/api/SkuDetails;

    goto :goto_a

    :cond_25
    return-void
.end method

.method public launchDisableAdsBillingFlow(Landroid/app/Activity;)V
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_17

    .line 115
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->disableAdsSkudetails:Lcom/android/billingclient/api/SkuDetails;

    .line 116
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1, p1, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    :cond_17
    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "inAppPurchaseTag"

    const-string v1, "onPurchasesUpdated fired"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_23

    if-eqz p2, :cond_23

    .line 128
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 129
    invoke-direct {p0, p2}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_13

    .line 131
    :cond_23
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3d

    const-string p1, "user cancelled purchase"

    .line 132
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->reportingDetails:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->context:Landroid/content/Context;

    const-string v2, "inapp_disable_ads_canceled"

    .line 134
    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    goto :goto_55

    .line 137
    :cond_3d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "some weird shit with purchase: code "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    return-void
.end method
