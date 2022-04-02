.class Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetClickListener;
.super Ljava/lang/Object;
.source "NavigationDrawerWidgetClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field private final drawerListView:Landroid/widget/ListView;

.field private final navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

.field private final tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/INavigationController;Landroidx/drawerlayout/widget/DrawerLayout;Landroid/widget/ListView;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetClickListener;->tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    .line 29
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetClickListener;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 30
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetClickListener;->drawerListView:Landroid/widget/ListView;

    .line 31
    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetClickListener;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    .line 39
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->getMenuId()I

    move-result p2

    if-eqz p2, :cond_14

    .line 40
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->select()V

    goto :goto_22

    .line 42
    :cond_14
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetClickListener;->drawerListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetClickListener;->activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {p1, p3, p2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/SelectItemController;->selectItem(Landroid/widget/ListView;ILcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    .line 44
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetClickListener;->tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    long-to-int p2, p4

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->swipeOnPage(IZ)V

    .line 47
    :goto_22
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetClickListener;->navigationDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method
