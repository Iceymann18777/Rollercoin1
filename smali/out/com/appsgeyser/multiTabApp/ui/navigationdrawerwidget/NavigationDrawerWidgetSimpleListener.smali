.class Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;
.super Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;
.source "NavigationDrawerWidgetSimpleListener.java"


# instance fields
.field private isOpened:Z

.field private final navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    return-void
.end method


# virtual methods
.method isOpened()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;->isOpened:Z

    return v0
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .registers 2

    .line 23
    invoke-super {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;->onDrawerClosed(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;->isOpened:Z

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .registers 2

    .line 34
    invoke-super {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;->onDrawerOpened(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;->isOpened:Z

    .line 36
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidgetSimpleListener;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->hideSliderHandle()V

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;->onDrawerStateChanged(I)V

    return-void
.end method
