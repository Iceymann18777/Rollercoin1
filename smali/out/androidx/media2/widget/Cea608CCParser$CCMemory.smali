.class Landroidx/media2/widget/Cea608CCParser$CCMemory;
.super Ljava/lang/Object;
.source "Cea608CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCMemory"
.end annotation


# instance fields
.field private final mBlankLine:Ljava/lang/String;

.field private mCol:I

.field private final mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

.field private mRow:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v0, v0, [Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    .line 538
    iput-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    const/16 v0, 0x22

    new-array v0, v0, [C

    const/16 v1, 0xa0

    .line 544
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 545
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    return-void
.end method

.method private static clamp(III)I
    .registers 3

    if-ge p0, p1, :cond_4

    move p0, p1

    goto :goto_7

    :cond_4
    if-le p0, p2, :cond_7

    move p0, p2

    :cond_7
    :goto_7
    return p0
.end method

.method private getLineBuffer(I)Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;
    .registers 5

    .line 692
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    aget-object v1, v0, p1

    if-nez v1, :cond_f

    .line 693
    new-instance v1, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    iget-object v2, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    .line 695
    :cond_f
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private moveCursorByCol(I)V
    .registers 4

    .line 655
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    add-int/2addr v0, p1

    const/4 p1, 0x1

    const/16 v1, 0x20

    invoke-static {v0, p1, v1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->clamp(III)I

    move-result p1

    iput p1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method private moveCursorTo(II)V
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 646
    invoke-static {p1, v0, v1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->clamp(III)I

    move-result p1

    iput p1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    const/16 p1, 0x20

    .line 647
    invoke-static {p2, v0, p1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->clamp(III)I

    move-result p1

    iput p1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method


# virtual methods
.method bs()V
    .registers 4

    const/4 v0, -0x1

    .line 576
    invoke-direct {p0, v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    .line 577
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_26

    .line 578
    aget-object v0, v0, v1

    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 579
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_26

    .line 583
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    :cond_26
    return-void
.end method

.method cr()V
    .registers 3

    .line 589
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    return-void
.end method

.method der()V
    .registers 5

    .line 558
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    .line 559
    :goto_9
    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    if-ge v0, v1, :cond_37

    .line 560
    iget-object v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    iget v2, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_34

    .line 561
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    :goto_1d
    iget-object v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    iget v3, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 562
    iget-object v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0, v2}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_33
    return-void

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 567
    :cond_37
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_3e
    return-void
.end method

.method erase()V
    .registers 4

    const/4 v0, 0x0

    .line 550
    :goto_1
    iget-object v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    array-length v2, v1

    if-ge v0, v2, :cond_c

    const/4 v2, 0x0

    .line 551
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    const/16 v0, 0xf

    .line 553
    iput v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    const/4 v0, 0x1

    .line 554
    iput v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;
    .registers 7

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x1

    :goto_8
    if-gt v2, v1, :cond_1e

    .line 636
    iget-object v3, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    aget-object v4, v3, v2

    if-eqz v4, :cond_17

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    new-array p1, v1, [Landroid/text/SpannableStringBuilder;

    .line 638
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/SpannableStringBuilder;

    return-object p1
.end method

.method moveBaselineTo(II)V
    .registers 9

    .line 659
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-ge p1, p2, :cond_9

    move v0, p1

    goto :goto_a

    :cond_9
    move v0, p2

    .line 666
    :goto_a
    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    if-ge v1, v0, :cond_f

    move v0, v1

    .line 671
    :cond_f
    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    const/4 v2, 0x0

    if-ge p1, v1, :cond_26

    add-int/lit8 v0, v0, -0x1

    :goto_16
    if-ltz v0, :cond_37

    .line 674
    iget-object v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    sub-int v3, p1, v0

    iget v4, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v4, v0

    aget-object v4, v1, v4

    aput-object v4, v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_26
    const/4 v1, 0x0

    :goto_27
    if-ge v1, v0, :cond_37

    .line 679
    iget-object v3, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    sub-int v4, p1, v1

    iget v5, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v5, v1

    aget-object v5, v3, v5

    aput-object v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_37
    :goto_37
    sub-int v0, p1, p2

    const/4 v1, 0x0

    if-gt v2, v0, :cond_43

    .line 684
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_43
    :goto_43
    add-int/lit8 p1, p1, 0x1

    .line 686
    iget-object p2, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    array-length v0, p2

    if-ge p1, v0, :cond_4d

    .line 687
    aput-object v1, p2, p1

    goto :goto_43

    :cond_4d
    return-void
.end method

.method rollUp(I)V
    .registers 7

    const/4 v0, 0x0

    .line 594
    :goto_1
    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    sub-int v2, v1, p1

    const/4 v3, 0x0

    if-gt v0, v2, :cond_f

    .line 595
    iget-object v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    sub-int/2addr v1, p1

    const/4 p1, 0x1

    add-int/2addr v1, p1

    if-ge v1, p1, :cond_15

    const/4 v1, 0x1

    .line 601
    :cond_15
    :goto_15
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    if-ge v1, v0, :cond_23

    .line 602
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    add-int/lit8 v2, v1, 0x1

    aget-object v4, v0, v2

    aput-object v4, v0, v1

    move v1, v2

    goto :goto_15

    .line 604
    :cond_23
    :goto_23
    iget-object v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mLines:[Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    array-length v2, v1

    if-ge v0, v2, :cond_2d

    .line 606
    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 609
    :cond_2d
    iput p1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method tab(I)V
    .registers 2

    .line 572
    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    return-void
.end method

.method writeMidRowCode(Landroidx/media2/widget/Cea608CCParser$StyleCode;)V
    .registers 4

    .line 620
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, p1}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->setMidRowAt(ILandroidx/media2/widget/Cea608CCParser$StyleCode;)V

    const/4 p1, 0x1

    .line 621
    invoke-direct {p0, p1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    return-void
.end method

.method writePAC(Landroidx/media2/widget/Cea608CCParser$PAC;)V
    .registers 4

    .line 625
    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$PAC;->isIndentPAC()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 626
    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$PAC;->getRow()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$PAC;->getCol()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    goto :goto_1a

    .line 628
    :cond_12
    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$PAC;->getRow()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    .line 630
    :goto_1a
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, p1}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->setPACAt(ILandroidx/media2/widget/Cea608CCParser$PAC;)V

    return-void
.end method

.method writeText(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 613
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 614
    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media2/widget/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    .line 615
    invoke-direct {p0, v1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method
