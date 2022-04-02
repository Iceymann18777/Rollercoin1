.class public Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs;
.super Ljava/lang/Object;
.source "SimpleDialogs.java"


# direct methods
.method public static createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .registers 13

    .line 18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0051

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a00b6

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a00b9

    .line 22
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a00b7

    .line 23
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a00c5

    .line 24
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 27
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 28
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    :cond_59
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p0, :cond_62

    .line 33
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    :cond_62
    const/16 p0, 0x8

    .line 35
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_67
    const p0, 0x7f120181

    .line 38
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p0, 0x7f12011d

    .line 39
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    new-instance p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$1;

    invoke-direct {p0, v0, p3}, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$1;-><init>(Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    new-instance p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$2;

    invoke-direct {p0, v0, p4}, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$2;-><init>(Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$3;

    invoke-direct {p0, p4}, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$3;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method public static showOpenOrSaveDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 12

    .line 73
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0052

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a00b6

    .line 76
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a00b9

    .line 77
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a00b7

    .line 78
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a00b8

    .line 79
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a00c5

    .line 80
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 82
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 84
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_62
    const v1, 0x7f120125

    .line 87
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f12014b

    .line 88
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f120069

    .line 89
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1200d3

    .line 91
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f12008c

    .line 92
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$4;

    invoke-direct {p0, p1, v0}, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$4;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$5;

    invoke-direct {p0, p2, v0}, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$5;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    new-instance p0, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$6;

    invoke-direct {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs$6;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x1

    .line 117
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 118
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
