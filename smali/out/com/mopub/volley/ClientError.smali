.class public Lcom/mopub/volley/ClientError;
.super Lcom/mopub/volley/ServerError;
.source "ClientError.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/mopub/volley/ServerError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/NetworkResponse;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/mopub/volley/ServerError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    return-void
.end method
