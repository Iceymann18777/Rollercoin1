.class public final enum Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;
.super Ljava/lang/Enum;
.source "LimitAdTrackingEnabledStates.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

.field public static final enum FALSE:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

.field public static final enum TRUE:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

.field public static final enum UNKNOWN:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 4
    new-instance v0, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    const-string v1, "TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;->TRUE:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    new-instance v0, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    const-string v1, "FALSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;->FALSE:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    new-instance v0, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    const-string v1, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;->UNKNOWN:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    .line 3
    sget-object v5, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;->TRUE:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;->FALSE:Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;->$VALUES:[Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;
    .registers 2

    .line 3
    const-class v0, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;
    .registers 1

    .line 3
    sget-object v0, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;->$VALUES:[Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    invoke-virtual {v0}, [Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    return-object v0
.end method
