.class Lcom/github/barteksc/pdfviewer/DragPinchManager;
.super Ljava/lang/Object;
.source "DragPinchManager.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private isSwipeEnabled:Z

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private scrolling:Z

.field private swipeVertical:Z


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/AnimationManager;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    .line 48
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 49
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    .line 50
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->isSwipeEnabled:Z

    .line 51
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->swipeVertical:Z

    .line 52
    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->gestureDetector:Landroid/view/GestureDetector;

    .line 53
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 54
    invoke-virtual {p1, p0}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private hideHandle()V
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->shown()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 202
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->hideDelayed()V

    :cond_1d
    return-void
.end method


# virtual methods
.method public enableDoubletap(Z)V
    .registers 3

    if-eqz p1, :cond_8

    .line 59
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_e

    .line 61
    :cond_8
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :goto_e
    return-void
.end method

.method public isZooming()Z
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isZooming()Z

    move-result v0

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getMidZoom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_24

    .line 98
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getMidZoom()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomWithAnimation(FFF)V

    goto :goto_4d

    .line 99
    :cond_24
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getMaxZoom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_48

    .line 100
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getMaxZoom()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomWithAnimation(FFF)V

    goto :goto_4d

    .line 102
    :cond_48
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->resetZoomWithAnimation()V

    :goto_4d
    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 114
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopFling()V

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14

    .line 151
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result p1

    float-to-int v1, p1

    .line 152
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result p1

    float-to-int v2, p1

    .line 153
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    float-to-int v3, p3

    float-to-int v4, p4

    iget-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->swipeVertical:Z

    const/4 p2, 0x2

    if-eqz p1, :cond_19

    const/4 p1, 0x2

    goto :goto_1f

    :cond_19
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 156
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result p1

    :goto_1f
    mul-int v5, v1, p1

    const/4 v6, 0x0

    iget-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->swipeVertical:Z

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 157
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result p2

    :cond_2c
    mul-int v7, v2, p2

    const/4 v8, 0x0

    .line 153
    invoke-virtual/range {v0 .. v8}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startFlingAnimation(IIIIIIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 6

    .line 164
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v1

    mul-float v1, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1b

    .line 167
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    :goto_18
    div-float v0, v2, v0

    goto :goto_28

    :cond_1b
    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_28

    .line 169
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    goto :goto_18

    .line 171
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomCenteredRelativeTo(FLandroid/graphics/PointF;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    .line 182
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 183
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->hideHandle()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    .line 131
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->isZooming()Z

    move-result p2

    if-nez p2, :cond_d

    iget-boolean p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->isSwipeEnabled:Z

    if-eqz p2, :cond_14

    .line 132
    :cond_d
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    neg-float p3, p3

    neg-float p4, p4

    invoke-virtual {p2, p3, p4}, Lcom/github/barteksc/pdfviewer/PDFView;->moveRelativeTo(FF)V

    .line 134
    :cond_14
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    return p1
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .registers 2

    .line 140
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 141
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->hideHandle()V

    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 83
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 84
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 85
    invoke-interface {p1}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->shown()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 86
    invoke-interface {p1}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->show()V

    goto :goto_1d

    .line 88
    :cond_1a
    invoke-interface {p1}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->hide()V

    .line 91
    :cond_1d
    :goto_1d
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 188
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 189
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    .line 191
    :goto_16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_25

    .line 192
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    if-eqz v0, :cond_25

    .line 193
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    .line 194
    invoke-virtual {p0, p2}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->onScrollEnd(Landroid/view/MotionEvent;)V

    :cond_25
    return p1
.end method

.method public setSwipeEnabled(Z)V
    .registers 2

    .line 74
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->isSwipeEnabled:Z

    return-void
.end method

.method public setSwipeVertical(Z)V
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->swipeVertical:Z

    return-void
.end method
