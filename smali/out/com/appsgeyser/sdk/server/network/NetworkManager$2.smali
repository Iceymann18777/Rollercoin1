.class Lcom/appsgeyser/sdk/server/network/NetworkManager$2;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/server/network/NetworkManager;

.field final synthetic val$onErrorListener:Lcom/android/volley/Response$ErrorListener;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/server/network/NetworkManager;Lcom/android/volley/Response$ErrorListener;)V
    .registers 3

    .line 62
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$2;->this$0:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    iput-object p2, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$2;->val$onErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$2;->val$onErrorListener:Lcom/android/volley/Response$ErrorListener;

    if-eqz v0, :cond_7

    .line 66
    invoke-interface {v0, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    :cond_7
    return-void
.end method
