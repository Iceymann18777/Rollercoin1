.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$3;
.super Ljava/lang/Object;
.source "TopNavigationWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/view/View;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$3;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 137
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$3;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
