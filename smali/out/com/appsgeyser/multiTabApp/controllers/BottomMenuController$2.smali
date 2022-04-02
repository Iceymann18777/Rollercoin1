.class Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$2;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "BottomMenuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 5

    .line 299
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-static {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->access$302(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;I)I

    .line 301
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object p1

    .line 302
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->access$300(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getTabByPosition(I)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object p1

    .line 304
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->access$400(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    .line 306
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->access$200(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_60

    .line 308
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 309
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->access$100(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5a

    .line 310
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->access$100(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5a
    if-eqz v0, :cond_76

    .line 313
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->uncheckLastView()V

    goto :goto_76

    :cond_60
    if-eqz v0, :cond_76

    .line 317
    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;->setItemChecked(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;)V

    .line 318
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$2;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->access$200(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 319
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 323
    :cond_76
    :goto_76
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getWebContentController()Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    if-eqz p1, :cond_87

    .line 325
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->TAB_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    invoke-virtual {p1, v0, v2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->showBanner(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;Z)V

    :cond_87
    return-void
.end method
