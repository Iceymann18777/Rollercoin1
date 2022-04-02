.class public final Lcom/google/android/exoplayer2/text/CaptionStyleCompat;
.super Ljava/lang/Object;
.source "CaptionStyleCompat.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;


# instance fields
.field public final backgroundColor:I

.field public final edgeColor:I

.field public final edgeType:I

.field public final foregroundColor:I

.field public final typeface:Landroid/graphics/Typeface;

.field public final windowColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 77
    new-instance v7, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    sput-object v7, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/graphics/Typeface;)V
    .registers 7

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p1, p0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    .line 155
    iput p2, p0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    .line 156
    iput p3, p0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->windowColor:I

    .line 157
    iput p4, p0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    .line 158
    iput p5, p0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeColor:I

    .line 159
    iput-object p6, p0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public static createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/CaptionStyleCompat;
    .registers 3

    .line 130
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 131
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->createFromCaptionStyleV21(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    move-result-object p0

    return-object p0

    .line 135
    :cond_b
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->createFromCaptionStyleV19(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    move-result-object p0

    return-object p0
.end method

.method private static createFromCaptionStyleV19(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/CaptionStyleCompat;
    .registers 9

    .line 166
    new-instance v7, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 168
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    return-object v7
.end method

.method private static createFromCaptionStyleV21(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/CaptionStyleCompat;
    .registers 9

    .line 175
    new-instance v7, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    .line 176
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_f

    :cond_b
    sget-object v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v0, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    :goto_f
    move v1, v0

    .line 177
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1d

    :cond_19
    sget-object v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v0, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    :goto_1d
    move v2, v0

    .line 178
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    goto :goto_2b

    :cond_27
    sget-object v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v0, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->windowColor:I

    :goto_2b
    move v3, v0

    .line 179
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_35

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_39

    :cond_35
    sget-object v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v0, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    :goto_39
    move v4, v0

    .line 180
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_43

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_47

    :cond_43
    sget-object v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v0, v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeColor:I

    :goto_47
    move v5, v0

    .line 181
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    return-object v7
.end method
