.class Lcom/android/billingclient/api/BillingClientImpl;
.super Lcom/android/billingclient/api/BillingClient;
.source "BillingClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;
    }
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

.field private final mChildDirected:I

.field private mClientState:I

.field private final mEnablePendingPurchases:Z

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mIABv10Supported:Z

.field private mIABv6Supported:Z

.field private mIABv8Supported:Z

.field private mIABv9Supported:Z

.field private final mQualifiedVersionNumber:Ljava/lang/String;

.field private mService:Lcom/android/vending/billing/IInAppBillingService;

.field private mServiceConnection:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

.field private mSubscriptionUpdateSupported:Z

.field private mSubscriptionsSupported:Z

.field private final mUiThreadHandler:Landroid/os/Handler;

.field private final mUnderAgeOfConsent:I

.field private final onPurchaseFinishedReceiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;IIZLcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .registers 13

    const-string v6, "2.0.3"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 196
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Landroid/content/Context;IIZLcom/android/billingclient/api/PurchasesUpdatedListener;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIZLcom/android/billingclient/api/PurchasesUpdatedListener;Ljava/lang/String;)V
    .registers 9

    .line 228
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mUiThreadHandler:Landroid/os/Handler;

    .line 169
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl$1;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mUiThreadHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/BillingClientImpl$1;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->onPurchaseFinishedReceiver:Landroid/os/ResultReceiver;

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 230
    iput p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->mChildDirected:I

    .line 231
    iput p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->mUnderAgeOfConsent:I

    .line 232
    iput-boolean p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mEnablePendingPurchases:Z

    .line 233
    new-instance p2, Lcom/android/billingclient/api/BillingBroadcastManager;

    invoke-direct {p2, p1, p5}, Lcom/android/billingclient/api/BillingBroadcastManager;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

    .line 234
    iput-object p6, p0, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingBroadcastManager;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/billingclient/api/BillingClientImpl;I)I
    .registers 2

    .line 57
    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionUpdateSupported:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionsSupported:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv10Supported:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv8Supported:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/billingclient/api/BillingClientImpl;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv6Supported:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/billingclient/api/BillingClientImpl;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 5

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingResult;
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->getBillingResultForNullFutureResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->queryPurchasesInternal(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;
    .registers 4

    .line 668
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingBroadcastManager;->getListener()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1
.end method

.method private executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    long-to-double p2, p2

    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 1157
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v0

    double-to-long p2, p2

    .line 1158
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_18

    .line 1159
    sget v0, Lcom/android/billingclient/util/BillingHelper;->NUMBER_OF_CORES:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 1164
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_29

    .line 1170
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$20;

    invoke-direct {v1, p0, p1, p4}, Lcom/android/billingclient/api/BillingClientImpl$20;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1

    :catch_29
    move-exception p1

    .line 1167
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Async task throws exception "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BillingClient"

    invoke-static {p2, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getBillingResultForNullFutureResult()Lcom/android/billingclient/api/BillingResult;
    .registers 3

    .line 1621
    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    if-eqz v0, :cond_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    goto :goto_b

    :cond_8
    sget-object v0, Lcom/android/billingclient/api/BillingResults;->INTERNAL_ERROR:Lcom/android/billingclient/api/BillingResult;

    goto :goto_d

    :cond_b
    :goto_b
    sget-object v0, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    :goto_d
    return-object v0
.end method

.method private postToUiThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 1415
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1418
    :cond_7
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private queryPurchasesInternal(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;
    .registers 16

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1340
    iget-boolean v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    iget-boolean v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->mEnablePendingPurchases:Z

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    .line 1341
    invoke-static {v2, v3, v4}, Lcom/android/billingclient/util/BillingHelper;->constructExtraParamsForQueryPurchases(ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    move-object v9, v3

    .line 1347
    :cond_27
    :try_start_27
    iget-boolean v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    if-eqz v4, :cond_3c

    .line 1348
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/16 v6, 0x9

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 1351
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v8, p1

    move-object v10, v2

    .line 1349
    invoke-interface/range {v5 .. v10}, Lcom/android/vending/billing/IInAppBillingService;->getPurchasesExtraParams(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_49

    .line 1356
    :cond_3c
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 1358
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1357
    invoke-interface {v4, v5, v6, p1, v9}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_49} :catch_f7

    :goto_49
    const-string v5, "getPurchase()"

    .line 1371
    invoke-static {v4, v1, v5}, Lcom/android/billingclient/api/PurchaseApiResponseChecker;->checkPurchasesBundleValidity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v5

    .line 1372
    sget-object v6, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    if-eq v5, v6, :cond_59

    .line 1373
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    invoke-direct {p1, v5, v3}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    :cond_59
    const-string v5, "INAPP_PURCHASE_ITEM_LIST"

    .line 1377
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "INAPP_PURCHASE_DATA_LIST"

    .line 1379
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "INAPP_DATA_SIGNATURE_LIST"

    .line 1381
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    .line 1383
    :goto_6c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_cf

    .line 1384
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1385
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1386
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1388
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sku is owned: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :try_start_98
    new-instance v11, Lcom/android/billingclient/api/Purchase;

    invoke-direct {v11, v9, v10}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_98 .. :try_end_9d} :catch_b2

    .line 1398
    invoke-virtual {v11}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_ac

    const-string v9, "BUG: empty/null token!"

    .line 1399
    invoke-static {v1, v9}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    :cond_ac
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_6c

    :catch_b2
    move-exception p1

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got an exception trying to decode the purchase: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v0, Lcom/android/billingclient/api/BillingResults;->INTERNAL_ERROR:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v0, v3}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    :cond_cf
    const-string v5, "INAPP_CONTINUATION_TOKEN"

    .line 1405
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Continuation token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1409
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v1, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v1, v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    :catch_f7
    move-exception p1

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got exception trying to get purchases: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; try to reconnect"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v0, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v0, v3}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .registers 6

    .line 1062
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1063
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 1068
    :cond_c
    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid purchase token."

    .line 1069
    invoke-static {p1, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->INVALID_PURCHASE_TOKEN:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 1074
    :cond_23
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    if-nez v0, :cond_2d

    .line 1075
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->API_VERSION_NOT_V9:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 1079
    :cond_2d
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl$18;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    const-wide/16 v1, 0x7530

    new-instance p1, Lcom/android/billingclient/api/BillingClientImpl$19;

    invoke-direct {p1, p0, p2}, Lcom/android/billingclient/api/BillingClientImpl$19;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 1080
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_46

    .line 1135
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->getBillingResultForNullFutureResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    :cond_46
    return-void
.end method

.method public isReady()Z
    .registers 3

    .line 269
    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .registers 16

    const-string v0, "BUY_INTENT"

    const-string v1, "; try to reconnect"

    .line 497
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v2

    if-nez v2, :cond_11

    .line 498
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1

    .line 501
    :cond_11
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams;->getSkuType()Ljava/lang/String;

    move-result-object v6

    .line 502
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams;->getSku()Ljava/lang/String;

    move-result-object v8

    .line 503
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams;->getSkuDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_29

    .line 504
    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails;->isRewarded()Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x1

    goto :goto_2a

    :cond_29
    const/4 v5, 0x0

    :goto_2a
    const-string v9, "BillingClient"

    if-nez v8, :cond_3a

    const-string p1, "Please fix the input params. SKU can\'t be null."

    .line 508
    invoke-static {v9, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->NULL_SKU:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1

    :cond_3a
    if-nez v6, :cond_48

    const-string p1, "Please fix the input params. SkuType can\'t be null."

    .line 513
    invoke-static {v9, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->NULL_SKU_TYPE:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1

    :cond_48
    const-string v7, "subs"

    .line 518
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    iget-boolean v7, p0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionsSupported:Z

    if-nez v7, :cond_60

    const-string p1, "Current client doesn\'t support subscriptions."

    .line 519
    invoke-static {v9, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1

    .line 523
    :cond_60
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams;->getOldSku()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_67

    goto :goto_68

    :cond_67
    const/4 v3, 0x0

    :goto_68
    if-eqz v3, :cond_7a

    .line 525
    iget-boolean v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mSubscriptionUpdateSupported:Z

    if-nez v4, :cond_7a

    const-string p1, "Current client doesn\'t support subscriptions update."

    .line 526
    invoke-static {v9, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->SUBSCRIPTIONS_UPDATE_NOT_SUPPORTED:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1

    .line 531
    :cond_7a
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams;->hasExtraParams()Z

    move-result v4

    const-string v7, "Current client doesn\'t support extra params for buy intent."

    if-eqz v4, :cond_90

    iget-boolean v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv6Supported:Z

    if-nez v4, :cond_90

    .line 532
    invoke-static {v9, v7}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->EXTRA_PARAMS_NOT_SUPPORTED:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1

    :cond_90
    if-eqz v5, :cond_a0

    .line 536
    iget-boolean v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv6Supported:Z

    if-nez v4, :cond_a0

    .line 537
    invoke-static {v9, v7}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->EXTRA_PARAMS_NOT_SUPPORTED:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1

    .line 541
    :cond_a0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Constructing buy intent for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", item type: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-boolean v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv6Supported:Z

    const/4 v10, 0x0

    const-wide/16 v11, 0x1388

    if-eqz v4, :cond_11e

    .line 547
    iget-boolean v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    iget-boolean v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mEnablePendingPurchases:Z

    iget-object v7, p0, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    .line 548
    invoke-static {p2, v3, v4, v7}, Lcom/android/billingclient/util/BillingHelper;->constructExtraParamsForLaunchBillingFlow(Lcom/android/billingclient/api/BillingFlowParams;ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 551
    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails;->getSkuDetailsToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e0

    .line 553
    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails;->getSkuDetailsToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "skuDetailsToken"

    .line 552
    invoke-virtual {v7, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e0
    if-eqz v5, :cond_fd

    .line 557
    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails;->rewardToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rewardToken"

    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->mChildDirected:I

    if-eqz v2, :cond_f4

    const-string v3, "childDirected"

    .line 559
    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    :cond_f4
    iget v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->mUnderAgeOfConsent:I

    if-eqz v2, :cond_fd

    const-string v3, "underAgeOfConsent"

    .line 562
    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_fd
    const/4 v2, 0x6

    .line 568
    iget-boolean v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    if-eqz v3, :cond_107

    const/16 p2, 0x9

    const/16 v4, 0x9

    goto :goto_111

    .line 570
    :cond_107
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams;->getVrPurchaseFlow()Z

    move-result p2

    if-eqz p2, :cond_110

    const/4 p2, 0x7

    const/4 v4, 0x7

    goto :goto_111

    :cond_110
    const/4 v4, 0x6

    .line 574
    :goto_111
    new-instance p2, Lcom/android/billingclient/api/BillingClientImpl$4;

    move-object v2, p2

    move-object v3, p0

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/billingclient/api/BillingClientImpl$4;-><init>(Lcom/android/billingclient/api/BillingClientImpl;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 575
    invoke-direct {p0, p2, v11, v12, v10}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    goto :goto_133

    :cond_11e
    if-eqz v3, :cond_12a

    .line 592
    new-instance v2, Lcom/android/billingclient/api/BillingClientImpl$5;

    invoke-direct {v2, p0, p2, v8}, Lcom/android/billingclient/api/BillingClientImpl$5;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)V

    .line 593
    invoke-direct {p0, v2, v11, v12, v10}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    goto :goto_133

    .line 609
    :cond_12a
    new-instance p2, Lcom/android/billingclient/api/BillingClientImpl$6;

    invoke-direct {p2, p0, v8, v6}, Lcom/android/billingclient/api/BillingClientImpl$6;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-direct {p0, p2, v11, v12, v10}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 626
    :goto_133
    :try_start_133
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 627
    invoke-interface {p2, v11, v12, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 628
    invoke-static {p2, v9}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v2

    .line 629
    invoke-static {p2, v9}, Lcom/android/billingclient/util/BillingHelper;->getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_16e

    .line 631
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to buy item, Error response code: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    .line 634
    invoke-virtual {p1, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    .line 635
    invoke-virtual {p1, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    .line 636
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 637
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1

    .line 640
    :cond_16e
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/billingclient/api/ProxyBillingActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "result_receiver"

    .line 641
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->onPurchaseFinishedReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 642
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    .line 643
    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 648
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_188
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_133 .. :try_end_188} :catch_1a9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_133 .. :try_end_188} :catch_1a9
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_188} :catch_18b

    .line 664
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    .line 655
    :catch_18b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception while launching billing flow: ; for sku: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 660
    invoke-static {v9, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1

    .line 650
    :catch_1a9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Time out while launching billing flow: ; for sku: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 652
    invoke-static {v9, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->SERVICE_TIMEOUT:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->broadcastFailureAndReturnBillingResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1
.end method

.method public queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;
    .registers 6

    .line 678
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 679
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v0, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    .line 683
    :cond_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid SKU type."

    .line 684
    invoke-static {p1, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v0, Lcom/android/billingclient/api/BillingResults;->EMPTY_SKU_TYPE:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    .line 688
    :cond_24
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl$7;

    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/BillingClientImpl$7;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    .line 689
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 699
    :try_start_2f
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;
    :try_end_37
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2f .. :try_end_37} :catch_40
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2f .. :try_end_37} :catch_40
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_38

    return-object p1

    .line 703
    :catch_38
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v0, Lcom/android/billingclient/api/BillingResults;->INTERNAL_ERROR:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1

    .line 701
    :catch_40
    new-instance p1, Lcom/android/billingclient/api/Purchase$PurchasesResult;

    sget-object v0, Lcom/android/billingclient/api/BillingResults;->SERVICE_TIMEOUT:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1
.end method

.method public querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .registers 8

    .line 750
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 751
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    .line 755
    :cond_d
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams;->getSkuType()Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams;->getSkusList()Ljava/util/List;

    move-result-object p1

    .line 759
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "BillingClient"

    if-eqz v2, :cond_28

    const-string p1, "Please fix the input params. SKU type can\'t be empty."

    .line 761
    invoke-static {v3, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->EMPTY_SKU_TYPE:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_28
    if-nez p1, :cond_35

    const-string p1, "Please fix the input params. The list of SKUs can\'t be empty."

    .line 768
    invoke-static {v3, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    sget-object p1, Lcom/android/billingclient/api/BillingResults;->EMPTY_SKU_LIST:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    .line 773
    :cond_35
    new-instance v2, Lcom/android/billingclient/api/BillingClientImpl$10;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl$10;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    const-wide/16 v3, 0x7530

    new-instance p1, Lcom/android/billingclient/api/BillingClientImpl$11;

    invoke-direct {p1, p0, p2}, Lcom/android/billingclient/api/BillingClientImpl$11;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 774
    invoke-direct {p0, v2, v3, v4, p1}, Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_4e

    .line 805
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->getBillingResultForNullFutureResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 804
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_4e
    return-void
.end method

.method querySkuDetailsInternal(Ljava/lang/String;Ljava/util/List;)Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "BillingClient"

    .line 1231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v3, :cond_118

    add-int/lit8 v6, v5, 0x14

    if-le v6, v3, :cond_17

    move v7, v3

    goto :goto_18

    :cond_17
    move v7, v6

    .line 1242
    :goto_18
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v9, p2

    invoke-interface {v9, v5, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1243
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v5, "ITEM_ID_LIST"

    .line 1244
    invoke-virtual {v14, v5, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1246
    iget-object v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    const-string v7, "playBillingLibraryVersion"

    invoke-virtual {v14, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1249
    :try_start_35
    iget-boolean v7, v1, Lcom/android/billingclient/api/BillingClientImpl;->mIABv10Supported:Z

    if-eqz v7, :cond_56

    .line 1250
    iget-object v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/16 v11, 0xa

    iget-object v7, v1, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 1253
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-boolean v7, v1, Lcom/android/billingclient/api/BillingClientImpl;->mIABv9Supported:Z

    iget-boolean v8, v1, Lcom/android/billingclient/api/BillingClientImpl;->mEnablePendingPurchases:Z

    iget-object v13, v1, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    .line 1256
    invoke-static {v7, v8, v13}, Lcom/android/billingclient/util/BillingHelper;->constructExtraParamsForGetSkuDetails(ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    move-object/from16 v13, p1

    .line 1251
    invoke-interface/range {v10 .. v15}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetailsExtraParams(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    move-object/from16 v11, p1

    goto :goto_65

    .line 1259
    :cond_56
    iget-object v7, v1, Lcom/android/billingclient/api/BillingClientImpl;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v8, 0x3

    iget-object v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 1261
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p1

    .line 1260
    invoke-interface {v7, v8, v10, v11, v14}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_65} :catch_fa

    :goto_65
    const/4 v8, 0x4

    if-nez v7, :cond_75

    const-string v0, "querySkuDetailsAsync got null sku details list"

    .line 1276
    invoke-static {v2, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    new-instance v0, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    const-string v2, "Null sku details list"

    invoke-direct {v0, v8, v2, v5}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_75
    const-string v10, "DETAILS_LIST"

    .line 1283
    invoke-virtual {v7, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x6

    if-nez v12, :cond_ad

    .line 1285
    invoke-static {v7, v2}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    .line 1286
    invoke-static {v7, v2}, Lcom/android/billingclient/util/BillingHelper;->getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_a2

    .line 1289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSkuDetails() failed. Response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1290
    invoke-static {v2, v5}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    new-instance v2, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v2

    :cond_a2
    const-string v3, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 1294
    invoke-static {v2, v3}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    new-instance v2, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    invoke-direct {v2, v13, v4, v0}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 1300
    :cond_ad
    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_be

    const-string v0, "querySkuDetailsAsync got null response list"

    .line 1304
    invoke-static {v2, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    new-instance v2, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    invoke-direct {v2, v8, v0, v5}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v2

    :cond_be
    const/4 v8, 0x0

    .line 1309
    :goto_bf
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_f7

    .line 1310
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1313
    :try_start_cb
    new-instance v12, Lcom/android/billingclient/api/SkuDetails;

    invoke-direct {v12, v10}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V
    :try_end_d0
    .catch Lorg/json/JSONException; {:try_start_cb .. :try_end_d0} :catch_ea

    .line 1322
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got sku details: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_bf

    :catch_ea
    const-string v0, "Got a JSON exception trying to decode SkuDetails."

    .line 1316
    invoke-static {v2, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    new-instance v0, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    const-string v2, "Error trying to decode SkuDetails."

    invoke-direct {v0, v13, v2, v5}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_f7
    move v5, v6

    goto/16 :goto_f

    :catch_fa
    move-exception v0

    .line 1267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    new-instance v0, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    const/4 v2, -0x1

    const-string v3, "Service connection is disconnected."

    invoke-direct {v0, v2, v3, v5}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 1330
    :cond_118
    new-instance v2, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    const-string v3, ""

    invoke-direct {v2, v4, v3, v0}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v2
.end method

.method public startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    .registers 9

    .line 274
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->isReady()Z

    move-result v0

    const-string v1, "BillingClient"

    if-eqz v0, :cond_13

    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 275
    invoke-static {v1, v0}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 280
    :cond_13
    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_23

    const-string v0, "Client is already in the process of connecting to billing service."

    .line 281
    invoke-static {v1, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object v0, Lcom/android/billingclient/api/BillingResults;->CLIENT_CONNECTING:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_23
    const/4 v3, 0x3

    if-ne v0, v3, :cond_31

    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 288
    invoke-static {v1, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 295
    :cond_31
    iput v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    .line 298
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mBroadcastManager:Lcom/android/billingclient/api/BillingBroadcastManager;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingBroadcastManager;->registerReceiver()V

    const-string v0, "Starting in-app billing setup."

    .line 301
    invoke-static {v1, v0}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/BillingClientImpl$1;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.vending"

    .line 305
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 307
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_ad

    .line 309
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_ad

    .line 311
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 312
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_ad

    .line 313
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 314
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 315
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    if-eqz v4, :cond_a8

    .line 316
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 322
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 323
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mQualifiedVersionNumber:Ljava/lang/String;

    const-string v3, "playBillingLibraryVersion"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->mServiceConnection:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    .line 326
    invoke-virtual {v0, v4, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_a2

    const-string p1, "Service was bonded successfully."

    .line 330
    invoke-static {v1, p1}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a2
    const-string v0, "Connection to Billing service is blocked."

    .line 335
    invoke-static {v1, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ad

    :cond_a8
    const-string v0, "The device doesn\'t have valid Play Store."

    .line 339
    invoke-static {v1, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_ad
    :goto_ad
    iput v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->mClientState:I

    const-string v0, "Billing service unavailable on device."

    .line 345
    invoke-static {v1, v0}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/android/billingclient/api/BillingResults;->BILLING_UNAVAILABLE:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
