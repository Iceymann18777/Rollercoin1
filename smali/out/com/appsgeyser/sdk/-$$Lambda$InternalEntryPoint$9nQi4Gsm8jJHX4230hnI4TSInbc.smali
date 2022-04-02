.class public final synthetic Lcom/appsgeyser/sdk/-$$Lambda$InternalEntryPoint$9nQi4Gsm8jJHX4230hnI4TSInbc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

.field public final synthetic f$1:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/-$$Lambda$InternalEntryPoint$9nQi4Gsm8jJHX4230hnI4TSInbc;->f$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    iput-object p2, p0, Lcom/appsgeyser/sdk/-$$Lambda$InternalEntryPoint$9nQi4Gsm8jJHX4230hnI4TSInbc;->f$1:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;

    return-void
.end method


# virtual methods
.method public final receivedConfigPhp(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .registers 4

    iget-object v0, p0, Lcom/appsgeyser/sdk/-$$Lambda$InternalEntryPoint$9nQi4Gsm8jJHX4230hnI4TSInbc;->f$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    iget-object v1, p0, Lcom/appsgeyser/sdk/-$$Lambda$InternalEntryPoint$9nQi4Gsm8jJHX4230hnI4TSInbc;->f$1:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;

    invoke-virtual {v0, v1, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->lambda$getNewConfigPhp$0$InternalEntryPoint(Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    return-void
.end method
