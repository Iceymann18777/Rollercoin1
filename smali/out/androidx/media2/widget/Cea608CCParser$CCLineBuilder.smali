.class Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;
.super Ljava/lang/Object;
.source "Cea608CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLineBuilder"
.end annotation


# instance fields
.field private final mDisplayChars:Ljava/lang/StringBuilder;

.field private final mMidRowStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

.field private final mPACStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    new-array p1, p1, [Landroidx/media2/widget/Cea608CCParser$StyleCode;

    iput-object p1, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    .line 446
    iget-object p1, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    new-array p1, p1, [Landroidx/media2/widget/Cea608CCParser$StyleCode;

    iput-object p1, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    return-void
.end method


# virtual methods
.method applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroidx/media2/widget/Cea608CCParser$StyleCode;II)V
    .registers 8

    .line 474
    invoke-virtual {p2}, Landroidx/media2/widget/Cea608CCParser$StyleCode;->isItalics()Z

    move-result v0

    const/16 v1, 0x21

    if-eqz v0, :cond_11

    .line 475
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 479
    :cond_11
    invoke-virtual {p2}, Landroidx/media2/widget/Cea608CCParser$StyleCode;->isUnderline()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 480
    new-instance p2, Landroid/text/style/UnderlineSpan;

    invoke-direct {p2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1f
    return-void
.end method

.method charAt(I)C
    .registers 3

    .line 464
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    return p1
.end method

.method getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;
    .registers 12

    .line 487
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v6, v1

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 491
    :goto_d
    iget-object v7, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v3, v7, :cond_79

    .line 493
    iget-object v7, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    aget-object v8, v7, v3

    if-eqz v8, :cond_1e

    .line 495
    aget-object v7, v7, v3

    goto :goto_2e

    .line 496
    :cond_1e
    iget-object v7, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    aget-object v7, v7, v3

    if-eqz v7, :cond_2d

    if-ltz v4, :cond_28

    if-gez v5, :cond_2d

    .line 500
    :cond_28
    iget-object v7, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    aget-object v7, v7, v3

    goto :goto_2e

    :cond_2d
    move-object v7, v1

    :goto_2e
    if-eqz v7, :cond_39

    if-ltz v4, :cond_37

    if-ltz v5, :cond_37

    .line 505
    invoke-virtual {p0, v0, v7, v4, v3}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroidx/media2/widget/Cea608CCParser$StyleCode;II)V

    :cond_37
    move v4, v3

    move-object v6, v7

    .line 510
    :cond_39
    iget-object v7, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0xa0

    if-eq v7, v8, :cond_47

    if-gez v5, :cond_76

    move v5, v3

    goto :goto_76

    :cond_47
    if-ltz v5, :cond_76

    .line 515
    iget-object v7, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_54

    goto :goto_56

    :cond_54
    add-int/lit8 v5, v5, -0x1

    .line 516
    :goto_56
    iget-object v7, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_62

    move v7, v3

    goto :goto_64

    :cond_62
    add-int/lit8 v7, v3, 0x1

    .line 517
    :goto_64
    new-instance v8, Landroidx/media2/widget/Cea608CCParser$MutableBackgroundColorSpan;

    iget v9, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-direct {v8, v9}, Landroidx/media2/widget/Cea608CCParser$MutableBackgroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v0, v8, v5, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-ltz v4, :cond_75

    .line 522
    invoke-virtual {p0, v0, v6, v4, v7}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroidx/media2/widget/Cea608CCParser$StyleCode;II)V

    :cond_75
    const/4 v5, -0x1

    :cond_76
    :goto_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_79
    return-object v0
.end method

.method length()I
    .registers 2

    .line 468
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method setCharAt(IC)V
    .registers 4

    .line 450
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 451
    iget-object p2, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    const/4 v0, 0x0

    aput-object v0, p2, p1

    return-void
.end method

.method setMidRowAt(ILandroidx/media2/widget/Cea608CCParser$StyleCode;)V
    .registers 5

    .line 455
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 456
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mMidRowStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    aput-object p2, v0, p1

    return-void
.end method

.method setPACAt(ILandroidx/media2/widget/Cea608CCParser$PAC;)V
    .registers 4

    .line 460
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->mPACStyles:[Landroidx/media2/widget/Cea608CCParser$StyleCode;

    aput-object p2, v0, p1

    return-void
.end method
