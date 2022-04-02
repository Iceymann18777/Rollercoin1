.class Lcom/onesignal/OSDynamicTriggerTimer;
.super Ljava/lang/Object;
.source "OSDynamicTriggerTimer.java"


# direct methods
.method static scheduleTrigger(Ljava/util/TimerTask;Ljava/lang/String;J)V
    .registers 7

    .line 10
    new-instance v0, Ljava/util/Timer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trigger_timer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p0, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
