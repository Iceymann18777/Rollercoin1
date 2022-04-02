.class public abstract Lcom/mopub/mobileads/MoPubRewardedAd;
.super Lcom/mopub/mobileads/CustomEventRewardedAd;
.source "MoPubRewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;
    }
.end annotation


# instance fields
.field protected mAdUnitId:Ljava/lang/String;

.field private mIsLoaded:Z

.field private mRewardedAdCurrencyAmount:I

.field private mRewardedAdCurrencyName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedAd;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/mopub/mobileads/MoPubRewardedAd;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mIsLoaded:Z

    return p1
.end method


# virtual methods
.method protected checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method createListener(Ljava/lang/Class;)Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/MoPubRewardedAd;",
            ">;)",
            "Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedAd;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRewardedAdCurrencyAmount()I
    .registers 2

    .line 211
    iget v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    return v0
.end method

.method protected getRewardedAdCurrencyName()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyName:Ljava/lang/String;

    return-object v0
.end method

.method protected isReady()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mIsLoaded:Z

    return v0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "activity cannot be null"

    .line 60
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "localExtras cannot be null"

    .line 61
    invoke-static {p2, p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "serverExtras cannot be null"

    .line 62
    invoke-static {p3, p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rewarded-ad-currency-name"

    .line 64
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 66
    instance-of p3, p1, Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_20

    .line 67
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyName:Ljava/lang/String;

    goto :goto_2f

    .line 69
    :cond_20
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p3, v0, [Ljava/lang/Object;

    const-string v2, "No currency name specified for rewarded video. Using the default name."

    aput-object v2, p3, v1

    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const-string p1, ""

    .line 70
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyName:Ljava/lang/String;

    :goto_2f
    const-string p1, "rewarded-ad-currency-value-string"

    .line 73
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 75
    instance-of p3, p1, Ljava/lang/String;

    if-eqz p3, :cond_68

    .line 77
    :try_start_39
    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_42} :catch_43

    goto :goto_75

    .line 80
    :catch_43
    sget-object p3, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v2, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to convert currency amount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Using the default reward amount: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p3, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 84
    iput v1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    goto :goto_75

    .line 87
    :cond_68
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p3, v0, [Ljava/lang/Object;

    const-string v2, "No currency amount specified for rewarded ad. Using the default reward amount: 0"

    aput-object v2, p3, v1

    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 90
    iput v1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    .line 93
    :goto_75
    iget p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    if-gez p1, :cond_86

    .line 94
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p3, v0, [Ljava/lang/Object;

    const-string v2, "Negative currency amount specified for rewarded ad. Using the default reward amount: 0"

    aput-object v2, p3, v1

    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 97
    iput v1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    :cond_86
    const-string p1, "com_mopub_ad_unit_id"

    .line 100
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 101
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_95

    .line 102
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mAdUnitId:Ljava/lang/String;

    goto :goto_a0

    .line 104
    :cond_95
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "Unable to set ad unit for rewarded ad."

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_a0
    return-void
.end method

.method protected onInvalidate()V
    .registers 2

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mIsLoaded:Z

    return-void
.end method

.method setIsLoaded(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    iput-boolean p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mIsLoaded:Z

    return-void
.end method
