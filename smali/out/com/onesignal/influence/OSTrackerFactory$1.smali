.class synthetic Lcom/onesignal/influence/OSTrackerFactory$1;
.super Ljava/lang/Object;
.source "OSTrackerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/influence/OSTrackerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$onesignal$influence$model$OSInfluenceChannel:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 37
    invoke-static {}, Lcom/onesignal/influence/model/OSInfluenceChannel;->values()[Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/onesignal/influence/OSTrackerFactory$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceChannel:[I

    :try_start_9
    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/model/OSInfluenceChannel;

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceChannel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/onesignal/influence/OSTrackerFactory$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceChannel:[I

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceChannel;->IAM:Lcom/onesignal/influence/model/OSInfluenceChannel;

    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceChannel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
