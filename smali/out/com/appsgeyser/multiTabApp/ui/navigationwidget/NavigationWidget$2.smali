.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$2;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$2;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 180
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method
