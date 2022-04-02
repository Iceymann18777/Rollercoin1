.class public Lcom/mopub/nativeads/MediaLayout;
.super Landroid/widget/RelativeLayout;
.source "MediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MediaLayout$MuteState;,
        Lcom/mopub/nativeads/MediaLayout$Mode;
    }
.end annotation


# static fields
.field private static final ASPECT_MULTIPLIER_HEIGHT_TO_WIDTH:F = 1.7777778f

.field private static final ASPECT_MULTIPLIER_WIDTH_TO_HEIGHT:F = 0.5625f

.field private static final CONTROL_SIZE_DIPS:I = 0x28

.field private static final GRADIENT_STRIP_HEIGHT_DIPS:I = 0x23

.field private static final MUTE_SIZE_DIPS:I = 0x24

.field private static final PINNER_PADDING_DIPS:I = 0xa


# instance fields
.field private mBottomGradient:Landroid/widget/ImageView;

.field private final mControlSizePx:I

.field private final mGradientStripHeightPx:I

.field private mIsInitialized:Z

.field private mLoadingSpinner:Landroid/widget/ProgressBar;

.field private mMainImageView:Landroid/widget/ImageView;

.field private volatile mMode:Lcom/mopub/nativeads/MediaLayout$Mode;

.field private mMuteControl:Landroid/widget/ImageView;

.field private final mMuteSizePx:I

.field private mMuteState:Lcom/mopub/nativeads/MediaLayout$MuteState;

.field private mMutedDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlay:Landroid/view/View;

.field private final mPaddingPx:I

.field private mPlayButton:Landroid/widget/ImageView;

.field private mTopGradient:Landroid/widget/ImageView;

.field private mUnmutedDrawable:Landroid/graphics/drawable/Drawable;

.field private mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

.field private mVideoTextureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/MediaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/nativeads/MediaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    sget-object p2, Lcom/mopub/nativeads/MediaLayout$Mode;->IMAGE:Lcom/mopub/nativeads/MediaLayout$Mode;

    iput-object p2, p0, Lcom/mopub/nativeads/MediaLayout;->mMode:Lcom/mopub/nativeads/MediaLayout$Mode;

    .line 80
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 82
    sget-object p2, Lcom/mopub/nativeads/MediaLayout$MuteState;->MUTED:Lcom/mopub/nativeads/MediaLayout$MuteState;

    iput-object p2, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteState:Lcom/mopub/nativeads/MediaLayout$MuteState;

    .line 85
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0xd

    .line 86
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 87
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/mopub/nativeads/MediaLayout;->mMainImageView:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object p2, p0, Lcom/mopub/nativeads/MediaLayout;->mMainImageView:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    iget-object p2, p0, Lcom/mopub/nativeads/MediaLayout;->mMainImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    const/high16 p2, 0x42200000    # 40.0f

    .line 92
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/mopub/nativeads/MediaLayout;->mControlSizePx:I

    const/high16 p2, 0x420c0000    # 35.0f

    .line 93
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/mopub/nativeads/MediaLayout;->mGradientStripHeightPx:I

    const/high16 p2, 0x42100000    # 36.0f

    .line 94
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteSizePx:I

    const/high16 p2, 0x41200000    # 10.0f

    .line 95
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/mopub/nativeads/MediaLayout;->mPaddingPx:I

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/MediaLayout;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/mopub/nativeads/MediaLayout;->updateViewState()V

    return-void
.end method

.method private setLoadingSpinnerVisibility(I)V
    .registers 3

    .line 369
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mLoadingSpinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    .line 370
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 373
    :cond_7
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mTopGradient:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 374
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method private setMainImageVisibility(I)V
    .registers 3

    .line 365
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMainImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setPlayButtonVisibility(I)V
    .registers 4

    .line 393
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mPlayButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mOverlay:Landroid/view/View;

    if-eqz v1, :cond_10

    .line 394
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private setVideoControlVisibility(I)V
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mBottomGradient:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 380
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    :cond_7
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    if-eqz v0, :cond_e

    .line 384
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 387
    :cond_e
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    .line 388
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method private updateViewState()V
    .registers 4

    .line 323
    sget-object v0, Lcom/mopub/nativeads/MediaLayout$2;->$SwitchMap$com$mopub$nativeads$MediaLayout$Mode:[I

    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mMode:Lcom/mopub/nativeads/MediaLayout$Mode;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MediaLayout$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x4

    packed-switch v0, :pswitch_data_5e

    goto :goto_5c

    .line 354
    :pswitch_10
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/MediaLayout;->setMainImageVisibility(I)V

    .line 355
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setLoadingSpinnerVisibility(I)V

    .line 356
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setVideoControlVisibility(I)V

    .line 357
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonVisibility(I)V

    goto :goto_5c

    .line 348
    :pswitch_1d
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setMainImageVisibility(I)V

    .line 349
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setLoadingSpinnerVisibility(I)V

    .line 350
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/MediaLayout;->setVideoControlVisibility(I)V

    .line 351
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonVisibility(I)V

    goto :goto_5c

    .line 337
    :pswitch_2a
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setMainImageVisibility(I)V

    .line 338
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/MediaLayout;->setLoadingSpinnerVisibility(I)V

    .line 339
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/MediaLayout;->setVideoControlVisibility(I)V

    .line 340
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonVisibility(I)V

    .line 342
    :pswitch_36
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setMainImageVisibility(I)V

    .line 343
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setLoadingSpinnerVisibility(I)V

    .line 344
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/MediaLayout;->setVideoControlVisibility(I)V

    .line 345
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonVisibility(I)V

    goto :goto_5c

    .line 331
    :pswitch_43
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/MediaLayout;->setMainImageVisibility(I)V

    .line 332
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/MediaLayout;->setLoadingSpinnerVisibility(I)V

    .line 333
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setVideoControlVisibility(I)V

    .line 334
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonVisibility(I)V

    goto :goto_5c

    .line 325
    :pswitch_50
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/MediaLayout;->setMainImageVisibility(I)V

    .line 326
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setLoadingSpinnerVisibility(I)V

    .line 327
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setVideoControlVisibility(I)V

    .line 328
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonVisibility(I)V

    :goto_5c
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_50
        :pswitch_43
        :pswitch_2a
        :pswitch_36
        :pswitch_1d
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public getMainImageView()Landroid/widget/ImageView;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMainImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public initForVideo()V
    .registers 10

    .line 114
    iget-boolean v0, p0, Lcom/mopub/nativeads/MediaLayout;->mIsInitialized:Z

    if-eqz v0, :cond_5

    return-void

    .line 119
    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 121
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    new-instance v3, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    .line 123
    invoke-virtual {v3, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setId(I)V

    .line 125
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMainImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 130
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/mopub/nativeads/MediaLayout;->mControlSizePx:I

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 131
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    .line 132
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mopub/nativeads/MediaLayout;->mLoadingSpinner:Landroid/widget/ProgressBar;

    .line 134
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mLoadingSpinner:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/mopub/nativeads/MediaLayout;->mPaddingPx:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, v3, v4}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 136
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mLoadingSpinner:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 137
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 139
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/mopub/nativeads/MediaLayout;->mGradientStripHeightPx:I

    invoke-direct {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x8

    .line 141
    iget-object v6, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/TextureView;->getId()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 142
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mopub/nativeads/MediaLayout;->mBottomGradient:Landroid/widget/ImageView;

    .line 143
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x2

    new-array v7, v6, [I

    sget v8, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->START_COLOR:I

    aput v8, v7, v4

    sget v8, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->END_COLOR:I

    aput v8, v7, v3

    invoke-direct {v0, v5, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 147
    iget-object v5, p0, Lcom/mopub/nativeads/MediaLayout;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 150
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/mopub/nativeads/MediaLayout;->mGradientStripHeightPx:I

    invoke-direct {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x6

    .line 152
    iget-object v7, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v7}, Landroid/view/TextureView;->getId()I

    move-result v7

    invoke-virtual {v0, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 153
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mopub/nativeads/MediaLayout;->mTopGradient:Landroid/widget/ImageView;

    .line 154
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v7, v6, [I

    sget v8, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->START_COLOR:I

    aput v8, v7, v4

    sget v8, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->END_COLOR:I

    aput v8, v7, v3

    invoke-direct {v0, v5, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 158
    iget-object v5, p0, Lcom/mopub/nativeads/MediaLayout;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 161
    new-instance v0, Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 162
    iget-object v5, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setAnchorId(I)V

    .line 163
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5, v4}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->calibrateAndMakeVisible(II)V

    .line 164
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 166
    sget-object v0, Lcom/mopub/common/util/Drawables;->NATIVE_MUTED:Lcom/mopub/common/util/Drawables;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMutedDrawable:Landroid/graphics/drawable/Drawable;

    .line 167
    sget-object v0, Lcom/mopub/common/util/Drawables;->NATIVE_UNMUTED:Lcom/mopub/common/util/Drawables;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mUnmutedDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteSizePx:I

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x9

    .line 169
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    iget-object v5, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v5}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->getId()I

    move-result v5

    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 171
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    .line 172
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 174
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    iget v5, p0, Lcom/mopub/nativeads/MediaLayout;->mPaddingPx:I

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 175
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/mopub/nativeads/MediaLayout;->mMutedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 178
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mOverlay:Landroid/view/View;

    .line 182
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 184
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mOverlay:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 186
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/nativeads/MediaLayout;->mControlSizePx:I

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 187
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 188
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mPlayButton:Landroid/widget/ImageView;

    .line 189
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mPlayButton:Landroid/widget/ImageView;

    sget-object v1, Lcom/mopub/common/util/Drawables;->NATIVE_PLAY:Lcom/mopub/common/util/Drawables;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->addView(Landroid/view/View;)V

    .line 193
    iput-boolean v3, p0, Lcom/mopub/nativeads/MediaLayout;->mIsInitialized:Z

    .line 194
    invoke-direct {p0}, Lcom/mopub/nativeads/MediaLayout;->updateViewState()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 209
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 210
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 212
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 213
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 215
    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getMeasuredWidth()I

    move-result v4

    .line 216
    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getMeasuredHeight()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v0, v6, :cond_1d

    goto :goto_27

    :cond_1d
    const/high16 v7, -0x80000000

    if-ne v0, v7, :cond_26

    .line 223
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_27

    :cond_26
    move v2, v4

    :goto_27
    const/high16 v0, 0x3f100000    # 0.5625f

    int-to-float v7, v2

    mul-float v7, v7, v0

    float-to-int v0, v7

    if-ne v1, v6, :cond_39

    if-ge v3, v0, :cond_39

    const v0, 0x3fe38e39

    int-to-float v1, v3

    mul-float v1, v1, v0

    float-to-int v2, v1

    goto :goto_3a

    :cond_39
    move v3, v0

    :goto_3a
    sub-int v0, v3, v5

    .line 238
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4b

    sub-int v0, v2, v4

    .line 239
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_76

    .line 240
    :cond_4b
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    const-string v4, "Resetting mediaLayout size to w: %d h: %d"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v0, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 242
    invoke-virtual {p0}, Lcom/mopub/nativeads/MediaLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 245
    :cond_76
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 201
    sget-object v0, Lcom/mopub/nativeads/MediaLayout$Mode;->IMAGE:Lcom/mopub/nativeads/MediaLayout$Mode;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->setMode(Lcom/mopub/nativeads/MediaLayout$Mode;)V

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->setPlayButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->setMuteControlClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MediaLayout;->setVideoClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public resetProgress()V
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    if-eqz v0, :cond_7

    .line 255
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->reset()V

    :cond_7
    return-void
.end method

.method public setMainImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 249
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMainImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMode(Lcom/mopub/nativeads/MediaLayout$Mode;)V
    .registers 2

    .line 270
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 271
    iput-object p1, p0, Lcom/mopub/nativeads/MediaLayout;->mMode:Lcom/mopub/nativeads/MediaLayout$Mode;

    .line 272
    new-instance p1, Lcom/mopub/nativeads/MediaLayout$1;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/MediaLayout$1;-><init>(Lcom/mopub/nativeads/MediaLayout;)V

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MediaLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMuteControlClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 287
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method public setMuteState(Lcom/mopub/nativeads/MediaLayout$MuteState;)V
    .registers 3

    .line 305
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteState:Lcom/mopub/nativeads/MediaLayout$MuteState;

    if-ne p1, v0, :cond_8

    return-void

    .line 309
    :cond_8
    iput-object p1, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteState:Lcom/mopub/nativeads/MediaLayout$MuteState;

    .line 310
    iget-object p1, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    if-eqz p1, :cond_2a

    .line 311
    sget-object p1, Lcom/mopub/nativeads/MediaLayout$2;->$SwitchMap$com$mopub$nativeads$MediaLayout$MuteState:[I

    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteState:Lcom/mopub/nativeads/MediaLayout$MuteState;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MediaLayout$MuteState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    .line 317
    iget-object p1, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mUnmutedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2a

    .line 313
    :cond_23
    iget-object p1, p0, Lcom/mopub/nativeads/MediaLayout;->mMuteControl:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mMutedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public setPlayButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mPlayButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mOverlay:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 293
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_20

    .line 100
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 102
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_20

    if-eqz p1, :cond_20

    .line 104
    iget-object v1, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_20
    return-void
.end method

.method public setVideoClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_7

    .line 300
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method public updateProgress(I)V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/mopub/nativeads/MediaLayout;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    if-eqz v0, :cond_7

    .line 261
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->updateProgress(I)V

    :cond_7
    return-void
.end method
