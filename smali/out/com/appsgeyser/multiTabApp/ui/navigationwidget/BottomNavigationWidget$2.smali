.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$2;
.super Ljava/lang/Object;
.source "BottomNavigationWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/view/View;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$2;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$2;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    return-void
.end method
