.class public Lcom/mopub/mraid/MraidVideoViewController;
.super Lcom/mopub/mobileads/BaseVideoViewController;
.source "MraidVideoViewController.java"


# static fields
.field private static final CLOSE_BUTTON_PADDING:F = 8.0f

.field private static final CLOSE_BUTTON_SIZE:F = 50.0f


# instance fields
.field private mButtonPadding:I

.field private mButtonSize:I

.field private mCloseButton:Landroid/widget/ImageButton;

.field private final mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
    .registers 5

    const/4 p3, 0x0

    .line 42
    invoke-direct {p0, p1, p3, p4}, Lcom/mopub/mobileads/BaseVideoViewController;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    .line 44
    new-instance p3, Landroid/widget/VideoView;

    invoke-direct {p3, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/mopub/mraid/MraidVideoViewController;->mVideoView:Landroid/widget/VideoView;

    .line 46
    new-instance p1, Lcom/mopub/mraid/MraidVideoViewController$1;

    invoke-direct {p1, p0}, Lcom/mopub/mraid/MraidVideoViewController$1;-><init>(Lcom/mopub/mraid/MraidVideoViewController;)V

    invoke-virtual {p3, p1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 53
    iget-object p1, p0, Lcom/mopub/mraid/MraidVideoViewController;->mVideoView:Landroid/widget/VideoView;

    new-instance p3, Lcom/mopub/mraid/MraidVideoViewController$2;

    invoke-direct {p3, p0}, Lcom/mopub/mraid/MraidVideoViewController$2;-><init>(Lcom/mopub/mraid/MraidVideoViewController;)V

    invoke-virtual {p1, p3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 61
    iget-object p1, p0, Lcom/mopub/mraid/MraidVideoViewController;->mVideoView:Landroid/widget/VideoView;

    new-instance p3, Lcom/mopub/mraid/MraidVideoViewController$3;

    invoke-direct {p3, p0}, Lcom/mopub/mraid/MraidVideoViewController$3;-><init>(Lcom/mopub/mraid/MraidVideoViewController;)V

    invoke-virtual {p1, p3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 71
    iget-object p1, p0, Lcom/mopub/mraid/MraidVideoViewController;->mVideoView:Landroid/widget/VideoView;

    const-string p3, "video_url"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mraid/MraidVideoViewController;)Landroid/widget/ImageButton;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/mopub/mraid/MraidVideoViewController;->mCloseButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mraid/MraidVideoViewController;Z)V
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidVideoViewController;->videoCompleted(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/mopub/mraid/MraidVideoViewController;Z)V
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidVideoViewController;->videoError(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mopub/mraid/MraidVideoViewController;)Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
    .registers 1

    .line 28
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object p0

    return-object p0
.end method

.method private createInterstitialCloseButton()V
    .registers 7

    .line 108
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->mCloseButton:Landroid/widget/ImageButton;

    .line 109
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, -0x10100a7

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 110
    sget-object v3, Lcom/mopub/common/util/Drawables;->INTERSTITIAL_CLOSE_BUTTON_NORMAL:Lcom/mopub/common/util/Drawables;

    .line 111
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 110
    invoke-virtual {v3, v5}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    .line 112
    sget-object v2, Lcom/mopub/common/util/Drawables;->INTERSTITIAL_CLOSE_BUTTON_PRESSED:Lcom/mopub/common/util/Drawables;

    .line 113
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v1, p0, Lcom/mopub/mraid/MraidVideoViewController;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->mCloseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mopub/mraid/MraidVideoViewController$4;

    invoke-direct {v1, p0}, Lcom/mopub/mraid/MraidVideoViewController$4;-><init>(Lcom/mopub/mraid/MraidVideoViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/mraid/MraidVideoViewController;->mButtonSize:I

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    iget v1, p0, Lcom/mopub/mraid/MraidVideoViewController;->mButtonPadding:I

    invoke-virtual {v0, v1, v4, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 126
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidVideoViewController;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getVideoView()Landroid/view/View;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidVideoViewController;->getVideoView()Landroid/widget/VideoView;

    move-result-object v0

    return-object v0
.end method

.method protected getVideoView()Landroid/widget/VideoView;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method protected onBackPressed()V
    .registers 1

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method protected onCreate()V
    .registers 3

    .line 76
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->onCreate()V

    .line 77
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1, v0}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->mButtonSize:I

    .line 78
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1, v0}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->mButtonPadding:I

    .line 79
    invoke-direct {p0}, Lcom/mopub/mraid/MraidVideoViewController;->createInterstitialCloseButton()V

    .line 80
    iget-object v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->mCloseButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    return-void
.end method

.method protected onPause()V
    .registers 1

    return-void
.end method

.method protected onResume()V
    .registers 1

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method
