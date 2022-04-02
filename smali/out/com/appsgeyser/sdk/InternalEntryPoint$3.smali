.class Lcom/appsgeyser/sdk/InternalEntryPoint$3;
.super Ljava/lang/Object;
.source "InternalEntryPoint.java"

# interfaces
.implements Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/InternalEntryPoint;->getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

.field final synthetic val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V
    .registers 3

    .line 265
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$3;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$3;->val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedConfigPhp(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$3;->val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;->onDialogEnableReceived(Z)V

    .line 269
    iget-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$3;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$102(Lcom/appsgeyser/sdk/InternalEntryPoint;Z)Z

    return-void
.end method
