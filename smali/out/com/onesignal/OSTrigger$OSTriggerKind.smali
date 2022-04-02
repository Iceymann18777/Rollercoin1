.class public final enum Lcom/onesignal/OSTrigger$OSTriggerKind;
.super Ljava/lang/Enum;
.source "OSTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OSTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OSTriggerKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/OSTrigger$OSTriggerKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/OSTrigger$OSTriggerKind;

.field public static final enum CUSTOM:Lcom/onesignal/OSTrigger$OSTriggerKind;

.field public static final enum SESSION_TIME:Lcom/onesignal/OSTrigger$OSTriggerKind;

.field public static final enum TIME_SINCE_LAST_IN_APP:Lcom/onesignal/OSTrigger$OSTriggerKind;

.field public static final enum UNKNOWN:Lcom/onesignal/OSTrigger$OSTriggerKind;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 51
    new-instance v0, Lcom/onesignal/OSTrigger$OSTriggerKind;

    const-string v1, "TIME_SINCE_LAST_IN_APP"

    const/4 v2, 0x0

    const-string v3, "min_time_since"

    invoke-direct {v0, v1, v2, v3}, Lcom/onesignal/OSTrigger$OSTriggerKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/OSTrigger$OSTriggerKind;->TIME_SINCE_LAST_IN_APP:Lcom/onesignal/OSTrigger$OSTriggerKind;

    .line 52
    new-instance v0, Lcom/onesignal/OSTrigger$OSTriggerKind;

    const-string v1, "SESSION_TIME"

    const/4 v3, 0x1

    const-string v4, "session_time"

    invoke-direct {v0, v1, v3, v4}, Lcom/onesignal/OSTrigger$OSTriggerKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/OSTrigger$OSTriggerKind;->SESSION_TIME:Lcom/onesignal/OSTrigger$OSTriggerKind;

    .line 53
    new-instance v0, Lcom/onesignal/OSTrigger$OSTriggerKind;

    const-string v1, "CUSTOM"

    const/4 v4, 0x2

    const-string v5, "custom"

    invoke-direct {v0, v1, v4, v5}, Lcom/onesignal/OSTrigger$OSTriggerKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/OSTrigger$OSTriggerKind;->CUSTOM:Lcom/onesignal/OSTrigger$OSTriggerKind;

    .line 54
    new-instance v0, Lcom/onesignal/OSTrigger$OSTriggerKind;

    const-string v1, "UNKNOWN"

    const/4 v5, 0x3

    const-string v6, "unknown"

    invoke-direct {v0, v1, v5, v6}, Lcom/onesignal/OSTrigger$OSTriggerKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/OSTrigger$OSTriggerKind;->UNKNOWN:Lcom/onesignal/OSTrigger$OSTriggerKind;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/onesignal/OSTrigger$OSTriggerKind;

    .line 50
    sget-object v6, Lcom/onesignal/OSTrigger$OSTriggerKind;->TIME_SINCE_LAST_IN_APP:Lcom/onesignal/OSTrigger$OSTriggerKind;

    aput-object v6, v1, v2

    sget-object v2, Lcom/onesignal/OSTrigger$OSTriggerKind;->SESSION_TIME:Lcom/onesignal/OSTrigger$OSTriggerKind;

    aput-object v2, v1, v3

    sget-object v2, Lcom/onesignal/OSTrigger$OSTriggerKind;->CUSTOM:Lcom/onesignal/OSTrigger$OSTriggerKind;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/onesignal/OSTrigger$OSTriggerKind;->$VALUES:[Lcom/onesignal/OSTrigger$OSTriggerKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/onesignal/OSTrigger$OSTriggerKind;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/onesignal/OSTrigger$OSTriggerKind;
    .registers 6

    .line 67
    invoke-static {}, Lcom/onesignal/OSTrigger$OSTriggerKind;->values()[Lcom/onesignal/OSTrigger$OSTriggerKind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 68
    iget-object v4, v3, Lcom/onesignal/OSTrigger$OSTriggerKind;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 71
    :cond_16
    sget-object p0, Lcom/onesignal/OSTrigger$OSTriggerKind;->UNKNOWN:Lcom/onesignal/OSTrigger$OSTriggerKind;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/OSTrigger$OSTriggerKind;
    .registers 2

    .line 50
    const-class v0, Lcom/onesignal/OSTrigger$OSTriggerKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/OSTrigger$OSTriggerKind;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/OSTrigger$OSTriggerKind;
    .registers 1

    .line 50
    sget-object v0, Lcom/onesignal/OSTrigger$OSTriggerKind;->$VALUES:[Lcom/onesignal/OSTrigger$OSTriggerKind;

    invoke-virtual {v0}, [Lcom/onesignal/OSTrigger$OSTriggerKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/OSTrigger$OSTriggerKind;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/onesignal/OSTrigger$OSTriggerKind;->value:Ljava/lang/String;

    return-object v0
.end method
