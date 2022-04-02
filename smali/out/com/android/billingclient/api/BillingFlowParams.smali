.class public Lcom/android/billingclient/api/BillingFlowParams;
.super Ljava/lang/Object;
.source "BillingFlowParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingFlowParams$Builder;
    }
.end annotation


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private mDeveloperId:Ljava/lang/String;

.field private mOldSku:Ljava/lang/String;

.field private mReplaceSkusProrationMode:I

.field private mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

.field private mVrPurchaseFlow:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->mReplaceSkusProrationMode:I

    return-void
.end method

.method static synthetic access$102(Lcom/android/billingclient/api/BillingFlowParams;Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/SkuDetails;
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->mOldSku:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->mAccountId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/billingclient/api/BillingFlowParams;Z)Z
    .registers 2

    .line 19
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->mVrPurchaseFlow:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/billingclient/api/BillingFlowParams;I)I
    .registers 2

    .line 19
    iput p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->mReplaceSkusProrationMode:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->mDeveloperId:Ljava/lang/String;

    return-object p1
.end method

.method public static newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .registers 2

    .line 150
    new-instance v0, Lcom/android/billingclient/api/BillingFlowParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;-><init>(Lcom/android/billingclient/api/BillingFlowParams$1;)V

    return-object v0
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperId()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->mDeveloperId:Ljava/lang/String;

    return-object v0
.end method

.method public getOldSku()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->mOldSku:Ljava/lang/String;

    return-object v0
.end method

.method public getReplaceSkusProrationMode()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->mReplaceSkusProrationMode:I

    return v0
.end method

.method public getSku()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_6
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSkuDetails()Lcom/android/billingclient/api/SkuDetails;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    return-object v0
.end method

.method public getSkuType()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_6
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVrPurchaseFlow()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->mVrPurchaseFlow:Z

    return v0
.end method

.method hasExtraParams()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->mVrPurchaseFlow:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->mAccountId:Ljava/lang/String;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->mDeveloperId:Ljava/lang/String;

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->mReplaceSkusProrationMode:I

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method
