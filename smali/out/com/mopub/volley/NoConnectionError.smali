.class public Lcom/mopub/volley/NoConnectionError;
.super Lcom/mopub/volley/NetworkError;
.source "NoConnectionError.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/mopub/volley/NetworkError;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/mopub/volley/NetworkError;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
