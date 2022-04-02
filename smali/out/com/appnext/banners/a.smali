.class public Lcom/appnext/banners/a;
.super Lcom/appnext/banners/e;
.source "SourceFile"


# instance fields
.field private final TICK:I

.field private adRequest:Lcom/appnext/banners/BannerAdRequest;

.field private ads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;"
        }
    .end annotation
.end field

.field private bannerAd:Lcom/appnext/banners/BannerAd;

.field private clickEnabled:Z

.field private currentAd:Lcom/appnext/banners/BannerAdData;

.field private currentPosition:I

.field private finished:Z

.field private lastProgress:I

.field private loaded:Z

.field private mHandler:Landroid/os/Handler;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private reportedImpression:Z

.field private serviceHelper:Lcom/appnext/banners/i;

.field private started:Z

.field private template:Ljava/lang/String;

.field private tick:Ljava/lang/Runnable;

.field private userAction:Lcom/appnext/core/q;

.field private userMute:Z

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Lcom/appnext/banners/e;-><init>()V

    const/16 v0, 0x14a

    .line 42
    iput v0, p0, Lcom/appnext/banners/a;->TICK:I

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/appnext/banners/a;->userMute:Z

    const-string v1, ""

    .line 50
    iput-object v1, p0, Lcom/appnext/banners/a;->template:Ljava/lang/String;

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/appnext/banners/a;->lastProgress:I

    .line 55
    iput v1, p0, Lcom/appnext/banners/a;->currentPosition:I

    .line 56
    iput-boolean v1, p0, Lcom/appnext/banners/a;->started:Z

    .line 57
    iput-boolean v1, p0, Lcom/appnext/banners/a;->finished:Z

    .line 58
    iput-boolean v1, p0, Lcom/appnext/banners/a;->reportedImpression:Z

    .line 59
    iput-boolean v1, p0, Lcom/appnext/banners/a;->loaded:Z

    .line 60
    iput-boolean v0, p0, Lcom/appnext/banners/a;->clickEnabled:Z

    .line 715
    new-instance v0, Lcom/appnext/banners/a$17;

    invoke-direct {v0, p0}, Lcom/appnext/banners/a$17;-><init>(Lcom/appnext/banners/a;)V

    iput-object v0, p0, Lcom/appnext/banners/a;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/appnext/banners/a;Ljava/lang/String;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/appnext/banners/a;->report(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/appnext/banners/a;)Lcom/appnext/banners/BannerAd;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/appnext/banners/a;)Landroid/media/MediaPlayer;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/appnext/banners/a;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/appnext/banners/a;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/appnext/banners/a;->userMute:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/appnext/banners/a;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/appnext/banners/a;->userMute:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/appnext/banners/a;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/appnext/banners/a;->currentPosition:I

    return p0
.end method

.method static synthetic access$1202(Lcom/appnext/banners/a;I)I
    .registers 2

    .line 40
    iput p1, p0, Lcom/appnext/banners/a;->currentPosition:I

    return p1
.end method

.method static synthetic access$1300(Lcom/appnext/banners/a;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/appnext/banners/a;->finished:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/appnext/banners/a;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/appnext/banners/a;->finished:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/appnext/banners/a;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/appnext/banners/a;->started:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/appnext/banners/a;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/appnext/banners/a;->started:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/appnext/banners/a;)Ljava/lang/Runnable;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appnext/banners/a;->tick:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/appnext/banners/a;)Landroid/os/Handler;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appnext/banners/a;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/appnext/banners/a;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/appnext/banners/a;->checkProgress()V

    return-void
.end method

.method static synthetic access$200(Lcom/appnext/banners/a;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/appnext/banners/a;->load()V

    return-void
.end method

.method static synthetic access$300(Lcom/appnext/banners/a;)Lcom/appnext/banners/BannerAdRequest;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appnext/banners/a;->adRequest:Lcom/appnext/banners/BannerAdRequest;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appnext/banners/a;)Ljava/util/ArrayList;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appnext/banners/a;->ads:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$402(Lcom/appnext/banners/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/appnext/banners/a;->ads:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$502(Lcom/appnext/banners/a;Lcom/appnext/banners/BannerAdData;)Lcom/appnext/banners/BannerAdData;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/appnext/banners/a;->currentAd:Lcom/appnext/banners/BannerAdData;

    return-object p1
.end method

.method static synthetic access$600(Lcom/appnext/banners/a;)Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appnext/banners/a;->template:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/appnext/banners/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/appnext/banners/a;->template:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/appnext/banners/a;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/appnext/banners/a;->loaded:Z

    return p1
.end method

.method static synthetic access$802(Lcom/appnext/banners/a;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/appnext/banners/a;->reportedImpression:Z

    return p1
.end method

.method static synthetic access$900(Lcom/appnext/banners/a;)Lcom/appnext/core/q;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appnext/banners/a;->userAction:Lcom/appnext/core/q;

    return-object p0
.end method

.method private checkProgress()V
    .registers 5

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_47

    .line 731
    iget-object v0, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_28

    .line 732
    iget v2, p0, Lcom/appnext/banners/a;->lastProgress:I

    if-nez v2, :cond_28

    .line 733
    iput v1, p0, Lcom/appnext/banners/a;->lastProgress:I

    const-string v0, "video_25"

    .line 734
    invoke-direct {p0, v0}, Lcom/appnext/banners/a;->report(Ljava/lang/String;)V

    goto :goto_47

    :cond_28
    const/16 v2, 0x32

    if-le v0, v2, :cond_38

    .line 735
    iget v3, p0, Lcom/appnext/banners/a;->lastProgress:I

    if-ne v3, v1, :cond_38

    .line 736
    iput v2, p0, Lcom/appnext/banners/a;->lastProgress:I

    const-string v0, "video_50"

    .line 737
    invoke-direct {p0, v0}, Lcom/appnext/banners/a;->report(Ljava/lang/String;)V

    goto :goto_47

    :cond_38
    const/16 v1, 0x4b

    if-le v0, v1, :cond_47

    .line 738
    iget v0, p0, Lcom/appnext/banners/a;->lastProgress:I

    if-ne v0, v2, :cond_47

    .line 739
    iput v1, p0, Lcom/appnext/banners/a;->lastProgress:I

    const-string v0, "video_75"

    .line 740
    invoke-direct {p0, v0}, Lcom/appnext/banners/a;->report(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_0 .. :try_end_47} :catchall_47

    :catchall_47
    :cond_47
    :goto_47
    return-void
.end method

.method private createVideo(Landroid/view/ViewGroup;)V
    .registers 7

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/appnext/banners/a;->adRequest:Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdRequest;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "auto_play_on"

    .line 541
    invoke-direct {p0, v0}, Lcom/appnext/banners/a;->report(Ljava/lang/String;)V

    goto :goto_13

    :cond_e
    const-string v0, "auto_play_off"

    .line 543
    invoke-direct {p0, v0}, Lcom/appnext/banners/a;->report(Ljava/lang/String;)V

    .line 545
    :goto_13
    iget-object v0, p0, Lcom/appnext/banners/a;->adRequest:Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdRequest;->isMute()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "mute_on"

    .line 546
    invoke-direct {p0, v0}, Lcom/appnext/banners/a;->report(Ljava/lang/String;)V

    goto :goto_26

    :cond_21
    const-string v0, "mute_off"

    .line 548
    invoke-direct {p0, v0}, Lcom/appnext/banners/a;->report(Ljava/lang/String;)V

    .line 550
    :goto_26
    iget-object v0, p0, Lcom/appnext/banners/a;->adRequest:Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdRequest;->isMute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appnext/banners/a;->userMute:Z

    .line 552
    sget v0, Lcom/appnext/banners/R$id;->mute:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/appnext/banners/a;->userMute:Z

    if-eqz v1, :cond_3d

    sget v1, Lcom/appnext/banners/R$drawable;->apnxt_banner_unmute:I

    goto :goto_3f

    :cond_3d
    sget v1, Lcom/appnext/banners/R$drawable;->apnxt_banner_mute:I

    :goto_3f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 553
    sget v0, Lcom/appnext/banners/R$id;->mute:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 554
    sget v0, Lcom/appnext/banners/R$id;->mute:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/appnext/banners/a$9;

    invoke-direct {v2, p0, p1}, Lcom/appnext/banners/a$9;-><init>(Lcom/appnext/banners/a;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_5a
    .catchall {:try_start_0 .. :try_end_5a} :catchall_f1

    .line 568
    :try_start_5a
    new-instance v0, Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appnext/banners/a;->videoView:Landroid/widget/VideoView;
    :try_end_67
    .catchall {:try_start_5a .. :try_end_67} :catchall_68

    goto :goto_71

    .line 570
    :catchall_68
    :try_start_68
    new-instance v0, Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appnext/banners/a;->videoView:Landroid/widget/VideoView;

    .line 572
    :goto_71
    iget-object v0, p0, Lcom/appnext/banners/a;->videoView:Landroid/widget/VideoView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object v0, p0, Lcom/appnext/banners/a;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 574
    sget v0, Lcom/appnext/banners/R$id;->click:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/appnext/banners/a$10;

    invoke-direct {v2, p0, p1}, Lcom/appnext/banners/a$10;-><init>(Lcom/appnext/banners/a;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v0, p0, Lcom/appnext/banners/a;->videoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/appnext/banners/a$11;

    invoke-direct {v2, p0}, Lcom/appnext/banners/a$11;-><init>(Lcom/appnext/banners/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 636
    iget-object v0, p0, Lcom/appnext/banners/a;->videoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/appnext/banners/a$13;

    invoke-direct {v2, p0}, Lcom/appnext/banners/a$13;-><init>(Lcom/appnext/banners/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 648
    iget-object v0, p0, Lcom/appnext/banners/a;->videoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/appnext/banners/a$14;

    invoke-direct {v2, p0}, Lcom/appnext/banners/a$14;-><init>(Lcom/appnext/banners/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 658
    iget-object v0, p0, Lcom/appnext/banners/a;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v2

    iget-object v3, p0, Lcom/appnext/banners/a;->adRequest:Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {v3}, Lcom/appnext/banners/BannerAdRequest;->getVideoLength()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/appnext/banners/a;->getVideoUrl(Lcom/appnext/core/AppnextAd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 660
    sget v0, Lcom/appnext/banners/R$id;->play:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/appnext/banners/a$15;

    invoke-direct {v2, p0, p1}, Lcom/appnext/banners/a$15;-><init>(Lcom/appnext/banners/a;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    iget-object v0, p0, Lcom/appnext/banners/a;->adRequest:Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdRequest;->isAutoPlay()Z

    move-result v0

    if-nez v0, :cond_f1

    .line 669
    sget v0, Lcom/appnext/banners/R$id;->play:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 670
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appnext/banners/a$16;

    invoke-direct {v1, p0, p1}, Lcom/appnext/banners/a$16;-><init>(Lcom/appnext/banners/a;Landroid/view/ViewGroup;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 682
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_f1
    .catchall {:try_start_68 .. :try_end_f1} :catchall_f1

    :catchall_f1
    :cond_f1
    return-void
.end method

.method private createWideImage(Landroid/widget/ImageView;)V
    .registers 4

    const-string v0, "static_creative"

    .line 515
    invoke-direct {p0, v0}, Lcom/appnext/banners/a;->report(Ljava/lang/String;)V

    .line 516
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appnext/banners/a$8;

    invoke-direct {v1, p0, p1}, Lcom/appnext/banners/a$8;-><init>(Lcom/appnext/banners/a;Landroid/widget/ImageView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 535
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private load()V
    .registers 9

    .line 148
    iget-object v0, p0, Lcom/appnext/banners/a;->adRequest:Lcom/appnext/banners/BannerAdRequest;

    if-nez v0, :cond_5

    return-void

    .line 150
    :cond_5
    invoke-static {}, Lcom/appnext/core/j;->bj()Lcom/appnext/core/j;

    move-result-object v0

    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v1

    const-string v2, "banner_expiration_time"

    invoke-virtual {v1, v2}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appnext/core/j;->b(I)V

    .line 151
    invoke-static {}, Lcom/appnext/banners/b;->R()Lcom/appnext/banners/b;

    move-result-object v2

    iget-object v3, p0, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/appnext/banners/a$18;

    invoke-direct {v6, p0}, Lcom/appnext/banners/a$18;-><init>(Lcom/appnext/banners/a;)V

    iget-object v7, p0, Lcom/appnext/banners/a;->adRequest:Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual/range {v2 .. v7}, Lcom/appnext/banners/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Lcom/appnext/banners/BannerAdRequest;)V

    return-void
.end method

.method private report(Ljava/lang/String;)V
    .registers 12

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    if-eqz v0, :cond_51

    .line 863
    iget-object v0, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAd;->getTID()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAd;->getVID()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAd;->getAUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getPlacementId()Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_51

    const-string v4, ""

    if-nez v0, :cond_20

    move-object v0, v4

    goto :goto_24

    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lcom/appnext/banners/a;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    :goto_24
    iget-object v5, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    invoke-virtual {v5}, Lcom/appnext/banners/BannerAd;->getSessionId()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/appnext/banners/a;->template:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v6

    if-eqz v6, :cond_3c

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appnext/banners/BannerAdData;->getBannerID()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    goto :goto_3d

    :cond_3c
    move-object v8, v4

    :goto_3d
    invoke-virtual {p0}, Lcom/appnext/banners/a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v6

    if-eqz v6, :cond_4b

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appnext/banners/BannerAdData;->getCampaignID()Ljava/lang/String;

    move-result-object v4

    :cond_4b
    move-object v9, v4

    move-object v4, v0

    move-object v6, p1

    invoke-static/range {v1 .. v9}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_20 .. :try_end_51} :catchall_51

    :catchall_51
    :cond_51
    return-void
.end method


# virtual methods
.method public click()V
    .registers 6

    const-string v0, "click_event"

    .line 475
    invoke-direct {p0, v0}, Lcom/appnext/banners/a;->report(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/appnext/banners/a;->getBannerListener()Lcom/appnext/banners/BannerListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 477
    invoke-virtual {p0}, Lcom/appnext/banners/a;->getBannerListener()Lcom/appnext/banners/BannerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/BannerListener;->onAdClicked()V

    .line 478
    :cond_12
    iget-object v0, p0, Lcom/appnext/banners/a;->userAction:Lcom/appnext/core/q;

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/banners/BannerAdData;->getAppURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/appnext/banners/a$7;

    invoke-direct {v4, p0}, Lcom/appnext/banners/a$7;-><init>(Lcom/appnext/banners/a;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/e$a;)V

    return-void
.end method

.method protected createAd(Landroid/content/Context;Ljava/lang/String;)Lcom/appnext/core/Ad;
    .registers 8

    .line 91
    invoke-virtual {p0}, Lcom/appnext/banners/a;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7536f730

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_32

    const v2, -0x5c1d2fb

    if-eq v1, v2, :cond_28

    const v2, 0x7458732c

    if-eq v1, v2, :cond_1e

    goto :goto_3c

    :cond_1e
    const-string v1, "BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x0

    goto :goto_3d

    :cond_28
    const-string v1, "MEDIUM_RECTANGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x2

    goto :goto_3d

    :cond_32
    const-string v1, "LARGE_BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    :goto_3c
    const/4 v0, -0x1

    :goto_3d
    if-eqz v0, :cond_67

    if-eq v0, v4, :cond_61

    if-ne v0, v3, :cond_49

    .line 97
    new-instance v0, Lcom/appnext/banners/MediumRectangleAd;

    invoke-direct {v0, p1, p2}, Lcom/appnext/banners/MediumRectangleAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 99
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Wrong banner size "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_61
    new-instance v0, Lcom/appnext/banners/LargeBannerAd;

    invoke-direct {v0, p1, p2}, Lcom/appnext/banners/LargeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 93
    :cond_67
    new-instance v0, Lcom/appnext/banners/SmallBannerAd;

    invoke-direct {v0, p1, p2}, Lcom/appnext/banners/SmallBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public destroy()V
    .registers 4

    .line 772
    invoke-super {p0}, Lcom/appnext/banners/e;->destroy()V

    .line 775
    :try_start_3
    iget-object v0, p0, Lcom/appnext/banners/a;->userAction:Lcom/appnext/core/q;

    invoke-virtual {v0}, Lcom/appnext/core/q;->destroy()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_8

    :catchall_8
    const/4 v0, 0x0

    .line 779
    :try_start_9
    iget-object v1, p0, Lcom/appnext/banners/a;->videoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_2a

    .line 780
    iget-object v1, p0, Lcom/appnext/banners/a;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 781
    iget-object v1, p0, Lcom/appnext/banners/a;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 782
    iget-object v1, p0, Lcom/appnext/banners/a;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 783
    iget-object v1, p0, Lcom/appnext/banners/a;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->suspend()V

    .line 784
    iput-object v0, p0, Lcom/appnext/banners/a;->videoView:Landroid/widget/VideoView;

    .line 786
    iget-object v1, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 787
    iput-object v0, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_2a

    .line 793
    :catchall_2a
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/appnext/banners/a;->serviceHelper:Lcom/appnext/banners/i;

    if-eqz v1, :cond_35

    .line 794
    iget-object v1, p0, Lcom/appnext/banners/a;->serviceHelper:Lcom/appnext/banners/i;

    iget-object v2, p0, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/appnext/banners/i;->a(Landroid/content/Context;)V

    .line 796
    :cond_35
    iput-object v0, p0, Lcom/appnext/banners/a;->serviceHelper:Lcom/appnext/banners/i;
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_37

    .line 801
    :catchall_37
    :try_start_37
    iget-object v1, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    invoke-virtual {v1}, Lcom/appnext/banners/BannerAd;->destroy()V

    .line 802
    iput-object v0, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3e

    .line 805
    :catchall_3e
    iput-object v0, p0, Lcom/appnext/banners/a;->adRequest:Lcom/appnext/banners/BannerAdRequest;

    .line 808
    :try_start_40
    iget-object v1, p0, Lcom/appnext/banners/a;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_45

    :catchall_45
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 814
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 816
    invoke-virtual {p0}, Lcom/appnext/banners/a;->destroy()V

    return-void
.end method

.method protected getAdRequest()Lcom/appnext/banners/BannerAdRequest;
    .registers 2

    .line 888
    iget-object v0, p0, Lcom/appnext/banners/a;->adRequest:Lcom/appnext/banners/BannerAdRequest;

    return-object v0
.end method

.method protected getAds()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;"
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lcom/appnext/banners/a;->ads:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getBannerAd()Lcom/appnext/banners/BannerAd;
    .registers 2

    .line 876
    iget-object v0, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    return-object v0
.end method

.method protected getButtonText(Lcom/appnext/core/AppnextAd;)Ljava/lang/String;
    .registers 7

    .line 415
    new-instance v0, Lcom/appnext/banners/BannerAdData;

    invoke-direct {v0, p1}, Lcom/appnext/banners/BannerAdData;-><init>(Lcom/appnext/core/AppnextAd;)V

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdData;->getButtonText()Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/banners/BannerAdData;->getAdPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "existing"

    const-string v3, "new"

    if-eqz p1, :cond_55

    const-string p1, ""

    .line 417
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    if-eqz v1, :cond_3e

    .line 419
    invoke-static {}, Lcom/appnext/core/a/b;->bp()Lcom/appnext/core/a/b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v1

    const-string v3, "existing_button_text"

    invoke-virtual {v1, v3}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/appnext/core/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_65

    .line 421
    :cond_3e
    invoke-static {}, Lcom/appnext/core/a/b;->bp()Lcom/appnext/core/a/b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v1

    const-string v2, "new_button_text"

    invoke-virtual {v1, v2}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/appnext/core/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_65

    .line 424
    :cond_55
    invoke-static {}, Lcom/appnext/core/a/b;->bp()Lcom/appnext/core/a/b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getLanguage()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_60

    goto :goto_61

    :cond_60
    move-object v2, v3

    :goto_61
    invoke-virtual {p1, v4, v2, v0}, Lcom/appnext/core/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_65
    return-object p1
.end method

.method protected getCreativeType(Lcom/appnext/core/AppnextAd;)I
    .registers 6

    .line 432
    iget-object v0, p0, Lcom/appnext/banners/a;->adRequest:Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdRequest;->getCreativeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 433
    invoke-static {p1}, Lcom/appnext/banners/b;->hasVideo(Lcom/appnext/core/AppnextAd;)Z

    move-result p1

    if-eqz p1, :cond_17

    return v1

    :cond_17
    return v2

    .line 438
    :cond_18
    iget-object v0, p0, Lcom/appnext/banners/a;->adRequest:Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdRequest;->getCreativeType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {p1}, Lcom/appnext/banners/b;->hasVideo(Lcom/appnext/core/AppnextAd;)Z

    move-result p1

    if-eqz p1, :cond_2d

    return v1

    :cond_2d
    return v2
.end method

.method public getECPM(Lcom/appnext/banners/BannerAdRequest;Lcom/appnext/core/callbacks/OnECPMLoaded;)V
    .registers 11

    if-eqz p1, :cond_62

    .line 258
    invoke-virtual {p0}, Lcom/appnext/banners/a;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 261
    invoke-virtual {p0}, Lcom/appnext/banners/a;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v0

    if-eqz v0, :cond_52

    if-eqz p2, :cond_4a

    .line 268
    iget-object v0, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    if-nez v0, :cond_22

    .line 269
    iget-object v0, p0, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/appnext/banners/a;->createAd(Landroid/content/Context;Ljava/lang/String;)Lcom/appnext/core/Ad;

    move-result-object v0

    check-cast v0, Lcom/appnext/banners/BannerAd;

    iput-object v0, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    .line 271
    :cond_22
    iget-object v0, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    invoke-virtual {p1}, Lcom/appnext/banners/BannerAdRequest;->getCategories()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/banners/BannerAd;->setCategories(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    invoke-virtual {p1}, Lcom/appnext/banners/BannerAdRequest;->getPostback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/banners/BannerAd;->setPostback(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/appnext/banners/b;->R()Lcom/appnext/banners/b;

    move-result-object v2

    iget-object v3, p0, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/appnext/banners/a$19;

    invoke-direct {v6, p0, p1, p2}, Lcom/appnext/banners/a$19;-><init>(Lcom/appnext/banners/a;Lcom/appnext/banners/BannerAdRequest;Lcom/appnext/core/callbacks/OnECPMLoaded;)V

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/appnext/banners/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Lcom/appnext/banners/BannerAdRequest;)V

    return-void

    .line 265
    :cond_4a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "callback cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing banner size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 259
    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing placement id."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_62
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BannerAdRequest cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getSelectedAd()Lcom/appnext/banners/BannerAdData;
    .registers 2

    .line 880
    iget-object v0, p0, Lcom/appnext/banners/a;->currentAd:Lcom/appnext/banners/BannerAdData;

    return-object v0
.end method

.method protected getUserAction()Lcom/appnext/core/q;
    .registers 2

    .line 900
    iget-object v0, p0, Lcom/appnext/banners/a;->userAction:Lcom/appnext/core/q;

    return-object v0
.end method

.method protected getVideoUrl(Lcom/appnext/core/AppnextAd;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "30"

    .line 695
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, ""

    if-eqz p2, :cond_2d

    .line 696
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrl30Sec()Ljava/lang/String;

    move-result-object p2

    .line 697
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 698
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrl()Ljava/lang/String;

    move-result-object p2

    .line 699
    :cond_18
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 700
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh30Sec()Ljava/lang/String;

    move-result-object p2

    .line 701
    :cond_22
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 702
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh()Ljava/lang/String;

    move-result-object p2

    goto :goto_4f

    .line 704
    :cond_2d
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrl()Ljava/lang/String;

    move-result-object p2

    .line 705
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 706
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrl30Sec()Ljava/lang/String;

    move-result-object p2

    .line 707
    :cond_3b
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 708
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh()Ljava/lang/String;

    move-result-object p2

    .line 709
    :cond_45
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 710
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh30Sec()Ljava/lang/String;

    move-result-object p2

    :cond_4f
    :goto_4f
    return-object p2
.end method

.method public impression()V
    .registers 5

    .line 446
    monitor-enter p0

    .line 447
    :try_start_1
    iget-boolean v0, p0, Lcom/appnext/banners/a;->loaded:Z

    if-eqz v0, :cond_8e

    iget-boolean v0, p0, Lcom/appnext/banners/a;->reportedImpression:Z

    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/appnext/banners/a;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/appnext/banners/a;->getVisiblePercent(Landroid/view/View;)I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_8e

    iget-object v0, p0, Lcom/appnext/banners/a;->userAction:Lcom/appnext/core/q;

    if-nez v0, :cond_18

    goto :goto_8e

    :cond_18
    const/4 v0, 0x1

    .line 450
    iput-boolean v0, p0, Lcom/appnext/banners/a;->reportedImpression:Z

    .line 451
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_90

    .line 452
    invoke-virtual {p0}, Lcom/appnext/banners/a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 453
    iget-object v0, p0, Lcom/appnext/banners/a;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/appnext/banners/a$5;

    invoke-direct {v1, p0}, Lcom/appnext/banners/a$5;-><init>(Lcom/appnext/banners/a;)V

    .line 458
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v2

    const-string v3, "postpone_impression_sec"

    invoke-virtual {v2, v3}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 453
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "impression_event"

    .line 459
    invoke-direct {p0, v0}, Lcom/appnext/banners/a;->report(Ljava/lang/String;)V

    .line 460
    invoke-static {}, Lcom/appnext/core/j;->bj()Lcom/appnext/core/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/BannerAdData;->getBannerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appnext/core/j;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v0

    const-string v1, "pview"

    invoke-virtual {v0, v1}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 462
    iget-object v0, p0, Lcom/appnext/banners/a;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/appnext/banners/a$6;

    invoke-direct {v1, p0}, Lcom/appnext/banners/a$6;-><init>(Lcom/appnext/banners/a;)V

    .line 467
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v2

    const-string v3, "postpone_vta_sec"

    invoke-virtual {v2, v3}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 462
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 469
    :cond_80
    invoke-virtual {p0}, Lcom/appnext/banners/a;->getBannerListener()Lcom/appnext/banners/BannerListener;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 470
    invoke-virtual {p0}, Lcom/appnext/banners/a;->getBannerListener()Lcom/appnext/banners/BannerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/BannerListener;->adImpression()V

    :cond_8d
    return-void

    .line 448
    :cond_8e
    :goto_8e
    :try_start_8e
    monitor-exit p0

    return-void

    :catchall_90
    move-exception v0

    .line 451
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_90

    throw v0
.end method

.method protected inflateView(ILcom/appnext/core/AppnextAd;)V
    .registers 7

    .line 298
    iget-object v0, p0, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 299
    iget-object v1, p0, Lcom/appnext/banners/a;->rootView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 301
    new-instance v0, Lcom/appnext/banners/a$20;

    invoke-direct {v0, p0}, Lcom/appnext/banners/a$20;-><init>(Lcom/appnext/banners/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    sget v0, Lcom/appnext/banners/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_38

    .line 311
    new-instance v1, Lcom/appnext/banners/a$21;

    invoke-direct {v1, p0}, Lcom/appnext/banners/a$21;-><init>(Lcom/appnext/banners/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/appnext/banners/a$22;

    invoke-direct {v3, p0, p2, v0}, Lcom/appnext/banners/a$22;-><init>(Lcom/appnext/banners/a;Lcom/appnext/core/AppnextAd;Landroid/widget/ImageView;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 329
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 332
    :cond_38
    sget v0, Lcom/appnext/banners/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_51

    .line 334
    invoke-virtual {p2}, Lcom/appnext/core/AppnextAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    new-instance v1, Lcom/appnext/banners/a$23;

    invoke-direct {v1, p0}, Lcom/appnext/banners/a$23;-><init>(Lcom/appnext/banners/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    :cond_51
    sget v0, Lcom/appnext/banners/R$id;->ratingBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    if-eqz v0, :cond_73

    .line 347
    :try_start_5b
    invoke-virtual {p2}, Lcom/appnext/core/AppnextAd;->getStoreRating()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_67

    goto :goto_6b

    :catchall_67
    const/4 v1, 0x4

    .line 349
    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 351
    :goto_6b
    new-instance v1, Lcom/appnext/banners/a$24;

    invoke-direct {v1, p0}, Lcom/appnext/banners/a$24;-><init>(Lcom/appnext/banners/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    :cond_73
    sget v0, Lcom/appnext/banners/R$id;->description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_8c

    .line 362
    invoke-virtual {p2}, Lcom/appnext/core/AppnextAd;->getAdDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    new-instance v1, Lcom/appnext/banners/a$2;

    invoke-direct {v1, p0}, Lcom/appnext/banners/a$2;-><init>(Lcom/appnext/banners/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    :cond_8c
    sget v0, Lcom/appnext/banners/R$id;->install:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 373
    invoke-virtual {p0, p2}, Lcom/appnext/banners/a;->getButtonText(Lcom/appnext/core/AppnextAd;)Ljava/lang/String;

    move-result-object v1

    .line 374
    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    new-instance v1, Lcom/appnext/banners/a$3;

    invoke-direct {v1, p0}, Lcom/appnext/banners/a$3;-><init>(Lcom/appnext/banners/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    sget v0, Lcom/appnext/banners/R$id;->media:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c3

    .line 385
    invoke-virtual {p0, p2}, Lcom/appnext/banners/a;->getCreativeType(Lcom/appnext/core/AppnextAd;)I

    move-result v1

    if-eqz v1, :cond_be

    .line 391
    sget v0, Lcom/appnext/banners/R$id;->wide_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/appnext/banners/a;->createWideImage(Landroid/widget/ImageView;)V

    goto :goto_c3

    .line 387
    :cond_be
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/appnext/banners/a;->createVideo(Landroid/view/ViewGroup;)V

    .line 396
    :cond_c3
    :goto_c3
    sget v0, Lcom/appnext/banners/R$id;->privacy:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 397
    new-instance v1, Lcom/appnext/banners/a$4;

    invoke-direct {v1, p0, p2}, Lcom/appnext/banners/a$4;-><init>(Lcom/appnext/banners/a;Lcom/appnext/core/AppnextAd;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/appnext/core/k;->a(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/p;)Z

    move-result p2

    if-eqz p2, :cond_e2

    .line 404
    iget-object p2, p0, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/appnext/core/k;->a(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 407
    :cond_e2
    iget-object p2, p0, Lcom/appnext/banners/a;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_ef

    .line 408
    iget-object p2, p0, Lcom/appnext/banners/a;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 411
    :cond_ef
    iget-object p2, p0, Lcom/appnext/banners/a;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public init(Landroid/view/ViewGroup;)V
    .registers 4

    .line 65
    invoke-super {p0, p1}, Lcom/appnext/banners/e;->init(Landroid/view/ViewGroup;)V

    .line 66
    new-instance p1, Lcom/appnext/core/q;

    iget-object v0, p0, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    new-instance v1, Lcom/appnext/banners/a$1;

    invoke-direct {v1, p0}, Lcom/appnext/banners/a$1;-><init>(Lcom/appnext/banners/a;)V

    invoke-direct {p1, v0, v1}, Lcom/appnext/core/q;-><init>(Landroid/content/Context;Lcom/appnext/core/q$a;)V

    iput-object p1, p0, Lcom/appnext/banners/a;->userAction:Lcom/appnext/core/q;

    .line 87
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/appnext/banners/a;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public isClickEnabled()Z
    .registers 2

    .line 868
    iget-boolean v0, p0, Lcom/appnext/banners/a;->clickEnabled:Z

    return v0
.end method

.method protected isReportedImpression()Z
    .registers 2

    .line 896
    iget-boolean v0, p0, Lcom/appnext/banners/a;->reportedImpression:Z

    return v0
.end method

.method public loadAd(Lcom/appnext/banners/BannerAdRequest;)V
    .registers 4

    if-eqz p1, :cond_77

    .line 107
    invoke-virtual {p0}, Lcom/appnext/banners/a;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 110
    invoke-virtual {p0}, Lcom/appnext/banners/a;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 114
    iget-object v0, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    if-nez v0, :cond_20

    .line 115
    iget-object v0, p0, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/appnext/banners/a;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/appnext/banners/a;->createAd(Landroid/content/Context;Ljava/lang/String;)Lcom/appnext/core/Ad;

    move-result-object v0

    check-cast v0, Lcom/appnext/banners/BannerAd;

    iput-object v0, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    .line 122
    :cond_20
    iget-object v0, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    invoke-virtual {p1}, Lcom/appnext/banners/BannerAdRequest;->getCategories()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/banners/BannerAd;->setCategories(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/appnext/banners/a;->bannerAd:Lcom/appnext/banners/BannerAd;

    invoke-virtual {p1}, Lcom/appnext/banners/BannerAdRequest;->getPostback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/banners/BannerAd;->setPostback(Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/appnext/banners/BannerAdRequest;

    invoke-direct {v0, p1}, Lcom/appnext/banners/BannerAdRequest;-><init>(Lcom/appnext/banners/BannerAdRequest;)V

    iput-object v0, p0, Lcom/appnext/banners/a;->adRequest:Lcom/appnext/banners/BannerAdRequest;

    .line 125
    invoke-virtual {p1}, Lcom/appnext/banners/BannerAdRequest;->isClickEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appnext/banners/a;->setClickEnabled(Z)V

    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Lcom/appnext/banners/a;->loaded:Z

    .line 128
    iput-boolean p1, p0, Lcom/appnext/banners/a;->reportedImpression:Z

    .line 130
    iget-object p1, p0, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/appnext/core/f;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appnext/core/f;->Z(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_58

    .line 132
    iget-object p1, p0, Lcom/appnext/banners/a;->adRequest:Lcom/appnext/banners/BannerAdRequest;

    const-string v0, "static"

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerAdRequest;->setCreativeType(Ljava/lang/String;)Lcom/appnext/banners/BannerAdRequest;

    .line 134
    :cond_58
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/banners/a;->context:Landroid/content/Context;

    new-instance v1, Lcom/appnext/banners/a$12;

    invoke-direct {v1, p0}, Lcom/appnext/banners/a$12;-><init>(Lcom/appnext/banners/a;)V

    invoke-virtual {p1, v0, v1}, Lcom/appnext/banners/d;->a(Landroid/content/Context;Lcom/appnext/core/p$a;)V

    return-void

    .line 111
    :cond_67
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing banner size."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_6f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing placement id."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_77
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BannerAdRequest cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onScrollChanged(I)V
    .registers 5

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7b

    iget-boolean v0, p0, Lcom/appnext/banners/a;->finished:Z

    if-nez v0, :cond_7b

    .line 749
    iget-object v0, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_7b

    const/16 v1, 0x5a

    if-eqz v0, :cond_29

    if-ge p1, v1, :cond_29

    .line 751
    :try_start_14
    iget-object v0, p0, Lcom/appnext/banners/a;->rootView:Landroid/view/ViewGroup;

    sget v2, Lcom/appnext/banners/R$id;->media:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/appnext/banners/R$id;->play:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_26

    .line 753
    :catchall_26
    :try_start_26
    invoke-virtual {p0}, Lcom/appnext/banners/a;->pause()V

    .line 756
    :cond_29
    iget-object v0, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_7b

    if-le p1, v1, :cond_7b

    iget-object p1, p0, Lcom/appnext/banners/a;->adRequest:Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {p1}, Lcom/appnext/banners/BannerAdRequest;->isAutoPlay()Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 757
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "start. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {p0}, Lcom/appnext/banners/a;->play()V
    :try_end_5c
    .catchall {:try_start_26 .. :try_end_5c} :catchall_7b

    .line 760
    :try_start_5c
    iget-object p1, p0, Lcom/appnext/banners/a;->rootView:Landroid/view/ViewGroup;

    sget v0, Lcom/appnext/banners/R$id;->media:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/appnext/banners/R$id;->play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_6f
    .catchall {:try_start_5c .. :try_end_6f} :catchall_6f

    .line 762
    :catchall_6f
    :try_start_6f
    iget-boolean p1, p0, Lcom/appnext/banners/a;->started:Z

    if-nez p1, :cond_7b

    const-string p1, "video_started"

    .line 763
    invoke-direct {p0, p1}, Lcom/appnext/banners/a;->report(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 764
    iput-boolean p1, p0, Lcom/appnext/banners/a;->started:Z
    :try_end_7b
    .catchall {:try_start_6f .. :try_end_7b} :catchall_7b

    :catchall_7b
    :cond_7b
    return-void
.end method

.method protected openLink(Ljava/lang/String;)V
    .registers 4

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 501
    invoke-virtual {p0}, Lcom/appnext/banners/a;->pause()V

    .line 502
    iget-object v0, p0, Lcom/appnext/banners/a;->rootView:Landroid/view/ViewGroup;

    sget v1, Lcom/appnext/banners/R$id;->media:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/appnext/banners/R$id;->play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/appnext/banners/R$drawable;->apnxt_banner_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 503
    iget-object v0, p0, Lcom/appnext/banners/a;->rootView:Landroid/view/ViewGroup;

    sget v1, Lcom/appnext/banners/R$id;->media:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/appnext/banners/R$id;->play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_36

    .line 508
    :catchall_36
    :cond_36
    :try_start_36
    invoke-super {p0, p1}, Lcom/appnext/banners/e;->openLink(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    const-string p1, "error_no_market"

    .line 510
    invoke-direct {p0, p1}, Lcom/appnext/banners/a;->report(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 826
    iget-object v0, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 827
    iget-object v0, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_f
    return-void
.end method

.method public play()V
    .registers 2

    .line 820
    iget-object v0, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_f

    .line 821
    iget-object v0, p0, Lcom/appnext/banners/a;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_f
    return-void
.end method

.method public setClickEnabled(Z)V
    .registers 2

    .line 872
    iput-boolean p1, p0, Lcom/appnext/banners/a;->clickEnabled:Z

    return-void
.end method

.method protected setReportedImpression(Z)V
    .registers 2

    .line 892
    iput-boolean p1, p0, Lcom/appnext/banners/a;->reportedImpression:Z

    return-void
.end method

.method protected setSelectedAd(Lcom/appnext/banners/BannerAdData;)V
    .registers 2

    .line 884
    iput-object p1, p0, Lcom/appnext/banners/a;->currentAd:Lcom/appnext/banners/BannerAdData;

    return-void
.end method
