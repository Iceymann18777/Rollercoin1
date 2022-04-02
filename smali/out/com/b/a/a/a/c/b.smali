.class public Lcom/b/a/a/a/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/a/c/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/b/a/a/a/c/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private e:Z

.field private f:Lcom/b/a/a/a/c/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/b/a/a/a/c/b;

    invoke-direct {v0}, Lcom/b/a/a/a/c/b;-><init>()V

    sput-object v0, Lcom/b/a/a/a/c/b;->a:Lcom/b/a/a/a/c/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/b/a/a/a/c/b;
    .registers 1

    sget-object v0, Lcom/b/a/a/a/c/b;->a:Lcom/b/a/a/a/c/b;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/a/a/c/b;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/b/a/a/a/c/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/b/a/a/a/c/b;->e:Z

    if-eq v0, p1, :cond_18

    iput-boolean p1, p0, Lcom/b/a/a/a/c/b;->e:Z

    iget-boolean p1, p0, Lcom/b/a/a/a/c/b;->d:Z

    if-eqz p1, :cond_18

    invoke-direct {p0}, Lcom/b/a/a/a/c/b;->g()V

    iget-object p1, p0, Lcom/b/a/a/a/c/b;->f:Lcom/b/a/a/a/c/b$a;

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/b/a/a/a/c/b;->d()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/b/a/a/a/c/b$a;->a(Z)V

    :cond_18
    return-void
.end method

.method private e()V
    .registers 4

    new-instance v0, Lcom/b/a/a/a/c/b$1;

    invoke-direct {v0, p0}, Lcom/b/a/a/a/c/b$1;-><init>(Lcom/b/a/a/a/c/b;)V

    iput-object v0, p0, Lcom/b/a/a/a/c/b;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/a/a/c/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/b/a/a/a/c/b;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/a/c/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/b/a/a/a/c/b;->c:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/a/c/b;->c:Landroid/content/BroadcastReceiver;

    :cond_e
    return-void
.end method

.method private g()V
    .registers 4

    iget-boolean v0, p0, Lcom/b/a/a/a/c/b;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/b/a/a/a/c/a;->a()Lcom/b/a/a/a/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/a/c/a;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/a/a/b/i;

    invoke-virtual {v2}, Lcom/b/a/a/a/b/i;->f()Lcom/b/a/a/a/g/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/b/a/a/a/g/a;->a(Z)V

    goto :goto_10

    :cond_24
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a/a/c/b;->b:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/b/a/a/a/c/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/a/a/c/b;->f:Lcom/b/a/a/a/c/b$a;

    return-void
.end method

.method public b()V
    .registers 2

    invoke-direct {p0}, Lcom/b/a/a/a/c/b;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/a/c/b;->d:Z

    invoke-direct {p0}, Lcom/b/a/a/a/c/b;->g()V

    return-void
.end method

.method public c()V
    .registers 2

    invoke-direct {p0}, Lcom/b/a/a/a/c/b;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/a/a/c/b;->d:Z

    iput-boolean v0, p0, Lcom/b/a/a/a/c/b;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/a/c/b;->f:Lcom/b/a/a/a/c/b$a;

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/b/a/a/a/c/b;->e:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
