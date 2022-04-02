.class Lcom/appsgeyser/sdk/InternalEntryPoint$1;
.super Ljava/lang/Object;
.source "InternalEntryPoint.java"

# interfaces
.implements Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/InternalEntryPoint;->onDeviceIdParametersObtained(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/InternalEntryPoint;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedConfigPhp(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .registers 4

    if-eqz p1, :cond_48

    .line 206
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$000(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 207
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$000(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAdvertisingTermsDialog()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;->show(Z)V

    .line 209
    :cond_17
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$100(Lcom/appsgeyser/sdk/InternalEntryPoint;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 210
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$200(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;->onDialogEnableReceived(Z)V

    .line 212
    :cond_2c
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$300(Lcom/appsgeyser/sdk/InternalEntryPoint;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 213
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$1;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$400(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isInAppPurchasesActive()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;->onInAppPurchasesEnableReceived(Z)V

    .line 215
    :cond_41
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getFullScreenDelay()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/configuration/Constants;->setFullScreenDelay(J)V

    :cond_48
    return-void
.end method
