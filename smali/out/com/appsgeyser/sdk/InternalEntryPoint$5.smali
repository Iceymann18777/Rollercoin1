.class Lcom/appsgeyser/sdk/InternalEntryPoint$5;
.super Ljava/lang/Object;
.source "InternalEntryPoint.java"

# interfaces
.implements Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/InternalEntryPoint;->checkIsOfferWallEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

.field final synthetic val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V
    .registers 3

    .line 373
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$5;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$5;->val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceIdParametersObtained(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V
    .registers 5

    .line 376
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$5;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0, p2}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$602(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    .line 377
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/sdk/InternalEntryPoint$5$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint$5$1;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint$5;)V

    .line 378
    invoke-virtual {v0, p1, p2, v1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V

    return-void
.end method
