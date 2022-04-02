.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$6;
.super Ljava/lang/Object;
.source "BottomNavigationWidget.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->changeVisibilityAnimated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;

.field final synthetic val$toShowUrlBar:Z


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;Z)V
    .registers 3

    .line 192
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$6;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;

    iput-boolean p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$6;->val$toShowUrlBar:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 206
    iget-boolean p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$6;->val$toShowUrlBar:Z

    if-eqz p1, :cond_a

    .line 207
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$6;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->show()V

    goto :goto_f

    .line 209
    :cond_a
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$6;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->hide()V

    :goto_f
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
