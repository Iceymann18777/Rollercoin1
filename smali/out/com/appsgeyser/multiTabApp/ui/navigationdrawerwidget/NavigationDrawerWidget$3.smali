.class Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$3;
.super Ljava/lang/Object;
.source "NavigationDrawerWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->addTabsInListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$3;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$3;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->access$000(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTabId()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 203
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$3;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->access$100(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$3;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-static {v2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->access$200(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/SelectItemController;->selectItem(Landroid/widget/ListView;ILcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    return-void
.end method
