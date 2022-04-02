.class public Lcom/mopub/mobileads/RewardedMraidActivity;
.super Lcom/mopub/mobileads/MraidActivity;
.source "RewardedMraidActivity.java"


# instance fields
.field private mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

.field private mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/RewardedMraidActivity;)Lcom/mopub/mraid/RewardedMraidController;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    return-object p0
.end method

.method protected static createIntent(Landroid/content/Context;Lcom/mopub/common/AdReport;JIZ)Landroid/content/Intent;
    .registers 8

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "broadcastIdentifier"

    .line 80
    invoke-virtual {v0, p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "mopub-intent-ad-report"

    .line 81
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "rewarded-ad-duration"

    .line 82
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "should-reward-on-click"

    .line 83
    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static preRenderHtml(Lcom/mopub/mobileads/Interstitial;Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/Long;Lcom/mopub/common/AdReport;I)V
    .registers 18

    .line 51
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    invoke-static/range {p4 .. p4}, Lcom/mopub/mobileads/RewardedMraidActivity;->getResponseString(Lcom/mopub/common/AdReport;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-object v0, p1

    invoke-direct {v3, p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/mopub/mraid/RewardedMraidController;

    sget-object v7, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    .line 59
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object v4, v11

    move-object v5, p1

    move-object/from16 v6, p4

    move/from16 v8, p5

    invoke-direct/range {v4 .. v10}, Lcom/mopub/mraid/RewardedMraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;IJ)V

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move-object v5, v11

    .line 56
    invoke-static/range {v0 .. v5}, Lcom/mopub/mobileads/RewardedMraidActivity;->preRenderHtml(Lcom/mopub/mobileads/Interstitial;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;Lcom/mopub/mobileads/BaseWebView;Ljava/lang/Long;Lcom/mopub/mraid/MraidController;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/mopub/common/AdReport;JIZ)V
    .registers 6

    .line 65
    invoke-static/range {p0 .. p5}, Lcom/mopub/mobileads/RewardedMraidActivity;->createIntent(Landroid/content/Context;Lcom/mopub/common/AdReport;JIZ)Landroid/content/Intent;

    move-result-object p1

    .line 68
    :try_start_4
    invoke-static {p0, p1}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_7
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    const-string p0, "RewardedMraidActivity"

    const-string p1, "RewardedMraidActivity.class not found. Did you declare RewardedMraidActivity in your manifest?"

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .registers 14

    .line 89
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getResponseString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_24

    .line 92
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "RewardedMraidActivity received a null HTML body. Finishing the activity."

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->finish()V

    .line 94
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 95
    :cond_24
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_3e

    .line 96
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "RewardedMraidActivity received a null broadcast id. Finishing the activity."

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->finish()V

    .line 98
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_3e
    const/16 v2, 0x1e

    const-string v5, "rewarded-ad-duration"

    .line 101
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v2, "should-reward-on-click"

    .line 103
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 107
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_57

    .line 110
    invoke-static {v2}, Lcom/mopub/mobileads/WebViewCacheService;->popWebViewConfig(Ljava/lang/Long;)Lcom/mopub/mobileads/WebViewCacheService$Config;

    move-result-object v5

    :cond_57
    if-eqz v5, :cond_6a

    .line 112
    invoke-virtual {v5}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getController()Lcom/mopub/mraid/MraidController;

    move-result-object v2

    instance-of v2, v2, Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v2, :cond_6a

    .line 114
    invoke-virtual {v5}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getController()Lcom/mopub/mraid/MraidController;

    move-result-object v2

    check-cast v2, Lcom/mopub/mraid/RewardedMraidController;

    iput-object v2, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    goto :goto_80

    .line 116
    :cond_6a
    new-instance v2, Lcom/mopub/mraid/RewardedMraidController;

    iget-object v8, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mAdReport:Lcom/mopub/common/AdReport;

    sget-object v9, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    .line 118
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object v6, v2

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/mopub/mraid/RewardedMraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;IJ)V

    iput-object v2, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    const/4 v3, 0x0

    .line 121
    :goto_80
    iget-object v2, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    iget-object v4, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-virtual {v2, v4}, Lcom/mopub/mraid/RewardedMraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    .line 122
    iget-object v2, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    new-instance v4, Lcom/mopub/mobileads/RewardedMraidActivity$1;

    invoke-direct {v4, p0, v0}, Lcom/mopub/mobileads/RewardedMraidActivity$1;-><init>(Lcom/mopub/mobileads/RewardedMraidActivity;Z)V

    invoke-virtual {v2, v4}, Lcom/mopub/mraid/RewardedMraidController;->setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V

    if-eqz v3, :cond_9a

    .line 170
    invoke-virtual {v5}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getViewabilityManager()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    goto :goto_a4

    .line 172
    :cond_9a
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    new-instance v2, Lcom/mopub/mobileads/RewardedMraidActivity$2;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/RewardedMraidActivity$2;-><init>(Lcom/mopub/mobileads/RewardedMraidActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mraid/RewardedMraidController;->fillContent(Ljava/lang/String;Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;)V

    .line 189
    :goto_a4
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0, p0}, Lcom/mopub/mraid/RewardedMraidController;->onShow(Landroid/app/Activity;)V

    .line 190
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->getAdContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRewardedMraidController()Lcom/mopub/mraid/RewardedMraidController;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->backButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 230
    :cond_a
    invoke-super {p0}, Lcom/mopub/mobileads/MraidActivity;->onBackPressed()V

    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 195
    invoke-super {p0, p1}, Lcom/mopub/mobileads/MraidActivity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz p1, :cond_e

    .line 198
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getCloseableLayout()Lcom/mopub/common/CloseableLayout;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/mopub/mraid/RewardedMraidController;->create(Landroid/content/Context;Lcom/mopub/common/CloseableLayout;)V

    :cond_e
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_7

    .line 221
    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->destroy()V

    .line 224
    :cond_7
    invoke-super {p0}, Lcom/mopub/mobileads/MraidActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_7

    .line 205
    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->pause()V

    .line 207
    :cond_7
    invoke-super {p0}, Lcom/mopub/mobileads/MraidActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 212
    invoke-super {p0}, Lcom/mopub/mobileads/MraidActivity;->onResume()V

    .line 213
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_a

    .line 214
    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->resume()V

    :cond_a
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V
    .registers 3

    .line 236
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    .line 237
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_9

    .line 238
    invoke-virtual {v0, p1}, Lcom/mopub/mraid/RewardedMraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    :cond_9
    return-void
.end method
