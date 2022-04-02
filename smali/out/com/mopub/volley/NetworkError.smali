.class public Lcom/mopub/volley/NetworkError;
.super Lcom/mopub/volley/VolleyError;
.source "NetworkError.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/mopub/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/NetworkResponse;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
