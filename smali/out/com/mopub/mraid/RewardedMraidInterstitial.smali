.class public Lcom/mopub/mraid/RewardedMraidInterstitial;
.super Lcom/mopub/mraid/MraidInterstitial;
.source "RewardedMraidInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;
    }
.end annotation


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String;


# instance fields
.field private mRewardedDuration:I

.field private mRewardedPlayableBroadcastReceiver:Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;

.field private mShouldRewardOnClick:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/mopub/mraid/RewardedMraidInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mraid/RewardedMraidInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/mopub/mraid/MraidInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method getRewardedDuration()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    iget v0, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mRewardedDuration:I

    return v0
.end method

.method isShouldRewardOnClick()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    iget-boolean v0, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mShouldRewardOnClick:Z

    return v0
.end method

.method public loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
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

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mopub/mraid/MraidInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 45
    sget-object p3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    sget-object v0, Lcom/mopub/mraid/RewardedMraidInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p4, v1

    invoke-static {p3, p4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 47
    instance-of p3, p2, Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;

    if-eqz p3, :cond_22

    .line 48
    new-instance p3, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;

    check-cast p2, Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;

    iget-wide v0, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mBroadcastIdentifier:J

    invoke-direct {p3, p2, v0, v1}, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;-><init>(Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;J)V

    iput-object p3, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mRewardedPlayableBroadcastReceiver:Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;

    .line 51
    invoke-virtual {p3, p3, p1}, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->register(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    :cond_22
    return-void
.end method

.method public onInvalidate()V
    .registers 2

    .line 88
    invoke-super {p0}, Lcom/mopub/mraid/MraidInterstitial;->onInvalidate()V

    .line 89
    iget-object v0, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mRewardedPlayableBroadcastReceiver:Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;

    if-eqz v0, :cond_a

    .line 90
    invoke-virtual {v0, v0}, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    :cond_a
    return-void
.end method

.method protected preRenderHtml(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .registers 9

    .line 60
    iget-object v0, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mLocalExtras:Ljava/util/Map;

    if-eqz v0, :cond_2d

    const-string v1, "rewarded-ad-duration"

    .line 63
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 64
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_15

    check-cast v1, Ljava/lang/Integer;

    .line 65
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_17

    :cond_15
    const/16 v1, 0x1e

    :goto_17
    iput v1, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mRewardedDuration:I

    const-string v1, "should-reward-on-click"

    .line 67
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2a

    check-cast v0, Ljava/lang/Boolean;

    .line 69
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    iput-boolean v0, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mShouldRewardOnClick:Z

    .line 73
    :cond_2d
    iget-object v2, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mContext:Landroid/content/Context;

    iget-wide v0, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mBroadcastIdentifier:J

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mAdReport:Lcom/mopub/common/AdReport;

    iget v6, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mRewardedDuration:I

    move-object v1, p0

    move-object v3, p1

    .line 73
    invoke-static/range {v1 .. v6}, Lcom/mopub/mobileads/RewardedMraidActivity;->preRenderHtml(Lcom/mopub/mobileads/Interstitial;Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/Long;Lcom/mopub/common/AdReport;I)V

    return-void
.end method

.method public showInterstitial()V
    .registers 11

    .line 80
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mraid/RewardedMraidInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 81
    iget-object v4, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mAdReport:Lcom/mopub/common/AdReport;

    iget-wide v6, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mBroadcastIdentifier:J

    iget v8, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mRewardedDuration:I

    iget-boolean v9, p0, Lcom/mopub/mraid/RewardedMraidInterstitial;->mShouldRewardOnClick:Z

    invoke-static/range {v4 .. v9}, Lcom/mopub/mobileads/RewardedMraidActivity;->start(Landroid/content/Context;Lcom/mopub/common/AdReport;JIZ)V

    return-void
.end method
