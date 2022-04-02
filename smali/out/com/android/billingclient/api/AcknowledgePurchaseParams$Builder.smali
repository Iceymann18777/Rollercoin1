.class public final Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;
.super Ljava/lang/Object;
.source "AcknowledgePurchaseParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/AcknowledgePurchaseParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private developerPayload:Ljava/lang/String;

.field private purchaseToken:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/AcknowledgePurchaseParams$1;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;
    .registers 3

    .line 65
    new-instance v0, Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;-><init>(Lcom/android/billingclient/api/AcknowledgePurchaseParams$1;)V

    .line 66
    iget-object v1, p0, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->developerPayload:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->access$202(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->purchaseToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->access$302(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->purchaseToken:Ljava/lang/String;

    return-object p0
.end method
