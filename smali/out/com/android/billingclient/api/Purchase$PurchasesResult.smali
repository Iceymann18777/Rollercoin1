.class public Lcom/android/billingclient/api/Purchase$PurchasesResult;
.super Ljava/lang/Object;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PurchasesResult"
.end annotation


# instance fields
.field private mBillingResult:Lcom/android/billingclient/api/BillingResult;

.field private mPurchaseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/android/billingclient/api/Purchase$PurchasesResult;->mPurchaseList:Ljava/util/List;

    .line 161
    iput-object p1, p0, Lcom/android/billingclient/api/Purchase$PurchasesResult;->mBillingResult:Lcom/android/billingclient/api/BillingResult;

    return-void
.end method


# virtual methods
.method public getPurchasesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase$PurchasesResult;->mPurchaseList:Ljava/util/List;

    return-object v0
.end method
