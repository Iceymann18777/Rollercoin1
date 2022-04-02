.class Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/SelectItemController;
.super Ljava/lang/Object;
.source "SelectItemController.java"


# direct methods
.method static selectItem(Landroid/widget/ListView;ILcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 7

    const/4 v0, 0x1

    .line 22
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 25
    invoke-static {v1, v0, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/SelectItemController;->setColorInItem(Landroid/view/View;IILcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    goto :goto_26

    :cond_11
    const v1, 0x7f0a0124

    .line 27
    invoke-virtual {p2, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 29
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 31
    invoke-static {v1, v0, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/SelectItemController;->setColorInItem(Landroid/view/View;IILcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_29
    return-void
.end method

.method private static setColorInItem(Landroid/view/View;IILcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 5

    const v0, 0x7f0a00cb

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_36

    if-ne p1, p2, :cond_22

    const p1, 0x7f06010b

    .line 43
    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const p0, 0x7f060048

    .line 44
    invoke-static {p3, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_36

    :cond_22
    const p1, 0x7f06011d

    .line 46
    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const p0, 0x7f060058

    .line 47
    invoke-static {p3, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_36
    :goto_36
    return-void
.end method
