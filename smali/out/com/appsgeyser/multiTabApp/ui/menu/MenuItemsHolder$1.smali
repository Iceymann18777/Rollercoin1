.class Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$1;
.super Ljava/lang/Object;
.source "MenuItemsHolder.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->_applyItemsVisibility(Landroid/app/Activity;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

.field final synthetic val$button:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;)V
    .registers 3

    .line 95
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$1;->val$button:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 100
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object p1

    .line 101
    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$1;->val$button:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
