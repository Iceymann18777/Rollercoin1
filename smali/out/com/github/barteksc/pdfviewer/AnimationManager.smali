.class Lcom/github/barteksc/pdfviewer/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/AnimationManager$FlingAnimation;,
        Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;,
        Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;,
        Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;
    }
.end annotation


# instance fields
.field private animation:Landroid/animation/ValueAnimator;

.field private flingAnimation:Landroid/animation/ValueAnimator;

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 45
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/github/barteksc/pdfviewer/AnimationManager;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->hideHandle()V

    return-void
.end method

.method static synthetic access$200(Lcom/github/barteksc/pdfviewer/AnimationManager;)Landroid/widget/Scroller;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method private hideHandle()V
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 194
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->hideDelayed()V

    :cond_11
    return-void
.end method


# virtual methods
.method public startFlingAnimation(IIIIIIII)V
    .registers 21

    move-object v0, p0

    .line 78
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 79
    fill-array-data v1, :array_44

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flingAnimation:Landroid/animation/ValueAnimator;

    .line 80
    new-instance v1, Lcom/github/barteksc/pdfviewer/AnimationManager$FlingAnimation;

    invoke-direct {v1, p0}, Lcom/github/barteksc/pdfviewer/AnimationManager$FlingAnimation;-><init>(Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    .line 81
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 83
    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/Scroller;

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 84
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flingAnimation:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 85
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_44
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startXAnimation(FF)V
    .registers 5

    .line 49
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 50
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 51
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;

    invoke-direct {p2, p0}, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;-><init>(Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 53
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 54
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startYAnimation(FF)V
    .registers 5

    .line 58
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 59
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 60
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;

    invoke-direct {p2, p0}, Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;-><init>(Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 63
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startZoomAnimation(FFFF)V
    .registers 7

    .line 67
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p4, v0, p3

    .line 68
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 69
    new-instance p4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    new-instance p3, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;

    invoke-direct {p3, p0, p1, p2}, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;-><init>(Lcom/github/barteksc/pdfviewer/AnimationManager;FF)V

    .line 71
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 72
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 73
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x190

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public stopAll()V
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 90
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    .line 93
    :cond_a
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopFling()V

    return-void
.end method

.method public stopFling()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flingAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_12

    .line 98
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 99
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flingAnimation:Landroid/animation/ValueAnimator;

    :cond_12
    return-void
.end method
