.class public Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private _rewardsAmountRewarded:Ljava/lang/String;

.field private _rewardsCustomParameter:Ljava/lang/String;

.field private _rewardsRewardTypeCurrency:Ljava/lang/String;

.field private _rewardsTransactionId:Ljava/lang/String;

.field private _rewardsUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 249
    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->_rewardsTransactionId:Ljava/lang/String;

    .line 250
    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->_rewardsUserId:Ljava/lang/String;

    .line 251
    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->_rewardsRewardTypeCurrency:Ljava/lang/String;

    .line 252
    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->_rewardsAmountRewarded:Ljava/lang/String;

    .line 253
    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->_rewardsCustomParameter:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;)Ljava/lang/String;
    .registers 1

    .line 248
    iget-object p0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->_rewardsCustomParameter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;)Ljava/lang/String;
    .registers 1

    .line 248
    iget-object p0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->_rewardsTransactionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;)Ljava/lang/String;
    .registers 1

    .line 248
    iget-object p0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->_rewardsUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;)Ljava/lang/String;
    .registers 1

    .line 248
    iget-object p0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->_rewardsRewardTypeCurrency:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;)Ljava/lang/String;
    .registers 1

    .line 248
    iget-object p0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->_rewardsAmountRewarded:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;
    .registers 3

    .line 281
    new-instance v0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$1;)V

    return-object v0
.end method

.method public withRewardsAmountRewarded(Ljava/lang/String;)Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;
    .registers 2

    .line 271
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->_rewardsAmountRewarded:Ljava/lang/String;

    return-object p0
.end method

.method public withRewardsCustomParameter(Ljava/lang/String;)Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;
    .registers 2

    .line 276
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->_rewardsCustomParameter:Ljava/lang/String;

    return-object p0
.end method

.method public withRewardsRewardTypeCurrency(Ljava/lang/String;)Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->_rewardsRewardTypeCurrency:Ljava/lang/String;

    return-object p0
.end method

.method public withRewardsTransactionId(Ljava/lang/String;)Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->_rewardsTransactionId:Ljava/lang/String;

    return-object p0
.end method

.method public withRewardsUserId(Ljava/lang/String;)Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->_rewardsUserId:Ljava/lang/String;

    return-object p0
.end method
