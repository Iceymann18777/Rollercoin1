.class Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;
.super Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroidx/media2/widget/ClosedCaptionWidget$ClosedCaptionLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CCLayout"
.end annotation


# instance fields
.field private final mSafeTitleAreaLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

.field final synthetic this$1:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;


# direct methods
.method constructor <init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V
    .registers 10

    .line 400
    iput-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->this$1:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;

    .line 401
    invoke-direct {p0, p1, p2}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;-><init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V

    .line 403
    new-instance v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    invoke-direct {v0, p1, p2}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;-><init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    .line 404
    new-instance p1, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3f666666    # 0.9f

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3f666666    # 0.9f

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;FFFF)V

    invoke-virtual {p0, v0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addOrUpdateViewToSafeTitleArea(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;)V
    .registers 4

    .line 411
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_e

    .line 413
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 416
    :cond_e
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public removeViewFromSafeTitleArea(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;)V
    .registers 3

    .line 420
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 5

    .line 425
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 427
    iget-object v2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    .line 428
    invoke-virtual {v2, v1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 429
    invoke-virtual {v2, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public setFontScale(F)V
    .registers 5

    .line 435
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 437
    iget-object v2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    .line 438
    invoke-virtual {v2, v1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 439
    invoke-virtual {v2, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setFontScale(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method
