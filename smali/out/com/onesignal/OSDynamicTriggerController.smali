.class Lcom/onesignal/OSDynamicTriggerController;
.super Ljava/lang/Object;
.source "OSDynamicTriggerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;
    }
.end annotation


# static fields
.field static sessionLaunchTime:Ljava/util/Date;


# instance fields
.field private final observer:Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;

.field private final scheduledMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/onesignal/OSDynamicTriggerController;->sessionLaunchTime:Ljava/util/Date;

    return-void
.end method

.method constructor <init>(Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSDynamicTriggerController;->scheduledMessages:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lcom/onesignal/OSDynamicTriggerController;->observer:Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OSDynamicTriggerController;)Ljava/util/ArrayList;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/onesignal/OSDynamicTriggerController;->scheduledMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/onesignal/OSDynamicTriggerController;)Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/onesignal/OSDynamicTriggerController;->observer:Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;

    return-object p0
.end method

.method private static evaluateTimeIntervalWithOperator(DDLcom/onesignal/OSTrigger$OSTriggerOperator;)Z
    .registers 8

    .line 83
    sget-object v0, Lcom/onesignal/OSDynamicTriggerController$2;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerOperator:[I

    invoke-virtual {p4}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_5c

    .line 97
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempted to apply an invalid operator on a time-based in-app-message trigger: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return v2

    .line 95
    :pswitch_28
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/OSDynamicTriggerController;->roughlyEqual(DD)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 93
    :pswitch_2e
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/OSDynamicTriggerController;->roughlyEqual(DD)Z

    move-result p0

    return p0

    :pswitch_33
    cmpl-double p4, p2, p0

    if-gez p4, :cond_3f

    .line 91
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/OSDynamicTriggerController;->roughlyEqual(DD)Z

    move-result p0

    if-eqz p0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :cond_3f
    :goto_3f
    return v1

    :pswitch_40
    cmpl-double p4, p2, p0

    if-lez p4, :cond_45

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    :goto_46
    return v1

    :pswitch_47
    cmpg-double p4, p2, p0

    if-lez p4, :cond_53

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/OSDynamicTriggerController;->roughlyEqual(DD)Z

    move-result p0

    if-eqz p0, :cond_52

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :cond_53
    :goto_53
    return v1

    :pswitch_54
    cmpg-double p4, p2, p0

    if-gez p4, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    return v1

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_54
        :pswitch_47
        :pswitch_40
        :pswitch_33
        :pswitch_2e
        :pswitch_28
    .end packed-switch
.end method

.method private static roughlyEqual(DD)Z
    .registers 5

    sub-double/2addr p0, p2

    .line 103
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3fd3333333333333L    # 0.3

    cmpg-double v0, p0, p2

    if-gez v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method


# virtual methods
.method dynamicTriggerShouldFire(Lcom/onesignal/OSTrigger;)Z
    .registers 16

    .line 32
    iget-object v0, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 35
    :cond_6
    iget-object v0, p0, Lcom/onesignal/OSDynamicTriggerController;->scheduledMessages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 37
    :try_start_9
    iget-object v2, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-nez v2, :cond_11

    .line 38
    monitor-exit v0

    return v1

    .line 41
    :cond_11
    sget-object v2, Lcom/onesignal/OSDynamicTriggerController$2;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerKind:[I

    iget-object v3, p1, Lcom/onesignal/OSTrigger;->kind:Lcom/onesignal/OSTrigger$OSTriggerKind;

    invoke-virtual {v3}, Lcom/onesignal/OSTrigger$OSTriggerKind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eq v2, v3, :cond_4b

    const/4 v6, 0x2

    if-eq v2, v6, :cond_25

    move-wide v6, v4

    goto :goto_5b

    .line 46
    :cond_25
    invoke-static {}, Lcom/onesignal/OSInAppMessageController;->getController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessageController;->isInAppMessageShowing()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 47
    monitor-exit v0

    return v1

    .line 48
    :cond_31
    invoke-static {}, Lcom/onesignal/OSInAppMessageController;->getController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v2

    iget-object v2, v2, Lcom/onesignal/OSInAppMessageController;->lastTimeInAppDismissed:Ljava/util/Date;

    if-nez v2, :cond_3d

    const-wide/32 v6, 0xf423f

    goto :goto_5b

    .line 52
    :cond_3d
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    goto :goto_5a

    .line 43
    :cond_4b
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sget-object v2, Lcom/onesignal/OSDynamicTriggerController;->sessionLaunchTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    :goto_5a
    sub-long/2addr v6, v8

    .line 56
    :goto_5b
    iget-object v2, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double v8, v8, v10

    double-to-long v8, v8

    long-to-double v10, v8

    long-to-double v12, v6

    .line 57
    iget-object v2, p1, Lcom/onesignal/OSTrigger;->operatorType:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    invoke-static {v10, v11, v12, v13, v2}, Lcom/onesignal/OSDynamicTriggerController;->evaluateTimeIntervalWithOperator(DDLcom/onesignal/OSTrigger$OSTriggerOperator;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 58
    monitor-exit v0

    return v3

    :cond_77
    sub-long/2addr v8, v6

    cmp-long v2, v8, v4

    if-gtz v2, :cond_7e

    .line 62
    monitor-exit v0

    return v1

    .line 65
    :cond_7e
    iget-object v2, p0, Lcom/onesignal/OSDynamicTriggerController;->scheduledMessages:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/onesignal/OSTrigger;->triggerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 66
    monitor-exit v0

    return v1

    .line 68
    :cond_8a
    new-instance v2, Lcom/onesignal/OSDynamicTriggerController$1;

    invoke-direct {v2, p0, p1}, Lcom/onesignal/OSDynamicTriggerController$1;-><init>(Lcom/onesignal/OSDynamicTriggerController;Lcom/onesignal/OSTrigger;)V

    iget-object v3, p1, Lcom/onesignal/OSTrigger;->triggerId:Ljava/lang/String;

    invoke-static {v2, v3, v8, v9}, Lcom/onesignal/OSDynamicTriggerTimer;->scheduleTrigger(Ljava/util/TimerTask;Ljava/lang/String;J)V

    .line 76
    iget-object v2, p0, Lcom/onesignal/OSDynamicTriggerController;->scheduledMessages:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/onesignal/OSTrigger;->triggerId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    monitor-exit v0

    return v1

    :catchall_9d
    move-exception p1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9 .. :try_end_9f} :catchall_9d

    throw p1
.end method
