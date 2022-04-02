.class public Landroidx/media2/widget/VideoView;
.super Landroidx/media2/widget/SelectiveLayout;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/VideoView$OnViewTypeChangedListener;,
        Landroidx/media2/widget/VideoView$PlayerCallback;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field mAudioTrackCount:I

.field mCurrentView:Landroidx/media2/widget/VideoViewInterface;

.field mMediaControlView:Landroidx/media2/widget/MediaControlView;

.field mMusicView:Landroidx/media2/widget/MusicView;

.field mPlayer:Landroidx/media2/widget/PlayerWrapper;

.field mSelectedSubtitleTrackInfo:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field mSelectiveLayoutParams:Landroidx/media2/widget/SelectiveLayout$LayoutParams;

.field mSubtitleAnchorView:Landroidx/media2/widget/SubtitleAnchorView;

.field mSubtitleController:Landroidx/media2/widget/SubtitleController;

.field mSubtitleTracks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/widget/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

.field mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

.field mTargetView:Landroidx/media2/widget/VideoViewInterface;

.field mTextureView:Landroidx/media2/widget/VideoTextureView;

.field mVideoTrackCount:I

.field mViewTypeChangedListener:Landroidx/media2/widget/VideoView$OnViewTypeChangedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "VideoView"

    const/4 v1, 0x3

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/widget/VideoView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1, v0}, Landroidx/media2/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 224
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/widget/SelectiveLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    new-instance p3, Landroidx/media2/widget/VideoView$1;

    invoke-direct {p3, p0}, Landroidx/media2/widget/VideoView$1;-><init>(Landroidx/media2/widget/VideoView;)V

    iput-object p3, p0, Landroidx/media2/widget/VideoView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    .line 225
    invoke-direct {p0, p1, p2}, Landroidx/media2/widget/VideoView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getAlbumArt(Landroidx/media2/common/MediaMetadata;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 5

    if-eqz p1, :cond_f

    const-string v0, "android.media.metadata.ALBUM_ART"

    .line 641
    invoke-virtual {p1, v0}, Landroidx/media2/common/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 642
    invoke-virtual {p1, v0}, Landroidx/media2/common/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    if-eqz p1, :cond_28

    .line 645
    invoke-static {p1}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p2

    .line 646
    new-instance v0, Landroidx/media2/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroidx/media2/widget/VideoView$4;-><init>(Landroidx/media2/widget/VideoView;)V

    invoke-virtual {p2, v0}, Landroidx/palette/graphics/Palette$Builder;->generate(Landroidx/palette/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    .line 653
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_37

    .line 655
    :cond_28
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    .line 656
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/media2/widget/R$color;->music_view_default_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 655
    invoke-virtual {p1, v0}, Landroidx/media2/widget/MusicView;->setBackgroundColor(I)V

    :goto_37
    return-object p2
.end method

.method private getString(Landroidx/media2/common/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    move-object p1, p3

    goto :goto_8

    .line 663
    :cond_4
    invoke-virtual {p1, p2}, Landroidx/media2/common/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_8
    if-nez p1, :cond_b

    goto :goto_c

    :cond_b
    move-object p3, p1

    :goto_c
    return-object p3
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Landroidx/media2/widget/VideoView;->mSelectedSubtitleTrackInfo:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/4 v1, 0x1

    .line 231
    invoke-virtual {p0, v1}, Landroidx/media2/widget/VideoView;->setFocusable(Z)V

    .line 232
    invoke-virtual {p0, v1}, Landroidx/media2/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 233
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->requestFocus()Z

    .line 235
    new-instance v2, Landroidx/media2/widget/VideoTextureView;

    invoke-direct {v2, p1}, Landroidx/media2/widget/VideoTextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/media2/widget/VideoView;->mTextureView:Landroidx/media2/widget/VideoTextureView;

    .line 236
    new-instance v2, Landroidx/media2/widget/VideoSurfaceView;

    invoke-direct {v2, p1}, Landroidx/media2/widget/VideoSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/media2/widget/VideoView;->mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

    .line 237
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mTextureView:Landroidx/media2/widget/VideoTextureView;

    iget-object v3, p0, Landroidx/media2/widget/VideoView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    invoke-virtual {v2, v3}, Landroidx/media2/widget/VideoTextureView;->setSurfaceListener(Landroidx/media2/widget/VideoViewInterface$SurfaceListener;)V

    .line 238
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

    iget-object v3, p0, Landroidx/media2/widget/VideoView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    invoke-virtual {v2, v3}, Landroidx/media2/widget/VideoSurfaceView;->setSurfaceListener(Landroidx/media2/widget/VideoViewInterface$SurfaceListener;)V

    .line 240
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mTextureView:Landroidx/media2/widget/VideoTextureView;

    invoke-virtual {p0, v2}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;)V

    .line 241
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

    invoke-virtual {p0, v2}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;)V

    .line 243
    new-instance v2, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    invoke-direct {v2}, Landroidx/media2/widget/SelectiveLayout$LayoutParams;-><init>()V

    iput-object v2, p0, Landroidx/media2/widget/VideoView;->mSelectiveLayoutParams:Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    .line 244
    iput-boolean v1, v2, Landroidx/media2/widget/SelectiveLayout$LayoutParams;->forceMatchParent:Z

    .line 246
    new-instance v2, Landroidx/media2/widget/SubtitleAnchorView;

    invoke-direct {v2, p1}, Landroidx/media2/widget/SubtitleAnchorView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/media2/widget/VideoView;->mSubtitleAnchorView:Landroidx/media2/widget/SubtitleAnchorView;

    const/4 v3, 0x0

    .line 247
    invoke-virtual {v2, v3}, Landroidx/media2/widget/SubtitleAnchorView;->setBackgroundColor(I)V

    .line 248
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mSubtitleAnchorView:Landroidx/media2/widget/SubtitleAnchorView;

    iget-object v4, p0, Landroidx/media2/widget/VideoView;->mSelectiveLayoutParams:Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    invoke-virtual {p0, v2, v4}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    new-instance v2, Landroidx/media2/widget/VideoView$2;

    invoke-direct {v2, p0}, Landroidx/media2/widget/VideoView$2;-><init>(Landroidx/media2/widget/VideoView;)V

    .line 274
    new-instance v4, Landroidx/media2/widget/SubtitleController;

    invoke-direct {v4, p1, v0, v2}, Landroidx/media2/widget/SubtitleController;-><init>(Landroid/content/Context;Landroidx/media2/widget/MediaTimeProvider;Landroidx/media2/widget/SubtitleController$Listener;)V

    iput-object v4, p0, Landroidx/media2/widget/VideoView;->mSubtitleController:Landroidx/media2/widget/SubtitleController;

    .line 275
    new-instance v0, Landroidx/media2/widget/Cea608CaptionRenderer;

    invoke-direct {v0, p1}, Landroidx/media2/widget/Cea608CaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroidx/media2/widget/SubtitleController;->registerRenderer(Landroidx/media2/widget/SubtitleController$Renderer;)V

    .line 276
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mSubtitleController:Landroidx/media2/widget/SubtitleController;

    new-instance v2, Landroidx/media2/widget/Cea708CaptionRenderer;

    invoke-direct {v2, p1}, Landroidx/media2/widget/Cea708CaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/media2/widget/SubtitleController;->registerRenderer(Landroidx/media2/widget/SubtitleController$Renderer;)V

    .line 277
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mSubtitleController:Landroidx/media2/widget/SubtitleController;

    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mSubtitleAnchorView:Landroidx/media2/widget/SubtitleAnchorView;

    invoke-virtual {v0, v2}, Landroidx/media2/widget/SubtitleController;->setAnchor(Landroidx/media2/widget/SubtitleController$Anchor;)V

    .line 279
    new-instance v0, Landroidx/media2/widget/MusicView;

    invoke-direct {v0, p1}, Landroidx/media2/widget/MusicView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    const/16 v2, 0x8

    .line 280
    invoke-virtual {v0, v2}, Landroidx/media2/widget/MusicView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    iget-object v4, p0, Landroidx/media2/widget/VideoView;->mSelectiveLayoutParams:Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    invoke-virtual {p0, v0, v4}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "http://schemas.android.com/apk/res-auto"

    if-eqz p2, :cond_95

    const-string v4, "enableControlView"

    .line 283
    invoke-interface {p2, v0, v4, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_93

    goto :goto_95

    :cond_93
    const/4 v4, 0x0

    goto :goto_96

    :cond_95
    :goto_95
    const/4 v4, 0x1

    :goto_96
    if-eqz v4, :cond_a9

    .line 287
    new-instance v4, Landroidx/media2/widget/MediaControlView;

    invoke-direct {v4, p1}, Landroidx/media2/widget/MediaControlView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    .line 288
    invoke-virtual {v4, v1}, Landroidx/media2/widget/MediaControlView;->setAttachedToVideoView(Z)V

    .line 289
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    iget-object v4, p0, Landroidx/media2/widget/VideoView;->mSelectiveLayoutParams:Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    invoke-virtual {p0, p1, v4}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a9
    if-nez p2, :cond_ad

    const/4 p1, 0x0

    goto :goto_b3

    :cond_ad
    const-string p1, "viewType"

    .line 294
    invoke-interface {p2, v0, p1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    :goto_b3
    const-string p2, "VideoView"

    if-nez p1, :cond_cf

    .line 298
    sget-boolean p1, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz p1, :cond_c0

    const-string p1, "viewType attribute is surfaceView."

    .line 299
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_c0
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mTextureView:Landroidx/media2/widget/VideoTextureView;

    invoke-virtual {p1, v2}, Landroidx/media2/widget/VideoTextureView;->setVisibility(I)V

    .line 302
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

    invoke-virtual {p1, v3}, Landroidx/media2/widget/VideoSurfaceView;->setVisibility(I)V

    .line 303
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

    iput-object p1, p0, Landroidx/media2/widget/VideoView;->mCurrentView:Landroidx/media2/widget/VideoViewInterface;

    goto :goto_e8

    :cond_cf
    if-ne p1, v1, :cond_e8

    .line 305
    sget-boolean p1, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz p1, :cond_da

    const-string p1, "viewType attribute is textureView."

    .line 306
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_da
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mTextureView:Landroidx/media2/widget/VideoTextureView;

    invoke-virtual {p1, v3}, Landroidx/media2/widget/VideoTextureView;->setVisibility(I)V

    .line 309
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

    invoke-virtual {p1, v2}, Landroidx/media2/widget/VideoSurfaceView;->setVisibility(I)V

    .line 310
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mTextureView:Landroidx/media2/widget/VideoTextureView;

    iput-object p1, p0, Landroidx/media2/widget/VideoView;->mCurrentView:Landroidx/media2/widget/VideoViewInterface;

    .line 312
    :cond_e8
    :goto_e8
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mCurrentView:Landroidx/media2/widget/VideoViewInterface;

    iput-object p1, p0, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    return-void
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 118
    invoke-super {p0, p1}, Landroidx/media2/widget/SelectiveLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-string v0, "androidx.media2.widget.VideoView"

    return-object v0
.end method

.method public getMediaControlView()Landroidx/media2/widget/MediaControlView;
    .registers 2

    .line 424
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    return-object v0
.end method

.method public getViewType()I
    .registers 2

    .line 474
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mCurrentView:Landroidx/media2/widget/VideoViewInterface;

    invoke-interface {v0}, Landroidx/media2/widget/VideoViewInterface;->getViewType()I

    move-result v0

    return v0
.end method

.method hasActualVideo()Z
    .registers 5

    .line 540
    iget v0, p0, Landroidx/media2/widget/VideoView;->mVideoTrackCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_6

    return v1

    .line 543
    :cond_6
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getVideoSize()Landroidx/media2/common/VideoSize;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->getHeight()I

    move-result v2

    if-lez v2, :cond_3f

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->getWidth()I

    move-result v2

    if-lez v2, :cond_3f

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video track count is zero, but it renders video. size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoView"

    .line 545
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3f
    const/4 v0, 0x0

    return v0
.end method

.method isCurrentItemMusic()Z
    .registers 2

    .line 553
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->hasActualVideo()Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Landroidx/media2/widget/VideoView;->mAudioTrackCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isMediaPrepared()Z
    .registers 3

    .line 534
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_15

    .line 535
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getPlayerState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 536
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getPlayerState()I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 491
    invoke-super {p0}, Landroidx/media2/widget/SelectiveLayout;->onAttachedToWindow()V

    .line 492
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_a

    .line 493
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->attachCallback()V

    :cond_a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 518
    invoke-super {p0}, Landroidx/media2/widget/SelectiveLayout;->onDetachedFromWindow()V

    .line 519
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_a

    .line 520
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->detachCallback()V

    :cond_a
    return-void
.end method

.method public bridge synthetic onVisibilityAggregated(Z)V
    .registers 2

    .line 118
    invoke-super {p0, p1}, Landroidx/media2/widget/SelectiveLayout;->onVisibilityAggregated(Z)V

    return-void
.end method

.method onVisibilityAggregatedCompat(Z)V
    .registers 3

    .line 499
    invoke-super {p0, p1}, Landroidx/media2/widget/SelectiveLayout;->onVisibilityAggregatedCompat(Z)V

    .line 500
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-nez v0, :cond_8

    return-void

    :cond_8
    if-eqz p1, :cond_10

    .line 505
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    invoke-interface {p1, v0}, Landroidx/media2/widget/VideoViewInterface;->assignSurfaceToPlayerWrapper(Landroidx/media2/widget/PlayerWrapper;)Z

    goto :goto_1c

    :cond_10
    if-eqz v0, :cond_1d

    .line 507
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->hasDisconnectedController()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1d

    .line 512
    :cond_19
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->resetPlayerSurfaceWithNull()V

    :goto_1c
    return-void

    :cond_1d
    :goto_1d
    const-string p1, "VideoView"

    const-string v0, "Surface is being destroyed, but player will not be informed as the associated media controller is disconnected."

    .line 508
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method resetPlayerSurfaceWithNull()V
    .registers 6

    const-string v0, "VideoView"

    .line 606
    :try_start_2
    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/widget/PlayerWrapper;->setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    const-wide/16 v2, 0x64

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/BaseResult;

    .line 607
    invoke-interface {v1}, Landroidx/media2/common/BaseResult;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_38

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling setSurface(null) was not successful. ResultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2d} :catch_32
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2d} :catch_30
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_38

    :catch_2e
    move-exception v1

    goto :goto_33

    :catch_30
    move-exception v1

    goto :goto_33

    :catch_32
    move-exception v1

    :goto_33
    const-string v2, "calling setSurface(null) was not successful."

    .line 613
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    :goto_38
    return-void
.end method

.method resetPlayerSurfaceWithNullAsync()V
    .registers 4

    .line 619
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/widget/PlayerWrapper;->setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 620
    new-instance v1, Landroidx/media2/widget/VideoView$3;

    invoke-direct {v1, p0, v0}, Landroidx/media2/widget/VideoView$3;-><init>(Landroidx/media2/widget/VideoView;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 634
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 620
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public setMediaController(Landroidx/media2/session/MediaController;)V
    .registers 5

    if-eqz p1, :cond_41

    .line 331
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_9

    .line 332
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->detachCallback()V

    .line 334
    :cond_9
    new-instance v0, Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/widget/VideoView$PlayerCallback;

    invoke-direct {v2, p0}, Landroidx/media2/widget/VideoView$PlayerCallback;-><init>(Landroidx/media2/widget/VideoView;)V

    invoke-direct {v0, p1, v1, v2}, Landroidx/media2/widget/PlayerWrapper;-><init>(Landroidx/media2/session/MediaController;Ljava/util/concurrent/Executor;Landroidx/media2/widget/PlayerWrapper$PlayerCallback;)V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 336
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 337
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->attachCallback()V

    .line 339
    :cond_28
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->isAggregatedVisible()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 340
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-interface {v0, v1}, Landroidx/media2/widget/VideoViewInterface;->assignSurfaceToPlayerWrapper(Landroidx/media2/widget/PlayerWrapper;)Z

    goto :goto_39

    .line 342
    :cond_36
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->resetPlayerSurfaceWithNullAsync()V

    .line 345
    :goto_39
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    if-eqz v0, :cond_40

    .line 346
    invoke-virtual {v0, p1}, Landroidx/media2/widget/MediaControlView;->setMediaControllerInternal(Landroidx/media2/session/MediaController;)V

    :cond_40
    return-void

    .line 329
    :cond_41
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "controller must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnViewTypeChangedListener(Landroidx/media2/widget/VideoView$OnViewTypeChangedListener;)V
    .registers 2

    .line 486
    iput-object p1, p0, Landroidx/media2/widget/VideoView;->mViewTypeChangedListener:Landroidx/media2/widget/VideoView$OnViewTypeChangedListener;

    return-void
.end method

.method public setPlayer(Landroidx/media2/common/SessionPlayer;)V
    .registers 5

    if-eqz p1, :cond_41

    .line 367
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_9

    .line 368
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->detachCallback()V

    .line 370
    :cond_9
    new-instance v0, Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/widget/VideoView$PlayerCallback;

    invoke-direct {v2, p0}, Landroidx/media2/widget/VideoView$PlayerCallback;-><init>(Landroidx/media2/widget/VideoView;)V

    invoke-direct {v0, p1, v1, v2}, Landroidx/media2/widget/PlayerWrapper;-><init>(Landroidx/media2/common/SessionPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/widget/PlayerWrapper$PlayerCallback;)V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 372
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 373
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->attachCallback()V

    .line 375
    :cond_28
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->isAggregatedVisible()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 376
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-interface {v0, v1}, Landroidx/media2/widget/VideoViewInterface;->assignSurfaceToPlayerWrapper(Landroidx/media2/widget/PlayerWrapper;)Z

    goto :goto_39

    .line 378
    :cond_36
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->resetPlayerSurfaceWithNullAsync()V

    .line 381
    :goto_39
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    if-eqz v0, :cond_40

    .line 382
    invoke-virtual {v0, p1}, Landroidx/media2/widget/MediaControlView;->setPlayerInternal(Landroidx/media2/common/SessionPlayer;)V

    :cond_40
    return-void

    .line 365
    :cond_41
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "player must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewType(I)V
    .registers 5

    .line 444
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    invoke-interface {v0}, Landroidx/media2/widget/VideoViewInterface;->getViewType()I

    move-result v0

    const-string v1, "VideoView"

    if-ne p1, v0, :cond_24

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewType with the same type ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is ignored."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2f

    const-string p1, "switching to TextureView"

    .line 450
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mTextureView:Landroidx/media2/widget/VideoTextureView;

    goto :goto_38

    :cond_2f
    if-nez p1, :cond_4f

    const-string p1, "switching to SurfaceView"

    .line 453
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

    .line 459
    :goto_38
    iput-object p1, p0, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    .line 460
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->isAggregatedVisible()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 461
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-interface {p1, v0}, Landroidx/media2/widget/VideoViewInterface;->assignSurfaceToPlayerWrapper(Landroidx/media2/widget/PlayerWrapper;)Z

    .line 463
    :cond_45
    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 464
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->requestLayout()V

    return-void

    .line 456
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown view type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic shouldDelayChildPressedState()Z
    .registers 2

    .line 118
    invoke-super {p0}, Landroidx/media2/widget/SelectiveLayout;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method

.method updateMusicView(Landroidx/media2/common/MediaItem;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 578
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->isCurrentItemMusic()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_4d

    .line 580
    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    invoke-virtual {v1, v0}, Landroidx/media2/widget/MusicView;->setVisibility(I)V

    .line 582
    invoke-virtual {p1}, Landroidx/media2/common/MediaItem;->getMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object p1

    .line 583
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 585
    sget v1, Landroidx/media2/widget/R$drawable;->ic_default_album_image:I

    .line 586
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 585
    invoke-direct {p0, p1, v1}, Landroidx/media2/widget/VideoView;->getAlbumArt(Landroidx/media2/common/MediaMetadata;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 587
    sget v2, Landroidx/media2/widget/R$string;->mcv2_music_title_unknown_text:I

    .line 588
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.metadata.TITLE"

    .line 587
    invoke-direct {p0, p1, v3, v2}, Landroidx/media2/widget/VideoView;->getString(Landroidx/media2/common/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 589
    sget v3, Landroidx/media2/widget/R$string;->mcv2_music_artist_unknown_text:I

    .line 590
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.media.metadata.ARTIST"

    .line 589
    invoke-direct {p0, p1, v3, v0}, Landroidx/media2/widget/VideoView;->getString(Landroidx/media2/common/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 592
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MusicView;->setAlbumDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 593
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    invoke-virtual {v0, v2}, Landroidx/media2/widget/MusicView;->setTitleText(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    invoke-virtual {v0, p1}, Landroidx/media2/widget/MusicView;->setArtistText(Ljava/lang/String;)V

    goto :goto_64

    .line 596
    :cond_4d
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MusicView;->setVisibility(I)V

    .line 597
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MusicView;->setAlbumDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 598
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MusicView;->setTitleText(Ljava/lang/String;)V

    .line 599
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MusicView;->setArtistText(Ljava/lang/String;)V

    :goto_64
    return-void
.end method

.method updateTracks(Landroidx/media2/widget/PlayerWrapper;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/widget/PlayerWrapper;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 557
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->mSubtitleTracks:Ljava/util/Map;

    const/4 v0, 0x0

    .line 558
    iput v0, p0, Landroidx/media2/widget/VideoView;->mVideoTrackCount:I

    .line 559
    iput v0, p0, Landroidx/media2/widget/VideoView;->mAudioTrackCount:I

    .line 560
    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v0, v1, :cond_4b

    .line 561
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 562
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getTrackType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c

    .line 564
    iget v1, p0, Landroidx/media2/widget/VideoView;->mVideoTrackCount:I

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/media2/widget/VideoView;->mVideoTrackCount:I

    goto :goto_48

    :cond_2c
    const/4 v5, 0x2

    if-ne v3, v5, :cond_35

    .line 566
    iget v1, p0, Landroidx/media2/widget/VideoView;->mAudioTrackCount:I

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/media2/widget/VideoView;->mAudioTrackCount:I

    goto :goto_48

    :cond_35
    if-ne v3, v2, :cond_48

    .line 568
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mSubtitleController:Landroidx/media2/widget/SubtitleController;

    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media2/widget/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroidx/media2/widget/SubtitleTrack;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 570
    iget-object v3, p0, Landroidx/media2/widget/VideoView;->mSubtitleTracks:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 574
    :cond_4b
    invoke-virtual {p1, v2}, Landroidx/media2/widget/PlayerWrapper;->getSelectedTrack(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/widget/VideoView;->mSelectedSubtitleTrackInfo:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-void
.end method
