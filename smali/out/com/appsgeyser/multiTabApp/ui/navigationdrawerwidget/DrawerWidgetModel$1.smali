.class Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel$1;
.super Ljava/lang/Object;
.source "DrawerWidgetModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->select()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

.field final synthetic val$activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 3

    .line 58
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel$1;->val$activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel$1;->val$activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->access$000(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onOptionsItemSelected(ILandroid/view/MenuItem;)Z

    return-void
.end method
