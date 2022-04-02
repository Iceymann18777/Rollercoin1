.class public Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/MediationSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppnextMediationSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;
    }
.end annotation


# instance fields
.field private _rewardsAmountRewarded:Ljava/lang/String;

.field private _rewardsCustomParameter:Ljava/lang/String;

.field private _rewardsRewardTypeCurrency:Ljava/lang/String;

.field private _rewardsTransactionId:Ljava/lang/String;

.field private _rewardsUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;)V
    .registers 3

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 242
    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->_rewardsTransactionId:Ljava/lang/String;

    .line 243
    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->_rewardsUserId:Ljava/lang/String;

    .line 244
    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->_rewardsRewardTypeCurrency:Ljava/lang/String;

    .line 245
    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->_rewardsAmountRewarded:Ljava/lang/String;

    .line 246
    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->_rewardsCustomParameter:Ljava/lang/String;

    .line 286
    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->access$600(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->_rewardsTransactionId:Ljava/lang/String;

    .line 287
    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->access$700(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->_rewardsUserId:Ljava/lang/String;

    .line 288
    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->access$800(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->_rewardsRewardTypeCurrency:Ljava/lang/String;

    .line 289
    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->access$900(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->_rewardsAmountRewarded:Ljava/lang/String;

    .line 290
    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;->access$1000(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->_rewardsCustomParameter:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$1;)V
    .registers 3

    .line 241
    invoke-direct {p0, p1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;-><init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;)Ljava/lang/String;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->_rewardsAmountRewarded:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;)Ljava/lang/String;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->_rewardsCustomParameter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;)Ljava/lang/String;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->_rewardsRewardTypeCurrency:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;)Ljava/lang/String;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->_rewardsTransactionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;)Ljava/lang/String;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$AppnextMediationSettings;->_rewardsUserId:Ljava/lang/String;

    return-object p0
.end method
