.class public Lcom/mopub/network/AdResponse$Builder;
.super Ljava/lang/Object;
.source "AdResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/AdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adGroupId:Ljava/lang/String;

.field private adTimeoutDelayMillis:Ljava/lang/Integer;

.field private adType:Ljava/lang/String;

.field private adUnitId:Ljava/lang/String;

.field private afterLoadFailUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private afterLoadSuccessUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private afterLoadUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowCustomClose:Z

.field private beforeLoadUrl:Ljava/lang/String;

.field private browserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

.field private clickTrackingUrl:Ljava/lang/String;

.field private customEventClassName:Ljava/lang/String;

.field private dspCreativeId:Ljava/lang/String;

.field private failoverUrl:Ljava/lang/String;

.field private fullAdType:Ljava/lang/String;

.field private height:Ljava/lang/Integer;

.field private impressionData:Lcom/mopub/network/ImpressionData;

.field private impressionTrackingUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private jsonBody:Lorg/json/JSONObject;

.field private networkType:Ljava/lang/String;

.field private refreshTimeMillis:Ljava/lang/Integer;

.field private requestId:Ljava/lang/String;

.field private responseBody:Ljava/lang/String;

.field private rewardedCurrencies:Ljava/lang/String;

.field private rewardedDuration:Ljava/lang/Integer;

.field private rewardedVideoCompletionUrl:Ljava/lang/String;

.field private rewardedVideoCurrencyAmount:Ljava/lang/String;

.field private rewardedVideoCurrencyName:Ljava/lang/String;

.field private serverExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shouldRewardOnClick:Z

.field private width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->impressionTrackingUrls:Ljava/util/List;

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->afterLoadUrls:Ljava/util/List;

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->afterLoadSuccessUrls:Ljava/util/List;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->afterLoadFailUrls:Ljava/util/List;

    .line 366
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->serverExtras:Ljava/util/Map;

    const/4 v0, 0x0

    .line 368
    iput-boolean v0, p0, Lcom/mopub/network/AdResponse$Builder;->allowCustomClose:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->adType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->adGroupId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/mopub/network/AdResponse$Builder;)Z
    .registers 1

    .line 330
    iget-boolean p0, p0, Lcom/mopub/network/AdResponse$Builder;->shouldRewardOnClick:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/mopub/network/AdResponse$Builder;)Lcom/mopub/network/ImpressionData;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->impressionData:Lcom/mopub/network/ImpressionData;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->clickTrackingUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->impressionTrackingUrls:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->failoverUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->beforeLoadUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->afterLoadUrls:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->afterLoadSuccessUrls:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->afterLoadFailUrls:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->adUnitId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->width:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->height:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->adTimeoutDelayMillis:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->refreshTimeMillis:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->dspCreativeId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->responseBody:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/mopub/network/AdResponse$Builder;)Lorg/json/JSONObject;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->jsonBody:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->customEventClassName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/mopub/network/AdResponse$Builder;)Lcom/mopub/common/MoPub$BrowserAgent;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->browserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/Map;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->serverExtras:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->fullAdType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/mopub/network/AdResponse$Builder;)Z
    .registers 1

    .line 330
    iget-boolean p0, p0, Lcom/mopub/network/AdResponse$Builder;->allowCustomClose:Z

    return p0
.end method

.method static synthetic access$400(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->networkType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->rewardedVideoCurrencyName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->rewardedVideoCurrencyAmount:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->rewardedCurrencies:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->rewardedVideoCompletionUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->rewardedDuration:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/mopub/network/AdResponse;
    .registers 3

    .line 535
    new-instance v0, Lcom/mopub/network/AdResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/network/AdResponse;-><init>(Lcom/mopub/network/AdResponse$Builder;Lcom/mopub/network/AdResponse$1;)V

    return-object v0
.end method

.method public setAdGroupId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 376
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->adGroupId:Ljava/lang/String;

    return-object p0
.end method

.method public setAdTimeoutDelayMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 486
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->adTimeoutDelayMillis:Ljava/lang/Integer;

    return-object p0
.end method

.method public setAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 371
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->adType:Ljava/lang/String;

    return-object p0
.end method

.method public setAdUnitId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->adUnitId:Ljava/lang/String;

    return-object p0
.end method

.method public setAfterLoadFailUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    .line 468
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 469
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->afterLoadFailUrls:Ljava/util/List;

    return-object p0
.end method

.method public setAfterLoadSuccessUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    .line 462
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 463
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->afterLoadSuccessUrls:Ljava/util/List;

    return-object p0
.end method

.method public setAfterLoadUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    .line 456
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 457
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->afterLoadUrls:Ljava/util/List;

    return-object p0
.end method

.method setAllowCustomClose(Z)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 530
    iput-boolean p1, p0, Lcom/mopub/network/AdResponse$Builder;->allowCustomClose:Z

    return-object p0
.end method

.method public setBeforeLoadUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 451
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->beforeLoadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setBrowserAgent(Lcom/mopub/common/MoPub$BrowserAgent;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 516
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->browserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    return-object p0
.end method

.method public setClickTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 434
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->clickTrackingUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomEventClassName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 511
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->customEventClassName:Ljava/lang/String;

    return-object p0
.end method

.method public setDimensions(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .registers 3

    .line 480
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->width:Ljava/lang/Integer;

    .line 481
    iput-object p2, p0, Lcom/mopub/network/AdResponse$Builder;->height:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDspCreativeId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 496
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->dspCreativeId:Ljava/lang/String;

    return-object p0
.end method

.method public setFailoverUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 446
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->failoverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setFullAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->fullAdType:Ljava/lang/String;

    return-object p0
.end method

.method public setImpressionData(Lcom/mopub/network/ImpressionData;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->impressionData:Lcom/mopub/network/ImpressionData;

    return-object p0
.end method

.method public setImpressionTrackingUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    .line 439
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 441
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->impressionTrackingUrls:Ljava/util/List;

    return-object p0
.end method

.method public setJsonBody(Lorg/json/JSONObject;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 506
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->jsonBody:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setNetworkType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 391
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->networkType:Ljava/lang/String;

    return-object p0
.end method

.method public setRefreshTimeMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 491
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->refreshTimeMillis:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 474
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public setResponseBody(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 501
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->responseBody:Ljava/lang/String;

    return-object p0
.end method

.method public setRewardedCurrencies(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 408
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->rewardedCurrencies:Ljava/lang/String;

    return-object p0
.end method

.method public setRewardedDuration(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 419
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->rewardedDuration:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRewardedVideoCompletionUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 414
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->rewardedVideoCompletionUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setRewardedVideoCurrencyAmount(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 403
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->rewardedVideoCurrencyAmount:Ljava/lang/String;

    return-object p0
.end method

.method public setRewardedVideoCurrencyName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 397
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->rewardedVideoCurrencyName:Ljava/lang/String;

    return-object p0
.end method

.method public setServerExtras(Ljava/util/Map;)Lcom/mopub/network/AdResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    if-nez p1, :cond_a

    .line 522
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->serverExtras:Ljava/util/Map;

    goto :goto_11

    .line 524
    :cond_a
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->serverExtras:Ljava/util/Map;

    :goto_11
    return-object p0
.end method

.method public setShouldRewardOnClick(Z)Lcom/mopub/network/AdResponse$Builder;
    .registers 2

    .line 424
    iput-boolean p1, p0, Lcom/mopub/network/AdResponse$Builder;->shouldRewardOnClick:Z

    return-object p0
.end method
