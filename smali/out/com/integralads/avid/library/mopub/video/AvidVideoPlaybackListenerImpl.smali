.class public Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;
.super Lcom/integralads/avid/library/mopub/base/AvidBaseListenerImpl;
.source "AvidVideoPlaybackListenerImpl.java"

# interfaces
.implements Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListener;


# static fields
.field public static final AD_CLICK_THRU:Ljava/lang/String; = "AdClickThru"

.field public static final AD_DURATION:Ljava/lang/String; = "adDuration"

.field public static final AD_DURATION_CHANGE:Ljava/lang/String; = "AdDurationChange"

.field public static final AD_ENTERED_FULLSCREEN:Ljava/lang/String; = "AdEnteredFullscreen"

.field public static final AD_ERROR:Ljava/lang/String; = "AdError"

.field public static final AD_EXITED_FULLSCREEN:Ljava/lang/String; = "AdExitedFullscreen"

.field public static final AD_EXPANDED_CHANGE:Ljava/lang/String; = "AdExpandedChange"

.field public static final AD_IMPRESSION:Ljava/lang/String; = "AdImpression"

.field public static final AD_LOADED:Ljava/lang/String; = "AdLoaded"

.field public static final AD_PAUSED:Ljava/lang/String; = "AdPaused"

.field public static final AD_PLAYING:Ljava/lang/String; = "AdPlaying"

.field public static final AD_REMAINING_TIME:Ljava/lang/String; = "adDuration"

.field public static final AD_SKIPPED:Ljava/lang/String; = "AdSkipped"

.field public static final AD_STARTED:Ljava/lang/String; = "AdStarted"

.field public static final AD_STOPPED:Ljava/lang/String; = "AdStopped"

.field public static final AD_USER_ACCEPT_INVITATION:Ljava/lang/String; = "AdUserAcceptInvitation"

.field public static final AD_USER_CLOSE:Ljava/lang/String; = "AdUserClose"

.field public static final AD_USER_MINIMIZE:Ljava/lang/String; = "AdUserMinimize"

.field public static final AD_VIDEO_COMPLETE:Ljava/lang/String; = "AdVideoComplete"

.field public static final AD_VIDEO_FIRST_QUARTILE:Ljava/lang/String; = "AdVideoFirstQuartile"

.field public static final AD_VIDEO_MIDPOINT:Ljava/lang/String; = "AdVideoMidpoint"

.field public static final AD_VIDEO_START:Ljava/lang/String; = "AdVideoStart"

.field public static final AD_VIDEO_THIRD_QUARTILE:Ljava/lang/String; = "AdVideoThirdQuartile"

.field public static final AD_VOLUME_CHANGE:Ljava/lang/String; = "AdVolumeChange"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final VOLUME:Ljava/lang/String; = "volume"


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/integralads/avid/library/mopub/base/AvidBaseListenerImpl;-><init>(Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;)V

    return-void
.end method

.method private assertSessionIsReady()V
    .registers 3

    .line 180
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->getAvidAdSession()Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->isReady()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 181
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The AVID ad session is not ready. Please ensure you have called recordReadyEvent for the deferred AVID ad session before recording any video event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 174
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->assertSessionIsNotEnded()V

    .line 175
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->assertSessionIsReady()V

    .line 176
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->getAvidBridgeManager()Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public recordAdClickThruEvent()V
    .registers 3

    const-string v0, "AdClickThru"

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdCompleteEvent()V
    .registers 3

    const-string v0, "AdVideoComplete"

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdDurationChangeEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "adDuration"

    .line 152
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 154
    :try_start_7
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    .line 157
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_12
    const-string p1, "AdDurationChange"

    .line 159
    invoke-direct {p0, p1, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdEnteredFullscreenEvent()V
    .registers 3

    const-string v0, "AdEnteredFullscreen"

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdError(Ljava/lang/String;)V
    .registers 4

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "message"

    .line 166
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 168
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_f
    const-string p1, "AdError"

    .line 170
    invoke-direct {p0, p1, v0}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdExitedFullscreenEvent()V
    .registers 3

    const-string v0, "AdExitedFullscreen"

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdExpandedChangeEvent()V
    .registers 3

    const-string v0, "AdExpandedChange"

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdImpressionEvent()V
    .registers 3

    const-string v0, "AdImpression"

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdLoadedEvent()V
    .registers 3

    const-string v0, "AdLoaded"

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdPausedEvent()V
    .registers 3

    const-string v0, "AdPaused"

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdPlayingEvent()V
    .registers 3

    const-string v0, "AdPlaying"

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdSkippedEvent()V
    .registers 3

    const-string v0, "AdSkipped"

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdStartedEvent()V
    .registers 3

    const-string v0, "AdStarted"

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdStoppedEvent()V
    .registers 3

    const-string v0, "AdStopped"

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdUserAcceptInvitationEvent()V
    .registers 3

    const-string v0, "AdUserAcceptInvitation"

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdUserCloseEvent()V
    .registers 3

    const-string v0, "AdUserClose"

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdUserMinimizeEvent()V
    .registers 3

    const-string v0, "AdUserMinimize"

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdVideoFirstQuartileEvent()V
    .registers 3

    const-string v0, "AdVideoFirstQuartile"

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdVideoMidpointEvent()V
    .registers 3

    const-string v0, "AdVideoMidpoint"

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdVideoStartEvent()V
    .registers 3

    const-string v0, "AdVideoStart"

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdVideoThirdQuartileEvent()V
    .registers 3

    const-string v0, "AdVideoThirdQuartile"

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public recordAdVolumeChangeEvent(Ljava/lang/Integer;)V
    .registers 4

    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "volume"

    .line 133
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 135
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_f
    const-string p1, "AdVolumeChange"

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
