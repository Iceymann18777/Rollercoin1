.class Lcom/appsgeyser/sdk/InternalEntryPoint$2;
.super Ljava/lang/Object;
.source "InternalEntryPoint.java"

# interfaces
.implements Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/InternalEntryPoint;->showAboutDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

.field final synthetic val$defaultAboutIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Landroid/content/Intent;)V
    .registers 3

    .line 226
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$2;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$2;->val$defaultAboutIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedConfigPhp(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .registers 4

    .line 229
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$2;->val$defaultAboutIntent:Landroid/content/Intent;

    const-string v1, "config_php_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 230
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$2;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isCustomAboutActive()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$502(Lcom/appsgeyser/sdk/InternalEntryPoint;Z)Z

    return-void
.end method
