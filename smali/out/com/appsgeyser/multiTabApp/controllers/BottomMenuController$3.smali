.class Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$3;
.super Ljava/lang/Object;
.source "BottomMenuController.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$OnItemClickListener;


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

    .line 330
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$3;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILjava/lang/String;)V
    .registers 4

    .line 333
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$3;->this$0:Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->swipeOnPageByTabId(Ljava/lang/String;)V

    return-void
.end method
