.class synthetic Lcom/onesignal/outcomes/OSOutcomeEventsCache$1;
.super Ljava/lang/Object;
.source "OSOutcomeEventsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/outcomes/OSOutcomeEventsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 208
    invoke-static {}, Lcom/onesignal/influence/model/OSInfluenceType;->values()[Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/onesignal/outcomes/OSOutcomeEventsCache$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    :try_start_9
    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/onesignal/outcomes/OSOutcomeEventsCache$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/onesignal/outcomes/OSOutcomeEventsCache$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/onesignal/outcomes/OSOutcomeEventsCache$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->DISABLED:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
