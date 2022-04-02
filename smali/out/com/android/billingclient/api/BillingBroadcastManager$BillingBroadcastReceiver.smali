.class Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BillingBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BillingBroadcastReceiver"
.end annotation


# instance fields
.field private mIsRegistered:Z

.field private final mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field final synthetic this$0:Lcom/android/billingclient/api/BillingBroadcastManager;


# direct methods
.method private constructor <init>(Lcom/android/billingclient/api/BillingBroadcastManager;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .registers 3

    .line 74
    iput-object p1, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->this$0:Lcom/android/billingclient/api/BillingBroadcastManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingBroadcastManager;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingBroadcastManager$1;)V
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;-><init>(Lcom/android/billingclient/api/BillingBroadcastManager;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;)Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "BillingBroadcastManager"

    .line 98
    invoke-static {p2, p1}, Lcom/android/billingclient/util/BillingHelper;->getBillingResultFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Lcom/android/billingclient/util/BillingHelper;->extractPurchases(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    .line 100
    iget-object v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public register(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .registers 4

    .line 80
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->mIsRegistered:Z

    if-nez v0, :cond_10

    .line 81
    iget-object v0, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->this$0:Lcom/android/billingclient/api/BillingBroadcastManager;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingBroadcastManager;->access$200(Lcom/android/billingclient/api/BillingBroadcastManager;)Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingBroadcastManager$BillingBroadcastReceiver;->mIsRegistered:Z

    :cond_10
    return-void
.end method
