.class public Lcom/mopub/volley/ParseError;
.super Lcom/mopub/volley/VolleyError;
.source "ParseError.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/mopub/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/NetworkResponse;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
