.class Lcom/onesignal/OSTriggerController;
.super Ljava/lang/Object;
.source "OSTriggerController.java"


# instance fields
.field dynamicTriggerController:Lcom/onesignal/OSDynamicTriggerController;

.field private final triggers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSTriggerController;->triggers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    new-instance v0, Lcom/onesignal/OSDynamicTriggerController;

    invoke-direct {v0, p1}, Lcom/onesignal/OSDynamicTriggerController;-><init>(Lcom/onesignal/OSDynamicTriggerController$OSDynamicTriggerControllerObserver;)V

    iput-object v0, p0, Lcom/onesignal/OSTriggerController;->dynamicTriggerController:Lcom/onesignal/OSDynamicTriggerController;

    return-void
.end method

.method private evaluateAndTriggers(Ljava/util/ArrayList;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSTrigger;",
            ">;)Z"
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OSTrigger;

    .line 48
    invoke-direct {p0, v0}, Lcom/onesignal/OSTriggerController;->evaluateTrigger(Lcom/onesignal/OSTrigger;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_18
    const/4 p1, 0x1

    return p1
.end method

.method private evaluateTrigger(Lcom/onesignal/OSTrigger;)Z
    .registers 8

    .line 56
    iget-object v0, p1, Lcom/onesignal/OSTrigger;->kind:Lcom/onesignal/OSTrigger$OSTriggerKind;

    sget-object v1, Lcom/onesignal/OSTrigger$OSTriggerKind;->UNKNOWN:Lcom/onesignal/OSTrigger$OSTriggerKind;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    return v2

    .line 59
    :cond_8
    iget-object v0, p1, Lcom/onesignal/OSTrigger;->kind:Lcom/onesignal/OSTrigger$OSTriggerKind;

    sget-object v1, Lcom/onesignal/OSTrigger$OSTriggerKind;->CUSTOM:Lcom/onesignal/OSTrigger$OSTriggerKind;

    if-eq v0, v1, :cond_15

    .line 60
    iget-object v0, p0, Lcom/onesignal/OSTriggerController;->dynamicTriggerController:Lcom/onesignal/OSDynamicTriggerController;

    invoke-virtual {v0, p1}, Lcom/onesignal/OSDynamicTriggerController;->dynamicTriggerShouldFire(Lcom/onesignal/OSTrigger;)Z

    move-result p1

    return p1

    .line 62
    :cond_15
    iget-object v0, p1, Lcom/onesignal/OSTrigger;->operatorType:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    .line 63
    iget-object v1, p0, Lcom/onesignal/OSTriggerController;->triggers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/onesignal/OSTrigger;->property:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    if-nez v1, :cond_31

    .line 68
    sget-object v1, Lcom/onesignal/OSTrigger$OSTriggerOperator;->NOT_EXISTS:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    if-ne v0, v1, :cond_27

    return v3

    .line 72
    :cond_27
    sget-object v1, Lcom/onesignal/OSTrigger$OSTriggerOperator;->NOT_EQUAL_TO:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    if-ne v0, v1, :cond_30

    iget-object p1, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    if-eqz p1, :cond_30

    const/4 v2, 0x1

    :cond_30
    return v2

    .line 76
    :cond_31
    sget-object v4, Lcom/onesignal/OSTrigger$OSTriggerOperator;->EXISTS:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    if-ne v0, v4, :cond_36

    return v3

    .line 78
    :cond_36
    sget-object v4, Lcom/onesignal/OSTrigger$OSTriggerOperator;->NOT_EXISTS:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    if-ne v0, v4, :cond_3b

    return v2

    .line 81
    :cond_3b
    sget-object v4, Lcom/onesignal/OSTrigger$OSTriggerOperator;->CONTAINS:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    if-ne v0, v4, :cond_4f

    .line 82
    instance-of v0, v1, Ljava/util/Collection;

    if-eqz v0, :cond_4e

    check-cast v1, Ljava/util/Collection;

    iget-object p1, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    const/4 v2, 0x1

    :cond_4e
    return v2

    .line 84
    :cond_4f
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_67

    iget-object v4, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_67

    iget-object v4, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 86
    invoke-direct {p0, v4, v5, v0}, Lcom/onesignal/OSTriggerController;->triggerMatchesStringValue(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z

    move-result v4

    if-eqz v4, :cond_67

    return v3

    .line 89
    :cond_67
    iget-object v4, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_7f

    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_7f

    iget-object v4, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    move-object v5, v1

    check-cast v5, Ljava/lang/Number;

    .line 91
    invoke-direct {p0, v4, v5, v0}, Lcom/onesignal/OSTriggerController;->triggerMatchesNumericValue(Ljava/lang/Number;Ljava/lang/Number;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z

    move-result v4

    if-eqz v4, :cond_7f

    return v3

    .line 94
    :cond_7f
    iget-object p1, p1, Lcom/onesignal/OSTrigger;->value:Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v0}, Lcom/onesignal/OSTriggerController;->triggerMatchesFlex(Ljava/lang/Object;Ljava/lang/Object;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z

    move-result p1

    if-eqz p1, :cond_88

    return v3

    :cond_88
    return v2
.end method

.method private triggerMatchesFlex(Ljava/lang/Object;Ljava/lang/Object;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 119
    :cond_4
    invoke-virtual {p3}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->checksEquality()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/OSTriggerController;->triggerMatchesStringValue(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z

    move-result p1

    return p1

    .line 122
    :cond_17
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_28

    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_28

    .line 124
    check-cast p1, Ljava/lang/Number;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/OSTriggerController;->triggerMatchesNumericValueFlex(Ljava/lang/Number;Ljava/lang/String;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z

    move-result p1

    return p1

    :cond_28
    return v0
.end method

.method private triggerMatchesNumericValue(Ljava/lang/Number;Ljava/lang/Number;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z
    .registers 9

    .line 140
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 141
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    .line 143
    sget-object v2, Lcom/onesignal/OSTriggerController$1;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerOperator:[I

    invoke-virtual {p3}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_64

    return v4

    :pswitch_16
    cmpl-double p3, p1, v0

    if-gtz p3, :cond_20

    cmpl-double p3, p1, v0

    if-nez p3, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :cond_20
    :goto_20
    return v3

    :pswitch_21
    cmpg-double p3, p1, v0

    if-ltz p3, :cond_2b

    cmpl-double p3, p1, v0

    if-nez p3, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    :cond_2b
    :goto_2b
    return v3

    :pswitch_2c
    cmpl-double p3, p1, v0

    if-lez p3, :cond_31

    goto :goto_32

    :cond_31
    const/4 v3, 0x0

    :goto_32
    return v3

    :pswitch_33
    cmpg-double p3, p1, v0

    if-gez p3, :cond_38

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    :goto_39
    return v3

    .line 147
    :pswitch_3a
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to use an invalid operator with a numeric value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p3}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 147
    invoke-static {p1, p2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return v4

    :pswitch_55
    cmpl-double p3, p1, v0

    if-eqz p3, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    :goto_5b
    return v3

    :pswitch_5c
    cmpl-double p3, p1, v0

    if-nez p3, :cond_61

    goto :goto_62

    :cond_61
    const/4 v3, 0x0

    :goto_62
    return v3

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_55
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_33
        :pswitch_2c
        :pswitch_21
        :pswitch_16
    .end packed-switch
.end method

.method private triggerMatchesNumericValueFlex(Ljava/lang/Number;Ljava/lang/String;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z
    .registers 6

    .line 131
    :try_start_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_15

    .line 136
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/OSTriggerController;->triggerMatchesNumericValue(Ljava/lang/Number;Ljava/lang/Number;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z

    move-result p1

    return p1

    :catch_15
    const/4 p1, 0x0

    return p1
.end method

.method private triggerMatchesStringValue(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OSTrigger$OSTriggerOperator;)Z
    .registers 7

    .line 102
    sget-object v0, Lcom/onesignal/OSTriggerController$1;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerOperator:[I

    invoke-virtual {p3}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_30

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2a

    .line 108
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to use an invalid operator for a string trigger comparison: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 106
    :cond_2a
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 104
    :cond_30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method evaluateMessageTriggers(Lcom/onesignal/OSInAppMessage;)Z
    .registers 4

    .line 34
    iget-object v0, p1, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 38
    :cond_a
    iget-object p1, p1, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 39
    invoke-direct {p0, v0}, Lcom/onesignal/OSTriggerController;->evaluateAndTriggers(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    :cond_23
    const/4 p1, 0x0

    return p1
.end method
