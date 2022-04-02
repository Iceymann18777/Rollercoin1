.class public final Lcom/appnext/ads/fullscreen/e;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field private bc:Lcom/appnext/ads/fullscreen/i;

.field private bd:Landroid/widget/TextView;

.field private be:I

.field private bf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field tick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/appnext/ads/fullscreen/e;->be:I

    .line 164
    new-instance v0, Lcom/appnext/ads/fullscreen/e$5;

    invoke-direct {v0, p0}, Lcom/appnext/ads/fullscreen/e$5;-><init>(Lcom/appnext/ads/fullscreen/e;)V

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/e;->tick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/appnext/ads/fullscreen/e;)Lcom/appnext/ads/fullscreen/i;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/e;->bc:Lcom/appnext/ads/fullscreen/i;

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;Lcom/appnext/core/AppnextAd;I)V
    .registers 11

    .line 97
    sget v0, Lcom/appnext/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    sget v1, Lcom/appnext/R$id;->icon:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 99
    sget v2, Lcom/appnext/R$id;->background_image:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 100
    sget v3, Lcom/appnext/R$id;->ratingBar:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    .line 102
    sget v4, Lcom/appnext/R$id;->playGameTextView:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 103
    sget v4, Lcom/appnext/R$id;->playGameTextView:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/appnext/ads/fullscreen/e;->bc:Lcom/appnext/ads/fullscreen/i;

    invoke-interface {v5}, Lcom/appnext/ads/fullscreen/i;->getConfigManager()Lcom/appnext/core/p;

    move-result-object v5

    const-string v6, "pre_cta_string"

    invoke-virtual {v5, v6}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_3f
    invoke-virtual {p2}, Lcom/appnext/core/AppnextAd;->getAdTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p2}, Lcom/appnext/core/AppnextAd;->getStoreRating()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 107
    sget v0, Lcom/appnext/R$id;->click:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/appnext/ads/fullscreen/e$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/appnext/ads/fullscreen/e$2;-><init>(Lcom/appnext/ads/fullscreen/e;Lcom/appnext/core/AppnextAd;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_6e

    .line 118
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/appnext/ads/fullscreen/e$3;

    invoke-direct {p3, p0, p2, v2, v1}, Lcom/appnext/ads/fullscreen/e$3;-><init>(Lcom/appnext/ads/fullscreen/e;Lcom/appnext/core/AppnextAd;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 133
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 135
    :cond_6e
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/appnext/ads/fullscreen/e$4;

    invoke-direct {p3, p0, v2, p2, v1}, Lcom/appnext/ads/fullscreen/e$4;-><init>(Lcom/appnext/ads/fullscreen/e;Landroid/widget/ImageView;Lcom/appnext/core/AppnextAd;Landroid/widget/ImageView;)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 154
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/appnext/ads/fullscreen/e;Ljava/lang/String;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/appnext/ads/fullscreen/e;->report(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/appnext/ads/fullscreen/e;)Landroid/os/Handler;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/e;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/appnext/ads/fullscreen/e;)I
    .registers 2

    .line 26
    iget v0, p0, Lcom/appnext/ads/fullscreen/e;->be:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appnext/ads/fullscreen/e;->be:I

    return v0
.end method

.method static synthetic d(Lcom/appnext/ads/fullscreen/e;)Ljava/util/ArrayList;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/e;->bf:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcom/appnext/ads/fullscreen/e;)Landroid/widget/TextView;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/appnext/ads/fullscreen/e;->bd:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/appnext/ads/fullscreen/e;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/appnext/ads/fullscreen/e;->be:I

    return p0
.end method

.method private report(Ljava/lang/String;)V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/e;->bc:Lcom/appnext/ads/fullscreen/i;

    const-string v1, "S1"

    invoke-interface {v0, p1, v1}, Lcom/appnext/ads/fullscreen/i;->report(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/app/Activity;)V
    .registers 2

    .line 47
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 49
    check-cast p1, Lcom/appnext/ads/fullscreen/i;

    iput-object p1, p0, Lcom/appnext/ads/fullscreen/e;->bc:Lcom/appnext/ads/fullscreen/i;

    .line 50
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/appnext/ads/fullscreen/e;->handler:Landroid/os/Handler;

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .registers 2

    .line 55
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 57
    check-cast p1, Lcom/appnext/ads/fullscreen/i;

    iput-object p1, p0, Lcom/appnext/ads/fullscreen/e;->bc:Lcom/appnext/ads/fullscreen/i;

    .line 58
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/appnext/ads/fullscreen/e;->handler:Landroid/os/Handler;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 36
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/e;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "time"

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/e;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 39
    invoke-virtual {p0}, Lcom/appnext/ads/fullscreen/e;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appnext/ads/fullscreen/e;->be:I

    :cond_1f
    if-eqz p1, :cond_27

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/appnext/ads/fullscreen/e;->be:I

    :cond_27
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const/4 p3, 0x0

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/e;->bc:Lcom/appnext/ads/fullscreen/i;

    const-string v1, "S1"

    invoke-interface {v0, v1}, Lcom/appnext/ads/fullscreen/i;->getTemplate(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 65
    sget p2, Lcom/appnext/R$id;->item1:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 66
    sget v0, Lcom/appnext/R$id;->item2:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 67
    sget v2, Lcom/appnext/R$id;->title:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/appnext/ads/fullscreen/e;->bc:Lcom/appnext/ads/fullscreen/i;

    invoke-interface {v3}, Lcom/appnext/ads/fullscreen/i;->getConfigManager()Lcom/appnext/core/p;

    move-result-object v3

    const-string v4, "pre_title_string1"

    invoke-virtual {v3, v4}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    sget v2, Lcom/appnext/R$id;->secondTile:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/appnext/ads/fullscreen/e;->bc:Lcom/appnext/ads/fullscreen/i;

    invoke-interface {v3}, Lcom/appnext/ads/fullscreen/i;->getConfigManager()Lcom/appnext/core/p;

    move-result-object v3

    const-string v4, "pre_title_string2"

    invoke-virtual {v3, v4}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    sget v2, Lcom/appnext/R$id;->timer:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/appnext/ads/fullscreen/e;->bd:Landroid/widget/TextView;

    .line 70
    iget-object v2, p0, Lcom/appnext/ads/fullscreen/e;->bc:Lcom/appnext/ads/fullscreen/i;

    invoke-interface {v2}, Lcom/appnext/ads/fullscreen/i;->getPreRollAds()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/appnext/ads/fullscreen/e;->bf:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_71

    .line 72
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/e;->bc:Lcom/appnext/ads/fullscreen/i;

    iget-object p2, p0, Lcom/appnext/ads/fullscreen/e;->bf:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appnext/core/AppnextAd;

    invoke-interface {p1, p2}, Lcom/appnext/ads/fullscreen/i;->videoSelected(Lcom/appnext/core/AppnextAd;)V

    return-object p3

    .line 75
    :cond_71
    check-cast p2, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/appnext/ads/fullscreen/e;->bf:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/core/AppnextAd;

    invoke-direct {p0, p2, v2, v1}, Lcom/appnext/ads/fullscreen/e;->a(Landroid/view/ViewGroup;Lcom/appnext/core/AppnextAd;I)V

    .line 76
    check-cast v0, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/appnext/ads/fullscreen/e;->bf:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appnext/core/AppnextAd;

    invoke-direct {p0, v0, p2, v2}, Lcom/appnext/ads/fullscreen/e;->a(Landroid/view/ViewGroup;Lcom/appnext/core/AppnextAd;I)V

    .line 77
    sget p2, Lcom/appnext/R$id;->privacy:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/appnext/ads/fullscreen/e$1;

    invoke-direct {v0, p0}, Lcom/appnext/ads/fullscreen/e$1;-><init>(Lcom/appnext/ads/fullscreen/e;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/e;->bf:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appnext/core/AppnextAd;

    iget-object v0, p0, Lcom/appnext/ads/fullscreen/e;->bc:Lcom/appnext/ads/fullscreen/i;

    invoke-interface {v0}, Lcom/appnext/ads/fullscreen/i;->getConfigManager()Lcom/appnext/core/p;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/appnext/core/k;->a(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/p;)Z

    move-result p2

    if-eqz p2, :cond_bd

    .line 84
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/e;->bc:Lcom/appnext/ads/fullscreen/i;

    check-cast p2, Landroid/content/Context;

    sget v0, Lcom/appnext/R$id;->privacy:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/appnext/core/k;->a(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 86
    :cond_bd
    iget-object p2, p0, Lcom/appnext/ads/fullscreen/e;->bd:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/appnext/ads/fullscreen/e;->be:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "pre_roll_loaded"

    .line 87
    invoke-direct {p0, p2}, Lcom/appnext/ads/fullscreen/e;->report(Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_1 .. :try_end_da} :catchall_db

    return-object p1

    .line 91
    :catchall_db
    iget-object p1, p0, Lcom/appnext/ads/fullscreen/e;->bc:Lcom/appnext/ads/fullscreen/i;

    invoke-interface {p1}, Lcom/appnext/ads/fullscreen/i;->closeClicked()V

    return-object p3
.end method

.method public final onDestroyView()V
    .registers 3

    .line 159
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 161
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/e;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPause()V
    .registers 3

    .line 189
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 191
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/e;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/e;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onResume()V
    .registers 5

    .line 196
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 197
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/e;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/e;->tick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 183
    iget v0, p0, Lcom/appnext/ads/fullscreen/e;->be:I

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
