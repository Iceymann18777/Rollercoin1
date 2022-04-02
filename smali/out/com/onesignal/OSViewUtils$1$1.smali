.class Lcom/onesignal/OSViewUtils$1$1;
.super Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;
.source "OSViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSViewUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSViewUtils$1;


# direct methods
.method constructor <init>(Lcom/onesignal/OSViewUtils$1;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/onesignal/OSViewUtils$1$1;->this$0:Lcom/onesignal/OSViewUtils$1;

    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;-><init>()V

    return-void
.end method


# virtual methods
.method available(Landroid/app/Activity;)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/onesignal/OSViewUtils$1$1;->this$0:Lcom/onesignal/OSViewUtils$1;

    iget-object v0, v0, Lcom/onesignal/OSViewUtils$1;->val$listenerKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler;->removeActivityAvailableListener(Ljava/lang/String;)V

    .line 59
    invoke-static {p1}, Lcom/onesignal/OSViewUtils;->isActivityFullyReady(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 60
    iget-object p1, p0, Lcom/onesignal/OSViewUtils$1$1;->this$0:Lcom/onesignal/OSViewUtils$1;

    iget-object p1, p1, Lcom/onesignal/OSViewUtils$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1c

    .line 62
    :cond_15
    iget-object v0, p0, Lcom/onesignal/OSViewUtils$1$1;->this$0:Lcom/onesignal/OSViewUtils$1;

    iget-object v0, v0, Lcom/onesignal/OSViewUtils$1;->val$runnable:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcom/onesignal/OSViewUtils;->decorViewReady(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :goto_1c
    return-void
.end method
