.class public Lcom/appnext/ads/fullscreen/FullscreenActivity;
.super Lcom/appnext/core/AppnextActivity;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/ads/fullscreen/h;
.implements Lcom/appnext/ads/fullscreen/i;
.implements Lcom/appnext/ads/fullscreen/j;
.implements Lcom/appnext/core/e$a;


# instance fields
.field private aB:Lcom/appnext/core/p;

.field private aC:Z

.field private aD:Lcom/appnext/core/AppnextAd;

.field private aE:Lcom/appnext/core/AppnextAd;

.field aF:Lcom/appnext/ads/b;

.field private aG:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aH:Lcom/appnext/ads/fullscreen/Video;

.field aI:Ljava/lang/Runnable;

.field aJ:Ljava/lang/Runnable;

.field private ads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;"
        }
    .end annotation
.end field

.field private finished:Z

.field private mHandler:Landroid/os/Handler;

.field private state:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/appnext/core/AppnextActivity;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aC:Z

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->finished:Z

    .line 52
    iput v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->state:I

    .line 267
    new-instance v0, Lcom/appnext/ads/fullscreen/FullscreenActivity$3;

    invoke-direct {v0, p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity$3;-><init>(Lcom/appnext/ads/fullscreen/FullscreenActivity;)V

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aI:Ljava/lang/Runnable;

    .line 277
    new-instance v0, Lcom/appnext/ads/fullscreen/FullscreenActivity$4;

    invoke-direct {v0, p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity$4;-><init>(Lcom/appnext/ads/fullscreen/FullscreenActivity;)V

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aJ:Ljava/lang/Runnable;

    return-void
.end method

.method private a()Landroid/net/Uri;
    .registers 6

    .line 240
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getVideoLength()Ljava/lang/String;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    invoke-static {v1, v0}, Lcom/appnext/ads/fullscreen/b;->getVideoUrl(Lcom/appnext/core/AppnextAd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lcom/appnext/ads/fullscreen/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {}, Lcom/appnext/ads/fullscreen/Video;->getCacheVideo()Z

    move-result v2

    const-string v3, "/data/appnext/videos/"

    if-eqz v2, :cond_32

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5c

    .line 249
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "tmp/vid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v3

    iget-wide v3, v3, Lcom/appnext/ads/fullscreen/Video;->rnd:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    :goto_5c
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_98

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playing video "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b5

    .line 259
    :cond_98
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "playing video from web: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "file not found: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    :goto_b5
    return-object v0
.end method

.method static synthetic a(Lcom/appnext/ads/fullscreen/FullscreenActivity;)Lcom/appnext/core/AppnextAd;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aE:Lcom/appnext/core/AppnextAd;

    return-object p0
.end method

.method static synthetic a(Lcom/appnext/ads/fullscreen/FullscreenActivity;Ljava/lang/String;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->report(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/appnext/core/AppnextAd;)V
    .registers 2

    .line 378
    invoke-virtual {p0, p1, p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->b(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 684
    invoke-static {}, Lcom/appnext/core/j;->bj()Lcom/appnext/core/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appnext/core/j;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/appnext/ads/fullscreen/FullscreenActivity;)Lcom/appnext/core/q;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->userAction:Lcom/appnext/core/q;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 697
    :try_start_0
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getTID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getVID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getAUID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->placementID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getSessionId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_43

    const-string v6, ""

    if-eqz v0, :cond_30

    :try_start_28
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_31

    :cond_30
    move-object v8, v6

    :goto_31
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getCampaignID()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_3e

    :cond_3d
    move-object v9, v6

    :goto_3e
    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v9}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_43

    :catchall_43
    return-void
.end method

.method private b()Z
    .registers 2

    .line 324
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->isBackButtonCanClose()Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/appnext/core/AppnextAd;)Z
    .registers 3

    .line 688
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh30Sec()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic c(Lcom/appnext/ads/fullscreen/FullscreenActivity;)Lcom/appnext/core/AppnextAd;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    return-object p0
.end method

.method private static c()V
    .registers 0

    return-void
.end method

.method private d()Lcom/appnext/ads/fullscreen/Video;
    .registers 2

    .line 707
    sget-object v0, Lcom/appnext/ads/fullscreen/Video;->currentAd:Lcom/appnext/ads/fullscreen/Video;

    if-eqz v0, :cond_7

    .line 708
    sget-object v0, Lcom/appnext/ads/fullscreen/Video;->currentAd:Lcom/appnext/ads/fullscreen/Video;

    return-object v0

    .line 710
    :cond_7
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aH:Lcom/appnext/ads/fullscreen/Video;

    return-object v0
.end method

.method static synthetic d(Lcom/appnext/ads/fullscreen/FullscreenActivity;)Lcom/appnext/core/q;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->userAction:Lcom/appnext/core/q;

    return-object p0
.end method

.method static synthetic e(Lcom/appnext/ads/fullscreen/FullscreenActivity;)Lcom/appnext/ads/fullscreen/Video;
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/appnext/ads/fullscreen/FullscreenActivity;)Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->placementID:Ljava/lang/String;

    return-object p0
.end method

.method private onClose()V
    .registers 4

    .line 436
    :try_start_0
    invoke-static {}, Lcom/appnext/ads/fullscreen/b;->j()Lcom/appnext/ads/fullscreen/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appnext/ads/fullscreen/b;->a(Ljava/lang/String;Lcom/appnext/core/Ad;)V

    .line 438
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdClosedCallback()Lcom/appnext/core/callbacks/OnAdClosed;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 439
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdClosedCallback()Lcom/appnext/core/callbacks/OnAdClosed;

    move-result-object v0

    invoke-interface {v0}, Lcom/appnext/core/callbacks/OnAdClosed;->onAdClosed()V

    :cond_2c
    const/4 v0, 0x0

    .line 441
    sput-object v0, Lcom/appnext/ads/fullscreen/Video;->currentAd:Lcom/appnext/ads/fullscreen/Video;
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_2f

    :catchall_2f
    return-void
.end method

.method private report(Ljava/lang/String;)V
    .registers 5

    .line 692
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "S"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->state:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getTemplate(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appnext/core/AppnextAd;"
        }
    .end annotation

    .line 666
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appnext/core/AppnextAd;

    .line 667
    invoke-static {v1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->b(Lcom/appnext/core/AppnextAd;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    .line 672
    :cond_2b
    invoke-static {}, Lcom/appnext/core/j;->bj()Lcom/appnext/core/j;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/appnext/core/j;->ab(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/appnext/core/AppnextAd;

    .line 675
    invoke-static {p3}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->b(Lcom/appnext/core/AppnextAd;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p3}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    return-object p3

    :cond_53
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V
    .registers 3

    .line 219
    new-instance p2, Lcom/appnext/ads/fullscreen/FullscreenActivity$2;

    invoke-direct {p2, p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity$2;-><init>(Lcom/appnext/ads/fullscreen/FullscreenActivity;)V

    invoke-super {p0, p1, p2}, Lcom/appnext/core/AppnextActivity;->a(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V

    return-void
.end method

.method protected final b(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 394
    :cond_3
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aE:Lcom/appnext/core/AppnextAd;

    .line 395
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdClickedCallback()Lcom/appnext/core/callbacks/OnAdClicked;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 396
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdClickedCallback()Lcom/appnext/core/callbacks/OnAdClicked;

    move-result-object v0

    invoke-interface {v0}, Lcom/appnext/core/callbacks/OnAdClicked;->adClicked()V

    .line 398
    :cond_1a
    iget-boolean v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->finished:Z

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    instance-of v0, v0, Lcom/appnext/ads/fullscreen/RewardedVideo;

    if-eqz v0, :cond_27

    return-void

    .line 401
    :cond_27
    invoke-super {p0, p1, p2}, Lcom/appnext/core/AppnextActivity;->b(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V

    return-void
.end method

.method public closeClicked()V
    .registers 5

    .line 559
    iget v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->isRewarded()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    const-string v1, "clickType_a"

    invoke-virtual {v0, v1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-le v0, v1, :cond_32

    .line 560
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getSelectedAd()Lcom/appnext/core/AppnextAd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->installClicked(Lcom/appnext/core/AppnextAd;)V

    return-void

    .line 562
    :cond_32
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->onClose()V

    .line 563
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->finish()V

    return-void
.end method

.method public closeDelay()J
    .registers 3

    .line 659
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    instance-of v0, v0, Lcom/appnext/ads/fullscreen/FullScreenVideo;

    if-eqz v0, :cond_13

    .line 660
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    check-cast v0, Lcom/appnext/ads/fullscreen/FullScreenVideo;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullScreenVideo;->getCloseDelay()J

    move-result-wide v0

    return-wide v0

    :cond_13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public error(Ljava/lang/String;)V
    .registers 2

    .line 430
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ba()V

    const-string p1, "error_resolve_timeout"

    .line 431
    invoke-direct {p0, p1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->report(Ljava/lang/String;)V

    return-void
.end method

.method public getCaptionTextTime()I
    .registers 2

    .line 654
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getRollCaptionTime()I

    move-result v0

    return v0
.end method

.method protected final getConfig()Lcom/appnext/core/p;
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aB:Lcom/appnext/core/p;

    if-nez v0, :cond_16

    .line 205
    iget v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 206
    invoke-static {}, Lcom/appnext/ads/fullscreen/c;->m()Lcom/appnext/ads/fullscreen/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aB:Lcom/appnext/core/p;

    goto :goto_16

    .line 208
    :cond_10
    invoke-static {}, Lcom/appnext/ads/fullscreen/f;->q()Lcom/appnext/ads/fullscreen/f;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aB:Lcom/appnext/core/p;

    .line 212
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aB:Lcom/appnext/core/p;

    return-object v0
.end method

.method public getConfigManager()Lcom/appnext/core/p;
    .registers 2

    .line 584
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    return-object v0
.end method

.method public getCtaText()Ljava/lang/String;
    .registers 7

    .line 631
    new-instance v0, Lcom/appnext/ads/fullscreen/FullscreenAd;

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    invoke-direct {v0, v1}, Lcom/appnext/ads/fullscreen/FullscreenAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullscreenAd;->getButtonText()Ljava/lang/String;

    move-result-object v0

    .line 632
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    const-string v2, "existing"

    const-string v3, "new"

    if-eqz v1, :cond_43

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 633
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 634
    invoke-static {}, Lcom/appnext/core/a/b;->bp()Lcom/appnext/core/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aH:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v1}, Lcom/appnext/ads/fullscreen/Video;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Open"

    invoke-virtual {v0, v1, v2, v3}, Lcom/appnext/core/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 636
    :cond_32
    invoke-static {}, Lcom/appnext/core/a/b;->bp()Lcom/appnext/core/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aH:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v1}, Lcom/appnext/ads/fullscreen/Video;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Install"

    invoke-virtual {v0, v1, v3, v2}, Lcom/appnext/core/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 639
    :cond_43
    invoke-static {}, Lcom/appnext/core/a/b;->bp()Lcom/appnext/core/a/b;

    move-result-object v1

    iget-object v4, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aH:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v4}, Lcom/appnext/ads/fullscreen/Video;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->isInstalled()Z

    move-result v5

    if-eqz v5, :cond_54

    goto :goto_55

    :cond_54
    move-object v2, v3

    :goto_55
    invoke-virtual {v1, v4, v2, v0}, Lcom/appnext/core/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .line 626
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aH:Lcom/appnext/ads/fullscreen/Video;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .registers 2

    .line 606
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getMute()Z

    move-result v0

    return v0
.end method

.method public getPostRollAds()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ads:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreRollAds()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ads:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 528
    invoke-static {}, Lcom/appnext/ads/fullscreen/b;->j()Lcom/appnext/ads/fullscreen/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/ads/fullscreen/b;->f(Lcom/appnext/core/Ad;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ads:Ljava/util/ArrayList;

    .line 529
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 530
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ads:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->placementID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;

    move-result-object v1

    .line 531
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v2, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ads:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->placementID:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 533
    invoke-virtual {v1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appnext/core/AppnextAd;

    invoke-virtual {v3}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 534
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    return-object v0
.end method

.method public getSelectedAd()Lcom/appnext/core/AppnextAd;
    .registers 2

    .line 574
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    return-object v0
.end method

.method public getSelectedVideoUri()Landroid/net/Uri;
    .registers 6

    .line 3240
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getVideoLength()Ljava/lang/String;

    move-result-object v0

    .line 3241
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    invoke-static {v1, v0}, Lcom/appnext/ads/fullscreen/b;->getVideoUrl(Lcom/appnext/core/AppnextAd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3243
    invoke-static {v0}, Lcom/appnext/ads/fullscreen/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3246
    invoke-static {}, Lcom/appnext/ads/fullscreen/Video;->getCacheVideo()Z

    move-result v2

    const-string v3, "/data/appnext/videos/"

    if-eqz v2, :cond_32

    .line 3247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5c

    .line 3249
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "tmp/vid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v3

    iget-wide v3, v3, Lcom/appnext/ads/fullscreen/Video;->rnd:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3252
    :goto_5c
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3254
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_98

    .line 3255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3256
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playing video "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b5

    .line 3259
    :cond_98
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3261
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "playing video from web: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "file not found: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    :goto_b5
    return-object v0
.end method

.method public getTemplate(Ljava/lang/String;)I
    .registers 7

    .line 589
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aG:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 590
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aG:Ljava/util/HashMap;

    .line 592
    :cond_b
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aG:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 593
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/ads/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apnxt_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "layout"

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5e

    .line 596
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "t1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 598
    :cond_5e
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aG:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    :cond_67
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aG:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public installClicked(Lcom/appnext/core/AppnextAd;)V
    .registers 5

    .line 552
    iget v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->isRewarded()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 553
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->gl:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/appnext/R$drawable;->apnxt_loader:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->a(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V

    .line 2378
    :cond_1a
    invoke-virtual {p0, p1, p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->b(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V

    return-void
.end method

.method public isInstalled()Z
    .registers 2

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return v0

    :catchall_b
    const/4 v0, 0x0

    return v0
.end method

.method public isRewarded()Z
    .registers 2

    .line 621
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    instance-of v0, v0, Lcom/appnext/ads/fullscreen/RewardedVideo;

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    .line 1324
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->isBackButtonCanClose()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 314
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->onClose()V

    .line 315
    invoke-super {p0}, Lcom/appnext/core/AppnextActivity;->onBackPressed()V

    :cond_10
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    if-eqz p1, :cond_14

    const-string v0, "templates"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aG:Ljava/util/HashMap;

    const-string v0, "state"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->state:I

    .line 63
    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3b

    .line 64
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 66
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 69
    :cond_3b
    invoke-super {p0, p1}, Lcom/appnext/core/AppnextActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget-object v0, Lcom/appnext/ads/fullscreen/Video;->currentAd:Lcom/appnext/ads/fullscreen/Video;

    const-string v1, "No Ads"

    if-nez v0, :cond_4b

    .line 74
    invoke-virtual {p0, v1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->onError(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->finish()V

    return-void

    .line 79
    :cond_4b
    sget-object v0, Lcom/appnext/ads/fullscreen/Video;->currentAd:Lcom/appnext/ads/fullscreen/Video;

    instance-of v0, v0, Lcom/appnext/ads/fullscreen/RewardedVideo;

    if-eqz v0, :cond_5d

    .line 80
    new-instance v0, Lcom/appnext/ads/fullscreen/RewardedVideo;

    sget-object v2, Lcom/appnext/ads/fullscreen/Video;->currentAd:Lcom/appnext/ads/fullscreen/Video;

    check-cast v2, Lcom/appnext/ads/fullscreen/RewardedVideo;

    invoke-direct {v0, p0, v2}, Lcom/appnext/ads/fullscreen/RewardedVideo;-><init>(Landroid/content/Context;Lcom/appnext/ads/fullscreen/RewardedVideo;)V

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aH:Lcom/appnext/ads/fullscreen/Video;

    goto :goto_68

    .line 82
    :cond_5d
    new-instance v0, Lcom/appnext/ads/fullscreen/FullScreenVideo;

    sget-object v2, Lcom/appnext/ads/fullscreen/Video;->currentAd:Lcom/appnext/ads/fullscreen/Video;

    check-cast v2, Lcom/appnext/ads/fullscreen/FullScreenVideo;

    invoke-direct {v0, p0, v2}, Lcom/appnext/ads/fullscreen/FullScreenVideo;-><init>(Landroid/content/Context;Lcom/appnext/ads/fullscreen/FullScreenVideo;)V

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aH:Lcom/appnext/ads/fullscreen/Video;

    .line 84
    :goto_68
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getOrientation()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_20e

    goto :goto_a3

    :sswitch_7c
    const-string v3, "not_set"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const/4 v2, 0x0

    goto :goto_a3

    :sswitch_86
    const-string v3, "automatic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const/4 v2, 0x1

    goto :goto_a3

    :sswitch_90
    const-string v3, "landscape"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const/4 v2, 0x2

    goto :goto_a3

    :sswitch_9a
    const-string v3, "portrait"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const/4 v2, 0x3

    :cond_a3
    :goto_a3
    const/4 v0, 0x7

    const/4 v3, 0x6

    if-eqz v2, :cond_b6

    if-eq v2, v6, :cond_b6

    if-eq v2, v5, :cond_b2

    if-eq v2, v4, :cond_ae

    goto :goto_c9

    .line 96
    :cond_ae
    invoke-virtual {p0, v0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->setRequestedOrientation(I)V

    goto :goto_c9

    .line 93
    :cond_b2
    invoke-virtual {p0, v3}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->setRequestedOrientation(I)V

    goto :goto_c9

    .line 87
    :cond_b6
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_c6

    .line 88
    invoke-virtual {p0, v3}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->setRequestedOrientation(I)V

    goto :goto_c9

    .line 90
    :cond_c6
    invoke-virtual {p0, v0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->setRequestedOrientation(I)V

    .line 100
    :goto_c9
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->mHandler:Landroid/os/Handler;

    .line 101
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->placementID:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->type:I

    if-ne v0, v6, :cond_f9

    .line 104
    invoke-static {}, Lcom/appnext/ads/fullscreen/c;->m()Lcom/appnext/ads/fullscreen/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aB:Lcom/appnext/core/p;

    goto :goto_ff

    .line 106
    :cond_f9
    invoke-static {}, Lcom/appnext/ads/fullscreen/f;->q()Lcom/appnext/ads/fullscreen/f;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aB:Lcom/appnext/core/p;

    .line 109
    :goto_ff
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aB:Lcom/appnext/core/p;

    const-string v2, "can_close"

    invoke-virtual {v0, v2}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aC:Z

    .line 110
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    instance-of v0, v0, Lcom/appnext/ads/fullscreen/FullScreenVideo;

    if-eqz v0, :cond_121

    .line 111
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    check-cast v0, Lcom/appnext/ads/fullscreen/FullScreenVideo;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullScreenVideo;->isBackButtonCanClose()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aC:Z

    :cond_121
    const-string v0, ""

    if-nez p1, :cond_145

    .line 115
    invoke-static {}, Lcom/appnext/ads/fullscreen/b;->j()Lcom/appnext/ads/fullscreen/b;

    move-result-object v2

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appnext/ads/fullscreen/b;->f(Lcom/appnext/core/Ad;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ads:Ljava/util/ArrayList;

    if-nez v2, :cond_13c

    .line 117
    invoke-virtual {p0, v1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->onError(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->finish()V

    return-void

    .line 122
    :cond_13c
    iget-object v3, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->placementID:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;

    move-result-object v2

    iput-object v2, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    goto :goto_159

    :cond_145
    const-string v2, "ads"

    .line 125
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ads:Ljava/util/ArrayList;

    const-string v2, "currentAd"

    .line 126
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/appnext/core/AppnextAd;

    iput-object v2, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    .line 128
    :goto_159
    iget-object v2, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    if-nez v2, :cond_164

    .line 129
    invoke-virtual {p0, v1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->onError(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->finish()V

    return-void

    .line 134
    :cond_164
    sget v1, Lcom/appnext/R$layout;->apnxt_video_activity:I

    invoke-virtual {p0, v1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->setContentView(I)V

    if-nez p1, :cond_1ef

    .line 140
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 141
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v1

    instance-of v1, v1, Lcom/appnext/ads/fullscreen/RewardedVideo;

    if-eqz v1, :cond_182

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    check-cast v0, Lcom/appnext/ads/fullscreen/RewardedVideo;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/RewardedVideo;->getMode()Ljava/lang/String;

    move-result-object v0

    :cond_182
    const-string v1, "default"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_194

    .line 143
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    const-string v1, "default_mode"

    invoke-virtual {v0, v1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_194
    iget v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->type:I

    if-ne v1, v5, :cond_1b8

    const-string v1, "multi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 145
    new-instance v0, Lcom/appnext/ads/fullscreen/e;

    invoke-direct {v0}, Lcom/appnext/ads/fullscreen/e;-><init>()V

    .line 146
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v2

    check-cast v2, Lcom/appnext/ads/fullscreen/RewardedVideo;

    invoke-virtual {v2}, Lcom/appnext/ads/fullscreen/RewardedVideo;->getMultiTimerLength()I

    move-result v2

    const-string v3, "time"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    invoke-direct {p0, v1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->report(Ljava/lang/String;)V

    goto :goto_1d5

    .line 149
    :cond_1b8
    iget v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->type:I

    if-ne v0, v5, :cond_1c1

    const-string v0, "normal"

    .line 150
    invoke-direct {p0, v0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->report(Ljava/lang/String;)V

    .line 151
    :cond_1c1
    new-instance v0, Lcom/appnext/ads/fullscreen/g;

    invoke-direct {v0}, Lcom/appnext/ads/fullscreen/g;-><init>()V

    .line 152
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/ads/fullscreen/Video;->isShowCta()Z

    move-result v1

    const-string v2, "showCta"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    iput v6, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->state:I

    .line 156
    :goto_1d5
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 159
    sget v1, Lcom/appnext/R$id;->ll:I

    const-string v2, "fragment"

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 161
    :try_start_1e7
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1ea} :catch_1eb

    goto :goto_1f7

    .line 163
    :catch_1eb
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->finish()V

    return-void

    :cond_1ef
    const-string v0, "finished"

    .line 167
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->finished:Z

    .line 170
    :goto_1f7
    sget p1, Lcom/appnext/R$id;->ll:I

    invoke-virtual {p0, p1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->gl:Landroid/widget/RelativeLayout;

    .line 171
    new-instance p1, Lcom/appnext/core/q;

    new-instance v0, Lcom/appnext/ads/fullscreen/FullscreenActivity$1;

    invoke-direct {v0, p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity$1;-><init>(Lcom/appnext/ads/fullscreen/FullscreenActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/appnext/core/q;-><init>(Landroid/content/Context;Lcom/appnext/core/q$a;)V

    iput-object p1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->userAction:Lcom/appnext/core/q;

    return-void

    :sswitch_data_20e
    .sparse-switch
        0x2b77bb9b -> :sswitch_9a
        0x5545f2bb -> :sswitch_90
        0x63c2322b -> :sswitch_86
        0x7ee6f4f6 -> :sswitch_7c
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 5

    .line 349
    invoke-super {p0}, Lcom/appnext/core/AppnextActivity;->onDestroy()V

    .line 353
    :try_start_3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/appnext/videos/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tmp/vid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v2

    iget-wide v2, v2, Lcom/appnext/ads/fullscreen/Video;->rnd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appnext/core/f;->a(Ljava/io/File;)V
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_37

    :catchall_37
    const/4 v0, 0x0

    .line 358
    :try_start_38
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_41

    .line 359
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 361
    :cond_41
    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->mHandler:Landroid/os/Handler;

    .line 363
    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aE:Lcom/appnext/core/AppnextAd;

    .line 364
    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_47

    .line 369
    :catchall_47
    :try_start_47
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aF:Lcom/appnext/ads/b;

    if-eqz v1, :cond_50

    .line 370
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aF:Lcom/appnext/ads/b;

    invoke-virtual {v1, p0}, Lcom/appnext/ads/b;->a(Landroid/content/Context;)V

    .line 372
    :cond_50
    iput-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aF:Lcom/appnext/ads/b;
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_52

    :catchall_52
    return-void
.end method

.method protected final onError(Ljava/lang/String;)V
    .registers 3

    .line 198
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 199
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appnext/core/callbacks/OnAdError;->adError(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public onMarket(Ljava/lang/String;)V
    .registers 5

    .line 406
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ba()V

    const/4 p1, 0x1

    .line 408
    iput-boolean p1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->finished:Z

    .line 409
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ads:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-static {p1, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 410
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ads:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 411
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ads:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 413
    new-instance p1, Lcom/appnext/ads/fullscreen/d;

    invoke-direct {p1}, Lcom/appnext/ads/fullscreen/d;-><init>()V

    const/4 v0, 0x2

    .line 414
    iput v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->state:I

    .line 416
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 418
    sget v1, Lcom/appnext/R$id;->ll:I

    const-string v2, "fragment"

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 420
    :try_start_3a
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    return-void

    .line 422
    :catch_3e
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->finish()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 328
    invoke-super {p0}, Lcom/appnext/core/AppnextActivity;->onPause()V

    .line 331
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aI:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aJ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 299
    invoke-super {p0, p1}, Lcom/appnext/core/AppnextActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "finished"

    const/4 v1, 0x1

    .line 301
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->finished:Z

    const-string v0, "type"

    .line 302
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->type:I

    const-string v0, "templates"

    .line 304
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aG:Ljava/util/HashMap;

    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 337
    invoke-super {p0}, Lcom/appnext/core/AppnextActivity;->onResume()V

    .line 2105
    invoke-virtual {p0}, Lcom/appnext/core/AppnextActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    .line 2111
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_19

    or-int/lit8 v0, v0, 0x4

    .line 2123
    :cond_19
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_21

    or-int/lit16 v0, v0, 0x1000

    .line 2127
    :cond_21
    invoke-virtual {p0}, Lcom/appnext/core/AppnextActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 288
    iget-boolean v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->finished:Z

    const-string v1, "finished"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    iget v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->type:I

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aG:Ljava/util/HashMap;

    const-string v1, "templates"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 291
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ads:Ljava/util/ArrayList;

    const-string v1, "ads"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 292
    iget v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->state:I

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    const-string v1, "currentAd"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 294
    invoke-super {p0, p1}, Lcom/appnext/core/AppnextActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public privacyClicked()V
    .registers 4

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    invoke-static {v0}, Lcom/appnext/core/f;->g(Lcom/appnext/core/AppnextAd;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 543
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 544
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 545
    invoke-virtual {p0, v1}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_19

    :catchall_19
    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 611
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getTemplate(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showClose()Z
    .registers 2

    .line 579
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    instance-of v0, v0, Lcom/appnext/ads/fullscreen/FullScreenVideo;

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    check-cast v0, Lcom/appnext/ads/fullscreen/FullScreenVideo;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/FullScreenVideo;->isShowClose()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public videoEnded()V
    .registers 6

    const/4 v0, 0x2

    .line 457
    iput v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->state:I

    const/4 v1, 0x1

    .line 458
    iput-boolean v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->finished:Z

    .line 459
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/ads/fullscreen/Video;->getOnVideoEndedCallback()Lcom/appnext/core/callbacks/OnVideoEnded;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 460
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/ads/fullscreen/Video;->getOnVideoEndedCallback()Lcom/appnext/core/callbacks/OnVideoEnded;

    move-result-object v1

    invoke-interface {v1}, Lcom/appnext/core/callbacks/OnVideoEnded;->videoEnded()V

    .line 461
    :cond_21
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/appnext/ads/fullscreen/FullscreenActivity$5;

    invoke-direct {v2, p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity$5;-><init>(Lcom/appnext/ads/fullscreen/FullscreenActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 476
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 478
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ads:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-static {v1, v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 479
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ads:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 480
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->ads:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 482
    new-instance v1, Lcom/appnext/ads/fullscreen/d;

    invoke-direct {v1}, Lcom/appnext/ads/fullscreen/d;-><init>()V

    .line 483
    iput v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->state:I

    .line 485
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 487
    sget v2, Lcom/appnext/R$id;->ll:I

    const-string v3, "fragment"

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 489
    :try_start_61
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_9d

    .line 495
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aE:Lcom/appnext/core/AppnextAd;

    if-eqz v0, :cond_71

    .line 496
    invoke-super {p0, v0, p0}, Lcom/appnext/core/AppnextActivity;->b(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V

    const-string v0, "roll_store_opened"

    .line 497
    invoke-direct {p0, v0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->report(Ljava/lang/String;)V

    return-void

    :cond_71
    const-string v0, "roll_click_cta_none"

    .line 499
    invoke-direct {p0, v0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->report(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    const-string v1, "clickType_b"

    invoke-virtual {v0, v1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-le v0, v1, :cond_9c

    .line 502
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getSelectedAd()Lcom/appnext/core/AppnextAd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->installClicked(Lcom/appnext/core/AppnextAd;)V

    :cond_9c
    return-void

    .line 491
    :catch_9d
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->finish()V

    return-void
.end method

.method public videoSelected(Lcom/appnext/core/AppnextAd;)V
    .registers 6

    .line 509
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aD:Lcom/appnext/core/AppnextAd;

    .line 510
    new-instance p1, Lcom/appnext/ads/fullscreen/g;

    invoke-direct {p1}, Lcom/appnext/ads/fullscreen/g;-><init>()V

    .line 512
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 513
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 514
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/ads/fullscreen/Video;->isShowCta()Z

    move-result v2

    const-string v3, "showCta"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 515
    invoke-virtual {p1, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 516
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 517
    sget v1, Lcom/appnext/R$id;->ll:I

    const-string v2, "fragment"

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 519
    :try_start_2b
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    return-void

    .line 521
    :catch_2f
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->finish()V

    return-void
.end method

.method public videoStarted()V
    .registers 7

    .line 448
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aI:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aB:Lcom/appnext/core/p;

    const-string v3, "postpone_impression_sec"

    invoke-virtual {v2, v3}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 449
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aB:Lcom/appnext/core/p;

    const-string v1, "pview"

    invoke-virtual {v0, v1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 450
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aJ:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/appnext/ads/fullscreen/FullscreenActivity;->aB:Lcom/appnext/core/p;

    const-string v3, "postpone_vta_sec"

    invoke-virtual {v2, v3}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 451
    :cond_3a
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdOpenedCallback()Lcom/appnext/core/callbacks/OnAdOpened;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 452
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/FullscreenActivity;->d()Lcom/appnext/ads/fullscreen/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/Video;->getOnAdOpenedCallback()Lcom/appnext/core/callbacks/OnAdOpened;

    move-result-object v0

    invoke-interface {v0}, Lcom/appnext/core/callbacks/OnAdOpened;->adOpened()V

    :cond_55
    return-void
.end method
