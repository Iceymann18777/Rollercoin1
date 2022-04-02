.class public Lcom/mopub/network/AdResponse;
.super Ljava/lang/Object;
.source "AdResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/AdResponse$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAdGroupId:Ljava/lang/String;

.field private final mAdTimeoutDelayMillis:Ljava/lang/Integer;

.field private final mAdType:Ljava/lang/String;

.field private final mAdUnitId:Ljava/lang/String;

.field private final mAfterLoadFailUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAfterLoadSuccessUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAfterLoadUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllowCustomClose:Z

.field private final mBeforeLoadUrl:Ljava/lang/String;

.field private final mBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

.field private final mClickTrackingUrl:Ljava/lang/String;

.field private final mCustomEventClassName:Ljava/lang/String;

.field private final mDspCreativeId:Ljava/lang/String;

.field private final mFailoverUrl:Ljava/lang/String;

.field private final mFullAdType:Ljava/lang/String;

.field private final mHeight:Ljava/lang/Integer;

.field private final mImpressionData:Lcom/mopub/network/ImpressionData;

.field private final mImpressionTrackingUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mJsonBody:Lorg/json/JSONObject;

.field private final mNetworkType:Ljava/lang/String;

.field private final mRefreshTimeMillis:Ljava/lang/Integer;

.field private final mRequestId:Ljava/lang/String;

.field private final mResponseBody:Ljava/lang/String;

.field private final mRewardedCurrencies:Ljava/lang/String;

.field private final mRewardedDuration:Ljava/lang/Integer;

.field private final mRewardedVideoCompletionUrl:Ljava/lang/String;

.field private final mRewardedVideoCurrencyAmount:Ljava/lang/String;

.field private final mRewardedVideoCurrencyName:Ljava/lang/String;

.field private final mServerExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mShouldRewardOnClick:Z

.field private final mTimestamp:J

.field private final mWidth:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/mopub/network/AdResponse$Builder;)V
    .registers 4

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$000(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mAdType:Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$100(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mAdGroupId:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$200(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mAdUnitId:Ljava/lang/String;

    .line 102
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$300(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mFullAdType:Ljava/lang/String;

    .line 103
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$400(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mNetworkType:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$500(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedVideoCurrencyName:Ljava/lang/String;

    .line 106
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$600(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedVideoCurrencyAmount:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$700(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedCurrencies:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$800(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedVideoCompletionUrl:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$900(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedDuration:Ljava/lang/Integer;

    .line 110
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1000(Lcom/mopub/network/AdResponse$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mopub/network/AdResponse;->mShouldRewardOnClick:Z

    .line 112
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1100(Lcom/mopub/network/AdResponse$Builder;)Lcom/mopub/network/ImpressionData;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mImpressionData:Lcom/mopub/network/ImpressionData;

    .line 113
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1200(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mClickTrackingUrl:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1300(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mImpressionTrackingUrls:Ljava/util/List;

    .line 115
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1400(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mFailoverUrl:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1500(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mBeforeLoadUrl:Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1600(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mAfterLoadUrls:Ljava/util/List;

    .line 118
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1700(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mAfterLoadSuccessUrls:Ljava/util/List;

    .line 119
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1800(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mAfterLoadFailUrls:Ljava/util/List;

    .line 120
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$1900(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mRequestId:Ljava/lang/String;

    .line 121
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$2000(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mWidth:Ljava/lang/Integer;

    .line 122
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$2100(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mHeight:Ljava/lang/Integer;

    .line 123
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$2200(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mAdTimeoutDelayMillis:Ljava/lang/Integer;

    .line 124
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$2300(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mRefreshTimeMillis:Ljava/lang/Integer;

    .line 125
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$2400(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mDspCreativeId:Ljava/lang/String;

    .line 126
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$2500(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mResponseBody:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$2600(Lcom/mopub/network/AdResponse$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mJsonBody:Lorg/json/JSONObject;

    .line 128
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$2700(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mCustomEventClassName:Ljava/lang/String;

    .line 129
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$2800(Lcom/mopub/network/AdResponse$Builder;)Lcom/mopub/common/MoPub$BrowserAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    .line 130
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$2900(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/AdResponse;->mServerExtras:Ljava/util/Map;

    .line 131
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/network/AdResponse;->mTimestamp:J

    .line 132
    invoke-static {p1}, Lcom/mopub/network/AdResponse$Builder;->access$3000(Lcom/mopub/network/AdResponse$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mopub/network/AdResponse;->mAllowCustomClose:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/network/AdResponse$Builder;Lcom/mopub/network/AdResponse$1;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1}, Lcom/mopub/network/AdResponse;-><init>(Lcom/mopub/network/AdResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public allowCustomClose()Z
    .registers 2

    .line 296
    iget-boolean v0, p0, Lcom/mopub/network/AdResponse;->mAllowCustomClose:Z

    return v0
.end method

.method public getAdGroupId()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mAdGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTimeoutMillis(I)Ljava/lang/Integer;
    .registers 4

    .line 261
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mAdTimeoutDelayMillis:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_d

    goto :goto_10

    .line 264
    :cond_d
    iget-object p1, p0, Lcom/mopub/network/AdResponse;->mAdTimeoutDelayMillis:Ljava/lang/Integer;

    return-object p1

    .line 262
    :cond_10
    :goto_10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getAdType()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mAdType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getAfterLoadFailUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mAfterLoadFailUrls:Ljava/util/List;

    return-object v0
.end method

.method public getAfterLoadSuccessUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mAfterLoadSuccessUrls:Ljava/util/List;

    return-object v0
.end method

.method public getAfterLoadUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mAfterLoadUrls:Ljava/util/List;

    return-object v0
.end method

.method public getBeforeLoadUrl()Ljava/lang/String;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mBeforeLoadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBrowserAgent()Lcom/mopub/common/MoPub$BrowserAgent;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    return-object v0
.end method

.method public getClickTrackingUrl()Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mClickTrackingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomEventClassName()Ljava/lang/String;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mCustomEventClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getDspCreativeId()Ljava/lang/String;
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mDspCreativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getFailoverUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mFailoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFullAdType()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mFullAdType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImpressionData()Lcom/mopub/network/ImpressionData;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mImpressionData:Lcom/mopub/network/ImpressionData;

    return-object v0
.end method

.method public getImpressionTrackingUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mImpressionTrackingUrls:Ljava/util/List;

    return-object v0
.end method

.method public getJsonBody()Lorg/json/JSONObject;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mJsonBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTimeMillis()Ljava/lang/Integer;
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mRefreshTimeMillis:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedCurrencies()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedCurrencies:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedDuration()Ljava/lang/Integer;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRewardedVideoCompletionUrl()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedVideoCompletionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoCurrencyAmount()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedVideoCurrencyAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoCurrencyName()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mRewardedVideoCurrencyName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerExtras()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mServerExtras:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getStringBody()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mResponseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 292
    iget-wide v0, p0, Lcom/mopub/network/AdResponse;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasJson()Z
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/mopub/network/AdResponse;->mJsonBody:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public shouldRewardOnClick()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Lcom/mopub/network/AdResponse;->mShouldRewardOnClick:Z

    return v0
.end method

.method public toBuilder()Lcom/mopub/network/AdResponse$Builder;
    .registers 4

    .line 300
    new-instance v0, Lcom/mopub/network/AdResponse$Builder;

    invoke-direct {v0}, Lcom/mopub/network/AdResponse$Builder;-><init>()V

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mAdType:Ljava/lang/String;

    .line 301
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mAdGroupId:Ljava/lang/String;

    .line 302
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAdGroupId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mNetworkType:Ljava/lang/String;

    .line 303
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setNetworkType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mRewardedVideoCurrencyName:Ljava/lang/String;

    .line 304
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCurrencyName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mRewardedVideoCurrencyAmount:Ljava/lang/String;

    .line 305
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCurrencyAmount(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mRewardedCurrencies:Ljava/lang/String;

    .line 306
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setRewardedCurrencies(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mRewardedVideoCompletionUrl:Ljava/lang/String;

    .line 307
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCompletionUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mRewardedDuration:Ljava/lang/Integer;

    .line 308
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setRewardedDuration(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mopub/network/AdResponse;->mShouldRewardOnClick:Z

    .line 309
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setShouldRewardOnClick(Z)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mImpressionData:Lcom/mopub/network/ImpressionData;

    .line 310
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setImpressionData(Lcom/mopub/network/ImpressionData;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mClickTrackingUrl:Ljava/lang/String;

    .line 311
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setClickTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mImpressionTrackingUrls:Ljava/util/List;

    .line 312
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setImpressionTrackingUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mFailoverUrl:Ljava/lang/String;

    .line 313
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setFailoverUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mBeforeLoadUrl:Ljava/lang/String;

    .line 314
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setBeforeLoadUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mAfterLoadUrls:Ljava/util/List;

    .line 315
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAfterLoadUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mAfterLoadSuccessUrls:Ljava/util/List;

    .line 316
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAfterLoadSuccessUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mAfterLoadFailUrls:Ljava/util/List;

    .line 317
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAfterLoadFailUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mWidth:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/mopub/network/AdResponse;->mHeight:Ljava/lang/Integer;

    .line 318
    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/AdResponse$Builder;->setDimensions(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mAdTimeoutDelayMillis:Ljava/lang/Integer;

    .line 319
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAdTimeoutDelayMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mRefreshTimeMillis:Ljava/lang/Integer;

    .line 320
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setRefreshTimeMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mDspCreativeId:Ljava/lang/String;

    .line 321
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setDspCreativeId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mResponseBody:Ljava/lang/String;

    .line 322
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setResponseBody(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mJsonBody:Lorg/json/JSONObject;

    .line 323
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setJsonBody(Lorg/json/JSONObject;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mCustomEventClassName:Ljava/lang/String;

    .line 324
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setCustomEventClassName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    .line 325
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setBrowserAgent(Lcom/mopub/common/MoPub$BrowserAgent;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mopub/network/AdResponse;->mAllowCustomClose:Z

    .line 326
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setAllowCustomClose(Z)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/AdResponse;->mServerExtras:Ljava/util/Map;

    .line 327
    invoke-virtual {v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setServerExtras(Ljava/util/Map;)Lcom/mopub/network/AdResponse$Builder;

    move-result-object v0

    return-object v0
.end method
