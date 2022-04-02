.class public Lcom/android/billingclient/api/BillingFlowParams$Builder;
.super Ljava/lang/Object;
.source "BillingFlowParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private mDeveloperId:Ljava/lang/String;

.field private mOldSku:Ljava/lang/String;

.field private mReplaceSkusProrationMode:I

.field private mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

.field private mVrPurchaseFlow:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mReplaceSkusProrationMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingFlowParams$1;)V
    .registers 2

    .line 154
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/BillingFlowParams;
    .registers 3

    .line 329
    new-instance v0, Lcom/android/billingclient/api/BillingFlowParams;

    invoke-direct {v0}, Lcom/android/billingclient/api/BillingFlowParams;-><init>()V

    .line 330
    iget-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->access$102(Lcom/android/billingclient/api/BillingFlowParams;Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/SkuDetails;

    .line 331
    iget-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mOldSku:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->access$202(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    iget-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->access$302(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mVrPurchaseFlow:Z

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->access$402(Lcom/android/billingclient/api/BillingFlowParams;Z)Z

    .line 334
    iget v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mReplaceSkusProrationMode:I

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->access$502(Lcom/android/billingclient/api/BillingFlowParams;I)I

    .line 335
    iget-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mDeveloperId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->access$602(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    return-object p0
.end method
