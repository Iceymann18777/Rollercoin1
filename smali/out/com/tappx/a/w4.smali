.class public Lcom/tappx/a/w4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 4
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_6
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 2
    invoke-static {p0}, Lcom/tappx/a/w4;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    .line 3
    invoke-static {p1}, Lcom/tappx/a/w4;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p0, :cond_b

    goto :goto_c

    :cond_b
    move-object p0, p1

    :goto_c
    return-object p0
.end method

.method private static a(Landroid/view/View;)Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 9
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_b

    return-object v0

    :cond_b
    const v0, 0x1020002

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    move-object p0, v0

    :cond_15
    return-object p0
.end method

.method public static a(Landroid/webkit/WebView;)V
    .registers 2

    .line 1
    new-instance v0, Lcom/tappx/a/w4$a;

    invoke-direct {v0}, Lcom/tappx/a/w4$a;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public static b(Landroid/view/View;)V
    .registers 2

    if-eqz p0, :cond_1a

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_1a

    .line 5
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1a
    :goto_1a
    return-void
.end method
