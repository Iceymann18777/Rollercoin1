.class Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$1;
.super Ljava/lang/Object;
.source "BottomMenuController.java"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


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

    .line 277
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$1;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 280
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$1;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->access$002(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;I)I

    .line 281
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne p1, v2, :cond_33

    .line 282
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$1;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->access$100(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_29

    .line 283
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$1;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->access$100(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_49

    .line 285
    :cond_29
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$1;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->access$100(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_49

    .line 288
    :cond_33
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$1;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->access$100(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$1;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->access$000(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->swipeOnPageByTabId(Ljava/lang/String;)V

    .line 291
    :goto_49
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$1;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->access$200(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$1;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->access$000(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return v0
.end method
