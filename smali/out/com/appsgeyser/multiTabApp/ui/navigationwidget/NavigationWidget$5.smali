.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$5;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 251
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$5;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5

    .line 255
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$5;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iput-boolean p2, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->inFocus:Z

    .line 256
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$5;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getAdsKeyboardShow()Z

    move-result v1

    iput-boolean v1, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->adsKeyboard:Z

    .line 259
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$5;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    if-eqz p2, :cond_44

    .line 260
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$5;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-boolean p2, p2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->adsKeyboard:Z

    if-nez p2, :cond_44

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 p2, 0x1

    .line 263
    invoke-virtual {p1, p2, p2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 264
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$5;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->isHomePageUrl()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 265
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$5;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->focusOnUrlBarHomePage()V

    goto :goto_6c

    .line 267
    :cond_3e
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$5;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->focusOnUrlBarExternalLink()V

    goto :goto_6c

    .line 272
    :cond_44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 274
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$5;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->urlTextBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v0, v0}, Landroid/widget/AutoCompleteTextView;->setSelection(II)V

    .line 275
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$5;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->isHomePageUrl()Z

    move-result p1

    if-eqz p1, :cond_67

    .line 276
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$5;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->focusOffUrlBarHomePage()V

    goto :goto_6c

    .line 278
    :cond_67
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$5;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->focusOffUrlBarExternalLink()V

    :goto_6c
    return-void
.end method
