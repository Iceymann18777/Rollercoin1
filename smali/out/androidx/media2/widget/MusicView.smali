.class Landroidx/media2/widget/MusicView;
.super Landroid/view/ViewGroup;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/MusicView$MusicViewType;
    }
.end annotation


# instance fields
.field private mType:Landroidx/media2/widget/MusicView$MusicViewType;

.field private mWithTitleLandscape:Landroid/view/View;

.field private mWithTitlePortrait:Landroid/view/View;

.field private mWithoutTitle:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    sget-object p1, Landroidx/media2/widget/MusicView$MusicViewType;->WITHOUT_TITLE:Landroidx/media2/widget/MusicView$MusicViewType;

    iput-object p1, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    .line 38
    invoke-direct {p0}, Landroidx/media2/widget/MusicView;->inflateLayout()V

    return-void
.end method

.method private static hasTooSmallMeasuredState(Landroid/view/View;)Z
    .registers 3

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p0

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method private inflateLayout()V
    .registers 4

    .line 141
    invoke-virtual {p0}, Landroidx/media2/widget/MusicView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 144
    sget v1, Landroidx/media2/widget/R$layout;->music_with_title_landscape:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/widget/MusicView;->mWithTitleLandscape:Landroid/view/View;

    .line 145
    sget v1, Landroidx/media2/widget/R$layout;->music_with_title_portrait:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/widget/MusicView;->mWithTitlePortrait:Landroid/view/View;

    .line 146
    sget v1, Landroidx/media2/widget/R$layout;->music_without_title:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/widget/MusicView;->mWithoutTitle:Landroid/view/View;

    .line 148
    iget-object v0, p0, Landroidx/media2/widget/MusicView;->mWithTitleLandscape:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MusicView;->addView(Landroid/view/View;)V

    .line 149
    iget-object v0, p0, Landroidx/media2/widget/MusicView;->mWithTitlePortrait:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MusicView;->addView(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Landroidx/media2/widget/MusicView;->mWithoutTitle:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MusicView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 11

    .line 80
    iget-object p1, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    sget-object v0, Landroidx/media2/widget/MusicView$MusicViewType;->WITH_TITLE_LANDSCAPE:Landroidx/media2/widget/MusicView$MusicViewType;

    if-ne p1, v0, :cond_9

    .line 81
    iget-object p1, p0, Landroidx/media2/widget/MusicView;->mWithTitleLandscape:Landroid/view/View;

    goto :goto_14

    .line 82
    :cond_9
    iget-object p1, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    sget-object v0, Landroidx/media2/widget/MusicView$MusicViewType;->WITH_TITLE_PORTRAIT:Landroidx/media2/widget/MusicView$MusicViewType;

    if-ne p1, v0, :cond_12

    .line 83
    iget-object p1, p0, Landroidx/media2/widget/MusicView;->mWithTitlePortrait:Landroid/view/View;

    goto :goto_14

    .line 85
    :cond_12
    iget-object p1, p0, Landroidx/media2/widget/MusicView;->mWithoutTitle:Landroid/view/View;

    .line 88
    :goto_14
    invoke-virtual {p0}, Landroidx/media2/widget/MusicView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_2d

    .line 90
    invoke-virtual {p0, v2}, Landroidx/media2/widget/MusicView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_26

    .line 92
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a

    :cond_26
    const/4 v4, 0x4

    .line 94
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2d
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p4, p2

    .line 104
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    .line 105
    div-int/lit8 p5, p5, 0x2

    add-int/2addr p2, p4

    add-int/2addr p3, p5

    .line 107
    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_81

    .line 44
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_81

    .line 48
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 49
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v0, 0x0

    const/high16 v2, -0x80000000

    if-le p1, p2, :cond_41

    .line 52
    sget-object v3, Landroidx/media2/widget/MusicView$MusicViewType;->WITH_TITLE_LANDSCAPE:Landroidx/media2/widget/MusicView$MusicViewType;

    iput-object v3, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    .line 53
    iget-object v3, p0, Landroidx/media2/widget/MusicView;->mWithTitleLandscape:Landroid/view/View;

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 54
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 53
    invoke-virtual {v3, v0, v2}, Landroid/view/View;->measure(II)V

    .line 55
    iget-object v0, p0, Landroidx/media2/widget/MusicView;->mWithTitleLandscape:Landroid/view/View;

    invoke-static {v0}, Landroidx/media2/widget/MusicView;->hasTooSmallMeasuredState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Landroidx/media2/widget/MusicView;->mWithTitleLandscape:Landroid/view/View;

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-le v0, p1, :cond_66

    .line 57
    :cond_3c
    sget-object v0, Landroidx/media2/widget/MusicView$MusicViewType;->WITHOUT_TITLE:Landroidx/media2/widget/MusicView$MusicViewType;

    iput-object v0, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    goto :goto_66

    .line 60
    :cond_41
    sget-object v3, Landroidx/media2/widget/MusicView$MusicViewType;->WITH_TITLE_PORTRAIT:Landroidx/media2/widget/MusicView$MusicViewType;

    iput-object v3, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    .line 61
    iget-object v3, p0, Landroidx/media2/widget/MusicView;->mWithTitlePortrait:Landroid/view/View;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 62
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 61
    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    .line 63
    iget-object v0, p0, Landroidx/media2/widget/MusicView;->mWithTitlePortrait:Landroid/view/View;

    invoke-static {v0}, Landroidx/media2/widget/MusicView;->hasTooSmallMeasuredState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Landroidx/media2/widget/MusicView;->mWithTitlePortrait:Landroid/view/View;

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-le v0, p2, :cond_66

    .line 65
    :cond_62
    sget-object v0, Landroidx/media2/widget/MusicView$MusicViewType;->WITHOUT_TITLE:Landroidx/media2/widget/MusicView$MusicViewType;

    iput-object v0, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    .line 69
    :cond_66
    :goto_66
    iget-object v0, p0, Landroidx/media2/widget/MusicView;->mType:Landroidx/media2/widget/MusicView$MusicViewType;

    sget-object v2, Landroidx/media2/widget/MusicView$MusicViewType;->WITHOUT_TITLE:Landroidx/media2/widget/MusicView$MusicViewType;

    if-ne v0, v2, :cond_7d

    .line 70
    iget-object v0, p0, Landroidx/media2/widget/MusicView;->mWithoutTitle:Landroid/view/View;

    div-int/lit8 v2, p1, 0x2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    div-int/lit8 v3, p2, 0x2

    .line 71
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 74
    :cond_7d
    invoke-virtual {p0, p1, p2}, Landroidx/media2/widget/MusicView;->setMeasuredDimension(II)V

    return-void

    .line 45
    :cond_81
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "MusicView should be measured in MeasureSpec.EXACTLY"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method setAlbumDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 111
    invoke-virtual {p0}, Landroidx/media2/widget/MusicView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    .line 113
    invoke-virtual {p0, v1}, Landroidx/media2/widget/MusicView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Landroidx/media2/widget/R$id;->album:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_18

    .line 115
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method setArtistText(Ljava/lang/String;)V
    .registers 6

    .line 131
    invoke-virtual {p0}, Landroidx/media2/widget/MusicView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    .line 133
    invoke-virtual {p0, v1}, Landroidx/media2/widget/MusicView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Landroidx/media2/widget/R$id;->artist:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_18

    .line 135
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method setTitleText(Ljava/lang/String;)V
    .registers 6

    .line 121
    invoke-virtual {p0}, Landroidx/media2/widget/MusicView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    .line 123
    invoke-virtual {p0, v1}, Landroidx/media2/widget/MusicView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Landroidx/media2/widget/R$id;->title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_18

    .line 125
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method
