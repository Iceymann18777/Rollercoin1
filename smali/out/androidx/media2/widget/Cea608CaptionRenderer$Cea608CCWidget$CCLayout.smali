.class Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;
.super Landroid/widget/LinearLayout;
.source "Cea608CaptionRenderer.java"

# interfaces
.implements Landroidx/media2/widget/ClosedCaptionWidget$ClosedCaptionLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CCLayout"
.end annotation


# instance fields
.field private final mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

.field final synthetic this$1:Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;


# direct methods
.method constructor <init>(Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;Landroid/content/Context;)V
    .registers 7

    .line 306
    iput-object p1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->this$1:Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;

    .line 307
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 p2, 0xf

    new-array v0, p2, [Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    .line 304
    iput-object v0, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    const v0, 0x800003

    .line 308
    invoke-virtual {p0, v0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->setGravity(I)V

    const/4 v0, 0x1

    .line 309
    invoke-virtual {p0, v0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->setOrientation(I)V

    const/4 v0, 0x0

    :goto_16
    if-ge v0, p2, :cond_30

    .line 311
    iget-object v1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    new-instance v2, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;-><init>(Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget;Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 312
    iget-object v1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    const/4 v2, -0x2

    invoke-virtual {p0, v1, v2, v2}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->addView(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_30
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 11

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    mul-int/lit8 p1, p4, 0x3

    mul-int/lit8 p2, p5, 0x4

    if-lt p1, p2, :cond_c

    .line 374
    div-int/lit8 p2, p2, 0x3

    move p1, p5

    goto :goto_f

    .line 378
    :cond_c
    div-int/lit8 p1, p1, 0x4

    move p2, p4

    :goto_f
    int-to-float p2, p2

    const p3, 0x3f666666    # 0.9f

    mul-float p2, p2, p3

    float-to-int p2, p2

    int-to-float p1, p1

    mul-float p1, p1, p3

    float-to-int p1, p1

    sub-int/2addr p4, p2

    .line 382
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p1

    .line 383
    div-int/lit8 p5, p5, 0x2

    const/4 p3, 0x0

    :goto_21
    const/16 v0, 0xf

    if-ge p3, v0, :cond_39

    .line 386
    iget-object v1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v1, v1, p3

    mul-int v2, p1, p3

    div-int/2addr v2, v0

    add-int/2addr v2, p5

    add-int v3, p4, p2

    add-int/lit8 p3, p3, 0x1

    mul-int v4, p1, p3

    div-int/2addr v4, v0

    add-int/2addr v4, p5

    invoke-virtual {v1, p4, v2, v3, v4}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->layout(IIII)V

    goto :goto_21

    :cond_39
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 341
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 343
    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->getMeasuredWidth()I

    move-result p1

    .line 344
    invoke-virtual {p0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->getMeasuredHeight()I

    move-result p2

    mul-int/lit8 v0, p1, 0x3

    mul-int/lit8 v1, p2, 0x4

    if-lt v0, v1, :cond_14

    .line 348
    div-int/lit8 p1, v1, 0x3

    goto :goto_16

    .line 350
    :cond_14
    div-int/lit8 p2, v0, 0x4

    :goto_16
    int-to-float p1, p1

    const v0, 0x3f666666    # 0.9f

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    mul-float p2, p2, v0

    float-to-int p2, p2

    const/16 v0, 0xf

    .line 355
    div-int/2addr p2, v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 356
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 358
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v1, 0x0

    :goto_2f
    if-ge v1, v0, :cond_3b

    .line 362
    iget-object v2, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3b
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xf

    if-ge v0, v1, :cond_f

    .line 319
    iget-object v1, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public setFontScale(F)V
    .registers 2

    return-void
.end method

.method update([Landroid/text/SpannableStringBuilder;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xf

    if-ge v1, v2, :cond_28

    .line 330
    aget-object v2, p1, v1

    if-eqz v2, :cond_1d

    .line 331
    iget-object v2, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 332
    iget-object v2, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setVisibility(I)V

    goto :goto_25

    .line 334
    :cond_1d
    iget-object v2, p0, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v2, v2, v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroidx/media2/widget/Cea608CaptionRenderer$Cea608CCWidget$CCLineBox;->setVisibility(I)V

    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_28
    return-void
.end method
