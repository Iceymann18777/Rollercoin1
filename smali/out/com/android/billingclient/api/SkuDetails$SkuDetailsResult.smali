.class public Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;
.super Ljava/lang/Object;
.source "SkuDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/SkuDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkuDetailsResult"
.end annotation


# instance fields
.field private mDebugMessage:Ljava/lang/String;

.field private mResponseCode:I

.field private mSkuDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput p1, p0, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;->mResponseCode:I

    .line 236
    iput-object p2, p0, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;->mDebugMessage:Ljava/lang/String;

    .line 237
    iput-object p3, p0, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;->mSkuDetailsList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDebugMessage()Ljava/lang/String;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;->mDebugMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    .line 246
    iget v0, p0, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;->mResponseCode:I

    return v0
.end method

.method public getSkuDetailsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;->mSkuDetailsList:Ljava/util/List;

    return-object v0
.end method
