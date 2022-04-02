.class public Lcom/mopub/common/CloseableLayout;
.super Landroid/widget/FrameLayout;
.source "CloseableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/CloseableLayout$UnsetPressedState;,
        Lcom/mopub/common/CloseableLayout$ClosePosition;,
        Lcom/mopub/common/CloseableLayout$OnCloseListener;
    }
.end annotation


# static fields
.field static final CLOSE_BUTTON_PADDING_DP:F = 8.0f

.field static final CLOSE_BUTTON_SIZE_DP:F = 30.0f

.field static final CLOSE_REGION_SIZE_DP:F = 50.0f


# instance fields
.field private final mClosableLayoutRect:Landroid/graphics/Rect;

.field private mCloseAlwaysInteractable:Z

.field private mCloseBoundChanged:Z

.field private final mCloseButtonBounds:Landroid/graphics/Rect;

.field private final mCloseButtonPadding:I

.field private final mCloseButtonSize:I

.field private final mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mClosePosition:Lcom/mopub/common/CloseableLayout$ClosePosition;

.field private final mCloseRegionBounds:Landroid/graphics/Rect;

.field private final mCloseRegionSize:I

.field private final mInsetCloseRegionBounds:Landroid/graphics/Rect;

.field private mOnCloseListener:Lcom/mopub/common/CloseableLayout$OnCloseListener;

.field private final mTouchSlop:I

.field private mUnsetPressedState:Lcom/mopub/common/CloseableLayout$UnsetPressedState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1, v0, v1}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/mopub/common/CloseableLayout;->mClosableLayoutRect:Landroid/graphics/Rect;

    .line 97
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    .line 98
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/mopub/common/CloseableLayout;->mCloseButtonBounds:Landroid/graphics/Rect;

    .line 99
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/mopub/common/CloseableLayout;->mInsetCloseRegionBounds:Landroid/graphics/Rect;

    .line 115
    new-instance p2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object p2, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 116
    sget-object p2, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    iput-object p2, p0, Lcom/mopub/common/CloseableLayout;->mClosePosition:Lcom/mopub/common/CloseableLayout$ClosePosition;

    .line 118
    iget-object p2, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object p3, Lcom/mopub/common/CloseableLayout;->SELECTED_STATE_SET:[I

    sget-object v0, Lcom/mopub/common/util/Drawables;->INTERSTITIAL_CLOSE_BUTTON_PRESSED:Lcom/mopub/common/util/Drawables;

    .line 119
    invoke-virtual {v0, p1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object p2, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object p3, Lcom/mopub/common/CloseableLayout;->EMPTY_STATE_SET:[I

    sget-object v0, Lcom/mopub/common/util/Drawables;->INTERSTITIAL_CLOSE_BUTTON_NORMAL:Lcom/mopub/common/util/Drawables;

    .line 121
    invoke-virtual {v0, p1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object p2, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object p3, Lcom/mopub/common/CloseableLayout;->EMPTY_STATE_SET:[I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 124
    iget-object p2, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 126
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/mopub/common/CloseableLayout;->mTouchSlop:I

    const/high16 p2, 0x42480000    # 50.0f

    .line 128
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionSize:I

    const/high16 p2, 0x41f00000    # 30.0f

    .line 129
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/mopub/common/CloseableLayout;->mCloseButtonSize:I

    const/high16 p2, 0x41000000    # 8.0f

    .line 130
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/mopub/common/CloseableLayout;->mCloseButtonPadding:I

    const/4 p1, 0x0

    .line 132
    invoke-virtual {p0, p1}, Lcom/mopub/common/CloseableLayout;->setWillNotDraw(Z)V

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Lcom/mopub/common/CloseableLayout;->mCloseAlwaysInteractable:Z

    return-void
.end method

.method static synthetic access$100(Lcom/mopub/common/CloseableLayout;Z)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/mopub/common/CloseableLayout;->setClosePressed(Z)V

    return-void
.end method

.method private applyCloseBoundsWithSize(Lcom/mopub/common/CloseableLayout$ClosePosition;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    .line 198
    invoke-virtual {p1}, Lcom/mopub/common/CloseableLayout$ClosePosition;->getGravity()I

    move-result p1

    invoke-static {p1, p2, p2, p3, p4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private applyCloseButtonBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    .line 194
    iget v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseButtonSize:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mopub/common/CloseableLayout;->applyCloseBoundsWithSize(Lcom/mopub/common/CloseableLayout$ClosePosition;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private performClose()V
    .registers 2

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, v0}, Lcom/mopub/common/CloseableLayout;->playSoundEffect(I)V

    .line 291
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mOnCloseListener:Lcom/mopub/common/CloseableLayout$OnCloseListener;

    if-eqz v0, :cond_b

    .line 292
    invoke-interface {v0}, Lcom/mopub/common/CloseableLayout$OnCloseListener;->onClose()V

    :cond_b
    return-void
.end method

.method private setClosePressed(Z)V
    .registers 3

    .line 268
    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout;->isClosePressed()Z

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    .line 272
    :cond_7
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz p1, :cond_e

    sget-object p1, Lcom/mopub/common/CloseableLayout;->SELECTED_STATE_SET:[I

    goto :goto_10

    :cond_e
    sget-object p1, Lcom/mopub/common/CloseableLayout;->EMPTY_STATE_SET:[I

    :goto_10
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 273
    iget-object p1, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/mopub/common/CloseableLayout;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public applyCloseRegionBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    .line 190
    iget v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionSize:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mopub/common/CloseableLayout;->applyCloseBoundsWithSize(Lcom/mopub/common/CloseableLayout$ClosePosition;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 163
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 166
    iget-boolean v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseBoundChanged:Z

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseBoundChanged:Z

    .line 169
    iget-object v1, p0, Lcom/mopub/common/CloseableLayout;->mClosableLayoutRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 171
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mClosePosition:Lcom/mopub/common/CloseableLayout$ClosePosition;

    iget-object v1, p0, Lcom/mopub/common/CloseableLayout;->mClosableLayoutRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mopub/common/CloseableLayout;->applyCloseRegionBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 174
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mInsetCloseRegionBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 175
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mInsetCloseRegionBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/mopub/common/CloseableLayout;->mCloseButtonPadding:I

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 178
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mClosePosition:Lcom/mopub/common/CloseableLayout$ClosePosition;

    iget-object v1, p0, Lcom/mopub/common/CloseableLayout;->mInsetCloseRegionBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mopub/common/CloseableLayout;->mCloseButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2}, Lcom/mopub/common/CloseableLayout;->applyCloseButtonBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 179
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/mopub/common/CloseableLayout;->mCloseButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 184
    :cond_3e
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 185
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4b
    return-void
.end method

.method getCloseBounds()Landroid/graphics/Rect;
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method isClosePressed()Z
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    sget-object v1, Lcom/mopub/common/CloseableLayout;->SELECTED_STATE_SET:[I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isCloseVisible()Z
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 213
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 215
    invoke-virtual {p0, v0, p1, v1}, Lcom/mopub/common/CloseableLayout;->pointInCloseBounds(III)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/mopub/common/CloseableLayout;->mCloseBoundChanged:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 224
    iget v2, p0, Lcom/mopub/common/CloseableLayout;->mTouchSlop:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/mopub/common/CloseableLayout;->pointInCloseBounds(III)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout;->shouldAllowPress()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_4f

    .line 230
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4b

    if-eq p1, v0, :cond_2b

    const/4 v2, 0x3

    if-eq p1, v2, :cond_27

    goto :goto_4e

    .line 236
    :cond_27
    invoke-direct {p0, v1}, Lcom/mopub/common/CloseableLayout;->setClosePressed(Z)V

    goto :goto_4e

    .line 239
    :cond_2b
    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout;->isClosePressed()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 242
    iget-object p1, p0, Lcom/mopub/common/CloseableLayout;->mUnsetPressedState:Lcom/mopub/common/CloseableLayout$UnsetPressedState;

    if-nez p1, :cond_3d

    .line 243
    new-instance p1, Lcom/mopub/common/CloseableLayout$UnsetPressedState;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/mopub/common/CloseableLayout$UnsetPressedState;-><init>(Lcom/mopub/common/CloseableLayout;Lcom/mopub/common/CloseableLayout$1;)V

    iput-object p1, p0, Lcom/mopub/common/CloseableLayout;->mUnsetPressedState:Lcom/mopub/common/CloseableLayout$UnsetPressedState;

    .line 245
    :cond_3d
    iget-object p1, p0, Lcom/mopub/common/CloseableLayout;->mUnsetPressedState:Lcom/mopub/common/CloseableLayout$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/mopub/common/CloseableLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    invoke-direct {p0}, Lcom/mopub/common/CloseableLayout;->performClose()V

    goto :goto_4e

    .line 232
    :cond_4b
    invoke-direct {p0, v0}, Lcom/mopub/common/CloseableLayout;->setClosePressed(Z)V

    :cond_4e
    :goto_4e
    return v0

    .line 225
    :cond_4f
    :goto_4f
    invoke-direct {p0, v1}, Lcom/mopub/common/CloseableLayout;->setClosePressed(Z)V

    .line 226
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method pointInCloseBounds(III)Z
    .registers 5

    .line 283
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p3

    if-lt p1, v0, :cond_1e

    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    if-lt p2, v0, :cond_1e

    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p3

    if-ge p1, v0, :cond_1e

    iget-object p1, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p3

    if-ge p2, p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method public setCloseAlwaysInteractable(Z)V
    .registers 2

    .line 259
    iput-boolean p1, p0, Lcom/mopub/common/CloseableLayout;->mCloseAlwaysInteractable:Z

    return-void
.end method

.method setCloseBoundChanged(Z)V
    .registers 2

    .line 318
    iput-boolean p1, p0, Lcom/mopub/common/CloseableLayout;->mCloseBoundChanged:Z

    return-void
.end method

.method setCloseBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V
    .registers 2

    .line 142
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 144
    iput-object p1, p0, Lcom/mopub/common/CloseableLayout;->mClosePosition:Lcom/mopub/common/CloseableLayout$ClosePosition;

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lcom/mopub/common/CloseableLayout;->mCloseBoundChanged:Z

    .line 146
    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout;->invalidate()V

    return-void
.end method

.method public setCloseVisible(Z)V
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 151
    iget-object p1, p0, Lcom/mopub/common/CloseableLayout;->mCloseRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/mopub/common/CloseableLayout;->invalidate(Landroid/graphics/Rect;)V

    :cond_e
    return-void
.end method

.method public setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/mopub/common/CloseableLayout;->mOnCloseListener:Lcom/mopub/common/CloseableLayout$OnCloseListener;

    return-void
.end method

.method shouldAllowPress()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseAlwaysInteractable:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
