.class Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$2;
.super Ljava/lang/Object;
.source "DataSdksReceiver.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 43
    iput-object p1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$2;->this$0:Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;

    iput-object p2, p0, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5

    if-eqz p1, :cond_29

    .line 47
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 48
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volley request error: parsing response error...\n"

    const-string v2, "DataSdksReceiver"

    if-eqz v0, :cond_26

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 52
    :cond_26
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_29
    :goto_29
    iget-object p1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$2;->this$0:Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;

    iget-object v0, p0, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$2;->val$intent:Landroid/content/Intent;

    invoke-static {p1, v0, v1}, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;->access$100(Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
