.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$1;
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

    .line 82
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 85
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/BottomNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
