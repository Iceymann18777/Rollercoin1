.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$13;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_setClearButtonVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

.field final synthetic val$isVisible:Z


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;Z)V
    .registers 3

    .line 693
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$13;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iput-boolean p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$13;->val$isVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 697
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$13;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->clearTextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_15

    .line 698
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$13;->val$isVisible:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_e

    :cond_c
    const/16 v0, 0x8

    .line 699
    :goto_e
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$13;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v1, v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->clearTextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_15
    return-void
.end method
