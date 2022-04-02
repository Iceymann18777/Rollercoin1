.class public Lcom/mopub/mobileads/VastVideoViewController;
.super Lcom/mopub/mobileads/BaseVideoViewController;
.source "VastVideoViewController.java"


# static fields
.field static final CURRENT_POSITION:Ljava/lang/String; = "current_position"

.field static final DEFAULT_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x1388

.field static final MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x3e80

.field static final RESUMED_VAST_CONFIG:Ljava/lang/String; = "resumed_vast_config"

.field private static final SEEKER_POSITION_NOT_INITIALIZED:I = -0x1

.field static final VAST_VIDEO_CONFIG:Ljava/lang/String; = "vast_video_config"

.field private static final VIDEO_COUNTDOWN_UPDATE_INTERVAL:J = 0xfaL

.field private static final VIDEO_PROGRESS_TIMER_CHECKER_DELAY:J = 0x32L

.field public static final WEBVIEW_PADDING:I = 0x10


# instance fields
.field private mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

.field private mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

.field private final mClickThroughListener:Landroid/view/View$OnTouchListener;

.field private mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

.field private final mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

.field private mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

.field private mDuration:I

.field private mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field private mHasSkipOffset:Z

.field private final mIconView:Landroid/view/View;

.field private mIsCalibrationDone:Z

.field private mIsClosing:Z

.field private mIsVideoFinishedPlaying:Z

.field private final mLandscapeCompanionAdView:Landroid/view/View;

.field private final mPortraitCompanionAdView:Landroid/view/View;

.field private mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

.field private final mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

.field private mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

.field private mSeekerPositionOnPause:I

.field private mShowCloseButtonDelay:I

.field private mShowCloseButtonEventFired:Z

.field private mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

.field private mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

.field private final mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

.field private final mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

.field private mVideoError:Z

.field private final mVideoView:Lcom/mopub/mobileads/VastVideoView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 111
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {p0, p1, p4, p6}, Lcom/mopub/mobileads/BaseVideoViewController;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    const/16 p4, 0x1388

    .line 91
    iput p4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    const/4 p4, 0x0

    .line 96
    iput-boolean p4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSkipOffset:Z

    .line 97
    iput-boolean p4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    .line 103
    iput-boolean p4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z

    const/4 p5, -0x1

    .line 112
    iput p5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    if-eqz p3, :cond_1e

    const-string p6, "resumed_vast_config"

    .line 117
    invoke-virtual {p3, p6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p6

    goto :goto_1f

    :cond_1e
    const/4 p6, 0x0

    :goto_1f
    const-string v0, "vast_video_config"

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    if-eqz p6, :cond_38

    .line 120
    instance-of v0, p6, Lcom/mopub/mobileads/VastVideoConfig;

    if-eqz v0, :cond_38

    .line 122
    check-cast p6, Lcom/mopub/mobileads/VastVideoConfig;

    iput-object p6, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    const-string p2, "current_position"

    .line 124
    invoke-virtual {p3, p2, p5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    goto :goto_42

    :cond_38
    if-eqz p2, :cond_ee

    .line 125
    instance-of p3, p2, Lcom/mopub/mobileads/VastVideoConfig;

    if-eqz p3, :cond_ee

    .line 126
    check-cast p2, Lcom/mopub/mobileads/VastVideoConfig;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 131
    :goto_42
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e6

    .line 135
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 136
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    .line 135
    invoke-virtual {p2, p3}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 137
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    .line 139
    new-instance p2, Lcom/mopub/mobileads/VastVideoViewController$1;

    invoke-direct {p2, p0, p1}, Lcom/mopub/mobileads/VastVideoViewController$1;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    .line 159
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object p2

    const/high16 p3, -0x1000000

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/4 p2, 0x4

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/VastVideoViewController;->addBlurredLastVideoFrameImageView(Landroid/content/Context;I)V

    .line 165
    invoke-direct {p0, p1, p4}, Lcom/mopub/mobileads/VastVideoViewController;->createVideoView(Landroid/content/Context;I)Lcom/mopub/mobileads/VastVideoView;

    move-result-object p3

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    .line 166
    invoke-virtual {p3}, Lcom/mopub/mobileads/VastVideoView;->requestFocus()Z

    .line 169
    new-instance p3, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {p3, p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 170
    iget-object p4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    iget-object p5, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p3, p1, p4, p5}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createVideoSession(Landroid/app/Activity;Landroid/view/View;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 172
    iget-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-object p4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, p4}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;)V

    .line 175
    iget-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    const/4 p4, 0x2

    .line 176
    invoke-virtual {p3, p4}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object p3

    .line 175
    invoke-virtual {p0, p1, p3, p2}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionAdView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    .line 178
    iget-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    const/4 p4, 0x1

    .line 179
    invoke-virtual {p3, p4}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object p3

    .line 178
    invoke-virtual {p0, p1, p3, p2}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionAdView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    .line 183
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->addTopGradientStripWidget(Landroid/content/Context;)V

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/VastVideoViewController;->addProgressBarWidget(Landroid/content/Context;I)V

    .line 189
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->addBottomGradientStripWidget(Landroid/content/Context;)V

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/VastVideoViewController;->addRadialCountdownWidget(Landroid/content/Context;I)V

    .line 195
    iget-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {p0, p1, p3, p2}, Lcom/mopub/mobileads/VastVideoViewController;->createIconView(Landroid/content/Context;Lcom/mopub/mobileads/VastIconConfig;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    .line 198
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->addCtaButtonWidget(Landroid/content/Context;)V

    const/16 p2, 0x8

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/VastVideoViewController;->addCloseButtonWidget(Landroid/content/Context;I)V

    .line 204
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 205
    new-instance p2, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    iget-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-direct {p2, p0, p3, p1}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoConfig;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    .line 207
    new-instance p2, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    invoke-direct {p2, p0, p1}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    return-void

    .line 132
    :cond_e6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "VastVideoConfig does not have a video disk path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_ee
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "VastVideoConfig is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->shouldAllowClickThrough()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/mopub/mobileads/VastVideoViewController;)I
    .registers 1

    .line 48
    iget p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    return p0
.end method

.method static synthetic access$1100(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mopub/mobileads/VastVideoViewController;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->stopRunnables()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoCtaButtonWidget;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/mopub/mobileads/VastVideoViewController;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->handleExitTrackers()V

    return-void
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return p0
.end method

.method static synthetic access$302(Lcom/mopub/mobileads/VastVideoViewController;Z)Z
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/VastVideoViewController;)I
    .registers 1

    .line 48
    iget p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I

    return p0
.end method

.method static synthetic access$402(Lcom/mopub/mobileads/VastVideoViewController;I)I
    .registers 2

    .line 48
    iput p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I

    return p1
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mopub/mobileads/VastVideoViewController;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->adjustSkipOffset()V

    return-void
.end method

.method static synthetic access$800(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastCompanionAdConfig;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private addBlurredLastVideoFrameImageView(Landroid/content/Context;I)V
    .registers 4

    .line 545
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    .line 546
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 551
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object p2

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addBottomGradientStripWidget(Landroid/content/Context;)V
    .registers 10

    .line 458
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 460
    :goto_9
    new-instance v0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v5, 0x8

    const/4 v6, 0x2

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 465
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->getId()I

    move-result v7

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;ZIII)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    .line 466
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 467
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    invoke-virtual {p1, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;)V

    return-void
.end method

.method private addCloseButtonWidget(Landroid/content/Context;I)V
    .registers 4

    .line 506
    new-instance v0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    .line 507
    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setVisibility(I)V

    .line 509
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 510
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {p1, p2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;)V

    .line 512
    new-instance p1, Lcom/mopub/mobileads/VastVideoViewController$5;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/VastVideoViewController$5;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 527
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    .line 530
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomSkipText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 532
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->updateCloseButtonText(Ljava/lang/String;)V

    .line 536
    :cond_31
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 538
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->updateCloseButtonIcon(Ljava/lang/String;)V

    :cond_3e
    return-void
.end method

.method private addCtaButtonWidget(Landroid/content/Context;)V
    .registers 6

    .line 486
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 487
    :goto_8
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 488
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v2

    .line 487
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v1, v2

    .line 490
    new-instance v2, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoView;->getId()I

    move-result v3

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;-><init>(Landroid/content/Context;IZZ)V

    iput-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    .line 493
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 494
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {p1, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;)V

    .line 496
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 499
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 501
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->updateCtaText(Ljava/lang/String;)V

    :cond_44
    return-void
.end method

.method private addProgressBarWidget(Landroid/content/Context;I)V
    .registers 4

    .line 471
    new-instance v0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 472
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoView;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setAnchorId(I)V

    .line 473
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 474
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 475
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {p1, p2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;)V

    return-void
.end method

.method private addRadialCountdownWidget(Landroid/content/Context;I)V
    .registers 4

    .line 479
    new-instance v0, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    .line 480
    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setVisibility(I)V

    .line 481
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 482
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    invoke-virtual {p1, p2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;)V

    return-void
.end method

.method private addTopGradientStripWidget(Landroid/content/Context;)V
    .registers 10

    .line 445
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 447
    :goto_9
    new-instance v0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x0

    const/4 v6, 0x6

    .line 452
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;ZIII)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    .line 453
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 454
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    invoke-virtual {p1, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;)V

    return-void
.end method

.method private adjustSkipOffset()V
    .registers 6

    .line 325
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v0

    .line 328
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->isRewardedVideo()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 329
    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    return-void

    :cond_f
    const/16 v1, 0x3e80

    if-ge v0, v1, :cond_15

    .line 335
    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    :cond_15
    const/4 v1, 0x1

    .line 340
    :try_start_16
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffsetMillis(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 342
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    .line 343
    iput-boolean v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSkipOffset:Z
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_26} :catch_27

    goto :goto_48

    .line 346
    :catch_27
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse skipoffset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 347
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffsetString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 346
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_48
    :goto_48
    return-void
.end method

.method private createCompanionVastWebView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;)Lcom/mopub/mobileads/VastWebView;
    .registers 5

    .line 739
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 740
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 743
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v0

    .line 742
    invoke-static {p1, v0}, Lcom/mopub/mobileads/VastWebView;->createView(Landroid/content/Context;Lcom/mopub/mobileads/VastResource;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v0

    .line 750
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/mopub/mobileads/VastVideoViewController$8;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastCompanionAdConfig;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastWebView;->setVastWebViewClickListener(Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;)V

    .line 764
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/mopub/mobileads/VastVideoViewController$9;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastCompanionAdConfig;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object v0
.end method

.method private createVideoView(Landroid/content/Context;I)Lcom/mopub/mobileads/VastVideoView;
    .registers 5

    .line 352
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 355
    new-instance v0, Lcom/mopub/mobileads/VastVideoView;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastVideoView;-><init>(Landroid/content/Context;)V

    .line 357
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setId(I)V

    .line 359
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$2;

    invoke-direct {v1, p0, v0}, Lcom/mopub/mobileads/VastVideoViewController$2;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 377
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mClickThroughListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 379
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/mopub/mobileads/VastVideoViewController$3;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 421
    new-instance p1, Lcom/mopub/mobileads/VastVideoViewController$4;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/VastVideoViewController$4;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 438
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoView;->setVisibility(I)V

    return-object v0

    .line 353
    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "VastVideoConfig does not have a video disk path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleExitTrackers()V
    .registers 4

    .line 307
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    .line 310
    iget-boolean v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    if-nez v1, :cond_2f

    .line 312
    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I

    if-ge v0, v1, :cond_1d

    .line 313
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_SKIPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v1, v2, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 314
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->handleSkip(Landroid/content/Context;I)V

    goto :goto_2f

    .line 316
    :cond_1d
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_COMPLETE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v1, v2, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 317
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleComplete(Landroid/content/Context;I)V

    .line 321
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleClose(Landroid/content/Context;I)V

    return-void
.end method

.method private shouldAllowClickThrough()Z
    .registers 2

    .line 723
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method private startRunnables()V
    .registers 4

    .line 727
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->startRepeating(J)V

    .line 728
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->startRepeating(J)V

    return-void
.end method

.method private stopRunnables()V
    .registers 2

    .line 732
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->stop()V

    .line 733
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->stop()V

    return-void
.end method


# virtual methods
.method public backButtonEnabled()Z
    .registers 2

    .line 296
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method createCompanionAdView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;I)Landroid/view/View;
    .registers 8

    .line 566
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p2, :cond_f

    .line 569
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    .line 570
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    .line 574
    :cond_f
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 575
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 576
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 580
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v1, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;)V

    .line 583
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionVastWebView(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v1

    .line 585
    invoke-virtual {v1, p3}, Lcom/mopub/mobileads/VastWebView;->setVisibility(I)V

    .line 587
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 588
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    invoke-static {v3, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    .line 589
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getHeight()I

    move-result p2

    add-int/lit8 p2, p2, 0x10

    int-to-float p2, p2

    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {p3, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xd

    .line 591
    invoke-virtual {p3, p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 593
    invoke-virtual {v0, v1, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {p1, v1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;)V

    return-object v1
.end method

.method createIconView(Landroid/content/Context;Lcom/mopub/mobileads/VastIconConfig;I)Landroid/view/View;
    .registers 6

    .line 609
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p2, :cond_b

    .line 612
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 615
    :cond_b
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastIconConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mopub/mobileads/VastWebView;->createView(Landroid/content/Context;Lcom/mopub/mobileads/VastResource;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v0

    .line 616
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/mopub/mobileads/VastVideoViewController$6;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastIconConfig;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastWebView;->setVastWebViewClickListener(Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;)V

    .line 629
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$7;

    invoke-direct {v1, p0, p2}, Lcom/mopub/mobileads/VastVideoViewController$7;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastIconConfig;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 636
    invoke-virtual {v0, p3}, Lcom/mopub/mobileads/VastWebView;->setVisibility(I)V

    .line 638
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 640
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastIconConfig;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 641
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastIconConfig;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p2

    invoke-direct {p3, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 p2, 0x41400000    # 12.0f

    .line 642
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 644
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    const/4 p2, 0x0

    .line 646
    invoke-virtual {p3, v1, p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 648
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {p1, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;)V

    return-object v0
.end method

.method getBlurredLastVideoFrameImageView()Landroid/widget/ImageView;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method getBottomGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mBottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method getCloseButtonWidget()Lcom/mopub/mobileads/VastVideoCloseButtonWidget;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 918
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    return-object v0
.end method

.method getCountdownRunnable()Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCountdownRunnable:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    return-object v0
.end method

.method getCtaButtonWidget()Lcom/mopub/mobileads/VastVideoCtaButtonWidget;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 911
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    return-object v0
.end method

.method getCurrentPosition()I
    .registers 2

    .line 659
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method getDuration()I
    .registers 2

    .line 655
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method getHasSkipOffset()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 792
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mHasSkipOffset:Z

    return v0
.end method

.method getIconView()Landroid/view/View;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 862
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method getLandscapeCompanionAdView()Landroid/view/View;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 834
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    return-object v0
.end method

.method getNetworkMediaFileUrl()Ljava/lang/String;
    .registers 2

    .line 686
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 689
    :cond_6
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPortraitCompanionAdView()Landroid/view/View;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    return-object v0
.end method

.method getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 883
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    return-object v0
.end method

.method getProgressCheckerRunnable()Lcom/mopub/mobileads/VastVideoViewProgressRunnable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 779
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressCheckerRunnable:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    return-object v0
.end method

.method getRadialCountdownWidget()Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 897
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    return-object v0
.end method

.method getShowCloseButtonDelay()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 799
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    return v0
.end method

.method getTopGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mTopGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-object v0
.end method

.method getVastVideoView()Lcom/mopub/mobileads/VastVideoView;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 932
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    return-object v0
.end method

.method getVideoError()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 848
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    return v0
.end method

.method protected bridge synthetic getVideoView()Landroid/view/View;
    .registers 2

    .line 48
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVideoView()Landroid/widget/VideoView;

    move-result-object v0

    return-object v0
.end method

.method protected getVideoView()Landroid/widget/VideoView;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    return-object v0
.end method

.method handleIconDisplay(I)V
    .registers 5

    .line 700
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfig;->getOffsetMS()I

    move-result v0

    if-ge p1, v0, :cond_b

    goto :goto_41

    .line 704
    :cond_b
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/mopub/mobileads/VastIconConfig;->handleImpression(Landroid/content/Context;ILjava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfig;->getDurationMS()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_27

    return-void

    .line 711
    :cond_27
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfig;->getOffsetMS()I

    move-result v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastIconConfig;->getDurationMS()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_41

    .line 712
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIconView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_41
    :goto_41
    return-void
.end method

.method handleViewabilityQuartileEvent(Ljava/lang/String;)V
    .registers 4

    .line 717
    const-class v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 719
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    return-void
.end method

.method isCalibrationDone()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 827
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    return v0
.end method

.method isShowCloseButtonEventFired()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 806
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return v0
.end method

.method isVideoFinishedPlaying()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 820
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    return v0
.end method

.method makeVideoInteractable()V
    .registers 3

    const/4 v0, 0x1

    .line 663
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    .line 665
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCloseButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mCtaButtonWidget:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->notifyVideoSkippable()V

    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    const/4 p3, 0x1

    if-ne p1, p3, :cond_d

    const/4 p1, -0x1

    if-ne p2, p1, :cond_d

    .line 302
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    :cond_d
    return-void
.end method

.method protected onBackPressed()V
    .registers 1

    .line 290
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->handleExitTrackers()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 271
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 272
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 273
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    .line 274
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4d

    :cond_26
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v0, :cond_36

    .line 276
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_40

    .line 279
    :cond_36
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mPortraitCompanionAdView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mLandscapeCompanionAdView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :goto_40
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz p1, :cond_4d

    .line 283
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mDuration:I

    invoke-virtual {p1, v0, v1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->handleImpression(Landroid/content/Context;I)V

    :cond_4d
    return-void
.end method

.method protected onCreate()V
    .registers 4

    .line 217
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->onCreate()V

    .line 219
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleImpression(Landroid/content/Context;I)V

    const-string v0, "com.mopub.action.interstitial.show"

    .line 220
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 255
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->stopRunnables()V

    .line 256
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_STOPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 257
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endVideoSession()V

    const-string v0, "com.mopub.action.interstitial.dismiss"

    .line 258
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->broadcastAction(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 4

    .line 244
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->stopRunnables()V

    .line 245
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    .line 246
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->pause()V

    .line 247
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z

    if-nez v0, :cond_2c

    .line 248
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_PAUSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 249
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handlePause(Landroid/content/Context;I)V

    :cond_2c
    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 225
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->startRunnables()V

    .line 227
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    if-lez v0, :cond_18

    .line 228
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_PLAYING:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 229
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoView;->seekTo(I)V

    goto :goto_23

    .line 231
    :cond_18
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_LOADED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 234
    :goto_23
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsVideoFinishedPlaying:Z

    if-nez v0, :cond_2c

    .line 235
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoView:Lcom/mopub/mobileads/VastVideoView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoView;->start()V

    .line 237
    :cond_2c
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3c

    .line 238
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleResume(Landroid/content/Context;I)V

    :cond_3c
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 265
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mSeekerPositionOnPause:I

    const-string v1, "current_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    const-string v1, "resumed_vast_config"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method setCloseButtonVisible(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 813
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    return-void
.end method

.method setIsClosing(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 938
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsClosing:Z

    return-void
.end method

.method setProgressBarWidget(Lcom/mopub/mobileads/VastVideoProgressBarWidget;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 890
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    return-void
.end method

.method setRadialCountdownWidget(Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 904
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    return-void
.end method

.method setVideoError()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 855
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mVideoError:Z

    return-void
.end method

.method shouldBeInteractable()Z
    .registers 3

    .line 672
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonEventFired:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method updateCountdown()V
    .registers 4

    .line 676
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mIsCalibrationDone:Z

    if-eqz v0, :cond_f

    .line 677
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mRadialCountdownWidget:Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->mShowCloseButtonDelay:I

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->updateCountdownProgress(II)V

    :cond_f
    return-void
.end method

.method updateProgressBar()V
    .registers 3

    .line 682
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->mProgressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->updateProgress(I)V

    return-void
.end method
