.class public Lcom/mopub/nativeads/NativeFullScreenVideoView;
.super Landroid/widget/RelativeLayout;
.source "NativeFullScreenVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;,
        Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;
    }
.end annotation


# instance fields
.field private final mBottomGradient:Landroid/widget/ImageView;

.field private final mCachedVideoFrameView:Landroid/widget/ImageView;

.field private final mCloseControl:Landroid/widget/ImageView;

.field final mCloseControlSizePx:I

.field final mClosePaddingPx:I

.field private final mCtaButton:Landroid/widget/ImageView;

.field final mCtaHeightPx:I

.field final mCtaMarginPx:I

.field final mCtaWidthPx:I

.field final mGradientStripHeightPx:I

.field private final mLoadingSpinner:Landroid/widget/ProgressBar;

.field mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

.field private mOrientation:I

.field private final mOverlay:Landroid/view/View;

.field private final mPlayButton:Landroid/widget/ImageView;

.field final mPlayControlSizePx:I

.field private final mPrivacyInformationIcon:Landroid/widget/ImageView;

.field final mPrivacyInformationIconSizePx:I

.field private final mTopGradient:Landroid/widget/ImageView;

.field private final mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

.field private final mVideoTexture:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 19

    move-object/from16 v1, p1

    .line 74
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/TextureView;

    invoke-direct {v5, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/ProgressBar;

    invoke-direct {v6, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-direct {v9, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/widget/ImageView;

    invoke-direct {v14, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v14}, Lcom/mopub/nativeads/NativeFullScreenVideoView;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/widget/ImageView;Landroid/view/TextureView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/mopub/mobileads/VastVideoProgressBarWidget;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroid/widget/ImageView;Landroid/view/TextureView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/mopub/mobileads/VastVideoProgressBarWidget;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    .line 92
    invoke-direct/range {p0 .. p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-static/range {p1 .. p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 94
    invoke-static/range {p4 .. p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    invoke-static/range {p5 .. p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    invoke-static/range {p6 .. p6}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 97
    invoke-static/range {p7 .. p7}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    invoke-static/range {p8 .. p8}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    invoke-static/range {p9 .. p9}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 100
    invoke-static/range {p10 .. p10}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 101
    invoke-static/range {p11 .. p11}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 102
    invoke-static/range {p12 .. p12}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    invoke-static/range {p13 .. p13}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 104
    invoke-static/range {p14 .. p14}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    move/from16 v13, p2

    .line 106
    iput v13, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    .line 107
    sget-object v13, Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;->LOADING:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    iput-object v13, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    const/high16 v13, 0x43480000    # 200.0f

    .line 109
    invoke-static {v13, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v13

    iput v13, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaWidthPx:I

    const/high16 v13, 0x42280000    # 42.0f

    .line 110
    invoke-static {v13, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v13

    iput v13, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaHeightPx:I

    const/high16 v13, 0x41200000    # 10.0f

    .line 111
    invoke-static {v13, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v13

    iput v13, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    const/high16 v13, 0x42480000    # 50.0f

    .line 112
    invoke-static {v13, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v14

    iput v14, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControlSizePx:I

    const/high16 v14, 0x41000000    # 8.0f

    .line 113
    invoke-static {v14, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v14

    iput v14, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    const/high16 v14, 0x42300000    # 44.0f

    .line 114
    invoke-static {v14, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v14

    iput v14, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIconSizePx:I

    .line 115
    invoke-static {v13, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v13

    iput v13, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    const/high16 v13, 0x42340000    # 45.0f

    .line 116
    invoke-static {v13, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v13

    iput v13, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mGradientStripHeightPx:I

    .line 119
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v13, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0xd

    .line 122
    invoke-virtual {v13, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 124
    iput-object v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    .line 125
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/view/TextureView;->setId(I)V

    .line 126
    iget-object v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v3, v13}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 129
    iput-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    .line 130
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 131
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 133
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 135
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v13, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    invoke-direct {v2, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 137
    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 138
    iput-object v4, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    .line 139
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/ProgressBar;->setId(I)V

    .line 140
    iget-object v4, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    new-instance v13, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;

    invoke-direct {v13, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v13}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v4, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 143
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 145
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v13, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mGradientStripHeightPx:I

    const/4 v14, -0x1

    invoke-direct {v2, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    iget-object v13, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v13}, Landroid/view/TextureView;->getId()I

    move-result v13

    const/16 v14, 0x8

    invoke-virtual {v2, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 148
    iput-object v5, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    .line 149
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setId(I)V

    .line 150
    iget-object v5, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v13, 0x2

    new-array v14, v13, [I

    sget v16, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->START_COLOR:I

    aput v16, v14, v3

    sget v16, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->END_COLOR:I

    aput v16, v14, v4

    invoke-direct {v2, v5, v14}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 153
    iget-object v5, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 156
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mGradientStripHeightPx:I

    const/4 v14, -0x1

    invoke-direct {v2, v14, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    .line 158
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    iput-object v6, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    .line 160
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 161
    iget-object v5, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v6, v13, [I

    sget v13, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->START_COLOR:I

    aput v13, v6, v3

    sget v13, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->END_COLOR:I

    aput v13, v6, v4

    invoke-direct {v2, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 164
    iget-object v4, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 167
    iput-object v7, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 168
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setId(I)V

    .line 169
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    iget-object v4, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setAnchorId(I)V

    .line 170
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4, v3}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->calibrateAndMakeVisible(II)V

    .line 171
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 173
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 176
    iput-object v8, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    .line 177
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/view/View;->setId(I)V

    .line 178
    iget-object v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    const/high16 v3, -0x78000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 180
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 182
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 184
    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    iput-object v9, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    .line 186
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 187
    iget-object v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    sget-object v3, Lcom/mopub/common/util/Drawables;->NATIVE_PLAY:Lcom/mopub/common/util/Drawables;

    invoke-virtual {v3, v1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 191
    iput-object v10, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    .line 192
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 193
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    iget v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    mul-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 195
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 197
    new-instance v2, Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-direct {v2, v1}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f2

    move-object/from16 v1, p3

    .line 199
    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->setCtaText(Ljava/lang/String;)V

    .line 201
    :cond_1f2
    iput-object v11, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    .line 202
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 203
    iget-object v1, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v1, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 206
    iput-object v12, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    .line 207
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 208
    iget-object v1, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    new-instance v2, Lcom/mopub/mobileads/resource/CloseButtonDrawable;

    invoke-direct {v2}, Lcom/mopub/mobileads/resource/CloseButtonDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v1, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    iget v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    mul-int/lit8 v3, v2, 0x3

    mul-int/lit8 v4, v2, 0x3

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 210
    iget-object v1, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 212
    invoke-direct/range {p0 .. p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateViewState()V

    return-void
.end method

.method private setCachedImageVisibility(I)V
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setLoadingSpinnerVisibility(I)V
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private setPlayButtonVisibility(I)V
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setVideoProgressVisibility(I)V
    .registers 3

    .line 331
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    return-void
.end method

.method private updateControlLayouts()V
    .registers 7

    .line 353
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaWidthPx:I

    iget v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaHeightPx:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 355
    iget v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 356
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIconSizePx:I

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 359
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControlSizePx:I

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 363
    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    const/4 v4, 0x1

    const/16 v5, 0xb

    if-eq v3, v4, :cond_5b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_27

    goto :goto_7a

    .line 375
    :cond_27
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->getId()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 376
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 378
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getId()I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x5

    .line 379
    iget-object v5, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getId()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 381
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getId()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x7

    .line 382
    iget-object v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_7a

    :cond_5b
    const/4 v3, 0x3

    .line 365
    iget-object v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xe

    .line 366
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xa

    .line 368
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x9

    .line 369
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 371
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 372
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 389
    :goto_7a
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateVideoTextureLayout()V
    .registers 5

    .line 340
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 342
    iget v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 343
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v3, :cond_23

    .line 344
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 346
    :cond_23
    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    const/high16 v2, 0x41100000    # 9.0f

    mul-float v0, v0, v2

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 347
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_3b

    .line 348
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3b
    return-void
.end method

.method private updateViewState()V
    .registers 5

    .line 289
    sget-object v0, Lcom/mopub/nativeads/NativeFullScreenVideoView$1;->$SwitchMap$com$mopub$nativeads$NativeFullScreenVideoView$Mode:[I

    iget-object v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    if-eq v0, v3, :cond_18

    goto :goto_4b

    .line 309
    :cond_18
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 310
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 311
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 312
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    goto :goto_4b

    .line 303
    :cond_25
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 304
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 305
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 306
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    goto :goto_4b

    .line 297
    :cond_32
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 298
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 299
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 300
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    goto :goto_4b

    .line 291
    :cond_3f
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 292
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 293
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 294
    invoke-direct {p0, v3}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    .line 318
    :goto_4b
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateVideoTextureLayout()V

    .line 319
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateControlLayouts()V

    return-void
.end method


# virtual methods
.method getCtaButton()Landroid/widget/ImageView;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    return-object v0
.end method

.method public resetProgress()V
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->reset()V

    return-void
.end method

.method public setCachedVideoFrame(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setCloseControlListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCtaClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMode(Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;)V
    .registers 3

    .line 220
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    if-ne v0, p1, :cond_8

    return-void

    .line 225
    :cond_8
    iput-object p1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    .line 226
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateViewState()V

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 235
    iget v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    if-ne v0, p1, :cond_5

    return-void

    .line 238
    :cond_5
    iput p1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    .line 239
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateViewState()V

    return-void
.end method

.method public setPlayControlClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPrivacyInformationClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 259
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPrivacyInformationIconImageUrl(Ljava/lang/String;)V
    .registers 4

    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 264
    iget-object p1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    sget-object v0, Lcom/mopub/common/util/Drawables;->NATIVE_PRIVACY_INFORMATION_ICON:Lcom/mopub/common/util/Drawables;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    .line 265
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 264
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    .line 267
    :cond_18
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_1d
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .registers 5

    .line 244
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 246
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    .line 248
    iget-object v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    .line 249
    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    .line 248
    invoke-interface {p1, v0, v1, v2}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_1e
    return-void
.end method

.method public updateProgress(I)V
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->updateProgress(I)V

    return-void
.end method
