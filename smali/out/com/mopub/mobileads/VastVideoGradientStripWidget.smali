.class public Lcom/mopub/mobileads/VastVideoGradientStripWidget;
.super Landroid/widget/ImageView;
.source "VastVideoGradientStripWidget.java"


# instance fields
.field private mHasCompanionAd:Z

.field private mIsVideoComplete:Z

.field private mVisibilityForCompanionAd:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;ZIII)V
    .registers 9

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    iput p4, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->mVisibilityForCompanionAd:I

    .line 34
    iput-boolean p3, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->mHasCompanionAd:Z

    .line 36
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    const/4 p4, 0x2

    new-array p4, p4, [I

    sget v0, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->START_COLOR:I

    const/4 v1, 0x0

    aput v0, p4, v1

    sget v0, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->END_COLOR:I

    const/4 v1, 0x1

    aput v0, p4, v1

    invoke-direct {p3, p2, p4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 39
    invoke-virtual {p0, p3}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 p3, 0x42900000    # 72.0f

    .line 43
    invoke-static {p3, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    const/4 p3, -0x1

    invoke-direct {p2, p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    invoke-virtual {p2, p5, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->updateVisibility()V

    return-void
.end method

.method private updateVisibility()V
    .registers 6

    .line 64
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->mIsVideoComplete:Z

    if-eqz v0, :cond_14

    .line 65
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->mHasCompanionAd:Z

    if-eqz v0, :cond_e

    .line 66
    iget v0, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->mVisibilityForCompanionAd:I

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    goto :goto_13

    :cond_e
    const/16 v0, 0x8

    .line 68
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    :goto_13
    return-void

    .line 74
    :cond_14
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_51

    if-eq v0, v3, :cond_4d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_49

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3a

    .line 92
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unrecognized screen orientation: do not show gradient strip widget"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    goto :goto_5f

    .line 88
    :cond_3a
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Screen orientation is deprecated ORIENTATION_SQUARE: do not show gradient strip widget"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    goto :goto_5f

    .line 78
    :cond_49
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    goto :goto_5f

    .line 81
    :cond_4d
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    goto :goto_5f

    .line 84
    :cond_51
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Screen orientation undefined: do not show gradient strip widget"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    :goto_5f
    return-void
.end method


# virtual methods
.method notifyVideoComplete()V
    .registers 2

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->mIsVideoComplete:Z

    .line 53
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->updateVisibility()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 58
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 60
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->updateVisibility()V

    return-void
.end method
