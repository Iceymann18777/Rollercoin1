.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$7;
.super Ljava/lang/Object;
.source "TopNavigationWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->createWidgetLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

.field final synthetic val$mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 3

    .line 186
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$7;->val$mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$7;->val$mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$7;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object v1, v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method
