.class public Lcom/mopub/mobileads/VastVideoProgressBarWidget;
.super Landroid/widget/ImageView;
.source "VastVideoProgressBarWidget.java"


# instance fields
.field private mProgressBarDrawable:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

.field private final mProgressBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setId(I)V

    .line 28
    new-instance v0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->mProgressBarDrawable:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    .line 29
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 32
    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->mProgressBarHeight:I

    return-void
.end method


# virtual methods
.method public calibrateAndMakeVisible(II)V
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->mProgressBarDrawable:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->setDurationAndSkipOffset(II)V

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    return-void
.end method

.method getImageViewDrawable()Lcom/mopub/mobileads/resource/ProgressBarDrawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->mProgressBarDrawable:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    return-object v0
.end method

.method public reset()V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->mProgressBarDrawable:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->reset()V

    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->mProgressBarDrawable:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->setProgress(I)V

    return-void
.end method

.method public setAnchorId(I)V
    .registers 5

    .line 36
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->mProgressBarHeight:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x8

    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method setImageViewDrawable(Lcom/mopub/mobileads/resource/ProgressBarDrawable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->mProgressBarDrawable:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    return-void
.end method

.method public updateProgress(I)V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->mProgressBarDrawable:Lcom/mopub/mobileads/resource/ProgressBarDrawable;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->setProgress(I)V

    return-void
.end method
