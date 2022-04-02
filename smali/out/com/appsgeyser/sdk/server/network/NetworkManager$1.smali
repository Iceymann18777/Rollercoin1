.class Lcom/appsgeyser/sdk/server/network/NetworkManager$1;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;)V
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
.field final synthetic this$0:Lcom/appsgeyser/sdk/server/network/NetworkManager;

.field final synthetic val$onResponseListener:Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;

.field final synthetic val$requestUrl:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/server/network/NetworkManager;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5

    .line 53
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$1;->this$0:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    iput-object p2, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$1;->val$onResponseListener:Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;

    iput-object p3, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$1;->val$requestUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$1;->val$tag:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 53
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 5

    .line 56
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$1;->val$onResponseListener:Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;

    if-eqz v0, :cond_f

    .line 57
    iget-object v1, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$1;->val$requestUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$1;->val$tag:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;->onRequestDone(Ljava/lang/String;ILjava/lang/String;)V

    :cond_f
    return-void
.end method
