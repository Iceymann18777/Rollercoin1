.class Lcom/tappx/a/d4$i;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/d4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field final synthetic c:Lcom/tappx/a/d4;


# direct methods
.method constructor <init>(Lcom/tappx/a/d4;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/d4$i;->c:Lcom/tappx/a/d4;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/tappx/a/d4$i;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/tappx/a/d4$i;->a:Landroid/content/Context;

    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/tappx/a/d4$i;->a:Landroid/content/Context;

    :cond_a
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/d4$i;->a:Landroid/content/Context;

    if-eqz p1, :cond_12

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_12
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/tappx/a/d4$i;->a:Landroid/content/Context;

    if-nez p1, :cond_5

    return-void

    .line 5
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 6
    iget-object p1, p0, Lcom/tappx/a/d4$i;->c:Lcom/tappx/a/d4;

    invoke-static {p1}, Lcom/tappx/a/d4;->h(Lcom/tappx/a/d4;)I

    move-result p1

    .line 8
    iget p2, p0, Lcom/tappx/a/d4$i;->b:I

    if-eq p1, p2, :cond_28

    .line 9
    iget-object p2, p0, Lcom/tappx/a/d4$i;->c:Lcom/tappx/a/d4;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/d4;Z)Z

    .line 10
    iput p1, p0, Lcom/tappx/a/d4$i;->b:I

    .line 11
    iget-object p2, p0, Lcom/tappx/a/d4$i;->c:Lcom/tappx/a/d4;

    invoke-virtual {p2, p1}, Lcom/tappx/a/d4;->a(I)V

    :cond_28
    return-void
.end method
