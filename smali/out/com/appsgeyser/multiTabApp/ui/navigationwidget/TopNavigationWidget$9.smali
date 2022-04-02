.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;
.super Landroid/view/animation/Animation;
.source "TopNavigationWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->changeVisibilityAnimated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

.field final synthetic val$toShowUrlBar:Z


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Z)V
    .registers 3

    .line 266
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iput-boolean p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->val$toShowUrlBar:Z

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    .line 272
    iget-boolean p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->val$toShowUrlBar:Z

    if-eqz p2, :cond_c

    .line 273
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget p2, p2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultTopBrowserMargin:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    goto :goto_19

    .line 275
    :cond_c
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget p2, p2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultTopBrowserMargin:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultTopBrowserMargin:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    sub-float/2addr p2, v0

    :goto_19
    float-to-int p1, p2

    .line 279
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object p2, p2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_browser:Landroid/view/View;

    .line 280
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 281
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultLeftBrowserMargin:I

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget v1, v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultRightBrowserMargin:I

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget v2, v2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_defaultBottomBrowserMargin:I

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 283
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->_browser:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
