.class Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
.super Landroid/widget/RelativeLayout;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CCWindowLayout"
.end annotation


# instance fields
.field private final mBuilder:Landroid/text/SpannableStringBuilder;

.field private mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

.field private mCCView:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;

.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private mCaptionWindowId:I

.field private final mCharacterStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mFontScale:F

.field private mLastCaptionLayoutHeight:I

.field private mLastCaptionLayoutWidth:I

.field private mRow:I

.field private mRowLimit:I

.field private mTextSize:F

.field private mWidestChar:Ljava/lang/String;

.field final synthetic this$1:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;


# direct methods
.method constructor <init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    .line 773
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;-><init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x0

    .line 777
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;-><init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 780
    iput-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->this$1:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;

    .line 781
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 761
    iput p3, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    .line 762
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p3, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 763
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    const/4 p3, -0x1

    .line 765
    iput p3, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mRow:I

    .line 784
    new-instance p3, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    invoke-direct {p3, p1, p2}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;-><init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V

    iput-object p3, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    .line 785
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 787
    iget-object p3, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    invoke-virtual {p0, p3, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "captioning"

    .line 791
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    .line 792
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p2

    iput p2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mFontScale:F

    .line 793
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 794
    iget-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    invoke-direct {p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    return-void
.end method

.method private getScreenColumnCount()I
    .registers 2

    const/16 v0, 0x2a

    return v0
.end method

.method private updateText(Ljava/lang/String;Z)V
    .registers 7

    if-nez p2, :cond_7

    .line 1151
    iget-object p2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->clear()V

    :cond_7
    if-eqz p1, :cond_38

    .line 1153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_38

    .line 1154
    iget-object p2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 1155
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1156
    iget-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/CharacterStyle;

    .line 1157
    iget-object v1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_20

    .line 1161
    :cond_38
    iget-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1165
    array-length v0, p1

    iget v1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1166
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    array-length v2, p1

    .line 1165
    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1167
    iget-object p2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p2, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1170
    iget-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    :goto_6f
    const/16 v0, 0x20

    if-gt p2, p1, :cond_7e

    .line 1172
    iget-object v2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-gt v2, v0, :cond_7e

    add-int/lit8 p2, p2, 0x1

    goto :goto_6f

    :cond_7e
    move v2, p1

    :goto_7f
    if-lt v2, p2, :cond_8c

    .line 1175
    iget-object v3, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-gt v3, v0, :cond_8c

    add-int/lit8 v2, v2, -0x1

    goto :goto_7f

    :cond_8c
    if-nez p2, :cond_98

    if-ne v2, p1, :cond_98

    .line 1179
    iget-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    iget-object p2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b5

    .line 1181
    :cond_98
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1182
    iget-object v3, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-ge v2, p1, :cond_ab

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 1184
    invoke-virtual {v0, v2, p1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_ab
    if-lez p2, :cond_b0

    .line 1187
    invoke-virtual {v0, v1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1189
    :cond_b0
    iget-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    :goto_b5
    return-void
.end method

.method private updateTextSize()V
    .registers 9

    .line 1096
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    if-nez v0, :cond_5

    return-void

    .line 1099
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1100
    invoke-direct {p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_19

    .line 1102
    iget-object v3, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1104
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1105
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1106
    iget-object v2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    :goto_2e
    cmpg-float v4, v2, v3

    if-gez v4, :cond_57

    add-float v4, v2, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 1111
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1112
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 1113
    iget-object v6, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-virtual {v6}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v6, v6, v7

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v5, v6, v5

    if-lez v5, :cond_54

    add-float/2addr v4, v7

    move v2, v4

    goto :goto_2e

    :cond_54
    sub-float/2addr v4, v7

    move v3, v4

    goto :goto_2e

    .line 1119
    :cond_57
    iget v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mFontScale:F

    mul-float v3, v3, v0

    iput v3, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mTextSize:F

    .line 1120
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    invoke-virtual {v0, v3}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setTextSize(F)V

    return-void
.end method

.method private updateWidestChar()V
    .registers 9

    .line 1080
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1081
    iget-object v1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string v1, "ISO-8859-1"

    .line 1082
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_17
    const/16 v5, 0x100

    if-ge v4, v5, :cond_34

    .line 1085
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [B

    int-to-byte v7, v4

    aput-byte v7, v6, v2

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1086
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpg-float v7, v3, v6

    if-gez v7, :cond_31

    .line 1089
    iput-object v5, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    move v3, v6

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 1092
    :cond_34
    invoke-direct {p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    return-void
.end method


# virtual methods
.method public appendText(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 1141
    invoke-direct {p0, p1, v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->updateText(Ljava/lang/String;Z)V

    return-void
.end method

.method public clear()V
    .registers 1

    .line 817
    invoke-virtual {p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->clearText()V

    .line 818
    invoke-virtual {p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->hide()V

    return-void
.end method

.method public clearText()V
    .registers 3

    .line 1145
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1146
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getCaptionWindowId()I
    .registers 2

    .line 809
    iget v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    return v0
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x4

    .line 827
    invoke-virtual {p0, v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setVisibility(I)V

    .line 828
    invoke-virtual {p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->requestLayout()V

    return-void
.end method

.method public initWindow(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;Landroidx/media2/widget/Cea708CCParser$CaptionWindow;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 941
    iget-object v3, v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    if-eq v3, v1, :cond_17

    if-eqz v3, :cond_f

    .line 943
    invoke-virtual {v3, v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 945
    :cond_f
    iput-object v1, v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    .line 946
    invoke-virtual {v1, v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 947
    invoke-direct/range {p0 .. p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    .line 952
    :cond_17
    iget v1, v2, Landroidx/media2/widget/Cea708CCParser$CaptionWindow;->anchorVertical:I

    int-to-float v1, v1

    iget-boolean v3, v2, Landroidx/media2/widget/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    const/16 v4, 0x63

    if-eqz v3, :cond_23

    const/16 v3, 0x63

    goto :goto_25

    :cond_23
    const/16 v3, 0x4a

    :goto_25
    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 957
    iget v3, v2, Landroidx/media2/widget/Cea708CCParser$CaptionWindow;->anchorHorizontal:I

    int-to-float v3, v3

    iget-boolean v5, v2, Landroidx/media2/widget/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    if-eqz v5, :cond_2f

    goto :goto_31

    :cond_2f
    const/16 v4, 0xd1

    :goto_31
    int-to-float v4, v4

    div-float/2addr v3, v4

    const-string v4, "CCWindowLayout"

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v1, v5

    if-ltz v7, :cond_40

    cmpl-float v7, v1, v6

    if-lez v7, :cond_5c

    .line 964
    :cond_40
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The vertical position of the anchor point should be at the range of 0 and 1 but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_5c
    cmpg-float v7, v3, v5

    if-ltz v7, :cond_64

    cmpl-float v7, v3, v6

    if-lez v7, :cond_80

    .line 969
    :cond_64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The horizontal position of the anchor point should be at the range of 0 and 1 but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_80
    const/16 v4, 0x11

    .line 974
    iget v7, v2, Landroidx/media2/widget/Cea708CCParser$CaptionWindow;->anchorId:I

    const/4 v8, 0x3

    rem-int/2addr v7, v8

    .line 975
    iget v9, v2, Landroidx/media2/widget/Cea708CCParser$CaptionWindow;->anchorId:I

    div-int/2addr v9, v8

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v7, :cond_115

    if-eq v7, v11, :cond_9e

    if-eq v7, v10, :cond_97

    const/16 v16, 0x0

    :goto_93
    const/high16 v17, 0x3f800000    # 1.0f

    goto/16 :goto_121

    :cond_97
    const/4 v4, 0x5

    move/from16 v17, v3

    const/16 v16, 0x0

    goto/16 :goto_121

    :cond_9e
    sub-float v4, v6, v3

    .line 987
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 991
    iget v7, v2, Landroidx/media2/widget/Cea708CCParser$CaptionWindow;->columnCount:I

    add-int/2addr v7, v11

    .line 992
    invoke-direct/range {p0 .. p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    move-result v12

    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 993
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    :goto_b5
    if-ge v13, v7, :cond_bf

    .line 995
    iget-object v14, v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_b5

    .line 997
    :cond_bf
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 998
    iget-object v13, v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v13}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 999
    iget v13, v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mTextSize:F

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1000
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1001
    iget-object v12, v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-virtual {v12}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->getWidth()I

    move-result v12

    if-lez v12, :cond_f3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v7, v12

    iget-object v12, v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    .line 1002
    invoke-virtual {v12}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3f4ccccd    # 0.8f

    mul-float v12, v12, v13

    div-float/2addr v7, v12

    goto :goto_f4

    :cond_f3
    const/4 v7, 0x0

    :goto_f4
    cmpl-float v12, v7, v5

    if-lez v12, :cond_105

    cmpg-float v12, v7, v3

    if-gez v12, :cond_105

    .line 1009
    iget-object v4, v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v12}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    sub-float/2addr v3, v7

    goto :goto_11c

    .line 1022
    :cond_105
    iget-object v7, v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v7, v8}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    sub-float v7, v3, v4

    add-float/2addr v3, v4

    move/from16 v17, v3

    move/from16 v16, v7

    const/4 v4, 0x1

    goto :goto_121

    .line 983
    :cond_115
    iget-object v4, v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v7}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    :goto_11c
    move/from16 v16, v3

    const/4 v4, 0x3

    goto/16 :goto_93

    :goto_121
    if-eqz v9, :cond_13e

    if-eq v9, v11, :cond_130

    if-eq v9, v10, :cond_12b

    const/4 v14, 0x0

    :goto_128
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_142

    :cond_12b
    or-int/lit8 v4, v4, 0x50

    move v15, v1

    const/4 v14, 0x0

    goto :goto_142

    :cond_130
    or-int/lit8 v4, v4, 0x10

    sub-float/2addr v6, v1

    .line 1044
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v5, v1, v3

    add-float v6, v1, v3

    move v14, v5

    move v15, v6

    goto :goto_142

    :cond_13e
    or-int/lit8 v4, v4, 0x30

    move v14, v1

    goto :goto_128

    .line 1053
    :goto_142
    iget-object v1, v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    new-instance v3, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget-object v13, v0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;FFFF)V

    invoke-virtual {v1, v0, v3}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->addOrUpdateViewToSafeTitleArea(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;)V

    .line 1056
    iget v1, v2, Landroidx/media2/widget/Cea708CCParser$CaptionWindow;->id:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setCaptionWindowId(I)V

    .line 1057
    iget v1, v2, Landroidx/media2/widget/Cea708CCParser$CaptionWindow;->rowCount:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setRowLimit(I)V

    .line 1058
    invoke-virtual {v0, v4}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setGravity(I)V

    .line 1059
    iget-boolean v1, v2, Landroidx/media2/widget/Cea708CCParser$CaptionWindow;->visible:Z

    if-eqz v1, :cond_167

    .line 1060
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->show()V

    goto :goto_16a

    .line 1062
    :cond_167
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->hide()V

    :goto_16a
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1072
    iget p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    if-ne p4, p1, :cond_a

    iget p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    if-eq p5, p1, :cond_11

    .line 1073
    :cond_a
    iput p4, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    .line 1074
    iput p5, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    .line 1075
    invoke-direct {p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    :cond_11
    return-void
.end method

.method public removeFromCaptionView()V
    .registers 2

    .line 1129
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    if-eqz v0, :cond_f

    .line 1130
    invoke-virtual {v0, p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->removeViewFromSafeTitleArea(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;)V

    .line 1131
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-virtual {v0, p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    .line 1132
    iput-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    :cond_f
    return-void
.end method

.method public sendBuffer(Ljava/lang/String;)V
    .registers 2

    .line 878
    invoke-virtual {p0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    return-void
.end method

.method public sendControl(C)V
    .registers 2

    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 3

    .line 799
    iput-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 800
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCCView:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;

    invoke-virtual {v0, p1}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    return-void
.end method

.method public setCaptionWindowId(I)V
    .registers 2

    .line 813
    iput p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    return-void
.end method

.method public setFontScale(F)V
    .registers 2

    .line 804
    iput p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mFontScale:F

    .line 805
    invoke-direct {p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    return-void
.end method

.method public setPenAttr(Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;)V
    .registers 6

    .line 832
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 833
    iget-boolean v0, p1, Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;->italic:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_14

    .line 834
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_14
    iget-boolean v0, p1, Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;->underline:Z

    if-eqz v0, :cond_22

    .line 837
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_22
    iget v0, p1, Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;->penSize:I

    if-eqz v0, :cond_36

    if-eq v0, v1, :cond_29

    goto :goto_42

    .line 844
    :cond_29
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 841
    :cond_36
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    :goto_42
    iget p1, p1, Landroidx/media2/widget/Cea708CCParser$CaptionPenAttr;->penOffset:I

    if-eqz p1, :cond_54

    if-eq p1, v1, :cond_49

    goto :goto_5e

    .line 852
    :cond_49
    iget-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v0, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 849
    :cond_54
    iget-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v0, Landroid/text/style/SubscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5e
    return-void
.end method

.method public setPenColor(Landroidx/media2/widget/Cea708CCParser$CaptionPenColor;)V
    .registers 2

    return-void
.end method

.method public setPenLocation(II)V
    .registers 4

    .line 864
    iget p2, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mRow:I

    if-ltz p2, :cond_e

    :goto_4
    if-ge p2, p1, :cond_e

    const-string v0, "\n"

    .line 866
    invoke-virtual {p0, v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 869
    :cond_e
    iput p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mRow:I

    return-void
.end method

.method public setRowLimit(I)V
    .registers 3

    if-ltz p1, :cond_5

    .line 1197
    iput p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    return-void

    .line 1195
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A rowLimit should have a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWindowAttr(Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;)V
    .registers 2

    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x0

    .line 822
    invoke-virtual {p0, v0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setVisibility(I)V

    .line 823
    invoke-virtual {p0}, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->requestLayout()V

    return-void
.end method
