.class Lcom/appsgeyser/sdk/server/network/NetworkManager$5;
.super Lcom/android/volley/toolbox/StringRequest;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsyncPost(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/server/network/NetworkManager;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/server/network/NetworkManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V
    .registers 7

    .line 136
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$5;->this$0:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    iput-object p6, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$5;->val$params:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$5;->val$params:Ljava/util/Map;

    return-object v0
.end method
