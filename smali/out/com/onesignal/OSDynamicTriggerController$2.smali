.class synthetic Lcom/onesignal/OSDynamicTriggerController$2;
.super Ljava/lang/Object;
.source "OSDynamicTriggerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OSDynamicTriggerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$onesignal$OSTrigger$OSTriggerKind:[I

.field static final synthetic $SwitchMap$com$onesignal$OSTrigger$OSTriggerOperator:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 83
    invoke-static {}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->values()[Lcom/onesignal/OSTrigger$OSTriggerOperator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/onesignal/OSDynamicTriggerController$2;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerOperator:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/onesignal/OSTrigger$OSTriggerOperator;->LESS_THAN:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    invoke-virtual {v2}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/onesignal/OSDynamicTriggerController$2;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerOperator:[I

    sget-object v3, Lcom/onesignal/OSTrigger$OSTriggerOperator;->LESS_THAN_OR_EQUAL_TO:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    invoke-virtual {v3}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v2, Lcom/onesignal/OSDynamicTriggerController$2;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerOperator:[I

    sget-object v3, Lcom/onesignal/OSTrigger$OSTriggerOperator;->GREATER_THAN:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    invoke-virtual {v3}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v2, Lcom/onesignal/OSDynamicTriggerController$2;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerOperator:[I

    sget-object v3, Lcom/onesignal/OSTrigger$OSTriggerOperator;->GREATER_THAN_OR_EQUAL_TO:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    invoke-virtual {v3}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v2, Lcom/onesignal/OSDynamicTriggerController$2;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerOperator:[I

    sget-object v3, Lcom/onesignal/OSTrigger$OSTriggerOperator;->EQUAL_TO:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    invoke-virtual {v3}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v2, Lcom/onesignal/OSDynamicTriggerController$2;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerOperator:[I

    sget-object v3, Lcom/onesignal/OSTrigger$OSTriggerOperator;->NOT_EQUAL_TO:Lcom/onesignal/OSTrigger$OSTriggerOperator;

    invoke-virtual {v3}, Lcom/onesignal/OSTrigger$OSTriggerOperator;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    .line 41
    :catch_49
    invoke-static {}, Lcom/onesignal/OSTrigger$OSTriggerKind;->values()[Lcom/onesignal/OSTrigger$OSTriggerKind;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/onesignal/OSDynamicTriggerController$2;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerKind:[I

    :try_start_52
    sget-object v3, Lcom/onesignal/OSTrigger$OSTriggerKind;->SESSION_TIME:Lcom/onesignal/OSTrigger$OSTriggerKind;

    invoke-virtual {v3}, Lcom/onesignal/OSTrigger$OSTriggerKind;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5a
    sget-object v1, Lcom/onesignal/OSDynamicTriggerController$2;->$SwitchMap$com$onesignal$OSTrigger$OSTriggerKind:[I

    sget-object v2, Lcom/onesignal/OSTrigger$OSTriggerKind;->TIME_SINCE_LAST_IN_APP:Lcom/onesignal/OSTrigger$OSTriggerKind;

    invoke-virtual {v2}, Lcom/onesignal/OSTrigger$OSTriggerKind;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    :catch_64
    return-void
.end method
