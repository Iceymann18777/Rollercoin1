.class Lcom/tappx/a/c3$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/c3;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/c3;


# direct methods
.method constructor <init>(Lcom/tappx/a/c3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/c3$a;->a:Lcom/tappx/a/c3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_PRESENT"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 4
    iget-object p1, p0, Lcom/tappx/a/c3$a;->a:Lcom/tappx/a/c3;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/tappx/a/c3;->a(Lcom/tappx/a/c3;Z)V

    goto :goto_24

    :cond_16
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 6
    iget-object p1, p0, Lcom/tappx/a/c3$a;->a:Lcom/tappx/a/c3;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/tappx/a/c3;->a(Lcom/tappx/a/c3;Z)V

    :cond_24
    :goto_24
    return-void
.end method
