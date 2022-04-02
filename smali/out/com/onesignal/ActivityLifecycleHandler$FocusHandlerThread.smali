.class Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;
.super Landroid/os/HandlerThread;
.source "ActivityLifecycleHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/ActivityLifecycleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FocusHandlerThread"
.end annotation


# instance fields
.field private appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 3

    const-string v0, "FocusHandlerThread"

    .line 223
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->start()V

    .line 225
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method hasBackgrounded()Z
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->access$200(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method resetBackgroundState()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 234
    invoke-static {v0, v1}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->access$202(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;Z)Z

    :cond_8
    return-void
.end method

.method runRunnable(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)V
    .registers 5

    .line 242
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    if-eqz v0, :cond_13

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->access$200(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->access$300(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 245
    :cond_13
    iput-object p1, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->appFocusRunnable:Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    .line 246
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method stopScheduledRunnable()V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
