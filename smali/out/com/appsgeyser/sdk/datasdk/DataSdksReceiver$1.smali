.class Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$1;
.super Ljava/lang/Object;
.source "DataSdksReceiver.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 28
    iput-object p1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$1;->this$0:Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;

    iput-object p2, p0, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 28
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 4

    .line 32
    :try_start_0
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    .line 34
    iget-object p1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$1;->this$0:Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;

    iget-object v0, p0, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {p1, v0, v1}, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;->access$000(Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_31

    :catch_d
    move-exception p1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsing response error...\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataSdksReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object p1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$1;->this$0:Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;

    iget-object v0, p0, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {p1, v0, v1}, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;->access$100(Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    :goto_31
    return-void
.end method
