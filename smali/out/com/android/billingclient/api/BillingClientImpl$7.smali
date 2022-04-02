.class Lcom/android/billingclient/api/BillingClientImpl$7;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/billingclient/api/Purchase$PurchasesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/billingclient/api/BillingClientImpl;

.field final synthetic val$skuType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)V
    .registers 3

    .line 690
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$7;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$7;->val$skuType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/android/billingclient/api/Purchase$PurchasesResult;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$7;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$7;->val$skuType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$400(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 690
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl$7;->call()Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v0

    return-object v0
.end method
