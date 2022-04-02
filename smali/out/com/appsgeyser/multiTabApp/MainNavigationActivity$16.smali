.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$16;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setMenuItemVisible(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field final synthetic val$id:I

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;IZ)V
    .registers 4

    .line 1265
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$16;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iput p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$16;->val$id:I

    iput-boolean p3, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$16;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1268
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$16;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$700(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    move-result-object v0

    iget v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$16;->val$id:I

    iget-boolean v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$16;->val$visible:Z

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->setItemVisible(IZ)V

    .line 1270
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$16;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$600(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1271
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$16;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$700(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->getAllItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 1272
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$16;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$600(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->setOptions(Ljava/util/ArrayList;)V

    :cond_28
    return-void
.end method
