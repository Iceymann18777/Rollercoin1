.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$17;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setUrlBarVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field final synthetic val$viewVisililityCode:I


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;I)V
    .registers 3

    .line 1314
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$17;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iput p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$17;->val$viewVisililityCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1317
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1319
    iget v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$17;->val$viewVisililityCode:I

    if-nez v1, :cond_14

    .line 1320
    check-cast v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->showAnimated()V

    goto :goto_19

    .line 1322
    :cond_14
    check-cast v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->hideAnimated()V

    :cond_19
    :goto_19
    return-void
.end method
