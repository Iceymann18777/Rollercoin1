.class public Lcom/mopub/network/MultiAdRequest;
.super Lcom/mopub/network/MoPubRequest;
.source "MultiAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/MultiAdRequest$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/network/MoPubRequest<",
        "Lcom/mopub/network/MultiAdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private hashCode:I

.field final mAdFormat:Lcom/mopub/common/AdFormat;

.field final mAdUnitId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field public final mListener:Lcom/mopub/network/MultiAdRequest$Listener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/MultiAdRequest$Listener;)V
    .registers 7

    .line 49
    invoke-static {p1}, Lcom/mopub/network/MultiAdRequest;->clearUrlIfSdkNotInitialized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0, p5}, Lcom/mopub/network/MoPubRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/mopub/network/MultiAdRequest;->hashCode:I

    .line 50
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    iput-object p3, p0, Lcom/mopub/network/MultiAdRequest;->mAdUnitId:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/mopub/network/MultiAdRequest;->mListener:Lcom/mopub/network/MultiAdRequest$Listener;

    .line 57
    iput-object p2, p0, Lcom/mopub/network/MultiAdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    .line 58
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/network/MultiAdRequest;->mContext:Landroid/content/Context;

    .line 60
    new-instance p1, Lcom/mopub/volley/DefaultRetryPolicy;

    const/16 p2, 0x9c4

    const/4 p3, 0x1

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, p4}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/mopub/network/MultiAdRequest;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    .line 65
    invoke-virtual {p0, v0}, Lcom/mopub/network/MultiAdRequest;->setShouldCache(Z)Lcom/mopub/volley/Request;

    .line 67
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 69
    invoke-virtual {p1, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    :cond_3b
    return-void
.end method

.method private static clearUrlIfSdkNotInitialized(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 81
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_e

    :cond_d
    return-object p0

    .line 82
    :cond_e
    :goto_e
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Make sure to call MoPub#initializeSdk before loading an ad."

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 123
    invoke-super {p0}, Lcom/mopub/network/MoPubRequest;->cancel()V

    return-void
.end method

.method protected deliverResponse(Lcom/mopub/network/MultiAdResponse;)V
    .registers 3

    .line 116
    invoke-virtual {p0}, Lcom/mopub/network/MultiAdRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 117
    iget-object v0, p0, Lcom/mopub/network/MultiAdRequest;->mListener:Lcom/mopub/network/MultiAdRequest$Listener;

    invoke-interface {v0, p1}, Lcom/mopub/network/MultiAdRequest$Listener;->onSuccessResponse(Lcom/mopub/network/MultiAdResponse;)V

    :cond_b
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .registers 2

    .line 27
    check-cast p1, Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p0, p1}, Lcom/mopub/network/MultiAdRequest;->deliverResponse(Lcom/mopub/network/MultiAdResponse;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 131
    :cond_4
    instance-of v1, p1, Lcom/mopub/network/MultiAdRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 135
    :cond_a
    check-cast p1, Lcom/mopub/network/MultiAdRequest;

    .line 137
    iget-object v1, p0, Lcom/mopub/network/MultiAdRequest;->mAdUnitId:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 138
    iget-object v3, p1, Lcom/mopub/network/MultiAdRequest;->mAdUnitId:Ljava/lang/String;

    if-nez v3, :cond_16

    const/4 v1, 0x1

    goto :goto_22

    :cond_16
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_22

    .line 139
    :cond_1b
    iget-object v1, p1, Lcom/mopub/network/MultiAdRequest;->mAdUnitId:Ljava/lang/String;

    if-eqz v1, :cond_21

    const/4 v1, -0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-nez v1, :cond_39

    .line 143
    iget-object v1, p0, Lcom/mopub/network/MultiAdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    iget-object v3, p1, Lcom/mopub/network/MultiAdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    if-ne v1, v3, :cond_39

    .line 145
    invoke-virtual {p0}, Lcom/mopub/network/MultiAdRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 150
    iget v0, p0, Lcom/mopub/network/MultiAdRequest;->hashCode:I

    if-nez v0, :cond_25

    .line 151
    iget-object v0, p0, Lcom/mopub/network/MultiAdRequest;->mAdUnitId:Ljava/lang/String;

    if-nez v0, :cond_b

    const/16 v0, 0x1d

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    mul-int/lit8 v0, v0, 0x1f

    .line 152
    iget-object v1, p0, Lcom/mopub/network/MultiAdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    invoke-virtual {v1}, Lcom/mopub/common/AdFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 153
    invoke-virtual {p0}, Lcom/mopub/network/MultiAdRequest;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    iput v0, p0, Lcom/mopub/network/MultiAdRequest;->hashCode:I

    .line 156
    :cond_25
    iget v0, p0, Lcom/mopub/network/MultiAdRequest;->hashCode:I

    return v0
.end method

.method protected parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response<",
            "Lcom/mopub/network/MultiAdResponse;",
            ">;"
        }
    .end annotation

    .line 98
    :try_start_0
    new-instance v0, Lcom/mopub/network/MultiAdResponse;

    iget-object v1, p0, Lcom/mopub/network/MultiAdRequest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/network/MultiAdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    iget-object v3, p0, Lcom/mopub/network/MultiAdRequest;->mAdUnitId:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/mopub/network/MultiAdResponse;-><init>(Landroid/content/Context;Lcom/mopub/volley/NetworkResponse;Lcom/mopub/common/AdFormat;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_14

    .line 107
    invoke-static {p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1

    :catch_14
    move-exception p1

    .line 100
    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_20

    .line 101
    check-cast p1, Lcom/mopub/network/MoPubNetworkError;

    invoke-static {p1}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1

    .line 104
    :cond_20
    new-instance v0, Lcom/mopub/network/MoPubNetworkError;

    sget-object v1, Lcom/mopub/network/MoPubNetworkError$Reason;->UNSPECIFIED:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v0, p1, v1}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static {v0}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1
.end method
