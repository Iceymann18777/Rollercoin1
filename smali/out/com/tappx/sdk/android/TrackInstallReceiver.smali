.class public Lcom/tappx/sdk/android/TrackInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:Lcom/tappx/a/a3;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Lcom/tappx/a/a3;

    invoke-direct {v0}, Lcom/tappx/a/a3;-><init>()V

    iput-object v0, p0, Lcom/tappx/sdk/android/TrackInstallReceiver;->a:Lcom/tappx/a/a3;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "ilp"

    .line 1
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/tappx/a/j0;->a(Ljava/lang/String;)V

    goto :goto_21

    .line 4
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5
    iget-object v0, p0, Lcom/tappx/sdk/android/TrackInstallReceiver;->a:Lcom/tappx/a/a3;

    invoke-virtual {v0, p1, p2}, Lcom/tappx/a/a3;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_21
    :goto_21
    return-void
.end method
