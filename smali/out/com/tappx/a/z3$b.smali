.class final Lcom/tappx/a/z3$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/z3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tappx/a/z3$b;->a:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/tappx/a/z3$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/z3$b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/tappx/a/z3$b;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_b

    const/high16 v0, 0x10000000

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/tappx/a/z3$b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_10} :catch_10

    :catch_10
    return-void
.end method

.method private b(Landroid/net/Uri;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "about"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private c(Landroid/net/Uri;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method private d(Landroid/net/Uri;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Lcom/tappx/a/z3$b;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/tappx/a/q3;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3
    invoke-direct {p0, v0}, Lcom/tappx/a/z3$b;->a(Landroid/content/Intent;)V

    :cond_12
    return-void
.end method

.method private e(Landroid/net/Uri;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/z3$b;->d(Landroid/net/Uri;)V

    return-void
.end method

.method private f(Landroid/net/Uri;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/z3$b;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_14

    .line 3
    :cond_7
    invoke-direct {p0, p1}, Lcom/tappx/a/z3$b;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4
    invoke-direct {p0, p1}, Lcom/tappx/a/z3$b;->d(Landroid/net/Uri;)V

    goto :goto_14

    .line 7
    :cond_11
    invoke-direct {p0, p1}, Lcom/tappx/a/z3$b;->e(Landroid/net/Uri;)V

    :goto_14
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    .line 2
    invoke-direct {p0, p1}, Lcom/tappx/a/z3$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_b
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/net/Uri;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-direct {p0, p1}, Lcom/tappx/a/z3$b;->f(Landroid/net/Uri;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tappx/a/z3$b;->a([Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/tappx/a/z3$b;->a(Landroid/net/Uri;)V

    return-void
.end method
