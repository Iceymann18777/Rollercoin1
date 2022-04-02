.class synthetic Lcom/onesignal/OSOutcomeEventsController$5;
.super Ljava/lang/Object;
.source "OSOutcomeEventsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OSOutcomeEventsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$onesignal$influence$model$OSInfluenceChannel:[I

.field static final synthetic $SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 257
    invoke-static {}, Lcom/onesignal/influence/model/OSInfluenceChannel;->values()[Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/onesignal/OSOutcomeEventsController$5;->$SwitchMap$com$onesignal$influence$model$OSInfluenceChannel:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceChannel;->IAM:Lcom/onesignal/influence/model/OSInfluenceChannel;

    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluenceChannel;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/onesignal/OSOutcomeEventsController$5;->$SwitchMap$com$onesignal$influence$model$OSInfluenceChannel:[I

    sget-object v3, Lcom/onesignal/influence/model/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/model/OSInfluenceChannel;

    invoke-virtual {v3}, Lcom/onesignal/influence/model/OSInfluenceChannel;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 195
    :catch_1d
    invoke-static {}, Lcom/onesignal/influence/model/OSInfluenceType;->values()[Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/onesignal/OSOutcomeEventsController$5;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    :try_start_26
    sget-object v3, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v3}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/onesignal/OSOutcomeEventsController$5;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    :try_start_38
    sget-object v0, Lcom/onesignal/OSOutcomeEventsController$5;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Lcom/onesignal/OSOutcomeEventsController$5;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->DISABLED:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4e} :catch_4e

    :catch_4e
    return-void
.end method
