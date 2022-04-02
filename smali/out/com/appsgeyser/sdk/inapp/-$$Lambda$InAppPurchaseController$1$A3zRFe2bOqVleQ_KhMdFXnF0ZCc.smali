.class public final synthetic Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$1$A3zRFe2bOqVleQ_KhMdFXnF0ZCc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$1$A3zRFe2bOqVleQ_KhMdFXnF0ZCc;->f$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$1$A3zRFe2bOqVleQ_KhMdFXnF0ZCc;->f$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;->lambda$onBillingServiceDisconnected$1$InAppPurchaseController$1()V

    return-void
.end method
