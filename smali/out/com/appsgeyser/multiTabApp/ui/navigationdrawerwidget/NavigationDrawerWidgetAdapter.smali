.class Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NavigationDrawerWidgetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 42
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->objects:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->getItem(I)Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 50
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    if-nez p2, :cond_4e

    .line 54
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 55
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 56
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->isDivider()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_29

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_29

    const v0, 0x7f0d0088

    .line 57
    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_4e

    .line 59
    :cond_29
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->isDivider()Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3d

    const v0, 0x7f0d0087

    .line 60
    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_4e

    :cond_3d
    const v0, 0x7f0d0060

    .line 63
    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 67
    invoke-virtual {p2, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 71
    :cond_4e
    :goto_4e
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetAdapter;->getItem(I)Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    move-result-object p1

    if-eqz p1, :cond_78

    const p3, 0x7f0a016d

    .line 76
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f0a00cb

    .line 79
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p3, :cond_6f

    .line 82
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6f
    if-eqz v0, :cond_78

    .line 86
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_78
    return-object p2
.end method
