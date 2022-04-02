.class final Lcom/tappx/a/x3$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/x3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/t4;

.field final synthetic b:Lcom/tappx/a/x3;


# direct methods
.method private constructor <init>(Lcom/tappx/a/x3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/x3$c;->b:Lcom/tappx/a/x3;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 3
    new-instance p1, Lcom/tappx/a/t4;

    invoke-direct {p1}, Lcom/tappx/a/t4;-><init>()V

    iput-object p1, p0, Lcom/tappx/a/x3$c;->a:Lcom/tappx/a/t4;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tappx/a/x3;Lcom/tappx/a/x3$a;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Lcom/tappx/a/x3$c;-><init>(Lcom/tappx/a/x3;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    .line 1
    iget-object p1, p0, Lcom/tappx/a/x3$c;->a:Lcom/tappx/a/t4;

    iget-object v0, p0, Lcom/tappx/a/x3$c;->b:Lcom/tappx/a/x3;

    invoke-static {v0}, Lcom/tappx/a/x3;->c(Lcom/tappx/a/x3;)Lcom/tappx/a/x3$d;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/tappx/a/t4;->a(Ljava/lang/String;Lcom/tappx/a/x3$d;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    return v0

    .line 3
    :cond_10
    iget-object p1, p0, Lcom/tappx/a/x3$c;->b:Lcom/tappx/a/x3;

    invoke-static {p1}, Lcom/tappx/a/x3;->b(Lcom/tappx/a/x3;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_63

    .line 4
    iget-object p1, p0, Lcom/tappx/a/x3$c;->b:Lcom/tappx/a/x3;

    invoke-static {p1, v1}, Lcom/tappx/a/x3;->a(Lcom/tappx/a/x3;Z)Z

    .line 5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 9
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    :try_start_34
    iget-object v2, p0, Lcom/tappx/a/x3$c;->b:Lcom/tappx/a/x3;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 12
    iget-object p1, p0, Lcom/tappx/a/x3$c;->b:Lcom/tappx/a/x3;

    invoke-static {p1}, Lcom/tappx/a/x3;->c(Lcom/tappx/a/x3;)Lcom/tappx/a/x3$d;

    move-result-object p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/tappx/a/x3$c;->b:Lcom/tappx/a/x3;

    invoke-static {p1}, Lcom/tappx/a/x3;->c(Lcom/tappx/a/x3;)Lcom/tappx/a/x3$d;

    move-result-object p1

    invoke-interface {p1}, Lcom/tappx/a/x3$d;->b()V
    :try_end_4e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_34 .. :try_end_4e} :catch_4f

    :cond_4e
    return v0

    .line 15
    :catch_4f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No activity found to handle this URL "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tappx/a/j4;->a(Ljava/lang/String;)V

    :cond_63
    return v1
.end method
