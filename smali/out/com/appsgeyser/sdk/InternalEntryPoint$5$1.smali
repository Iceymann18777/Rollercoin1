.class Lcom/appsgeyser/sdk/InternalEntryPoint$5$1;
.super Ljava/lang/Object;
.source "InternalEntryPoint.java"

# interfaces
.implements Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/InternalEntryPoint$5;->onDeviceIdParametersObtained(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/sdk/InternalEntryPoint$5;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/InternalEntryPoint$5;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$5$1;->this$1:Lcom/appsgeyser/sdk/InternalEntryPoint$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedConfigPhp(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$5$1;->this$1:Lcom/appsgeyser/sdk/InternalEntryPoint$5;

    iget-object v0, v0, Lcom/appsgeyser/sdk/InternalEntryPoint$5;->val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isOfferWallEnabled()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;->isOfferWallEnabled(Z)V

    return-void
.end method
