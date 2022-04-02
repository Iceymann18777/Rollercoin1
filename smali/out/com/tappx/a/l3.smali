.class public Lcom/tappx/a/l3;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/l3$a;
    }
.end annotation


# static fields
.field private static c:Z = false


# instance fields
.field private a:Lcom/tappx/a/l3$a;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/tappx/a/l3;->a(Z)V

    .line 4
    invoke-direct {p0}, Lcom/tappx/a/l3;->c()V

    .line 5
    invoke-static {p0}, Lcom/tappx/a/w4;->a(Landroid/webkit/WebView;)V

    .line 7
    sget-boolean v0, Lcom/tappx/a/l3;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    .line 8
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tappx/a/l3;->a(Landroid/content/Context;)V

    .line 9
    sput-boolean v1, Lcom/tappx/a/l3;->c:Z

    .line 11
    :cond_1f
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_26

    const/4 p1, 0x1

    :cond_26
    iput-boolean p1, p0, Lcom/tappx/a/l3;->b:Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 10

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_45

    .line 12
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v4, ""

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    move-object v2, v0

    .line 17
    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v2, 0x1

    .line 19
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 20
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x7d5

    .line 22
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const v2, 0x1000018

    .line 23
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, -0x2

    .line 26
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x800033

    .line 27
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :try_start_3a
    const-string v2, "window"

    .line 30
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 31
    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_45} :catch_45

    :catch_45
    :cond_45
    return-void
.end method

.method private c()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_23

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_23
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_e
    return-void
.end method

.method public a(Z)V
    .registers 4

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_13

    .line 7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    goto :goto_1c

    .line 9
    :cond_13
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    :goto_1c
    return-void
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/l3;->b:Z

    return v0
.end method

.method public destroy()V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/tappx/a/w4;->b(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 6
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 3
    :goto_8
    iget-boolean p2, p0, Lcom/tappx/a/l3;->b:Z

    if-eq p1, p2, :cond_15

    .line 4
    iput-boolean p1, p0, Lcom/tappx/a/l3;->b:Z

    .line 5
    iget-object p2, p0, Lcom/tappx/a/l3;->a:Lcom/tappx/a/l3$a;

    if-eqz p2, :cond_15

    .line 6
    invoke-interface {p2, p1}, Lcom/tappx/a/l3$a;->b(Z)V

    :cond_15
    return-void
.end method

.method public setVisibilityChangedListener(Lcom/tappx/a/l3$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/l3;->a:Lcom/tappx/a/l3$a;

    return-void
.end method
