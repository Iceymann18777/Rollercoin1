.class Lcom/mopub/nativeads/SpinningProgressView;
.super Landroid/view/ViewGroup;
.source "SpinningProgressView.java"


# instance fields
.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressIndicatorRadius:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 27
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 30
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 31
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/SpinningProgressView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    .line 33
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/SpinningProgressView;->setVisibility(I)V

    const/high16 v0, -0x1000000

    .line 34
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/SpinningProgressView;->setBackgroundColor(I)V

    .line 35
    invoke-virtual {p0}, Lcom/mopub/nativeads/SpinningProgressView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 37
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/nativeads/SpinningProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 38
    invoke-virtual {p0}, Lcom/mopub/nativeads/SpinningProgressView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/mopub/nativeads/SpinningProgressView;->mProgressIndicatorRadius:I

    .line 39
    iget-object p1, p0, Lcom/mopub/nativeads/SpinningProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 40
    iget-object p1, p0, Lcom/mopub/nativeads/SpinningProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/SpinningProgressView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method addToRoot(Landroid/view/View;)Z
    .registers 4

    .line 59
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 63
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    .line 64
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 66
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/SpinningProgressView;->setVisibility(I)V

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/mopub/nativeads/SpinningProgressView;->setMeasuredDimension(II)V

    .line 69
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0}, Lcom/mopub/nativeads/SpinningProgressView;->forceLayout()V

    const/4 p1, 0x1

    return p1

    :cond_27
    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    if-eqz p1, :cond_15

    add-int/2addr p2, p4

    .line 46
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p5

    .line 47
    div-int/lit8 p3, p3, 0x2

    .line 48
    iget-object p1, p0, Lcom/mopub/nativeads/SpinningProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    iget p4, p0, Lcom/mopub/nativeads/SpinningProgressView;->mProgressIndicatorRadius:I

    sub-int p5, p2, p4

    sub-int v0, p3, p4

    add-int/2addr p2, p4

    add-int/2addr p3, p4

    invoke-virtual {p1, p5, v0, p2, p3}, Landroid/widget/ProgressBar;->layout(IIII)V

    :cond_15
    return-void
.end method

.method removeFromRoot()Z
    .registers 2

    .line 78
    invoke-static {p0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    const/16 v0, 0x8

    .line 79
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/SpinningProgressView;->setVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method
