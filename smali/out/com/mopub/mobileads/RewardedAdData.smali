.class Lcom/mopub/mobileads/RewardedAdData;
.super Ljava/lang/Object;
.source "RewardedAdData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;
    }
.end annotation


# instance fields
.field private final mAdUnitToAvailableRewardsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mopub/common/MoPubReward;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAdUnitToCustomDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdUnitToCustomEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdUnitToRewardMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mopub/common/MoPubReward;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdUnitToServerCompletionUrlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentlyShowingAdUnitId:Ljava/lang/String;

.field private final mCustomEventToMoPubIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCustomEventToRewardMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomerId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToCustomEventMap:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToRewardMap:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToServerCompletionUrlMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToCustomDataMap:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToRewardMap:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method addAvailableReward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 81
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_66

    if-nez p3, :cond_a

    goto :goto_66

    .line 90
    :cond_a
    :try_start_a
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_50

    if-gez v2, :cond_26

    .line 98
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    const-string p3, "Currency amount cannot be negative: %s"

    invoke-static {v2, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 103
    :cond_26
    iget-object p3, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3e

    .line 104
    iget-object p3, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 105
    invoke-static {p2, v2}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 107
    :cond_3e
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 108
    invoke-static {p2, v2}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object p2, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4f
    return-void

    .line 92
    :catch_50
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    const-string p3, "Currency amount must be an integer: %s"

    invoke-static {v2, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 83
    :cond_66
    :goto_66
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object p3, v4, v1

    const-string p2, "Currency name and amount cannot be null: name = %s, amount = %s"

    invoke-static {v3, p2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-static {p1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method associateCustomEventWithMoPubId(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 253
    new-instance v0, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;

    invoke-direct {v0, p1, p2}, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    .line 257
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 258
    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 259
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 261
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 262
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 263
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 265
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 266
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 276
    :cond_4b
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_5f

    .line 278
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 279
    iget-object p2, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_5f
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clear()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToCustomEventMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 313
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToRewardMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 314
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 315
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToServerCompletionUrlMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 316
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToCustomDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 317
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToRewardMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 318
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCurrentlyShowingAdUnitId:Ljava/lang/String;

    .line 320
    iput-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomerId:Ljava/lang/String;

    return-void
.end method

.method existsInAvailableRewards(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 333
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 334
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 336
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/RewardedAdData;->getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MoPubReward;

    .line 337
    invoke-virtual {v0}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result v0

    if-ne v0, p3, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
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

    .line 115
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_11

    .line 117
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    :cond_11
    return-object p1
.end method

.method getCurrentlyShowingAdUnitId()Ljava/lang/String;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCurrentlyShowingAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToCustomDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedAd;
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToCustomEventMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/CustomEventRewardedAd;

    return-object p1
.end method

.method getCustomerId()Ljava/lang/String;
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomerId:Ljava/lang/String;

    return-object v0
.end method

.method getLastShownMoPubReward(Ljava/lang/Class;)Lcom/mopub/common/MoPubReward;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;)",
            "Lcom/mopub/common/MoPubReward;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToRewardMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/common/MoPubReward;

    return-object p1
.end method

.method getMoPubIdsForAdNetwork(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_32

    .line 174
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 175
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;

    iget-object v2, v2, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;->customEventClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_11

    .line 178
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {p2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    :cond_31
    return-object p2

    .line 183
    :cond_32
    new-instance v0, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;

    invoke-direct {v0, p1, p2}, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    .line 185
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    goto :goto_4c

    .line 186
    :cond_48
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    :goto_4c
    return-object p1
.end method

.method getMoPubReward(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToRewardMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/common/MoPubReward;

    return-object p1
.end method

.method getServerCompletionUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 161
    :cond_8
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToServerCompletionUrlMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method resetAvailableRewards(Ljava/lang/String;)V
    .registers 3

    .line 142
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_16

    .line 144
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 145
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_16
    return-void
.end method

.method resetSelectedReward(Ljava/lang/String;)V
    .registers 3

    .line 150
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, p1, v0, v0}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitRewardMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method selectReward(Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .registers 7

    .line 121
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 122
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToAvailableRewardsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_45

    .line 125
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_45

    .line 131
    :cond_19
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 132
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Selected reward is invalid for AdUnit %s."

    invoke-static {v3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 137
    :cond_35
    invoke-virtual {p2}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p2}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 137
    invoke-virtual {p0, p1, v0, p2}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitRewardMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_45
    :goto_45
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "AdUnit %s does not have any rewards."

    invoke-static {v3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method setCurrentlyShowingAdUnitId(Ljava/lang/String;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedAdData;->mCurrentlyShowingAdUnitId:Ljava/lang/String;

    return-void
.end method

.method setCustomerId(Ljava/lang/String;)V
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomerId:Ljava/lang/String;

    return-void
.end method

.method updateAdUnitCustomEventMapping(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedAd;Ljava/lang/String;)V
    .registers 5

    .line 194
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToCustomEventMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2, p3, p1}, Lcom/mopub/mobileads/RewardedAdData;->associateCustomEventWithMoPubId(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method updateAdUnitRewardMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 202
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p2, :cond_46

    if-nez p3, :cond_8

    goto :goto_46

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 211
    :try_start_a
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_30

    if-gez v2, :cond_26

    .line 219
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    const-string p3, "Currency amount cannot be negative: %s"

    invoke-static {v2, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 224
    :cond_26
    iget-object p3, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToRewardMap:Ljava/util/Map;

    invoke-static {p2, v2}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 213
    :catch_30
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    const-string p3, "Currency amount must be an integer: %s"

    invoke-static {v2, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 205
    :cond_46
    :goto_46
    iget-object p2, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToRewardMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method updateAdUnitToCustomDataMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 290
    invoke-static {p1}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToCustomDataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method updateAdUnitToServerCompletionUrlMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 229
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mAdUnitToServerCompletionUrlMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method updateCustomEventLastShownRewardMapping(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .line 245
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdData;->mCustomEventToRewardMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
