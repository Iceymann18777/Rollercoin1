.class Landroidx/media2/widget/VideoTextureView;
.super Landroid/view/TextureView;
.source "VideoTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroidx/media2/widget/VideoViewInterface;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mPlayer:Landroidx/media2/widget/PlayerWrapper;

.field private mSurface:Landroid/view/Surface;

.field mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "VideoTextureView"

    const/4 v1, 0x3

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/widget/VideoTextureView;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0, p0}, Landroidx/media2/widget/VideoTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public assignSurfaceToPlayerWrapper(Landroidx/media2/widget/PlayerWrapper;)Z
    .registers 4

    .line 50
    iput-object p1, p0, Landroidx/media2/widget/VideoTextureView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz p1, :cond_23

    .line 51
    invoke-virtual {p0}, Landroidx/media2/widget/VideoTextureView;->hasAvailableSurface()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_23

    .line 55
    :cond_b
    iget-object v0, p0, Landroidx/media2/widget/VideoTextureView;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/PlayerWrapper;->setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Landroidx/media2/widget/VideoTextureView$1;

    invoke-direct {v0, p0}, Landroidx/media2/widget/VideoTextureView$1;-><init>(Landroidx/media2/widget/VideoTextureView;)V

    .line 63
    invoke-virtual {p0}, Landroidx/media2/widget/VideoTextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 55
    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x1

    return p1

    :cond_23
    :goto_23
    const/4 p1, 0x0

    return p1
.end method

.method public getViewType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasAvailableSurface()Z
    .registers 2

    .line 80
    iget-object v0, p0, Landroidx/media2/widget/VideoTextureView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected onMeasure(II)V
    .registers 10

    .line 119
    iget-object v0, p0, Landroidx/media2/widget/VideoTextureView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getVideoSize()Landroidx/media2/common/VideoSize;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->getWidth()I

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 120
    :goto_f
    iget-object v2, p0, Landroidx/media2/widget/VideoTextureView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroidx/media2/widget/PlayerWrapper;->getVideoSize()Landroidx/media2/common/VideoSize;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/VideoSize;->getHeight()I

    move-result v1

    :cond_1b
    if-eqz v0, :cond_7b

    if-nez v1, :cond_21

    goto/16 :goto_7b

    .line 132
    :cond_21
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 134
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 135
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_45

    if-ne v3, v4, :cond_45

    mul-int v2, v0, p2

    mul-int v3, p1, v1

    if-ge v2, v3, :cond_40

    .line 144
    div-int p1, v2, v1

    goto :goto_77

    :cond_40
    if-le v2, v3, :cond_77

    .line 146
    div-int p2, v3, v0

    goto :goto_77

    :cond_45
    const/high16 v5, 0x1000000

    const/high16 v6, -0x80000000

    if-ne v2, v4, :cond_56

    mul-int v1, v1, p1

    .line 151
    div-int/2addr v1, v0

    if-ne v3, v6, :cond_54

    if-le v1, p2, :cond_54

    or-int/2addr p2, v5

    goto :goto_77

    :cond_54
    move p2, v1

    goto :goto_77

    :cond_56
    if-ne v3, v4, :cond_63

    mul-int v0, v0, p2

    .line 159
    div-int/2addr v0, v1

    if-ne v2, v6, :cond_61

    if-le v0, p1, :cond_61

    or-int/2addr p1, v5

    goto :goto_77

    :cond_61
    move p1, v0

    goto :goto_77

    :cond_63
    if-ne v3, v6, :cond_6b

    if-le v1, p2, :cond_6b

    mul-int v3, p2, v0

    .line 171
    div-int/2addr v3, v1

    goto :goto_6d

    :cond_6b
    move v3, v0

    move p2, v1

    :goto_6d
    if-ne v2, v6, :cond_76

    if-le v3, p1, :cond_76

    mul-int v1, v1, p1

    .line 176
    div-int p2, v1, v0

    goto :goto_77

    :cond_76
    move p1, v3

    .line 180
    :cond_77
    :goto_77
    invoke-virtual {p0, p1, p2}, Landroidx/media2/widget/VideoTextureView;->setMeasuredDimension(II)V

    return-void

    .line 126
    :cond_7b
    :goto_7b
    invoke-static {v0, p1}, Landroidx/media2/widget/VideoTextureView;->getDefaultSize(II)I

    move-result p1

    .line 127
    invoke-static {v1, p2}, Landroidx/media2/widget/VideoTextureView;->getDefaultSize(II)I

    move-result p2

    .line 128
    invoke-virtual {p0, p1, p2}, Landroidx/media2/widget/VideoTextureView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 5

    .line 89
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Landroidx/media2/widget/VideoTextureView;->mSurface:Landroid/view/Surface;

    .line 90
    iget-object p1, p0, Landroidx/media2/widget/VideoTextureView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    if-eqz p1, :cond_e

    .line 91
    invoke-interface {p1, p0, p2, p3}, Landroidx/media2/widget/VideoViewInterface$SurfaceListener;->onSurfaceCreated(Landroid/view/View;II)V

    :cond_e
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    .line 110
    iget-object p1, p0, Landroidx/media2/widget/VideoTextureView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    if-eqz p1, :cond_7

    .line 111
    invoke-interface {p1, p0}, Landroidx/media2/widget/VideoViewInterface$SurfaceListener;->onSurfaceDestroyed(Landroid/view/View;)V

    :cond_7
    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Landroidx/media2/widget/VideoTextureView;->mSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 97
    iget-object p1, p0, Landroidx/media2/widget/VideoTextureView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    if-eqz p1, :cond_7

    .line 98
    invoke-interface {p1, p0, p2, p3}, Landroidx/media2/widget/VideoViewInterface$SurfaceListener;->onSurfaceChanged(Landroid/view/View;II)V

    :cond_7
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

.method public setSurfaceListener(Landroidx/media2/widget/VideoViewInterface$SurfaceListener;)V
    .registers 2

    .line 70
    iput-object p1, p0, Landroidx/media2/widget/VideoTextureView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    return-void
.end method
