.class Lcom/appsgeyser/sdk/server/network/NetworkManager$HandleRedirectRetryPolicy;
.super Lcom/android/volley/DefaultRetryPolicy;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/server/network/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleRedirectRetryPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/server/network/NetworkManager;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/server/network/NetworkManager;IIF)V
    .registers 5

    .line 151
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$HandleRedirectRetryPolicy;->this$0:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 152
    invoke-direct {p0, p2, p3, p4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    return-void
.end method


# virtual methods
.method public retry(Lcom/android/volley/VolleyError;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 157
    instance-of v0, p1, Lcom/android/volley/RedirectError;

    if-eqz v0, :cond_8

    .line 158
    invoke-super {p0, p1}, Lcom/android/volley/DefaultRetryPolicy;->retry(Lcom/android/volley/VolleyError;)V

    return-void

    .line 160
    :cond_8
    throw p1
.end method
