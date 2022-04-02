.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$1;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;
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

    .line 119
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 135
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->onTextChanged()V

    .line 136
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->requestSuggestions()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 130
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->onTextChanged()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 124
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->onTextChanged()V

    return-void
.end method
