.class public final Lcom/google/android/exoplayer2/ui/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"


# instance fields
.field private applyEmbeddedFontSizes:Z

.field private applyEmbeddedStyles:Z

.field private bottomPaddingFraction:F

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final painters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/SubtitlePainter;",
            ">;"
        }
    .end annotation
.end field

.field private style:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

.field private textSize:F

.field private textSizeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSizeType:I

    const p1, 0x3d5a511a    # 0.0533f

    .line 72
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSize:F

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    .line 74
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    .line 75
    sget-object p1, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->style:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    const p1, 0x3da3d70a    # 0.08f

    .line 76
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    return-void
.end method

.method private getUserCaptionFontScaleV19()F
    .registers 3

    .line 332
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 333
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    return v0
.end method

.method private getUserCaptionStyleV19()Lcom/google/android/exoplayer2/text/CaptionStyleCompat;
    .registers 3

    .line 339
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 340
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    move-result-object v0

    return-object v0
.end method

.method private resolveCueTextSize(Lcom/google/android/exoplayer2/text/Cue;II)F
    .registers 7

    .line 296
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1e

    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    const v2, -0x800001

    cmpl-float v0, v0, v2

    if-nez v0, :cond_11

    goto :goto_1e

    .line 299
    :cond_11
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    iget p1, p1, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    .line 300
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->resolveTextSize(IFII)F

    move-result p1

    .line 301
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    :cond_1e
    :goto_1e
    return v1
.end method

.method private resolveTextSize(IFII)F
    .registers 5

    if-eqz p1, :cond_11

    const/4 p4, 0x1

    if-eq p1, p4, :cond_d

    const/4 p3, 0x2

    if-eq p1, p3, :cond_c

    const p1, -0x800001

    return p1

    :cond_c
    return p2

    :cond_d
    int-to-float p1, p3

    :goto_e
    mul-float p2, p2, p1

    return p2

    :cond_11
    int-to-float p1, p4

    goto :goto_e
.end method

.method private setTextSize(IF)V
    .registers 4

    .line 163
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSizeType:I

    if-ne v0, p1, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_b

    return-void

    .line 166
    :cond_b
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSizeType:I

    .line 167
    iput p2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSize:F

    .line 169
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 26

    move-object/from16 v0, p0

    .line 249
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    if-eqz v1, :cond_93

    .line 250
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_93

    .line 254
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getHeight()I

    move-result v2

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingLeft()I

    move-result v15

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingTop()I

    move-result v14

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingRight()I

    move-result v4

    sub-int v13, v3, v4

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingBottom()I

    move-result v3

    sub-int v12, v2, v3

    if-le v12, v14, :cond_93

    if-gt v13, v15, :cond_30

    goto/16 :goto_93

    :cond_30
    sub-int v11, v12, v14

    .line 267
    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSizeType:I

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->textSize:F

    .line 268
    invoke-direct {v0, v3, v4, v2, v11}, Lcom/google/android/exoplayer2/ui/SubtitleView;->resolveTextSize(IFII)F

    move-result v16

    const/4 v3, 0x0

    cmpg-float v3, v16, v3

    if-gtz v3, :cond_40

    return-void

    .line 274
    :cond_40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_46
    if-ge v9, v10, :cond_93

    .line 276
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/exoplayer2/text/Cue;

    .line 277
    invoke-direct {v0, v4, v2, v11}, Lcom/google/android/exoplayer2/ui/SubtitleView;->resolveCueTextSize(Lcom/google/android/exoplayer2/text/Cue;II)F

    move-result v17

    .line 278
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/SubtitlePainter;

    .line 279
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->style:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    move/from16 v18, v8

    move/from16 v8, v16

    move/from16 v19, v9

    move/from16 v9, v17

    move/from16 v17, v10

    move/from16 v10, v18

    move/from16 v18, v11

    move-object/from16 v11, p1

    move/from16 v20, v12

    move v12, v15

    move/from16 v21, v13

    move v13, v14

    move/from16 v22, v14

    move/from16 v14, v21

    move/from16 v23, v15

    move/from16 v15, v20

    invoke-virtual/range {v3 .. v15}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->draw(Lcom/google/android/exoplayer2/text/Cue;ZZLcom/google/android/exoplayer2/text/CaptionStyleCompat;FFFLandroid/graphics/Canvas;IIII)V

    add-int/lit8 v9, v19, 0x1

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v20

    move/from16 v13, v21

    move/from16 v14, v22

    move/from16 v15, v23

    goto :goto_46

    :cond_93
    :goto_93
    return-void
.end method

.method public setApplyEmbeddedFontSizes(Z)V
    .registers 3

    .line 196
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 199
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    .line 201
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .registers 3

    .line 179
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    if-ne v0, p1, :cond_9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-ne v0, p1, :cond_9

    return-void

    .line 183
    :cond_9
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    .line 184
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    .line 186
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    return-void
.end method

.method public setBottomPaddingFraction(F)V
    .registers 3

    .line 239
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 242
    :cond_7
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    .line 244
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    if-ne v0, p1, :cond_5

    return-void

    .line 93
    :cond_5
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    if-nez p1, :cond_b

    const/4 p1, 0x0

    goto :goto_f

    .line 95
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 96
    :goto_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_26

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    new-instance v1, Lcom/google/android/exoplayer2/ui/SubtitlePainter;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 100
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    return-void
.end method

.method public setFractionalTextSize(F)V
    .registers 3

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(FZ)V

    return-void
.end method

.method public setFractionalTextSize(FZ)V
    .registers 3

    .line 155
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setTextSize(IF)V

    return-void
.end method

.method public setStyle(Lcom/google/android/exoplayer2/text/CaptionStyleCompat;)V
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->style:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    if-ne v0, p1, :cond_5

    return-void

    .line 224
    :cond_5
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->style:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    .line 226
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    return-void
.end method
