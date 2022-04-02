.class public Lcom/mopub/network/MoPubNetworkError;
.super Lcom/mopub/volley/VolleyError;
.source "MoPubNetworkError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/MoPubNetworkError$Reason;
    }
.end annotation


# instance fields
.field private final mReason:Lcom/mopub/network/MoPubNetworkError$Reason;

.field private final mRefreshTimeMillis:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/mopub/network/MoPubNetworkError$Reason;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/mopub/volley/VolleyError;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mopub/network/MoPubNetworkError;->mReason:Lcom/mopub/network/MoPubNetworkError$Reason;

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/mopub/network/MoPubNetworkError;->mRefreshTimeMillis:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/NetworkResponse;Lcom/mopub/network/MoPubNetworkError$Reason;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    .line 34
    iput-object p2, p0, Lcom/mopub/network/MoPubNetworkError;->mReason:Lcom/mopub/network/MoPubNetworkError$Reason;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/mopub/network/MoPubNetworkError;->mRefreshTimeMillis:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;)V
    .registers 4

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;Ljava/lang/Integer;)V
    .registers 4

    .line 56
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lcom/mopub/network/MoPubNetworkError;->mReason:Lcom/mopub/network/MoPubNetworkError$Reason;

    .line 58
    iput-object p3, p0, Lcom/mopub/network/MoPubNetworkError;->mRefreshTimeMillis:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V
    .registers 4

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    iput-object p3, p0, Lcom/mopub/network/MoPubNetworkError;->mReason:Lcom/mopub/network/MoPubNetworkError$Reason;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/mopub/network/MoPubNetworkError;->mRefreshTimeMillis:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 40
    iput-object p2, p0, Lcom/mopub/network/MoPubNetworkError;->mReason:Lcom/mopub/network/MoPubNetworkError$Reason;

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/mopub/network/MoPubNetworkError;->mRefreshTimeMillis:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getReason()Lcom/mopub/network/MoPubNetworkError$Reason;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/mopub/network/MoPubNetworkError;->mReason:Lcom/mopub/network/MoPubNetworkError$Reason;

    return-object v0
.end method

.method public getRefreshTimeMillis()Ljava/lang/Integer;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/mopub/network/MoPubNetworkError;->mRefreshTimeMillis:Ljava/lang/Integer;

    return-object v0
.end method
