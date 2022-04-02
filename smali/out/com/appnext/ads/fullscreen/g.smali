.class public final Lcom/appnext/ads/fullscreen/g;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/ads/fullscreen/g$a;
    }
.end annotation


# instance fields
.field private final TICK:I

.field private ay:Lcom/appnext/ads/fullscreen/Circle;

.field private bA:Z

.field private bB:Lcom/appnext/ads/fullscreen/j;

.field bC:Ljava/lang/Runnable;

.field private bu:Landroid/widget/ImageView;

.field private bv:Landroid/widget/Button;

.field private bw:Landroid/widget/TextView;

.field private bx:Landroid/widget/ImageView;

.field private by:Landroid/view/animation/Animation;

.field private bz:Landroid/widget/ImageView;

.field private currentPosition:I

.field private finished:Z

.field private lastProgress:I

.field private mHandler:Landroid/os/Handler;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private started:Z

.field tick:Ljava/lang/Runnable;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/16 v0, 0x14a

    .line 33
    iput v0, p0, Lcom/appnext/ads/fullscreen/g;->TICK:I

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/appnext/ads/fullscreen/g;->currentPosition:I

    .line 42
    iput-boolean v0, p0, Lcom/appnext/ads/fullscreen/g;->finished:Z

    .line 44
    iput v0, p0, Lcom/appnext/ads/fullscreen/g;->lastProgress:I

    .line 47
    iput-boolean v0, p0, Lcom/appnext/ads/fullscreen/g;->started:Z

    .line 49
    iput-boolean v0, p0, Lcom/appnext/ads/fullscreen/g;->bA:Z

    .line 332
    new-instance v0, Lcom/appnext/ads/fullscreen/g$11;

    invoke-direct {v0, p0}, Lcom/appnext/ads/fullscreen/g$11;-><init>(Lcom/appnext/ads/fullscreen/g;)V

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/g;->tick:Ljava/lang/Runnable;

    .line 358
    new-instance v0, Lcom/appnext/ads/fullscreen/g$2;

    invoke-direct {v0, p0}, Lcom/appnext/ads/fullscreen/g$2;-><init>(Lcom/appnext/ads/fullscreen/g;)V

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/g;->bC:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/g;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/appnext/ads/fullscreen/g;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/appnext/ads/fullscreen/g;)Lcom/appnext/ads/fullscreen/j;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    return-object p0
.end method

.method static synthetic a(Lcom/appnext/ads/fullscreen/g;Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/appnext/ads/fullscreen/g;->report(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/appnext/ads/fullscreen/g;Z)Z
    .registers 2

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/appnext/ads/fullscreen/g;->bA:Z

    return p1
.end method

.method static synthetic b(Lcom/appnext/ads/fullscreen/g;)Landroid/widget/ImageView;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/g;->bz:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/appnext/ads/fullscreen/g;Z)Z
    .registers 2

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/appnext/ads/fullscreen/g;->started:Z

    return p1
.end method

.method static synthetic c(Lcom/appnext/ads/fullscreen/g;)Landroid/widget/Button;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/g;->bv:Landroid/widget/Button;

    return-object p0
.end method

.method private checkProgress()V
    .registers 5

    .line 392
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_24

    .line 393
    iget v2, p0, Lcom/appnext/ads/fullscreen/g;->lastProgress:I

    if-nez v2, :cond_24

    .line 394
    iput v1, p0, Lcom/appnext/ads/fullscreen/g;->lastProgress:I

    const-string v0, "video_25"

    .line 395
    invoke-direct {p0, v0}, Lcom/appnext/ads/fullscreen/g;->report(Ljava/lang/String;)V

    return-void

    :cond_24
    const/16 v2, 0x32

    if-le v0, v2, :cond_34

    .line 396
    iget v3, p0, Lcom/appnext/ads/fullscreen/g;->lastProgress:I

    if-ne v3, v1, :cond_34

    .line 397
    iput v2, p0, Lcom/appnext/ads/fullscreen/g;->lastProgress:I

    const-string v0, "video_50"

    .line 398
    invoke-direct {p0, v0}, Lcom/appnext/ads/fullscreen/g;->report(Ljava/lang/String;)V

    return-void

    :cond_34
    const/16 v1, 0x4b

    if-le v0, v1, :cond_43

    .line 399
    iget v0, p0, Lcom/appnext/ads/fullscreen/g;->lastProgress:I

    if-ne v0, v2, :cond_43

    .line 400
    iput v1, p0, Lcom/appnext/ads/fullscreen/g;->lastProgress:I

    const-string v0, "video_75"

    .line 401
    invoke-direct {p0, v0}, Lcom/appnext/ads/fullscreen/g;->report(Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method static synthetic d(Lcom/appnext/ads/fullscreen/g;)Landroid/widget/ImageView;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/g;->bu:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/appnext/ads/fullscreen/g;)Landroid/widget/TextView;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/g;->bw:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/appnext/ads/fullscreen/g;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/appnext/ads/fullscreen/g;->bA:Z

    return p0
.end method

.method static synthetic g(Lcom/appnext/ads/fullscreen/g;)Landroid/os/Handler;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/g;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/appnext/ads/fullscreen/g;)I
    .registers 1

    .line 31
    iget p0, p0, Lcom/appnext/ads/fullscreen/g;->currentPosition:I

    return p0
.end method

.method static synthetic i(Lcom/appnext/ads/fullscreen/g;)Landroid/media/MediaPlayer;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic j(Lcom/appnext/ads/fullscreen/g;)Landroid/widget/ImageView;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/g;->bx:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic k(Lcom/appnext/ads/fullscreen/g;)Landroid/view/animation/Animation;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/g;->by:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic l(Lcom/appnext/ads/fullscreen/g;)V
    .registers 3

    .line 1256
    :try_start_0
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/appnext/ads/fullscreen/g;->finished:Z
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_46

    if-eqz v0, :cond_19

    goto :goto_46

    .line 1261
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCompletion. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 1262
    iput-boolean v0, p0, Lcom/appnext/ads/fullscreen/g;->finished:Z

    .line 1263
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    if-eqz v0, :cond_41

    .line 1264
    invoke-interface {v0}, Lcom/appnext/ads/fullscreen/j;->videoEnded()V

    :cond_41
    const-string v0, "video_ended"

    .line 1266
    invoke-direct {p0, v0}, Lcom/appnext/ads/fullscreen/g;->report(Ljava/lang/String;)V

    :catchall_46
    :cond_46
    :goto_46
    return-void
.end method

.method static synthetic m(Lcom/appnext/ads/fullscreen/g;)Landroid/widget/VideoView;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic n(Lcom/appnext/ads/fullscreen/g;)V
    .registers 5

    .line 1392
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_24

    .line 1393
    iget v2, p0, Lcom/appnext/ads/fullscreen/g;->lastProgress:I

    if-nez v2, :cond_24

    .line 1394
    iput v1, p0, Lcom/appnext/ads/fullscreen/g;->lastProgress:I

    const-string v0, "video_25"

    .line 1395
    invoke-direct {p0, v0}, Lcom/appnext/ads/fullscreen/g;->report(Ljava/lang/String;)V

    return-void

    :cond_24
    const/16 v2, 0x32

    if-le v0, v2, :cond_34

    .line 1396
    iget v3, p0, Lcom/appnext/ads/fullscreen/g;->lastProgress:I

    if-ne v3, v1, :cond_34

    .line 1397
    iput v2, p0, Lcom/appnext/ads/fullscreen/g;->lastProgress:I

    const-string v0, "video_50"

    .line 1398
    invoke-direct {p0, v0}, Lcom/appnext/ads/fullscreen/g;->report(Ljava/lang/String;)V

    return-void

    :cond_34
    const/16 v1, 0x4b

    if-le v0, v1, :cond_43

    .line 1399
    iget v0, p0, Lcom/appnext/ads/fullscreen/g;->lastProgress:I

    if-ne v0, v2, :cond_43

    .line 1400
    iput v1, p0, Lcom/appnext/ads/fullscreen/g;->lastProgress:I

    const-string v0, "video_75"

    .line 1401
    invoke-direct {p0, v0}, Lcom/appnext/ads/fullscreen/g;->report(Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method static synthetic o(Lcom/appnext/ads/fullscreen/g;)Lcom/appnext/ads/fullscreen/Circle;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/g;->ay:Lcom/appnext/ads/fullscreen/Circle;

    return-object p0
.end method

.method static synthetic p(Lcom/appnext/ads/fullscreen/g;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/appnext/ads/fullscreen/g;->finished:Z

    return p0
.end method

.method private r()V
    .registers 3

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/appnext/ads/fullscreen/g;->finished:Z
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_46

    if-eqz v0, :cond_19

    goto :goto_46

    .line 261
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCompletion. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/appnext/ads/fullscreen/g;->finished:Z

    .line 263
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    if-eqz v0, :cond_41

    .line 264
    invoke-interface {v0}, Lcom/appnext/ads/fullscreen/j;->videoEnded()V

    :cond_41
    const-string v0, "video_ended"

    .line 266
    invoke-direct {p0, v0}, Lcom/appnext/ads/fullscreen/g;->report(Ljava/lang/String;)V

    :catchall_46
    :cond_46
    :goto_46
    return-void
.end method

.method private report(Ljava/lang/String;)V
    .registers 4

    .line 429
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    const-string v1, "S2"

    invoke-interface {v0, p1, v1}, Lcom/appnext/ads/fullscreen/j;->report(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private s()V
    .registers 3

    .line 406
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/appnext/R$anim;->apnxt_stream_loader:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/g;->by:Landroid/view/animation/Animation;

    .line 407
    new-instance v1, Lcom/appnext/ads/fullscreen/g$3;

    invoke-direct {v1, p0}, Lcom/appnext/ads/fullscreen/g$3;-><init>(Lcom/appnext/ads/fullscreen/g;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 424
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->by:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 425
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->by:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/app/Activity;)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 61
    check-cast p1, Lcom/appnext/ads/fullscreen/j;

    iput-object p1, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    .line 62
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/g;->s()V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .registers 2

    .line 67
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 69
    check-cast p1, Lcom/appnext/ads/fullscreen/j;

    iput-object p1, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    .line 70
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/g;->s()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    const-string v0, "settings"

    const-string v1, "showCta"

    .line 76
    :try_start_4
    iget-object v2, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    const-string v3, "S2"

    invoke-interface {v2, v3}, Lcom/appnext/ads/fullscreen/j;->getTemplate(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 78
    sget p2, Lcom/appnext/R$id;->privacy:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 79
    sget v2, Lcom/appnext/R$id;->close:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/appnext/ads/fullscreen/g;->bz:Landroid/widget/ImageView;

    .line 80
    sget v2, Lcom/appnext/R$id;->v_view:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/appnext/ads/fullscreen/g;->bu:Landroid/widget/ImageView;

    .line 81
    sget v2, Lcom/appnext/R$id;->install:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/appnext/ads/fullscreen/g;->bv:Landroid/widget/Button;

    .line 82
    sget v2, Lcom/appnext/R$id;->circle:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/appnext/ads/fullscreen/Circle;

    iput-object v2, p0, Lcom/appnext/ads/fullscreen/g;->ay:Lcom/appnext/ads/fullscreen/Circle;

    .line 83
    sget v2, Lcom/appnext/R$id;->click_txt:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/appnext/ads/fullscreen/g;->bw:Landroid/widget/TextView;

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "You will be redirected to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    invoke-interface {v5}, Lcom/appnext/ads/fullscreen/j;->isInstalled()Z

    move-result v5

    if-eqz v5, :cond_5f

    const-string v5, "app"

    goto :goto_61

    :cond_5f
    const-string v5, "Google Play"

    :goto_61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " once the ad will finish"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    sget v2, Lcom/appnext/R$id;->loader:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/appnext/ads/fullscreen/g;->bx:Landroid/widget/ImageView;

    .line 87
    new-instance v2, Lcom/appnext/ads/fullscreen/g$1;

    invoke-direct {v2, p0}, Lcom/appnext/ads/fullscreen/g$1;-><init>(Lcom/appnext/ads/fullscreen/g;)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v2, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    invoke-interface {v2}, Lcom/appnext/ads/fullscreen/j;->getSelectedAd()Lcom/appnext/core/AppnextAd;

    move-result-object v2

    iget-object v4, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    invoke-interface {v4}, Lcom/appnext/ads/fullscreen/j;->getConfigManager()Lcom/appnext/core/p;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/appnext/core/k;->a(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/p;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 94
    iget-object v2, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/appnext/core/k;->a(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 96
    :cond_9b
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/g;->bz:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    invoke-interface {p2}, Lcom/appnext/ads/fullscreen/j;->showClose()Z

    move-result p2

    if-eqz p2, :cond_ba

    .line 98
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/g;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/appnext/ads/fullscreen/g$4;

    invoke-direct {v4, p0}, Lcom/appnext/ads/fullscreen/g$4;-><init>(Lcom/appnext/ads/fullscreen/g;)V

    iget-object v5, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    .line 103
    invoke-interface {v5}, Lcom/appnext/ads/fullscreen/j;->closeDelay()J

    move-result-wide v5

    .line 98
    invoke-virtual {p2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    :cond_ba
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/g;->bz:Landroid/widget/ImageView;

    new-instance v4, Lcom/appnext/ads/fullscreen/g$5;

    invoke-direct {v4, p0}, Lcom/appnext/ads/fullscreen/g$5;-><init>(Lcom/appnext/ads/fullscreen/g;)V

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/g;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_e3

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/g;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e3

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/g;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_e3

    .line 114
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/g;->bv:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    :cond_e3
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    invoke-interface {p2}, Lcom/appnext/ads/fullscreen/j;->getCtaText()Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-static {}, Lcom/appnext/core/a/b;->bp()Lcom/appnext/core/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    invoke-interface {v2}, Lcom/appnext/ads/fullscreen/j;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "len"

    invoke-virtual {v1, v2, v0, v4}, Lcom/appnext/core/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_10d

    .line 119
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 120
    :cond_10d
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->bv:Landroid/widget/Button;

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/g;->bv:Landroid/widget/Button;

    const/4 v1, 0x2

    invoke-static {}, Lcom/appnext/core/a/b;->bp()Lcom/appnext/core/a/b;

    move-result-object v2

    iget-object v4, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    invoke-interface {v4}, Lcom/appnext/ads/fullscreen/j;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "font_size_sp"

    invoke-virtual {v2, v4, v0, v5}, Lcom/appnext/core/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 123
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/g;->bv:Landroid/widget/Button;

    new-instance v0, Lcom/appnext/ads/fullscreen/g$6;

    invoke-direct {v0, p0}, Lcom/appnext/ads/fullscreen/g$6;-><init>(Lcom/appnext/ads/fullscreen/g;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/g;->bu:Landroid/widget/ImageView;

    new-instance v0, Lcom/appnext/ads/fullscreen/g$7;

    invoke-direct {v0, p0}, Lcom/appnext/ads/fullscreen/g$7;-><init>(Lcom/appnext/ads/fullscreen/g;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_141
    .catchall {:try_start_4 .. :try_end_141} :catchall_1a4

    .line 174
    :try_start_141
    new-instance p2, Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;
    :try_end_150
    .catchall {:try_start_141 .. :try_end_150} :catchall_151

    goto :goto_15c

    .line 176
    :catchall_151
    :try_start_151
    new-instance p2, Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    .line 178
    :goto_15c
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    sget p2, Lcom/appnext/R$id;->media:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 180
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    new-instance v0, Lcom/appnext/ads/fullscreen/g$8;

    invoke-direct {v0, p0, p3}, Lcom/appnext/ads/fullscreen/g$8;-><init>(Lcom/appnext/ads/fullscreen/g;Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 221
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    new-instance p3, Lcom/appnext/ads/fullscreen/g$9;

    invoke-direct {p3, p0}, Lcom/appnext/ads/fullscreen/g$9;-><init>(Lcom/appnext/ads/fullscreen/g;)V

    invoke-virtual {p2, p3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 227
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    new-instance p3, Lcom/appnext/ads/fullscreen/g$10;

    invoke-direct {p3, p0}, Lcom/appnext/ads/fullscreen/g$10;-><init>(Lcom/appnext/ads/fullscreen/g;)V

    invoke-virtual {p2, p3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 237
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    iget-object p3, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    invoke-interface {p3}, Lcom/appnext/ads/fullscreen/j;->getSelectedVideoUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V
    :try_end_19e
    .catchall {:try_start_151 .. :try_end_19e} :catchall_19e

    :catchall_19e
    :try_start_19e
    const-string p2, "roll_loaded"

    .line 245
    invoke-direct {p0, p2}, Lcom/appnext/ads/fullscreen/g;->report(Ljava/lang/String;)V
    :try_end_1a3
    .catchall {:try_start_19e .. :try_end_1a3} :catchall_1a4

    return-object p1

    .line 249
    :catchall_1a4
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/g;->bB:Lcom/appnext/ads/fullscreen/j;

    invoke-interface {p1}, Lcom/appnext/ads/fullscreen/j;->closeClicked()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onDestroyView()V
    .registers 3

    .line 311
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 314
    :try_start_4
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_1e

    .line 315
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 316
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 317
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 318
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->suspend()V

    .line 319
    iput-object v0, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1e

    .line 324
    :catchall_1e
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_29

    .line 325
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 326
    iput-object v0, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_29

    :catchall_29
    :cond_29
    return-void
.end method

.method public final onPause()V
    .registers 3

    .line 271
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 273
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_19

    .line 275
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 276
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/appnext/ads/fullscreen/g;->currentPosition:I

    :cond_19
    return-void
.end method

.method public final onResume()V
    .registers 5

    .line 282
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 284
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/appnext/ads/fullscreen/g;->finished:Z

    if-nez v0, :cond_20

    .line 286
    :try_start_b
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/appnext/ads/fullscreen/g;->currentPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 287
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 288
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/g;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/g;->tick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_20

    :catchall_20
    :cond_20
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 296
    iget v0, p0, Lcom/appnext/ads/fullscreen/g;->currentPosition:I

    const-string v1, "currentPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    iget-boolean v0, p0, Lcom/appnext/ads/fullscreen/g;->started:Z

    const-string v1, "started"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onViewStateRestored(Landroid/os/Bundle;)V
    .registers 3

    .line 303
    invoke-super {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_d

    const-string v0, "currentPosition"

    .line 306
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/appnext/ads/fullscreen/g;->currentPosition:I

    :cond_d
    return-void
.end method
