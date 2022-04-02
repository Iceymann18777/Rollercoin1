.class public final enum Lcom/integralads/avid/library/mopub/session/internal/SessionType;
.super Ljava/lang/Enum;
.source "SessionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/integralads/avid/library/mopub/session/internal/SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/integralads/avid/library/mopub/session/internal/SessionType;

.field public static final enum DISPLAY:Lcom/integralads/avid/library/mopub/session/internal/SessionType;

.field public static final enum MANAGED_DISPLAY:Lcom/integralads/avid/library/mopub/session/internal/SessionType;

.field public static final enum MANAGED_VIDEO:Lcom/integralads/avid/library/mopub/session/internal/SessionType;

.field public static final enum VIDEO:Lcom/integralads/avid/library/mopub/session/internal/SessionType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 7
    new-instance v0, Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    const-string v1, "DISPLAY"

    const/4 v2, 0x0

    const-string v3, "display"

    invoke-direct {v0, v1, v2, v3}, Lcom/integralads/avid/library/mopub/session/internal/SessionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/integralads/avid/library/mopub/session/internal/SessionType;->DISPLAY:Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    .line 8
    new-instance v0, Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    const-string v1, "VIDEO"

    const/4 v3, 0x1

    const-string v4, "video"

    invoke-direct {v0, v1, v3, v4}, Lcom/integralads/avid/library/mopub/session/internal/SessionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/integralads/avid/library/mopub/session/internal/SessionType;->VIDEO:Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    .line 9
    new-instance v0, Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    const-string v1, "MANAGED_DISPLAY"

    const/4 v4, 0x2

    const-string v5, "managedDisplay"

    invoke-direct {v0, v1, v4, v5}, Lcom/integralads/avid/library/mopub/session/internal/SessionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/integralads/avid/library/mopub/session/internal/SessionType;->MANAGED_DISPLAY:Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    .line 10
    new-instance v0, Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    const-string v1, "MANAGED_VIDEO"

    const/4 v5, 0x3

    const-string v6, "managedVideo"

    invoke-direct {v0, v1, v5, v6}, Lcom/integralads/avid/library/mopub/session/internal/SessionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/integralads/avid/library/mopub/session/internal/SessionType;->MANAGED_VIDEO:Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    .line 6
    sget-object v6, Lcom/integralads/avid/library/mopub/session/internal/SessionType;->DISPLAY:Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/integralads/avid/library/mopub/session/internal/SessionType;->VIDEO:Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/integralads/avid/library/mopub/session/internal/SessionType;->MANAGED_DISPLAY:Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/integralads/avid/library/mopub/session/internal/SessionType;->$VALUES:[Lcom/integralads/avid/library/mopub/session/internal/SessionType;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/integralads/avid/library/mopub/session/internal/SessionType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/SessionType;
    .registers 2

    .line 6
    const-class v0, Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    return-object p0
.end method

.method public static values()[Lcom/integralads/avid/library/mopub/session/internal/SessionType;
    .registers 1

    .line 6
    sget-object v0, Lcom/integralads/avid/library/mopub/session/internal/SessionType;->$VALUES:[Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    invoke-virtual {v0}, [Lcom/integralads/avid/library/mopub/session/internal/SessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/SessionType;->value:Ljava/lang/String;

    return-object v0
.end method
