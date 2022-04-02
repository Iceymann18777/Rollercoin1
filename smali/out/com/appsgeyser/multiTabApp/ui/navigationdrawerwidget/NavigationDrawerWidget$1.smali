.class Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$1;
.super Ljava/lang/Object;
.source "NavigationDrawerWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->hideSliderHandle()V

    return-void
.end method
