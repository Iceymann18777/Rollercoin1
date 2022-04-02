.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$7;
.super Landroid/view/animation/Animation;
.source "BottomNavigationWidget.java"


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

    .line 216
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;

    iput-boolean p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$7;->val$toShowUrlBar:Z

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 4

    .line 222
    iget-boolean p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$7;->val$toShowUrlBar:Z

    if-eqz p2, :cond_c

    .line 223
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;

    iget p2, p2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_defaultTopBrowserMargin:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    goto :goto_19

    .line 225
    :cond_c
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;

    iget p2, p2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_defaultTopBrowserMargin:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;

    iget v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_defaultTopBrowserMargin:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    sub-float/2addr p2, v0

    :goto_19
    float-to-int p1, p2

    .line 229
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;

    iget-object p2, p2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_browser:Landroid/view/View;

    .line 230
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    .line 231
    invoke-virtual {p2, v0, p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 233
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->_browser:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
