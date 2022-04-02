.class public Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;
.super Ljava/lang/Object;
.source "SslErrorDialog.java"


# instance fields
.field private _activity:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;->_activity:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public execute(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 10

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_18

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 29
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void

    .line 33
    :cond_18
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;->_activity:Landroid/content/Context;

    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 35
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d0051

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const v0, 0x7f0a00b6

    .line 36
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a00b9

    .line 37
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a00b7

    .line 38
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a00c5

    .line 39
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 41
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 42
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_73

    .line 43
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_73
    const p3, 0x7f12015e

    .line 45
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(I)V

    const p3, 0x7f12015b

    .line 46
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 48
    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;->_activity:Landroid/content/Context;

    const v0, 0x7f12015d

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;->_activity:Landroid/content/Context;

    const v0, 0x7f12015c

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    new-instance p3, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog$1;

    invoke-direct {p3, p0, p2, p1}, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog$1;-><init>(Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;Landroid/webkit/SslErrorHandler;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance p3, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog$2;

    invoke-direct {p3, p0, p2, p1}, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog$2;-><init>(Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;Landroid/webkit/SslErrorHandler;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
