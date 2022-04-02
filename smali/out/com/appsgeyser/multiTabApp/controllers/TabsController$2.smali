.class Lcom/appsgeyser/multiTabApp/controllers/TabsController$2;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "TabsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/controllers/TabsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/controllers/TabsController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/TabsController;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/TabsController;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/TabsController;

    invoke-static {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->access$102(Lcom/appsgeyser/multiTabApp/controllers/TabsController;I)I

    .line 77
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getWebContentController()Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    if-eqz p1, :cond_17

    .line 79
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->TAB_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->showBanner(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;Z)V

    :cond_17
    return-void
.end method
