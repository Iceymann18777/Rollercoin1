.class Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$3;
.super Ljava/lang/Object;
.source "MenuItemsHolder.java"

# interfaces
.implements Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;


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


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$3;->this$0:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInAppPurchasesEnableReceived(Z)V
    .registers 3

    if-nez p1, :cond_13

    .line 126
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$3;->this$0:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->access$000(Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;)Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f0a0240

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    .line 127
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_13
    return-void
.end method
