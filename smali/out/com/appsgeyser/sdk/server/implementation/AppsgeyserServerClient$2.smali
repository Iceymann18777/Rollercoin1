.class Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$2;
.super Ljava/lang/Object;
.source "AppsgeyserServerClient.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

.field final synthetic val$coder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V
    .registers 4

    .line 200
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$2;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iput-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$2;->val$coder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6

    .line 203
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$2;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iget-object p1, p1, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;

    .line 204
    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$2;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iget-object v2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$2;->val$coder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-static {v1, v2, v0, v3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$500(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V

    goto :goto_8

    .line 206
    :cond_1e
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$2;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iget-object p1, p1, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 207
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setConsentRequestProcessActive(Z)V

    return-void
.end method
