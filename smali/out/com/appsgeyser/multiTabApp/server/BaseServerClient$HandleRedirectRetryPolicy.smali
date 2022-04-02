.class public Lcom/appsgeyser/multiTabApp/server/BaseServerClient$HandleRedirectRetryPolicy;
.super Lcom/android/volley/DefaultRetryPolicy;
.source "BaseServerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/server/BaseServerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandleRedirectRetryPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/server/BaseServerClient;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/server/BaseServerClient;IIF)V
    .registers 5

    .line 33
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$HandleRedirectRetryPolicy;->this$0:Lcom/appsgeyser/multiTabApp/server/BaseServerClient;

    .line 34
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

    .line 39
    instance-of v0, p1, Lcom/android/volley/RedirectError;

    if-eqz v0, :cond_8

    .line 40
    invoke-super {p0, p1}, Lcom/android/volley/DefaultRetryPolicy;->retry(Lcom/android/volley/VolleyError;)V

    return-void

    .line 42
    :cond_8
    throw p1
.end method
