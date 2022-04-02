.class Lcom/mopub/network/ContentDownloadAnalytics;
.super Ljava/lang/Object;
.source "ContentDownloadAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;
    }
.end annotation


# static fields
.field private static final LOAD_DURATION_MS_MACRO:Ljava/lang/String; = "%%LOAD_DURATION_MS%%"

.field private static final LOAD_RESULT_MACRO:Ljava/lang/String; = "%%LOAD_RESULT%%"


# instance fields
.field private mAdResponse:Lcom/mopub/network/AdResponse;

.field mBeforeLoadTime:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/mopub/network/AdResponse;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/mopub/network/ContentDownloadAnalytics;->mBeforeLoadTime:Ljava/lang/Long;

    .line 47
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    iput-object p1, p0, Lcom/mopub/network/ContentDownloadAnalytics;->mAdResponse:Lcom/mopub/network/AdResponse;

    return-void
.end method

.method private errorCodeToDownloadResult(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;
    .registers 3

    if-nez p1, :cond_5

    .line 117
    sget-object p1, Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;->AD_LOADED:Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;

    return-object p1

    .line 120
    :cond_5
    invoke-interface {p1}, Lcom/mopub/mobileads/MoPubError;->getIntCode()I

    move-result p1

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    .line 129
    sget-object p1, Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;->INVALID_DATA:Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;

    return-object p1

    .line 124
    :cond_14
    sget-object p1, Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;->TIMEOUT:Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;

    return-object p1

    .line 126
    :cond_17
    sget-object p1, Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;->MISSING_ADAPTER:Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;

    return-object p1

    .line 122
    :cond_1a
    sget-object p1, Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;->AD_LOADED:Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;

    return-object p1
.end method

.method private generateAfterLoadUrls(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_46

    .line 100
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/mopub/network/ContentDownloadAnalytics;->mBeforeLoadTime:Ljava/lang/Long;

    if-nez v0, :cond_d

    goto :goto_46

    .line 104
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/mopub/network/ContentDownloadAnalytics;->mBeforeLoadTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%%LOAD_DURATION_MS%%"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%%LOAD_RESULT%%"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_45
    return-object v0

    :cond_46
    :goto_46
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method reportAfterLoad(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V
    .registers 4

    if-eqz p1, :cond_1c

    .line 67
    iget-object v0, p0, Lcom/mopub/network/ContentDownloadAnalytics;->mBeforeLoadTime:Ljava/lang/Long;

    if-nez v0, :cond_7

    goto :goto_1c

    .line 71
    :cond_7
    invoke-direct {p0, p2}, Lcom/mopub/network/ContentDownloadAnalytics;->errorCodeToDownloadResult(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;

    move-result-object p2

    .line 72
    iget-object v0, p0, Lcom/mopub/network/ContentDownloadAnalytics;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getAfterLoadUrls()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;->access$000(Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/mopub/network/ContentDownloadAnalytics;->generateAfterLoadUrls(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 74
    invoke-static {p2, p1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method reportAfterLoadFail(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V
    .registers 4

    if-eqz p1, :cond_1c

    .line 88
    iget-object v0, p0, Lcom/mopub/network/ContentDownloadAnalytics;->mBeforeLoadTime:Ljava/lang/Long;

    if-nez v0, :cond_7

    goto :goto_1c

    .line 92
    :cond_7
    invoke-direct {p0, p2}, Lcom/mopub/network/ContentDownloadAnalytics;->errorCodeToDownloadResult(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;

    move-result-object p2

    .line 93
    iget-object v0, p0, Lcom/mopub/network/ContentDownloadAnalytics;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getAfterLoadFailUrls()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;->access$000(Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/mopub/network/ContentDownloadAnalytics;->generateAfterLoadUrls(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 95
    invoke-static {p2, p1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method reportAfterLoadSuccess(Landroid/content/Context;)V
    .registers 4

    if-eqz p1, :cond_1a

    .line 78
    iget-object v0, p0, Lcom/mopub/network/ContentDownloadAnalytics;->mBeforeLoadTime:Ljava/lang/Long;

    if-nez v0, :cond_7

    goto :goto_1a

    .line 82
    :cond_7
    iget-object v0, p0, Lcom/mopub/network/ContentDownloadAnalytics;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getAfterLoadSuccessUrls()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;->AD_LOADED:Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;

    invoke-static {v1}, Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;->access$000(Lcom/mopub/network/ContentDownloadAnalytics$DownloadResult;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/network/ContentDownloadAnalytics;->generateAfterLoadUrls(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-static {v0, p1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method reportBeforeLoad(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/mopub/network/ContentDownloadAnalytics;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getBeforeLoadUrl()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    .line 62
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/network/ContentDownloadAnalytics;->mBeforeLoadTime:Ljava/lang/Long;

    .line 63
    invoke-static {v0, p1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
