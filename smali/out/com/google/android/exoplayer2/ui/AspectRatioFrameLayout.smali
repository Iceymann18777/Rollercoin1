.class public final Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;,
        Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;
    }
.end annotation


# instance fields
.field private aspectRatioListener:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;

.field private final aspectRatioUpdateDispatcher:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

.field private resizeMode:I

.field private videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    if-eqz p2, :cond_23

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/google/android/exoplayer2/ui/R$styleable;->AspectRatioFrameLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 117
    :try_start_12
    sget p2, Lcom/google/android/exoplayer2/ui/R$styleable;->AspectRatioFrameLayout_resize_mode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    .line 119
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_23

    :catchall_1e
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    throw p2

    .line 122
    :cond_23
    :goto_23
    new-instance p1, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;-><init>(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->aspectRatioUpdateDispatcher:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->aspectRatioListener:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;

    return-object p0
.end method


# virtual methods
.method public getResizeMode()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    return v0
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 166
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 167
    iget p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_b

    return-void

    .line 172
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result p1

    .line 173
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, p1

    int-to-float v2, v0

    div-float v3, v1, v2

    .line 175
    iget v4, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    .line 176
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3c23d70a    # 0.01f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_31

    .line 178
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->aspectRatioUpdateDispatcher:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    iget p2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v3, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->scheduleUpdate(FFZ)V

    return-void

    .line 182
    :cond_31
    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    const/4 v6, 0x1

    if-eqz v5, :cond_54

    if-eq v5, v6, :cond_4f

    const/4 v7, 0x2

    if-eq v5, v7, :cond_49

    const/4 v7, 0x4

    if-eq v5, v7, :cond_3f

    goto :goto_5e

    :cond_3f
    cmpl-float p2, v4, p2

    if-lez p2, :cond_46

    .line 191
    iget p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    goto :goto_4b

    .line 193
    :cond_46
    iget p2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    goto :goto_51

    .line 187
    :cond_49
    iget p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    :goto_4b
    mul-float v2, v2, p1

    float-to-int p1, v2

    goto :goto_5e

    .line 184
    :cond_4f
    iget p2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    :goto_51
    div-float/2addr v1, p2

    float-to-int v0, v1

    goto :goto_5e

    :cond_54
    cmpl-float p2, v4, p2

    if-lez p2, :cond_5b

    .line 198
    iget p2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    goto :goto_51

    .line 200
    :cond_5b
    iget p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    goto :goto_4b

    .line 208
    :goto_5e
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->aspectRatioUpdateDispatcher:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    invoke-virtual {p2, v1, v3, v6}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->scheduleUpdate(FFZ)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 209
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 210
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 209
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setAspectRatio(F)V
    .registers 3

    .line 131
    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 132
    iput p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    .line 133
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    :cond_b
    return-void
.end method

.method public setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->aspectRatioListener:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;

    return-void
.end method

.method public setResizeMode(I)V
    .registers 3

    .line 158
    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    if-eq v0, p1, :cond_9

    .line 159
    iput p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    .line 160
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    :cond_9
    return-void
.end method
