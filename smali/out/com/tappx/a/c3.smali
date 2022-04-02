.class public Lcom/tappx/a/c3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/c3$c;,
        Lcom/tappx/a/c3$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;

.field private final b:Landroid/content/Context;

.field private c:I

.field private d:Lcom/tappx/a/c3$c;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tappx/a/c3;->c:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tappx/a/c3;->e:Z

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/c3;->b:Landroid/content/Context;

    .line 8
    new-instance p1, Lcom/tappx/a/c3$a;

    invoke-direct {p1, p0}, Lcom/tappx/a/c3$a;-><init>(Lcom/tappx/a/c3;)V

    iput-object p1, p0, Lcom/tappx/a/c3;->a:Landroid/content/BroadcastReceiver;

    .line 25
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/tappx/a/c3;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tappx/a/c3;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/c3;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/c3;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    .line 2
    iget v0, p0, Lcom/tappx/a/c3;->c:I

    if-ne p1, v0, :cond_5

    return-void

    .line 3
    :cond_5
    iput p1, p0, Lcom/tappx/a/c3;->c:I

    .line 4
    invoke-direct {p0}, Lcom/tappx/a/c3;->c()V

    return-void
.end method

.method private c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c3;->d:Lcom/tappx/a/c3$c;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/tappx/a/c3;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/tappx/a/c3$c;->onDeviceScreenStateChanged(Z)V

    :cond_b
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 6
    iget-boolean v0, p0, Lcom/tappx/a/c3;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/tappx/a/c3;->e:Z

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/tappx/a/c3;->a(Lcom/tappx/a/c3$c;)V

    .line 9
    iget-object v0, p0, Lcom/tappx/a/c3;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tappx/a/c3;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public a(Lcom/tappx/a/c3$c;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/tappx/a/c3;->d:Lcom/tappx/a/c3$c;

    return-void
.end method

.method public b()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/c3;->c:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
