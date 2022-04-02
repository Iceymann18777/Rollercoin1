.class public Lcom/android/billingclient/api/BillingResult$Builder;
.super Ljava/lang/Object;
.source "BillingResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDebugMessage:Ljava/lang/String;

.field private mResponseCode:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingResult$1;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/BillingResult;
    .registers 3

    .line 50
    new-instance v0, Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v0}, Lcom/android/billingclient/api/BillingResult;-><init>()V

    .line 51
    iget v1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->mResponseCode:I

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingResult;->access$102(Lcom/android/billingclient/api/BillingResult;I)I

    .line 52
    iget-object v1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->mDebugMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingResult;->access$202(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->mDebugMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;
    .registers 2

    .line 39
    iput p1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->mResponseCode:I

    return-object p0
.end method
