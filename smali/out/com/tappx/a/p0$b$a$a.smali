.class final Lcom/tappx/a/p0$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/p0$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tappx/a/p0$b$a$a;->b:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/tappx/a/p0$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/p0$b$a$a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/p0$b$a$a;)Ljava/lang/String;
    .registers 1

    .line 2
    invoke-direct {p0}, Lcom/tappx/a/p0$b$a$a;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/tappx/a/p0$b$a$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/p0$b$a$a;->a:Ljava/lang/String;

    return-object p1
.end method

.method private b()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tappx/a/p0$b$a$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .line 3
    invoke-static {}, Lcom/tappx/a/g3;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4
    invoke-direct {p0}, Lcom/tappx/a/p0$b$a$a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_b
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 7
    new-instance v1, Lcom/tappx/a/p0$b$a$a$a;

    invoke-direct {v1, p0, v0}, Lcom/tappx/a/p0$b$a$a$a;-><init>(Lcom/tappx/a/p0$b$a$a;Ljava/util/concurrent/CountDownLatch;)V

    .line 14
    invoke-static {v1}, Lcom/tappx/a/g3;->a(Ljava/lang/Runnable;)V

    .line 16
    :try_start_19
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 17
    iget-object v0, p0, Lcom/tappx/a/p0$b$a$a;->a:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    const/4 v0, 0x0

    return-object v0
.end method
