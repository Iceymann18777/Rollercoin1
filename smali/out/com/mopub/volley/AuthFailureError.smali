.class public Lcom/mopub/volley/AuthFailureError;
.super Lcom/mopub/volley/VolleyError;
.source "AuthFailureError.java"


# instance fields
.field private mResolutionIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/mopub/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/mopub/volley/VolleyError;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mopub/volley/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/NetworkResponse;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/mopub/volley/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    const-string v0, "User needs to (re)enter credentials."

    return-object v0

    .line 54
    :cond_7
    invoke-super {p0}, Lcom/mopub/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolutionIntent()Landroid/content/Intent;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/mopub/volley/AuthFailureError;->mResolutionIntent:Landroid/content/Intent;

    return-object v0
.end method
