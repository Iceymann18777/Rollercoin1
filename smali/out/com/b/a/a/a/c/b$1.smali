.class Lcom/b/a/a/a/c/b$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/a/c/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a/c/b;


# direct methods
.method constructor <init>(Lcom/b/a/a/a/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/a/a/c/b$1;->a:Lcom/b/a/a/a/c/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p0, Lcom/b/a/a/a/c/b$1;->a:Lcom/b/a/a/a/c/b;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/b/a/a/a/c/b;->a(Lcom/b/a/a/a/c/b;Z)V

    goto :goto_46

    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    :goto_23
    iget-object p1, p0, Lcom/b/a/a/a/c/b$1;->a:Lcom/b/a/a/a/c/b;

    invoke-static {p1, v1}, Lcom/b/a/a/a/c/b;->a(Lcom/b/a/a/a/c/b;Z)V

    goto :goto_46

    :cond_29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    const-string p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_23

    :cond_46
    :goto_46
    return-void
.end method
