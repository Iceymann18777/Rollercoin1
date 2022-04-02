.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$10;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->initEventHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;)V
    .registers 2

    .line 481
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$10;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 484
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$10;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_onUrlTextBoxKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
