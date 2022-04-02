.class public final Lcom/android/billingclient/api/BillingClient$Builder;
.super Ljava/lang/Object;
.source "BillingClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mChildDirected:I

.field private final mContext:Landroid/content/Context;

.field private mEnablePendingPurchases:Z

.field private mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private mUnderAgeOfConsent:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 225
    iput v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mChildDirected:I

    .line 226
    iput v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mUnderAgeOfConsent:I

    .line 231
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/BillingClient$1;)V
    .registers 3

    .line 223
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClient$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/BillingClient;
    .registers 8

    .line 301
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_28

    .line 304
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    if-eqz v5, :cond_20

    .line 308
    iget-boolean v4, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mEnablePendingPurchases:Z

    const/4 v0, 0x1

    if-ne v4, v0, :cond_18

    .line 313
    new-instance v6, Lcom/android/billingclient/api/BillingClientImpl;

    iget v2, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mChildDirected:I

    iget v3, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mUnderAgeOfConsent:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Landroid/content/Context;IIZLcom/android/billingclient/api/PurchasesUpdatedListener;)V

    return-object v6

    .line 309
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Support for pending purchases must be enabled. Enable this by calling \'enablePendingPurchases()\' on BillingClientBuilder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid listener for purchases updates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mEnablePendingPurchases:Z

    return-object p0
.end method

.method public setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method
