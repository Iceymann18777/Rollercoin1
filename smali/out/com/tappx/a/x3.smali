.class public Lcom/tappx/a/x3;
.super Lcom/tappx/a/l3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/x3$c;,
        Lcom/tappx/a/x3$d;
    }
.end annotation


# instance fields
.field private d:Z

.field private final e:Lcom/tappx/a/o3;

.field private f:Lcom/tappx/a/x3$d;

.field private final g:Lcom/tappx/a/o3$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/l3;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Lcom/tappx/a/x3$b;

    invoke-direct {p1, p0}, Lcom/tappx/a/x3$b;-><init>(Lcom/tappx/a/x3;)V

    iput-object p1, p0, Lcom/tappx/a/x3;->g:Lcom/tappx/a/o3$a;

    if-nez p2, :cond_f

    .line 40
    invoke-virtual {p0}, Lcom/tappx/a/x3;->c()V

    .line 42
    :cond_f
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 43
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_20

    .line 44
    invoke-virtual {p0, p2}, Lcom/tappx/a/l3;->a(Z)V

    :cond_20
    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 47
    new-instance p1, Lcom/tappx/a/o3;

    invoke-direct {p1}, Lcom/tappx/a/o3;-><init>()V

    iput-object p1, p0, Lcom/tappx/a/x3;->e:Lcom/tappx/a/o3;

    .line 48
    iget-object p2, p0, Lcom/tappx/a/x3;->g:Lcom/tappx/a/o3$a;

    invoke-virtual {p1, p2}, Lcom/tappx/a/o3;->a(Lcom/tappx/a/o3$a;)V

    .line 49
    new-instance p1, Lcom/tappx/a/x3$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/tappx/a/x3$c;-><init>(Lcom/tappx/a/x3;Lcom/tappx/a/x3$a;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 51
    new-instance p1, Lcom/tappx/a/x3$a;

    invoke-direct {p1, p0}, Lcom/tappx/a/x3$a;-><init>(Lcom/tappx/a/x3;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/x3;)Lcom/tappx/a/o3;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/x3;->e:Lcom/tappx/a/o3;

    return-object p0
.end method

.method static synthetic a(Lcom/tappx/a/x3;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/tappx/a/x3;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/tappx/a/x3;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/tappx/a/x3;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/tappx/a/x3;)Lcom/tappx/a/x3$d;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/x3;->f:Lcom/tappx/a/x3$d;

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method c()V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    return-void
.end method

.method public setListener(Lcom/tappx/a/x3$d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/x3;->f:Lcom/tappx/a/x3$d;

    return-void
.end method
