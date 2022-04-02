.class Lcom/onesignal/InAppMessageView;
.super Ljava/lang/Object;
.source "InAppMessageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/InAppMessageView$InAppMessageViewListener;
    }
.end annotation


# static fields
.field private static final ACTIVITY_BACKGROUND_COLOR_EMPTY:I

.field private static final ACTIVITY_BACKGROUND_COLOR_FULL:I

.field private static final DRAG_THRESHOLD_PX_SIZE:I

.field private static final MARGIN_PX_SIZE:I


# instance fields
.field private currentActivity:Landroid/app/Activity;

.field private dismissDuration:D

.field private displayLocation:Lcom/onesignal/WebViewManager$Position;

.field private draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

.field private final handler:Landroid/os/Handler;

.field private hasBackground:Z

.field private isDragging:Z

.field private messageController:Lcom/onesignal/InAppMessageView$InAppMessageViewListener;

.field private pageHeight:I

.field private pageWidth:I

.field private parentRelativeLayout:Landroid/widget/RelativeLayout;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private scheduleDismissRunnable:Ljava/lang/Runnable;

.field private shouldDismissWhenActive:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "#00000000"

    .line 49
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/onesignal/InAppMessageView;->ACTIVITY_BACKGROUND_COLOR_EMPTY:I

    const-string v0, "#BB000000"

    .line 50
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/onesignal/InAppMessageView;->ACTIVITY_BACKGROUND_COLOR_FULL:I

    const/16 v0, 0x18

    .line 58
    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/onesignal/InAppMessageView;->MARGIN_PX_SIZE:I

    const/4 v0, 0x4

    .line 59
    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/onesignal/InAppMessageView;->DRAG_THRESHOLD_PX_SIZE:I

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebView;Lcom/onesignal/WebViewManager$Position;ID)V
    .registers 7

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/onesignal/InAppMessageView;->shouldDismissWhenActive:Z

    .line 74
    iput-boolean v0, p0, Lcom/onesignal/InAppMessageView;->isDragging:Z

    .line 83
    iput-object p1, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    .line 84
    iput-object p2, p0, Lcom/onesignal/InAppMessageView;->displayLocation:Lcom/onesignal/WebViewManager$Position;

    .line 85
    iput p3, p0, Lcom/onesignal/InAppMessageView;->pageHeight:I

    const/4 p1, -0x1

    .line 86
    iput p1, p0, Lcom/onesignal/InAppMessageView;->pageWidth:I

    .line 87
    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_20

    const-wide/16 p4, 0x0

    :cond_20
    iput-wide p4, p0, Lcom/onesignal/InAppMessageView;->dismissDuration:D

    .line 88
    invoke-virtual {p2}, Lcom/onesignal/WebViewManager$Position;->isBanner()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/onesignal/InAppMessageView;->hasBackground:Z

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/InAppMessageView;)Landroid/webkit/WebView;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/onesignal/InAppMessageView;)Lcom/onesignal/DraggableRelativeLayout;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/onesignal/InAppMessageView;Lcom/onesignal/WebViewManager$Position;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/InAppMessageView;->animateInAppMessage(Lcom/onesignal/WebViewManager$Position;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/onesignal/InAppMessageView;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->startDismissTimerIfNeeded()V

    return-void
.end method

.method static synthetic access$1200(Lcom/onesignal/InAppMessageView;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/onesignal/InAppMessageView;->finishAfterDelay(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/onesignal/InAppMessageView;Z)Z
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/onesignal/InAppMessageView;->isDragging:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/onesignal/InAppMessageView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/onesignal/InAppMessageView;->scheduleDismissRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/onesignal/InAppMessageView;Z)Z
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/onesignal/InAppMessageView;->shouldDismissWhenActive:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/onesignal/InAppMessageView;Landroid/app/Activity;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/onesignal/InAppMessageView;->delayShowUntilAvailable(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/onesignal/InAppMessageView;)Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/onesignal/InAppMessageView;->hasBackground:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/onesignal/InAppMessageView;Landroid/view/View;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/onesignal/InAppMessageView;->animateAndDismissLayout(Landroid/view/View;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/onesignal/InAppMessageView;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->cleanupViewsAfterDismiss()V

    return-void
.end method

.method static synthetic access$200(Lcom/onesignal/InAppMessageView;)Lcom/onesignal/WebViewManager$Position;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/onesignal/InAppMessageView;->displayLocation:Lcom/onesignal/WebViewManager$Position;

    return-object p0
.end method

.method static synthetic access$300(Lcom/onesignal/InAppMessageView;ILcom/onesignal/WebViewManager$Position;)Lcom/onesignal/DraggableRelativeLayout$Params;
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/onesignal/InAppMessageView;->createDraggableLayoutParams(ILcom/onesignal/WebViewManager$Position;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/onesignal/InAppMessageView;)Landroid/app/Activity;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/onesignal/InAppMessageView;->currentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/onesignal/InAppMessageView;Landroid/content/Context;Landroid/widget/LinearLayout$LayoutParams;Lcom/onesignal/DraggableRelativeLayout$Params;)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/InAppMessageView;->setUpDraggableLayout(Landroid/content/Context;Landroid/widget/LinearLayout$LayoutParams;Lcom/onesignal/DraggableRelativeLayout$Params;)V

    return-void
.end method

.method static synthetic access$600(Lcom/onesignal/InAppMessageView;Landroid/content/Context;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/onesignal/InAppMessageView;->setUpParentLinearLayout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/onesignal/InAppMessageView;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/onesignal/InAppMessageView;->parentRelativeLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/onesignal/InAppMessageView;Landroid/widget/RelativeLayout;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/onesignal/InAppMessageView;->createPopupWindow(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method static synthetic access$900(Lcom/onesignal/InAppMessageView;)Lcom/onesignal/InAppMessageView$InAppMessageViewListener;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/onesignal/InAppMessageView;->messageController:Lcom/onesignal/InAppMessageView$InAppMessageViewListener;

    return-object p0
.end method

.method private animateAndDismissLayout(Landroid/view/View;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V
    .registers 9

    .line 574
    new-instance v5, Lcom/onesignal/InAppMessageView$8;

    invoke-direct {v5, p0, p2}, Lcom/onesignal/InAppMessageView$8;-><init>(Lcom/onesignal/InAppMessageView;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    .line 584
    sget v3, Lcom/onesignal/InAppMessageView;->ACTIVITY_BACKGROUND_COLOR_FULL:I

    sget v4, Lcom/onesignal/InAppMessageView;->ACTIVITY_BACKGROUND_COLOR_EMPTY:I

    const/16 v2, 0x190

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/onesignal/InAppMessageView;->animateBackgroundColor(Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 590
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateBackgroundColor(Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .registers 6

    .line 594
    invoke-static {p1, p2, p3, p4, p5}, Lcom/onesignal/OneSignalAnimate;->animateViewColor(Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method private animateBottom(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 11

    .line 543
    sget v0, Lcom/onesignal/InAppMessageView;->MARGIN_PX_SIZE:I

    add-int/2addr p2, v0

    int-to-float v1, p2

    new-instance v4, Lcom/onesignal/OneSignalBounceInterpolator;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    invoke-direct {v4, v2, v3, v5, v6}, Lcom/onesignal/OneSignalBounceInterpolator;-><init>(DD)V

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    move-object v0, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/onesignal/OneSignalAnimate;->animateViewByTranslation(Landroid/view/View;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object p1

    .line 550
    invoke-virtual {p1}, Landroid/view/animation/Animation;->start()V

    return-void
.end method

.method private animateCenter(Landroid/view/View;Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;Landroid/animation/Animator$AnimatorListener;)V
    .registers 11

    .line 555
    new-instance v0, Lcom/onesignal/OneSignalBounceInterpolator;

    const-wide v1, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onesignal/OneSignalBounceInterpolator;-><init>(DD)V

    const/16 v1, 0x3e8

    invoke-static {p1, v1, v0, p3}, Lcom/onesignal/OneSignalAnimate;->animateViewSmallToLarge(Landroid/view/View;ILandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object p1

    .line 562
    sget v3, Lcom/onesignal/InAppMessageView;->ACTIVITY_BACKGROUND_COLOR_EMPTY:I

    sget v4, Lcom/onesignal/InAppMessageView;->ACTIVITY_BACKGROUND_COLOR_FULL:I

    const/16 v2, 0x190

    move-object v0, p0

    move-object v1, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/onesignal/InAppMessageView;->animateBackgroundColor(Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 569
    invoke-virtual {p1}, Landroid/view/animation/Animation;->start()V

    .line 570
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateInAppMessage(Lcom/onesignal/WebViewManager$Position;Landroid/view/View;Landroid/view/View;)V
    .registers 8

    const-string v0, "IN_APP_MESSAGE_CARD_VIEW_TAG"

    .line 488
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 491
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-ne v1, v3, :cond_14

    .line 492
    invoke-direct {p0, v0}, Lcom/onesignal/InAppMessageView;->createAnimationListenerForAndroidApi23Elevation(Landroidx/cardview/widget/CardView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    goto :goto_15

    :cond_14
    move-object v1, v2

    .line 495
    :goto_15
    sget-object v3, Lcom/onesignal/InAppMessageView$9;->$SwitchMap$com$onesignal$WebViewManager$Position:[I

    invoke-virtual {p1}, Lcom/onesignal/WebViewManager$Position;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_38

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2a

    goto :goto_41

    .line 504
    :cond_2a
    invoke-direct {p0, p2, p3, v1, v2}, Lcom/onesignal/InAppMessageView;->animateCenter(Landroid/view/View;Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_41

    .line 500
    :cond_2e
    iget-object p1, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1, v1}, Lcom/onesignal/InAppMessageView;->animateBottom(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_41

    .line 497
    :cond_38
    iget-object p1, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1, v1}, Lcom/onesignal/InAppMessageView;->animateTop(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    :goto_41
    return-void
.end method

.method private animateTop(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 11

    neg-int p2, p2

    .line 531
    sget v0, Lcom/onesignal/InAppMessageView;->MARGIN_PX_SIZE:I

    sub-int/2addr p2, v0

    int-to-float v1, p2

    new-instance v4, Lcom/onesignal/OneSignalBounceInterpolator;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    invoke-direct {v4, v2, v3, v5, v6}, Lcom/onesignal/OneSignalBounceInterpolator;-><init>(DD)V

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    move-object v0, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/onesignal/OneSignalAnimate;->animateViewByTranslation(Landroid/view/View;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object p1

    .line 538
    invoke-virtual {p1}, Landroid/view/animation/Animation;->start()V

    return-void
.end method

.method private cleanupViewsAfterDismiss()V
    .registers 3

    .line 454
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "InAppMessageView cleanupViewsAfterDismiss"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/onesignal/InAppMessageView;->removeAllViews()V

    .line 456
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->messageController:Lcom/onesignal/InAppMessageView$InAppMessageViewListener;

    if-eqz v0, :cond_11

    .line 457
    invoke-interface {v0}, Lcom/onesignal/InAppMessageView$InAppMessageViewListener;->onMessageWasDismissed()V

    :cond_11
    return-void
.end method

.method private createAnimationListenerForAndroidApi23Elevation(Landroidx/cardview/widget/CardView;)Landroid/view/animation/Animation$AnimationListener;
    .registers 3

    .line 510
    new-instance v0, Lcom/onesignal/InAppMessageView$7;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/InAppMessageView$7;-><init>(Lcom/onesignal/InAppMessageView;Landroidx/cardview/widget/CardView;)V

    return-object v0
.end method

.method private createCardView(Landroid/content/Context;)Landroidx/cardview/widget/CardView;
    .registers 5

    .line 350
    new-instance v0, Landroidx/cardview/widget/CardView;

    invoke-direct {v0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 352
    iget-object p1, p0, Lcom/onesignal/InAppMessageView;->displayLocation:Lcom/onesignal/WebViewManager$Position;

    sget-object v1, Lcom/onesignal/WebViewManager$Position;->FULL_SCREEN:Lcom/onesignal/WebViewManager$Position;

    const/4 v2, -0x1

    if-ne p1, v1, :cond_e

    const/4 p1, -0x1

    goto :goto_f

    :cond_e
    const/4 p1, -0x2

    .line 355
    :goto_f
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xd

    .line 359
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 360
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne p1, v1, :cond_27

    const/4 p1, 0x0

    .line 365
    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    goto :goto_30

    :cond_27
    const/4 p1, 0x5

    .line 367
    invoke-static {p1}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    :goto_30
    const/16 p1, 0x8

    .line 369
    invoke-static {p1}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    const/4 p1, 0x0

    .line 370
    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setClipChildren(Z)V

    .line 371
    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setClipToPadding(Z)V

    .line 372
    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    return-object v0
.end method

.method private createDraggableLayoutParams(ILcom/onesignal/WebViewManager$Position;)Lcom/onesignal/DraggableRelativeLayout$Params;
    .registers 8

    .line 192
    new-instance v0, Lcom/onesignal/DraggableRelativeLayout$Params;

    invoke-direct {v0}, Lcom/onesignal/DraggableRelativeLayout$Params;-><init>()V

    .line 193
    sget v1, Lcom/onesignal/InAppMessageView;->MARGIN_PX_SIZE:I

    iput v1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->maxXPos:I

    .line 194
    sget v1, Lcom/onesignal/InAppMessageView;->MARGIN_PX_SIZE:I

    iput v1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->maxYPos:I

    .line 196
    iput p1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->messageHeight:I

    .line 197
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->getDisplayYSize()I

    move-result v1

    iput v1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->height:I

    .line 199
    sget-object v1, Lcom/onesignal/InAppMessageView$9;->$SwitchMap$com$onesignal$WebViewManager$Position:[I

    invoke-virtual {p2}, Lcom/onesignal/WebViewManager$Position;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_55

    const/4 v3, 0x2

    if-eq v1, v3, :cond_46

    const/4 v4, 0x3

    if-eq v1, v4, :cond_35

    const/4 p1, 0x4

    if-eq v1, p1, :cond_2a

    goto :goto_5c

    .line 208
    :cond_2a
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->getDisplayYSize()I

    move-result p1

    sget v1, Lcom/onesignal/InAppMessageView;->MARGIN_PX_SIZE:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->messageHeight:I

    .line 211
    :cond_35
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->getDisplayYSize()I

    move-result v1

    div-int/2addr v1, v3

    div-int/2addr p1, v3

    sub-int/2addr v1, p1

    .line 212
    sget p1, Lcom/onesignal/InAppMessageView;->DRAG_THRESHOLD_PX_SIZE:I

    add-int/2addr p1, v1

    iput p1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->dragThresholdY:I

    .line 213
    iput v1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->maxYPos:I

    .line 214
    iput v1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->posY:I

    goto :goto_5c

    .line 204
    :cond_46
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->getDisplayYSize()I

    move-result v1

    sub-int/2addr v1, p1

    iput v1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->posY:I

    .line 205
    sget p1, Lcom/onesignal/InAppMessageView;->MARGIN_PX_SIZE:I

    sget v1, Lcom/onesignal/InAppMessageView;->DRAG_THRESHOLD_PX_SIZE:I

    add-int/2addr p1, v1

    iput p1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->dragThresholdY:I

    goto :goto_5c

    .line 201
    :cond_55
    sget p1, Lcom/onesignal/InAppMessageView;->MARGIN_PX_SIZE:I

    sget v1, Lcom/onesignal/InAppMessageView;->DRAG_THRESHOLD_PX_SIZE:I

    sub-int/2addr p1, v1

    iput p1, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->dragThresholdY:I

    .line 218
    :goto_5c
    sget-object p1, Lcom/onesignal/WebViewManager$Position;->TOP_BANNER:Lcom/onesignal/WebViewManager$Position;

    if-ne p2, p1, :cond_61

    const/4 v2, 0x0

    :cond_61
    iput v2, v0, Lcom/onesignal/DraggableRelativeLayout$Params;->dragDirection:I

    return-object v0
.end method

.method private createParentLinearLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 174
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/onesignal/InAppMessageView;->pageWidth:I

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 176
    sget-object v1, Lcom/onesignal/InAppMessageView$9;->$SwitchMap$com$onesignal$WebViewManager$Position:[I

    iget-object v2, p0, Lcom/onesignal/InAppMessageView;->displayLocation:Lcom/onesignal/WebViewManager$Position;

    invoke-virtual {v2}, Lcom/onesignal/WebViewManager$Position;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_29

    const/4 v2, 0x2

    if-eq v1, v2, :cond_24

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1f

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1f

    goto :goto_2d

    :cond_1f
    const/16 v1, 0x11

    .line 185
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_2d

    :cond_24
    const/16 v1, 0x51

    .line 181
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_2d

    :cond_29
    const/16 v1, 0x31

    .line 178
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_2d
    return-object v0
.end method

.method private createPopupWindow(Landroid/widget/RelativeLayout;)V
    .registers 6

    .line 258
    new-instance v0, Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/onesignal/InAppMessageView;->hasBackground:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_9

    const/4 v1, -0x1

    goto :goto_b

    :cond_9
    iget v1, p0, Lcom/onesignal/InAppMessageView;->pageWidth:I

    :goto_b
    iget-boolean v3, p0, Lcom/onesignal/InAppMessageView;->hasBackground:Z

    if-eqz v3, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, -0x2

    :goto_11
    invoke-direct {v0, p1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->popupWindow:Landroid/widget/PopupWindow;

    .line 263
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object p1, p0, Lcom/onesignal/InAppMessageView;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 267
    iget-boolean p1, p0, Lcom/onesignal/InAppMessageView;->hasBackground:Z

    if-nez p1, :cond_3f

    .line 268
    sget-object p1, Lcom/onesignal/InAppMessageView$9;->$SwitchMap$com$onesignal$WebViewManager$Position:[I

    iget-object v2, p0, Lcom/onesignal/InAppMessageView;->displayLocation:Lcom/onesignal/WebViewManager$Position;

    invoke-virtual {v2}, Lcom/onesignal/WebViewManager$Position;->ordinal()I

    move-result v2

    aget p1, p1, v2

    if-eq p1, v0, :cond_3c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_39

    goto :goto_3f

    :cond_39
    const/16 p1, 0x51

    goto :goto_40

    :cond_3c
    const/16 p1, 0x31

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 p1, 0x0

    .line 280
    :goto_40
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->popupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x3eb

    invoke-static {v0, v2}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 285
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/onesignal/InAppMessageView;->currentActivity:Landroid/app/Activity;

    .line 286
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 285
    invoke-virtual {v0, v2, p1, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private delayShowUntilAvailable(Landroid/app/Activity;)V
    .registers 6

    .line 403
    invoke-static {p1}, Lcom/onesignal/OSViewUtils;->isActivityFullyReady(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->parentRelativeLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_e

    .line 404
    invoke-virtual {p0, p1}, Lcom/onesignal/InAppMessageView;->showInAppMessageView(Landroid/app/Activity;)V

    return-void

    .line 407
    :cond_e
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/onesignal/InAppMessageView$5;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/InAppMessageView$5;-><init>(Lcom/onesignal/InAppMessageView;Landroid/app/Activity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private dereferenceViews()V
    .registers 2

    const/4 v0, 0x0

    .line 482
    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->parentRelativeLayout:Landroid/widget/RelativeLayout;

    .line 483
    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    .line 484
    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method private finishAfterDelay(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V
    .registers 3

    .line 436
    new-instance v0, Lcom/onesignal/InAppMessageView$6;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/InAppMessageView$6;-><init>(Lcom/onesignal/InAppMessageView;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    const/16 p1, 0x258

    invoke-static {v0, p1}, Lcom/onesignal/OSUtils;->runOnMainThreadDelayed(Ljava/lang/Runnable;I)V

    return-void
.end method

.method private getDisplayYSize()I
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->getWindowHeight(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method private setUpDraggableLayout(Landroid/content/Context;Landroid/widget/LinearLayout$LayoutParams;Lcom/onesignal/DraggableRelativeLayout$Params;)V
    .registers 5

    .line 304
    new-instance v0, Lcom/onesignal/DraggableRelativeLayout;

    invoke-direct {v0, p1}, Lcom/onesignal/DraggableRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    if-eqz p2, :cond_c

    .line 306
    invoke-virtual {v0, p2}, Lcom/onesignal/DraggableRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    :cond_c
    iget-object p2, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    invoke-virtual {p2, p3}, Lcom/onesignal/DraggableRelativeLayout;->setParams(Lcom/onesignal/DraggableRelativeLayout$Params;)V

    .line 308
    iget-object p2, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    new-instance p3, Lcom/onesignal/InAppMessageView$3;

    invoke-direct {p3, p0}, Lcom/onesignal/InAppMessageView$3;-><init>(Lcom/onesignal/InAppMessageView;)V

    invoke-virtual {p2, p3}, Lcom/onesignal/DraggableRelativeLayout;->setListener(Lcom/onesignal/DraggableRelativeLayout$DraggableListener;)V

    .line 325
    iget-object p2, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_2e

    .line 326
    iget-object p2, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 328
    :cond_2e
    invoke-direct {p0, p1}, Lcom/onesignal/InAppMessageView;->createCardView(Landroid/content/Context;)Landroidx/cardview/widget/CardView;

    move-result-object p1

    const-string p2, "IN_APP_MESSAGE_CARD_VIEW_TAG"

    .line 329
    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setTag(Ljava/lang/Object;)V

    .line 330
    iget-object p2, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 332
    iget-object p2, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    sget p3, Lcom/onesignal/InAppMessageView;->MARGIN_PX_SIZE:I

    invoke-virtual {p2, p3, p3, p3, p3}, Lcom/onesignal/DraggableRelativeLayout;->setPadding(IIII)V

    .line 333
    iget-object p2, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/onesignal/DraggableRelativeLayout;->setClipChildren(Z)V

    .line 334
    iget-object p2, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    invoke-virtual {p2, p3}, Lcom/onesignal/DraggableRelativeLayout;->setClipToPadding(Z)V

    .line 335
    iget-object p2, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    invoke-virtual {p2, p1}, Lcom/onesignal/DraggableRelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setUpParentLinearLayout(Landroid/content/Context;)V
    .registers 4

    .line 294
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->parentRelativeLayout:Landroid/widget/RelativeLayout;

    .line 295
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object p1, p0, Lcom/onesignal/InAppMessageView;->parentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 297
    iget-object p1, p0, Lcom/onesignal/InAppMessageView;->parentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    .line 298
    iget-object p1, p0, Lcom/onesignal/InAppMessageView;->parentRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showDraggableView(Lcom/onesignal/WebViewManager$Position;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/onesignal/DraggableRelativeLayout$Params;)V
    .registers 12

    .line 229
    new-instance v6, Lcom/onesignal/InAppMessageView$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/onesignal/InAppMessageView$2;-><init>(Lcom/onesignal/InAppMessageView;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/onesignal/DraggableRelativeLayout$Params;Lcom/onesignal/WebViewManager$Position;)V

    invoke-static {v6}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startDismissTimerIfNeeded()V
    .registers 7

    .line 381
    iget-wide v0, p0, Lcom/onesignal/InAppMessageView;->dismissDuration:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_9

    return-void

    .line 384
    :cond_9
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->scheduleDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    return-void

    .line 387
    :cond_e
    new-instance v0, Lcom/onesignal/InAppMessageView$4;

    invoke-direct {v0, p0}, Lcom/onesignal/InAppMessageView$4;-><init>(Lcom/onesignal/InAppMessageView;)V

    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->scheduleDismissRunnable:Ljava/lang/Runnable;

    .line 398
    iget-object v1, p0, Lcom/onesignal/InAppMessageView;->handler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/onesignal/InAppMessageView;->dismissDuration:D

    double-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method checkIfShouldDismiss()V
    .registers 2

    .line 108
    iget-boolean v0, p0, Lcom/onesignal/InAppMessageView;->shouldDismissWhenActive:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/onesignal/InAppMessageView;->shouldDismissWhenActive:Z

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0}, Lcom/onesignal/InAppMessageView;->finishAfterDelay(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    :cond_b
    return-void
.end method

.method dismissAndAwaitNextMessage(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V
    .registers 5

    .line 419
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    if-nez v0, :cond_19

    .line 420
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "No host presenter to trigger dismiss animation, counting as dismissed already"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 421
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->dereferenceViews()V

    if-eqz p1, :cond_18

    .line 423
    invoke-interface {p1}, Lcom/onesignal/WebViewManager$OneSignalGenericCallback;->onComplete()V

    :cond_18
    return-void

    .line 427
    :cond_19
    invoke-virtual {v0}, Lcom/onesignal/DraggableRelativeLayout;->dismiss()V

    .line 428
    invoke-direct {p0, p1}, Lcom/onesignal/InAppMessageView;->finishAfterDelay(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    return-void
.end method

.method getDisplayPosition()Lcom/onesignal/WebViewManager$Position;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->displayLocation:Lcom/onesignal/WebViewManager$Position;

    return-object v0
.end method

.method isDragging()Z
    .registers 2

    .line 342
    iget-boolean v0, p0, Lcom/onesignal/InAppMessageView;->isDragging:Z

    return v0
.end method

.method removeAllViews()V
    .registers 3

    .line 464
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->scheduleDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 466
    iget-object v1, p0, Lcom/onesignal/InAppMessageView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 467
    iput-object v0, p0, Lcom/onesignal/InAppMessageView;->scheduleDismissRunnable:Ljava/lang/Runnable;

    .line 469
    :cond_c
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->draggableRelativeLayout:Lcom/onesignal/DraggableRelativeLayout;

    if-eqz v0, :cond_13

    .line 470
    invoke-virtual {v0}, Lcom/onesignal/DraggableRelativeLayout;->removeAllViews()V

    .line 472
    :cond_13
    iget-object v0, p0, Lcom/onesignal/InAppMessageView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1a

    .line 473
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 474
    :cond_1a
    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->dereferenceViews()V

    return-void
.end method

.method setMessageController(Lcom/onesignal/InAppMessageView$InAppMessageViewListener;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/onesignal/InAppMessageView;->messageController:Lcom/onesignal/InAppMessageView$InAppMessageViewListener;

    return-void
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/onesignal/InAppMessageView;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method showInAppMessageView(Landroid/app/Activity;)V
    .registers 5

    .line 151
    iput-object p1, p0, Lcom/onesignal/InAppMessageView;->currentActivity:Landroid/app/Activity;

    .line 153
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/onesignal/InAppMessageView;->pageHeight:I

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 157
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    iget-boolean v0, p0, Lcom/onesignal/InAppMessageView;->hasBackground:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/onesignal/InAppMessageView;->createParentLinearLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 161
    :goto_19
    iget-object v1, p0, Lcom/onesignal/InAppMessageView;->displayLocation:Lcom/onesignal/WebViewManager$Position;

    iget v2, p0, Lcom/onesignal/InAppMessageView;->pageHeight:I

    .line 165
    invoke-direct {p0, v2, v1}, Lcom/onesignal/InAppMessageView;->createDraggableLayoutParams(ILcom/onesignal/WebViewManager$Position;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v2

    .line 161
    invoke-direct {p0, v1, p1, v0, v2}, Lcom/onesignal/InAppMessageView;->showDraggableView(Lcom/onesignal/WebViewManager$Position;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/onesignal/DraggableRelativeLayout$Params;)V

    return-void
.end method

.method showView(Landroid/app/Activity;)V
    .registers 2

    .line 104
    invoke-direct {p0, p1}, Lcom/onesignal/InAppMessageView;->delayShowUntilAvailable(Landroid/app/Activity;)V

    return-void
.end method

.method updateHeight(I)V
    .registers 3

    .line 121
    iput p1, p0, Lcom/onesignal/InAppMessageView;->pageHeight:I

    .line 122
    new-instance v0, Lcom/onesignal/InAppMessageView$1;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/InAppMessageView$1;-><init>(Lcom/onesignal/InAppMessageView;I)V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
