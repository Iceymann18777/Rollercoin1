.class public Lcom/mopub/mobileads/MoPubRewardedVideoManager;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;,
        Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;
    }
.end annotation


# static fields
.field public static final API_VERSION:I = 0x1

.field private static final CURRENCIES_JSON_REWARDS_MAP_KEY:Ljava/lang/String; = "rewards"

.field private static final CURRENCIES_JSON_REWARD_AMOUNT_KEY:Ljava/lang/String; = "amount"

.field private static final CURRENCIES_JSON_REWARD_NAME_KEY:Ljava/lang/String; = "name"

.field static final CUSTOM_DATA_MAX_LENGTH_BYTES:I = 0x2000

.field private static final CUSTOM_EVENT_PREF_NAME:Ljava/lang/String; = "mopubCustomEventSettings"

.field private static final DEFAULT_LOAD_TIMEOUT:I = 0x7530

.field private static sCustomEventSharedPrefs:Landroid/content/SharedPreferences;

.field private static sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;


# instance fields
.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mCustomEventTimeoutHandler:Landroid/os/Handler;

.field private final mGlobalMediationSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/common/MediationSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstanceMediationSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mopub/common/MediationSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMainActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

.field private final mTimeoutMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

.field private final rewardedAdsLoaders:Lcom/mopub/mobileads/RewardedAdsLoaders;


# direct methods
.method private varargs constructor <init>(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .registers 4

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    .line 130
    new-instance p1, Lcom/mopub/mobileads/RewardedAdData;

    invoke-direct {p1}, Lcom/mopub/mobileads/RewardedAdData;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 131
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCallbackHandler:Landroid/os/Handler;

    .line 132
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mGlobalMediationSettings:Ljava/util/Set;

    .line 133
    invoke-static {p1, p2}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 134
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mInstanceMediationSettings:Ljava/util/Map;

    .line 135
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCustomEventTimeoutHandler:Landroid/os/Handler;

    .line 136
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mTimeoutMap:Ljava/util/Map;

    .line 138
    new-instance p1, Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardedAdsLoaders:Lcom/mopub/mobileads/RewardedAdsLoaders;

    .line 140
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    const-string p2, "mopubCustomEventSettings"

    .line 141
    invoke-static {p1, p2}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sCustomEventSharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000()Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    .registers 1

    .line 61
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Landroid/content/Context;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->cancelTimeouts(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdsLoaders;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardedAdsLoaders:Lcom/mopub/mobileads/RewardedAdsLoaders;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1

    .line 61
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStartedAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 2

    .line 61
    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoPlaybackErrorAction(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .registers 1

    .line 61
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClickedAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .registers 1

    .line 61
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosedAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdData;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    return-object p0
.end method

.method private cancelTimeouts(Ljava/lang/String;)V
    .registers 3

    .line 638
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mTimeoutMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_f

    .line 640
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCustomEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_f
    return-void
.end method

.method static chooseReward(Lcom/mopub/common/MoPubReward;Lcom/mopub/common/MoPubReward;)Lcom/mopub/common/MoPubReward;
    .registers 3

    .line 886
    invoke-virtual {p1}, Lcom/mopub/common/MoPubReward;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    :cond_7
    if-eqz p0, :cond_a

    goto :goto_b

    :cond_a
    move-object p0, p1

    :goto_b
    return-object p0
.end method

.method private failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 4

    .line 627
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 628
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 630
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardedAdsLoaders:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/RewardedAdsLoaders;->hasMoreAds(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/MoPubErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, ""

    .line 631
    invoke-static {p1, v0, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->loadVideo(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_25

    .line 632
    :cond_1c
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_25

    .line 633
    invoke-interface {v0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_25
    :goto_25
    return-void
.end method

.method private fetchAd(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 10

    .line 309
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardedAdsLoaders:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/RewardedAdsLoaders;->isLoading(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 310
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p3, v2, [Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Did not queue rewarded ad request for ad unit %s. A request is already pending."

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 316
    :cond_20
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v2

    const-string v2, "Loading rewarded ad request for ad unit %s with URL %s"

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardedAdsLoaders:Lcom/mopub/mobileads/RewardedAdsLoaders;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/mopub/mobileads/RewardedAdsLoaders;->loadNextAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)Lcom/mopub/volley/Request;

    return-void
.end method

.method static getAdRequestStatusMapping()Lcom/mopub/mobileads/RewardedAdsLoaders;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 952
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_7

    .line 953
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardedAdsLoaders:Lcom/mopub/mobileads/RewardedAdsLoaders;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/mopub/common/MoPubReward;",
            ">;"
        }
    .end annotation

    .line 390
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_b

    .line 391
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdData;->getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 393
    :cond_b
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    .line 394
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getGlobalMediationSettings(Ljava/lang/Class;)Lcom/mopub/common/MediationSettings;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mopub/common/MediationSettings;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 173
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    return-object v1

    .line 177
    :cond_9
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mGlobalMediationSettings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/common/MediationSettings;

    .line 179
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 180
    invoke-virtual {p0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/MediationSettings;

    return-object p0

    :cond_2c
    return-object v1
.end method

.method public static getInstanceMediationSettings(Ljava/lang/Class;Ljava/lang/String;)Lcom/mopub/common/MediationSettings;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mopub/common/MediationSettings;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 200
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    return-object v1

    .line 204
    :cond_9
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mInstanceMediationSettings:Ljava/util/Map;

    .line 205
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_14

    return-object v1

    .line 210
    :cond_14
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MediationSettings;

    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 213
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/MediationSettings;

    return-object p0

    :cond_35
    return-object v1
.end method

.method static getRewardedAdData()Lcom/mopub/mobileads/RewardedAdData;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 942
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_7

    .line 943
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasVideo(Ljava/lang/String;)Z
    .registers 2

    .line 322
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_f

    .line 323
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdData;->getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedAd;

    move-result-object v0

    .line 324
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->isPlayable(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedAd;)Z

    move-result p0

    return p0

    .line 326
    :cond_f
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    const/4 p0, 0x0

    return p0
.end method

.method public static varargs declared-synchronized init(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .registers 5

    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    monitor-enter v0

    .line 145
    :try_start_3
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v1, :cond_f

    .line 146
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;-><init>(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V

    sput-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    goto :goto_1c

    .line 148
    :cond_f
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Tried to call initializeRewardedVideo more than once. Only the first initialization call has any effect."

    aput-object v2, p1, v1

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    .line 151
    :goto_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static isPlayable(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedAd;)Z
    .registers 3

    .line 377
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardedAdsLoaders:Lcom/mopub/mobileads/RewardedAdsLoaders;

    .line 378
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->canPlay(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    if-eqz p1, :cond_16

    .line 380
    invoke-virtual {p1}, Lcom/mopub/mobileads/CustomEventRewardedAd;->isReady()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static varargs loadVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V
    .registers 7

    .line 246
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 248
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v0, :cond_b

    .line 249
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    return-void

    .line 253
    :cond_b
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 254
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 256
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "Did not queue rewarded ad request for ad unit %s. The ad is already showing."

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 261
    :cond_2f
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardedAdsLoaders:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->canPlay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 262
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string v3, "Did not queue rewarded ad request for ad unit %s. This ad unit already finished loading and is ready to show."

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 264
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$1;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$1;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    return-void

    .line 279
    :cond_57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 280
    invoke-static {v0, p2}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 281
    sget-object p2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object p2, p2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mInstanceMediationSettings:Ljava/util/Map;

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    if-nez p1, :cond_6b

    move-object v0, p2

    goto :goto_6d

    .line 283
    :cond_6b
    iget-object v0, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mCustomerId:Ljava/lang/String;

    .line 284
    :goto_6d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 285
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/RewardedAdData;->setCustomerId(Ljava/lang/String;)V

    .line 288
    :cond_7a
    new-instance v0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;)V

    .line 289
    invoke-virtual {v0, p0}, Lcom/mopub/common/AdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v1

    if-nez p1, :cond_8b

    move-object v2, p2

    goto :goto_8d

    :cond_8b
    iget-object v2, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mKeywords:Ljava/lang/String;

    .line 290
    :goto_8d
    invoke-virtual {v1, v2}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v1

    if-eqz p1, :cond_9d

    .line 292
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v2

    if-nez v2, :cond_9a

    goto :goto_9d

    :cond_9a
    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mUserDataKeywords:Ljava/lang/String;

    goto :goto_9e

    :cond_9d
    :goto_9d
    move-object p1, p2

    .line 291
    :goto_9e
    invoke-virtual {v1, p1}, Lcom/mopub/common/AdUrlGenerator;->withUserDataKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    .line 294
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->setSafeAreaValues(Lcom/mopub/common/AdUrlGenerator;)V

    .line 296
    sget-object p1, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mopub/common/AdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->loadVideo(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method private static loadVideo(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 4

    .line 300
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v0, :cond_8

    .line 301
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    return-void

    .line 305
    :cond_8
    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->fetchAd(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method private static logErrorNotInitialized()V
    .registers 4

    .line 905
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MoPub rewarded ad was not initialized. You must call MoPub.initializeSdk() with an Activity Context before loading or attempting to play rewarded ads."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public static onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 742
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 743
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 744
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 745
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$9;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$9;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 752
    :cond_17
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$10;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$10;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    :goto_1f
    return-void
.end method

.method private static onRewardedVideoClickedAction(Ljava/lang/String;)V
    .registers 3

    .line 762
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 764
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_c

    .line 765
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoClicked(Ljava/lang/String;)V

    .line 768
    :cond_c
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardedAdsLoaders:Lcom/mopub/mobileads/RewardedAdsLoaders;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->onRewardedVideoClicked(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 773
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 774
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 775
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 776
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$11;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$11;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 783
    :cond_17
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 790
    :goto_1f
    sget-object p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/RewardedAdData;->setCurrentlyShowingAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method private static onRewardedVideoClosedAction(Ljava/lang/String;)V
    .registers 2

    .line 794
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 796
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardedAdsLoaders:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->markPlayed(Ljava/lang/String;)V

    .line 797
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_13

    .line 798
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoClosed(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .line 807
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 808
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 810
    invoke-static {p0, p1, p2, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardOnClient(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V

    .line 811
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardOnServer(Ljava/lang/String;)V

    return-void
.end method

.method public static onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubErrorCode;",
            ")V"
        }
    .end annotation

    .line 671
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$4;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 657
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$3;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRewardedVideoPlaybackError(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubErrorCode;",
            ")V"
        }
    .end annotation

    .line 711
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 712
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 714
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$7;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 721
    :cond_17
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;

    invoke-direct {p0, v0, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 728
    :goto_1f
    sget-object p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/RewardedAdData;->setCurrentlyShowingAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method private static onRewardedVideoPlaybackErrorAction(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 3

    .line 732
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 733
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 734
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardedAdsLoaders:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->markFail(Ljava/lang/String;)V

    .line 735
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_16

    .line 736
    invoke-interface {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoPlaybackError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_16
    return-void
.end method

.method public static onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 682
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 683
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 685
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$5;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 692
    :cond_17
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$6;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$6;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    :goto_1f
    return-void
.end method

.method private static onRewardedVideoStartedAction(Ljava/lang/String;)V
    .registers 3

    .line 702
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 703
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_c

    .line 704
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoStarted(Ljava/lang/String;)V

    .line 706
    :cond_c
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardedAdsLoaders:Lcom/mopub/mobileads/RewardedAdsLoaders;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->onRewardedVideoStarted(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private parseMultiCurrencyJson(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 603
    invoke-static {p2}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "rewards"

    .line 605
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/mopub/common/util/Json;->jsonArrayToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 608
    array-length v0, p2

    const-string v1, "amount"

    const-string v2, "name"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_30

    .line 609
    aget-object v0, p2, v3

    invoke-static {v0}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 610
    iget-object v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 612
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 613
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 610
    invoke-virtual {v4, p1, v5, v0}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitRewardMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_30
    array-length v0, p2

    :goto_31
    if-ge v3, v0, :cond_4d

    aget-object v4, p2, v3

    .line 618
    invoke-static {v4}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 619
    iget-object v5, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 621
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 622
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 619
    invoke-virtual {v5, p1, v6, v4}, Lcom/mopub/mobileads/RewardedAdData;->addAvailableReward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_4d
    return-void
.end method

.method private static postToInstance(Ljava/lang/Runnable;)V
    .registers 2

    .line 899
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_9

    .line 900
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void
.end method

.method private static rewardOnClient(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/common/MoPubReward;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 858
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;-><init>(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static rewardOnServer(Ljava/lang/String;)V
    .registers 3

    .line 815
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdData;->getServerCompletionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 817
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 818
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;

    invoke-direct {v1, p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method

.method public static selectReward(Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .registers 3

    .line 406
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_a

    .line 407
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v0, p0, p1}, Lcom/mopub/mobileads/RewardedAdData;->selectReward(Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    goto :goto_d

    .line 409
    :cond_a
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    :goto_d
    return-void
.end method

.method static setCustomEventSharedPrefs(Landroid/content/SharedPreferences;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 961
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 963
    sput-object p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sCustomEventSharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private static setSafeAreaValues(Lcom/mopub/common/AdUrlGenerator;)V
    .registers 3

    .line 414
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 417
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceDimensions()Landroid/graphics/Point;

    move-result-object v0

    .line 418
    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->withRequestedAdSize(Landroid/graphics/Point;)Lcom/mopub/common/AdUrlGenerator;

    .line 421
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_44

    .line 422
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_25

    return-void

    .line 426
    :cond_25
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_36

    return-void

    .line 430
    :cond_36
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_41

    return-void

    .line 434
    :cond_41
    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->withWindowInsets(Landroid/view/WindowInsets;)Lcom/mopub/common/AdUrlGenerator;

    :cond_44
    return-void
.end method

.method public static setVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V
    .registers 2

    .line 225
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_7

    .line 226
    iput-object p0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    goto :goto_a

    .line 228
    :cond_7
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    :goto_a
    return-void
.end method

.method public static showVideo(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 332
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->showVideo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 337
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v0, :cond_8

    .line 338
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    return-void

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_38

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_38

    .line 343
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v1, [Ljava/lang/Object;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 347
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    const-string v3, "Provided rewarded ad custom data parameter longer than supported(%d bytes, %d maximum)"

    .line 343
    invoke-static {v5, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-static {v2, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 350
    :cond_38
    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v2, v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v2, p0}, Lcom/mopub/mobileads/RewardedAdData;->getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedAd;

    move-result-object v2

    .line 351
    invoke-static {p0, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->isPlayable(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedAd;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 353
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdData;->getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 354
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdData;->getMoPubReward(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;

    move-result-object v0

    if-nez v0, :cond_66

    .line 355
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->REWARD_NOT_SELECTED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p1, p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 359
    :cond_66
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 360
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v3, v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 361
    invoke-virtual {v3, p0}, Lcom/mopub/mobileads/RewardedAdData;->getMoPubReward(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;

    move-result-object v3

    .line 359
    invoke-virtual {v0, v1, v3}, Lcom/mopub/mobileads/RewardedAdData;->updateCustomEventLastShownRewardMapping(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;)V

    .line 362
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v0, p0, p1}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitToCustomDataMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {p1, p0}, Lcom/mopub/mobileads/RewardedAdData;->setCurrentlyShowingAdUnitId(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v2}, Lcom/mopub/mobileads/CustomEventRewardedAd;->show()V

    goto :goto_b3

    .line 366
    :cond_8b
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardedAdsLoaders:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {p1, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->isLoading(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 367
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Rewarded ad is not ready to be shown yet."

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_ac

    .line 369
    :cond_a1
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No rewarded ad loading or loaded."

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 372
    :goto_ac
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_NOT_AVAILABLE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p1, p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :goto_b3
    return-void
.end method

.method public static updateActivity(Landroid/app/Activity;)V
    .registers 3

    .line 155
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_c

    .line 156
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    goto :goto_f

    .line 158
    :cond_c
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    :goto_f
    return-void
.end method


# virtual methods
.method onAdError(Lcom/mopub/volley/VolleyError;Ljava/lang/String;)V
    .registers 5

    .line 570
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 571
    instance-of v1, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_20

    .line 572
    move-object v0, p1

    check-cast v0, Lcom/mopub/network/MoPubNetworkError;

    .line 573
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$15;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 581
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_20

    .line 576
    :cond_1e
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 584
    :cond_20
    :goto_20
    instance-of p1, p1, Lcom/mopub/volley/NoConnectionError;

    if-eqz p1, :cond_26

    .line 585
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 587
    :cond_26
    invoke-direct {p0, p2, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method onAdSuccess(Lcom/mopub/network/AdResponse;)V
    .registers 15

    .line 440
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7530

    .line 442
    invoke-virtual {p1, v1}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis(I)Ljava/lang/Integer;

    move-result-object v1

    .line 443
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_23

    .line 446
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Couldn\'t create custom event, class name was null."

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 447
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 453
    :cond_23
    iget-object v5, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v5, v0}, Lcom/mopub/mobileads/RewardedAdData;->getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedAd;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 456
    invoke-virtual {v5}, Lcom/mopub/mobileads/CustomEventRewardedAd;->onInvalidate()V

    .line 461
    :cond_2e
    :try_start_2e
    const-class v5, Lcom/mopub/mobileads/CustomEventRewardedAd;

    .line 462
    invoke-static {v2, v5}, Lcom/mopub/common/util/Reflection;->instantiateClassWithEmptyConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mopub/mobileads/CustomEventRewardedAd;

    .line 467
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    const-string v7, "com_mopub_ad_unit_id"

    .line 468
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "rewarded-ad-currency-name"

    .line 470
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyName()Ljava/lang/String;

    move-result-object v8

    .line 469
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "rewarded-ad-currency-value-string"

    .line 472
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyAmount()Ljava/lang/String;

    move-result-object v8

    .line 471
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "rewarded-ad-duration"

    .line 474
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedDuration()Ljava/lang/Integer;

    move-result-object v8

    .line 473
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "should-reward-on-click"

    .line 476
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->shouldRewardOnClick()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 475
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "mopub-intent-ad-report"

    .line 477
    new-instance v8, Lcom/mopub/common/AdReport;

    iget-object v9, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    .line 478
    invoke-static {v9}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v9

    invoke-direct {v8, v0, v9, p1}, Lcom/mopub/common/AdReport;-><init>(Ljava/lang/String;Lcom/mopub/common/ClientMetadata;Lcom/mopub/network/AdResponse;)V

    .line 477
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "broadcastIdentifier"

    .line 479
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "rewarded-ad-customer-id"

    .line 481
    iget-object v8, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 482
    invoke-virtual {v8}, Lcom/mopub/mobileads/RewardedAdData;->getCustomerId()Ljava/lang/String;

    move-result-object v8

    .line 481
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedCurrencies()Ljava/lang/String;

    move-result-object v7

    .line 488
    iget-object v8, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v8, v0}, Lcom/mopub/mobileads/RewardedAdData;->resetAvailableRewards(Ljava/lang/String;)V

    .line 491
    iget-object v8, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v8, v0}, Lcom/mopub/mobileads/RewardedAdData;->resetSelectedReward(Ljava/lang/String;)V

    .line 495
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b2

    .line 496
    iget-object v7, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 497
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyName()Ljava/lang/String;

    move-result-object v8

    .line 498
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyAmount()Ljava/lang/String;

    move-result-object v9

    .line 496
    invoke-virtual {v7, v0, v8, v9}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitRewardMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_b1} :catch_165

    goto :goto_b5

    .line 501
    :cond_b2
    :try_start_b2
    invoke-direct {p0, v0, v7}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->parseMultiCurrencyJson(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_145

    .line 509
    :goto_b5
    :try_start_b5
    iget-object v7, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 510
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCompletionUrl()Ljava/lang/String;

    move-result-object v8

    .line 509
    invoke-virtual {v7, v0, v8}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitToServerCompletionUrlMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v7, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    if-nez v7, :cond_d9

    .line 514
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "Could not load custom event because Activity reference was null. Call MoPub#updateActivity before requesting more rewarded ads."

    aput-object v5, v1, v3

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 519
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardedAdsLoaders:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->markFail(Ljava/lang/String;)V

    return-void

    .line 524
    :cond_d9
    new-instance v8, Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;

    invoke-direct {v8, p0, v5}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/mobileads/CustomEventRewardedAd;)V

    .line 533
    iget-object v9, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCustomEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v10, v1

    invoke-virtual {v9, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 534
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mTimeoutMap:Ljava/util/Map;

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object p1

    .line 542
    instance-of v1, v5, Lcom/mopub/mobileads/CustomEventRewardedVideo;

    if-eqz v1, :cond_123

    .line 543
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 545
    sget-object v8, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v9, v4, [Ljava/lang/Object;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Updating init settings for custom event %s with params %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v2, v12, v3

    aput-object v1, v12, v4

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v8, v9}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 549
    sget-object v8, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sCustomEventSharedPrefs:Landroid/content/SharedPreferences;

    .line 550
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 551
    invoke-interface {v8, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 552
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 556
    :cond_123
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v8, v4, [Ljava/lang/Object;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Loading custom event with class name %s"

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v2, v11, v3

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v1, v8}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 558
    invoke-virtual {v5, v7, v6, p1}, Lcom/mopub/mobileads/CustomEventRewardedAd;->loadCustomEvent(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 560
    invoke-virtual {v5}, Lcom/mopub/mobileads/CustomEventRewardedAd;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    .line 561
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v1, v0, v5, p1}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitCustomEventMapping(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedAd;Ljava/lang/String;)V

    goto :goto_17f

    .line 503
    :catch_145
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing rewarded currencies JSON header: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 504
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->REWARDED_CURRENCIES_PARSING_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_164} :catch_165

    return-void

    .line 563
    :catch_165
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "Couldn\'t create custom event with class name %s"

    invoke-static {v5, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 565
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :goto_17f
    return-void
.end method
