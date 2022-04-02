.class Landroidx/media2/widget/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBackgroundColor:I

.field private final mCornerRadius:F

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mForegroundColor:I

.field private mHasMeasurements:Z

.field private mInnerPaddingX:I

.field private mLastMeasuredWidth:I

.field private mLayout:Landroid/text/StaticLayout;

.field private final mLineBounds:Landroid/graphics/RectF;

.field private final mOutlineWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mShadowOffsetX:F

.field private final mShadowOffsetY:F

.field private final mShadowRadius:F

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private final mText:Landroid/text/SpannableStringBuilder;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/media2/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 59
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Landroidx/media2/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 74
    iput p1, p0, Landroidx/media2/widget/SubtitleView;->mSpacingMult:F

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Landroidx/media2/widget/SubtitleView;->mSpacingAdd:F

    const/4 p1, 0x0

    .line 76
    iput p1, p0, Landroidx/media2/widget/SubtitleView;->mInnerPaddingX:I

    .line 91
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 92
    sget p2, Landroidx/media2/widget/R$dimen;->subtitle_corner_radius:I

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/media2/widget/SubtitleView;->mCornerRadius:F

    .line 94
    sget p2, Landroidx/media2/widget/R$dimen;->subtitle_outline_width:I

    .line 95
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/media2/widget/SubtitleView;->mOutlineWidth:F

    .line 96
    sget p2, Landroidx/media2/widget/R$dimen;->subtitle_shadow_radius:I

    .line 97
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/media2/widget/SubtitleView;->mShadowRadius:F

    .line 98
    sget p2, Landroidx/media2/widget/R$dimen;->subtitle_shadow_offset:I

    .line 99
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/media2/widget/SubtitleView;->mShadowOffsetX:F

    .line 100
    iput p1, p0, Landroidx/media2/widget/SubtitleView;->mShadowOffsetY:F

    .line 102
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    const/4 p2, 0x1

    .line 103
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 104
    iget-object p1, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 106
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/media2/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 107
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private computeMeasurements(I)Z
    .registers 14

    .line 214
    iget-boolean v0, p0, Landroidx/media2/widget/SubtitleView;->mHasMeasurements:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget v0, p0, Landroidx/media2/widget/SubtitleView;->mLastMeasuredWidth:I

    if-ne p1, v0, :cond_a

    return v1

    .line 219
    :cond_a
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Landroidx/media2/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int v7, p1, v0

    const/4 p1, 0x0

    if-gtz v7, :cond_1e

    return p1

    .line 228
    :cond_1e
    iput-boolean v1, p0, Landroidx/media2/widget/SubtitleView;->mHasMeasurements:Z

    .line 229
    iput v7, p0, Landroidx/media2/widget/SubtitleView;->mLastMeasuredWidth:I

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_52

    .line 231
    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    .line 232
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget-object v3, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, p1, v2, v3, v7}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 233
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget v0, p0, Landroidx/media2/widget/SubtitleView;->mSpacingAdd:F

    iget v2, p0, Landroidx/media2/widget/SubtitleView;->mSpacingMult:F

    .line 234
    invoke-virtual {p1, v0, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_4b

    .line 236
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    .line 238
    :cond_4b
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    goto :goto_6a

    .line 240
    :cond_52
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v3, p0, Landroidx/media2/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iget-object v6, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Landroidx/media2/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    iget v9, p0, Landroidx/media2/widget/SubtitleView;->mSpacingMult:F

    iget v10, p0, Landroidx/media2/widget/SubtitleView;->mSpacingAdd:F

    const/4 v11, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Landroidx/media2/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    :goto_6a
    return v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .line 248
    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_5

    return-void

    .line 253
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 254
    iget v2, p0, Landroidx/media2/widget/SubtitleView;->mInnerPaddingX:I

    .line 255
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    .line 258
    iget-object v4, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 259
    iget-object v5, p0, Landroidx/media2/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 260
    iget-object v6, p0, Landroidx/media2/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 262
    iget v7, p0, Landroidx/media2/widget/SubtitleView;->mBackgroundColor:I

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_60

    .line 263
    iget v7, p0, Landroidx/media2/widget/SubtitleView;->mCornerRadius:F

    .line 264
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    int-to-float v9, v9

    .line 266
    iget v10, p0, Landroidx/media2/widget/SubtitleView;->mBackgroundColor:I

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v10, 0x0

    :goto_3e
    if-ge v10, v3, :cond_60

    .line 270
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v2

    sub-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->left:F

    .line 271
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v11

    add-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->right:F

    .line 272
    iput v9, v6, Landroid/graphics/RectF;->top:F

    .line 273
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, v6, Landroid/graphics/RectF;->bottom:F

    .line 274
    iget v9, v6, Landroid/graphics/RectF;->bottom:F

    .line 276
    invoke-virtual {p1, v6, v7, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3e

    .line 280
    :cond_60
    iget v2, p0, Landroidx/media2/widget/SubtitleView;->mEdgeType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7d

    .line 282
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 283
    iget v2, p0, Landroidx/media2/widget/SubtitleView;->mOutlineWidth:F

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 284
    iget v2, p0, Landroidx/media2/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 287
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_be

    :cond_7d
    const/4 v5, 0x2

    if-ne v2, v5, :cond_8c

    .line 290
    iget v2, p0, Landroidx/media2/widget/SubtitleView;->mShadowRadius:F

    iget v3, p0, Landroidx/media2/widget/SubtitleView;->mShadowOffsetX:F

    iget v5, p0, Landroidx/media2/widget/SubtitleView;->mShadowOffsetY:F

    iget v6, p0, Landroidx/media2/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_be

    :cond_8c
    const/4 v5, 0x3

    if-eq v2, v5, :cond_92

    const/4 v6, 0x4

    if-ne v2, v6, :cond_be

    :cond_92
    if-ne v2, v5, :cond_95

    goto :goto_96

    :cond_95
    const/4 v3, 0x0

    :goto_96
    const/4 v2, -0x1

    if-eqz v3, :cond_9b

    const/4 v5, -0x1

    goto :goto_9d

    .line 294
    :cond_9b
    iget v5, p0, Landroidx/media2/widget/SubtitleView;->mEdgeColor:I

    :goto_9d
    if-eqz v3, :cond_a1

    .line 295
    iget v2, p0, Landroidx/media2/widget/SubtitleView;->mEdgeColor:I

    .line 296
    :cond_a1
    iget v3, p0, Landroidx/media2/widget/SubtitleView;->mShadowRadius:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    .line 298
    iget v6, p0, Landroidx/media2/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 300
    iget v6, p0, Landroidx/media2/widget/SubtitleView;->mShadowRadius:F

    neg-float v7, v3

    invoke-virtual {v4, v6, v7, v7, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 302
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 304
    iget v5, p0, Landroidx/media2/widget/SubtitleView;->mShadowRadius:F

    invoke-virtual {v4, v5, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 307
    :cond_be
    :goto_be
    iget v2, p0, Landroidx/media2/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 310
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 312
    invoke-virtual {v4, v0, v0, v0, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 313
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    sub-int/2addr p4, p2

    .line 210
    invoke-direct {p0, p4}, Landroidx/media2/widget/SubtitleView;->computeMeasurements(I)Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 193
    invoke-direct {p0, p1}, Landroidx/media2/widget/SubtitleView;->computeMeasurements(I)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 194
    iget-object p1, p0, Landroidx/media2/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 197
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Landroidx/media2/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 198
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    .line 199
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 200
    invoke-virtual {p0, v0, p1}, Landroidx/media2/widget/SubtitleView;->setMeasuredDimension(II)V

    goto :goto_36

    :cond_31
    const/high16 p1, 0x1000000

    .line 202
    invoke-virtual {p0, p1, p1}, Landroidx/media2/widget/SubtitleView;->setMeasuredDimension(II)V

    :goto_36
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .registers 3

    .line 179
    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_f

    .line 180
    iput-object p1, p0, Landroidx/media2/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    const/4 p1, 0x0

    .line 182
    iput-boolean p1, p0, Landroidx/media2/widget/SubtitleView;->mHasMeasurements:Z

    .line 184
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->requestLayout()V

    .line 185
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    :cond_f
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2

    .line 133
    iput p1, p0, Landroidx/media2/widget/SubtitleView;->mBackgroundColor:I

    .line 135
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setEdgeColor(I)V
    .registers 2

    .line 145
    iput p1, p0, Landroidx/media2/widget/SubtitleView;->mEdgeColor:I

    .line 147
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setEdgeType(I)V
    .registers 2

    .line 139
    iput p1, p0, Landroidx/media2/widget/SubtitleView;->mEdgeType:I

    .line 141
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setForegroundColor(I)V
    .registers 2

    .line 126
    iput p1, p0, Landroidx/media2/widget/SubtitleView;->mForegroundColor:I

    .line 128
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 116
    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 117
    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Landroidx/media2/widget/SubtitleView;->mHasMeasurements:Z

    .line 121
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->requestLayout()V

    .line 122
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .registers 3

    .line 156
    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_22

    .line 157
    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v0, 0x3e000000    # 0.125f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 158
    iput p1, p0, Landroidx/media2/widget/SubtitleView;->mInnerPaddingX:I

    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Landroidx/media2/widget/SubtitleView;->mHasMeasurements:Z

    .line 162
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->requestLayout()V

    .line 163
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    :cond_22
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    if-eqz p1, :cond_1c

    .line 168
    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 169
    iget-object v0, p0, Landroidx/media2/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Landroidx/media2/widget/SubtitleView;->mHasMeasurements:Z

    .line 173
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->requestLayout()V

    .line 174
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleView;->invalidate()V

    :cond_1c
    return-void
.end method
