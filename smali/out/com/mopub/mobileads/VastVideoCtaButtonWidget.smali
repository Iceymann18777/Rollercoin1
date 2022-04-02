.class public Lcom/mopub/mobileads/VastVideoCtaButtonWidget;
.super Landroid/widget/ImageView;
.source "VastVideoCtaButtonWidget.java"


# instance fields
.field private mCtaButtonDrawable:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

.field private mHasClickthroughUrl:Z

.field private mHasCompanionAd:Z

.field private mIsVideoComplete:Z

.field private mIsVideoSkippable:Z

.field private final mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private final mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZZ)V
    .registers 7

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    iput-boolean p3, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mHasCompanionAd:Z

    .line 38
    iput-boolean p4, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mHasClickthroughUrl:Z

    .line 40
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setId(I)V

    const/high16 p3, 0x43160000    # 150.0f

    .line 42
    invoke-static {p3, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p3

    const/high16 p4, 0x42180000    # 38.0f

    .line 43
    invoke-static {p4, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p4

    const/high16 v0, 0x41800000    # 16.0f

    .line 44
    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 46
    new-instance v1, Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-direct {v1, p1}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mCtaButtonDrawable:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    .line 47
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 51
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 52
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 56
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 58
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 59
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->updateLayoutAndVisibility()V

    return-void
.end method

.method private updateLayoutAndVisibility()V
    .registers 5

    .line 93
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mHasClickthroughUrl:Z

    const/16 v1, 0x8

    if-nez v0, :cond_a

    .line 94
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    return-void

    .line 99
    :cond_a
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mIsVideoSkippable:Z

    if-nez v0, :cond_13

    const/4 v0, 0x4

    .line 100
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    return-void

    .line 105
    :cond_13
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mIsVideoComplete:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mHasCompanionAd:Z

    if-eqz v0, :cond_1f

    .line 106
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    return-void

    .line 110
    :cond_1f
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_63

    if-eq v0, v2, :cond_5d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_57

    const/4 v3, 0x3

    if-eq v0, v3, :cond_46

    .line 128
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Unrecognized screen orientation: CTA button widget defaulting to portrait layout"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_73

    .line 124
    :cond_46
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Screen orientation is deprecated ORIENTATION_SQUARE: CTA button widget defaulting to portrait layout"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_73

    .line 114
    :cond_57
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_73

    .line 117
    :cond_5d
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_73

    .line 120
    :cond_63
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Screen orientation undefined: CTA button widget defaulting to portrait layout"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    :goto_73
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method getCtaText()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mCtaButtonDrawable:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->getCtaText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasLandscapeLayoutParams()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mLandscapeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hasPortraitLayoutParams()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mPortraitLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method notifyVideoClickable()V
    .registers 2

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mIsVideoComplete:Z

    .line 88
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->updateLayoutAndVisibility()V

    return-void
.end method

.method notifyVideoComplete()V
    .registers 2

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mIsVideoSkippable:Z

    .line 82
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mIsVideoComplete:Z

    .line 83
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->updateLayoutAndVisibility()V

    return-void
.end method

.method notifyVideoSkippable()V
    .registers 2

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mIsVideoSkippable:Z

    .line 77
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->updateLayoutAndVisibility()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 66
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->updateLayoutAndVisibility()V

    return-void
.end method

.method updateCtaText(Ljava/lang/String;)V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->mCtaButtonDrawable:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->setCtaText(Ljava/lang/String;)V

    return-void
.end method
