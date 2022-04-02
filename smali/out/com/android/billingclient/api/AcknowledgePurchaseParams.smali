.class public final Lcom/android/billingclient/api/AcknowledgePurchaseParams;
.super Ljava/lang/Object;
.source "AcknowledgePurchaseParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;
    }
.end annotation


# instance fields
.field private developerPayload:Ljava/lang/String;

.field private purchaseToken:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/AcknowledgePurchaseParams$1;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->developerPayload:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->purchaseToken:Ljava/lang/String;

    return-object p1
.end method

.method public static newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;
    .registers 2

    .line 33
    new-instance v0, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;-><init>(Lcom/android/billingclient/api/AcknowledgePurchaseParams$1;)V

    return-object v0
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method
