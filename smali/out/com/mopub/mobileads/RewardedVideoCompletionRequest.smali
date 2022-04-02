.class public Lcom/mopub/mobileads/RewardedVideoCompletionRequest;
.super Lcom/mopub/network/MoPubRequest;
.source "RewardedVideoCompletionRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/network/MoPubRequest<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final mListener:Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/volley/RetryPolicy;Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;)V
    .registers 5

    .line 32
    invoke-direct {p0, p1, p2, p4}, Lcom/mopub/network/MoPubRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;->setShouldCache(Z)Lcom/mopub/volley/Request;

    .line 34
    invoke-virtual {p0, p3}, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    .line 35
    iput-object p4, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;->mListener:Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;

    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Integer;)V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;->mListener:Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .registers 2

    .line 20
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;->deliverResponse(Ljava/lang/Integer;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 40
    iget v0, p1, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 41
    invoke-static {p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object p1

    .line 40
    invoke-static {v0, p1}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1
.end method
