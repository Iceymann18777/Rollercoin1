.class Landroidx/media2/widget/SelectiveLayout;
.super Landroidx/media2/widget/MediaViewGroup;
.source "SelectiveLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/SelectiveLayout$LayoutParams;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/widget/MediaViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getPositivePaddingBottom()I
    .registers 3

    .line 167
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPositivePaddingLeft()I
    .registers 3

    .line 155
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPositivePaddingRight()I
    .registers 3

    .line 159
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getPaddingRight()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPositivePaddingTop()I
    .registers 3

    .line 163
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getPaddingTop()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 46
    instance-of p1, p1, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 51
    new-instance v0, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/media2/widget/SelectiveLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 56
    new-instance v0, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/media2/widget/SelectiveLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 61
    instance-of v0, p1, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    if-eqz v0, :cond_5

    return-object p1

    .line 64
    :cond_5
    new-instance v0, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/media2/widget/SelectiveLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    .line 127
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getChildCount()I

    move-result p1

    .line 129
    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingLeft()I

    move-result v0

    sub-int/2addr p4, p2

    .line 130
    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 132
    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingTop()I

    move-result p2

    sub-int/2addr p5, p3

    .line 133
    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    const/4 p3, 0x0

    :goto_19
    if-ge p3, p1, :cond_43

    .line 136
    invoke-virtual {p0, p3}, Landroidx/media2/widget/SelectiveLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_40

    .line 138
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 139
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v4, p4, v0

    sub-int/2addr v4, v2

    .line 141
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    sub-int v5, p5, p2

    sub-int/2addr v5, v3

    .line 142
    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    add-int/2addr v2, v4

    add-int/2addr v3, v5

    .line 144
    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_40
    add-int/lit8 p3, p3, 0x1

    goto :goto_19

    :cond_43
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13

    .line 69
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    const/16 v6, 0x8

    if-ge v2, v0, :cond_3c

    .line 77
    invoke-virtual {p0, v2}, Landroidx/media2/widget/SelectiveLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 78
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    .line 79
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v6, :cond_39

    iget-boolean v6, v8, Landroidx/media2/widget/SelectiveLayout$LayoutParams;->forceMatchParent:Z

    if-nez v6, :cond_39

    .line 80
    invoke-virtual {p0, v7, p1, p2}, Landroidx/media2/widget/SelectiveLayout;->measureChild(Landroid/view/View;II)V

    .line 81
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 82
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 83
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    or-int/2addr v5, v6

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 88
    :cond_3c
    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingLeft()I

    move-result v2

    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingRight()I

    move-result v7

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    .line 89
    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingTop()I

    move-result v2

    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingBottom()I

    move-result v7

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    .line 92
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 93
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 95
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v4, v7, :cond_7c

    .line 97
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_7c

    .line 99
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 100
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 105
    :cond_7c
    invoke-static {v2, p1, v5}, Landroidx/media2/widget/SelectiveLayout;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v2, v5, 0x10

    .line 106
    invoke-static {v3, p2, v2}, Landroidx/media2/widget/SelectiveLayout;->resolveSizeAndState(III)I

    move-result p2

    .line 104
    invoke-virtual {p0, p1, p2}, Landroidx/media2/widget/SelectiveLayout;->setMeasuredDimension(II)V

    .line 111
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getMeasuredWidth()I

    move-result p1

    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingLeft()I

    move-result p2

    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingRight()I

    move-result v2

    add-int/2addr p2, v2

    sub-int/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    .line 110
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 114
    invoke-virtual {p0}, Landroidx/media2/widget/SelectiveLayout;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingTop()I

    move-result v3

    invoke-direct {p0}, Landroidx/media2/widget/SelectiveLayout;->getPositivePaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 113
    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_af
    if-ge v1, v0, :cond_cb

    .line 117
    invoke-virtual {p0, v1}, Landroidx/media2/widget/SelectiveLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    .line 119
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_c8

    iget-boolean v3, v3, Landroidx/media2/widget/SelectiveLayout$LayoutParams;->forceMatchParent:Z

    if-eqz v3, :cond_c8

    .line 120
    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_c8
    add-int/lit8 v1, v1, 0x1

    goto :goto_af

    :cond_cb
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
