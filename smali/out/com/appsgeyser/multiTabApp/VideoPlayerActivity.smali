.class public Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;
.super Landroid/app/Activity;
.source "VideoPlayerActivity.java"


# instance fields
.field private mVideo:Landroid/widget/VideoView;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->mVideo:Landroid/widget/VideoView;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;)Landroid/widget/VideoView;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->mVideo:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;)Landroid/widget/ProgressBar;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 30
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;->setCurrentThemeWithActionBar(Landroid/app/Activity;)V

    const v0, 0x7f0d00c0

    .line 32
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->setContentView(I)V

    const v0, 0x7f0a0236

    .line 33
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->mVideo:Landroid/widget/VideoView;

    const v0, 0x7f0a0238

    .line 34
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 36
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 38
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->mVideo:Landroid/widget/VideoView;

    new-instance v0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$1;-><init>(Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 58
    new-instance p1, Landroid/widget/MediaController;

    invoke-direct {p1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 61
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 63
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->mVideo:Landroid/widget/VideoView;

    new-instance v0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2;-><init>(Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method
