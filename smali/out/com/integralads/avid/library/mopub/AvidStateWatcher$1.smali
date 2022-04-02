.class Lcom/integralads/avid/library/mopub/AvidStateWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "AvidStateWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/integralads/avid/library/mopub/AvidStateWatcher;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/integralads/avid/library/mopub/AvidStateWatcher;


# direct methods
.method constructor <init>(Lcom/integralads/avid/library/mopub/AvidStateWatcher;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher$1;->this$0:Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 86
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 87
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher$1;->this$0:Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->access$000(Lcom/integralads/avid/library/mopub/AvidStateWatcher;Z)V

    goto :goto_4a

    .line 88
    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 89
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher$1;->this$0:Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    invoke-static {p1, v1}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->access$000(Lcom/integralads/avid/library/mopub/AvidStateWatcher;Z)V

    goto :goto_4a

    .line 90
    :cond_29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4a

    const-string p2, "keyguard"

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_4a

    .line 92
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p1

    if-nez p1, :cond_4a

    .line 93
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher$1;->this$0:Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    invoke-static {p1, v1}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->access$000(Lcom/integralads/avid/library/mopub/AvidStateWatcher;Z)V

    :cond_4a
    :goto_4a
    return-void
.end method
