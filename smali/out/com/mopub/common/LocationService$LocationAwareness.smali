.class public final enum Lcom/mopub/common/LocationService$LocationAwareness;
.super Ljava/lang/Enum;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationAwareness"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/LocationService$LocationAwareness;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/LocationService$LocationAwareness;

.field public static final enum DISABLED:Lcom/mopub/common/LocationService$LocationAwareness;

.field public static final enum NORMAL:Lcom/mopub/common/LocationService$LocationAwareness;

.field public static final enum TRUNCATED:Lcom/mopub/common/LocationService$LocationAwareness;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 25
    new-instance v0, Lcom/mopub/common/LocationService$LocationAwareness;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/LocationService$LocationAwareness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/LocationService$LocationAwareness;->NORMAL:Lcom/mopub/common/LocationService$LocationAwareness;

    new-instance v0, Lcom/mopub/common/LocationService$LocationAwareness;

    const-string v1, "TRUNCATED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mopub/common/LocationService$LocationAwareness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/LocationService$LocationAwareness;->TRUNCATED:Lcom/mopub/common/LocationService$LocationAwareness;

    new-instance v0, Lcom/mopub/common/LocationService$LocationAwareness;

    const-string v1, "DISABLED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mopub/common/LocationService$LocationAwareness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/LocationService$LocationAwareness;->DISABLED:Lcom/mopub/common/LocationService$LocationAwareness;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mopub/common/LocationService$LocationAwareness;

    .line 24
    sget-object v5, Lcom/mopub/common/LocationService$LocationAwareness;->NORMAL:Lcom/mopub/common/LocationService$LocationAwareness;

    aput-object v5, v1, v2

    sget-object v2, Lcom/mopub/common/LocationService$LocationAwareness;->TRUNCATED:Lcom/mopub/common/LocationService$LocationAwareness;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/mopub/common/LocationService$LocationAwareness;->$VALUES:[Lcom/mopub/common/LocationService$LocationAwareness;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromMoPubLocationAwareness(Lcom/mopub/common/MoPub$LocationAwareness;)Lcom/mopub/common/LocationService$LocationAwareness;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    sget-object v0, Lcom/mopub/common/MoPub$LocationAwareness;->DISABLED:Lcom/mopub/common/MoPub$LocationAwareness;

    if-ne p0, v0, :cond_7

    .line 47
    sget-object p0, Lcom/mopub/common/LocationService$LocationAwareness;->DISABLED:Lcom/mopub/common/LocationService$LocationAwareness;

    return-object p0

    .line 48
    :cond_7
    sget-object v0, Lcom/mopub/common/MoPub$LocationAwareness;->TRUNCATED:Lcom/mopub/common/MoPub$LocationAwareness;

    if-ne p0, v0, :cond_e

    .line 49
    sget-object p0, Lcom/mopub/common/LocationService$LocationAwareness;->TRUNCATED:Lcom/mopub/common/LocationService$LocationAwareness;

    return-object p0

    .line 51
    :cond_e
    sget-object p0, Lcom/mopub/common/LocationService$LocationAwareness;->NORMAL:Lcom/mopub/common/LocationService$LocationAwareness;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/LocationService$LocationAwareness;
    .registers 2

    .line 24
    const-class v0, Lcom/mopub/common/LocationService$LocationAwareness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/LocationService$LocationAwareness;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/LocationService$LocationAwareness;
    .registers 1

    .line 24
    sget-object v0, Lcom/mopub/common/LocationService$LocationAwareness;->$VALUES:[Lcom/mopub/common/LocationService$LocationAwareness;

    invoke-virtual {v0}, [Lcom/mopub/common/LocationService$LocationAwareness;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/LocationService$LocationAwareness;

    return-object v0
.end method


# virtual methods
.method public getNewLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    sget-object v0, Lcom/mopub/common/LocationService$LocationAwareness;->TRUNCATED:Lcom/mopub/common/LocationService$LocationAwareness;

    if-ne p0, v0, :cond_7

    .line 35
    sget-object v0, Lcom/mopub/common/MoPub$LocationAwareness;->TRUNCATED:Lcom/mopub/common/MoPub$LocationAwareness;

    return-object v0

    .line 36
    :cond_7
    sget-object v0, Lcom/mopub/common/LocationService$LocationAwareness;->DISABLED:Lcom/mopub/common/LocationService$LocationAwareness;

    if-ne p0, v0, :cond_e

    .line 37
    sget-object v0, Lcom/mopub/common/MoPub$LocationAwareness;->DISABLED:Lcom/mopub/common/MoPub$LocationAwareness;

    return-object v0

    .line 39
    :cond_e
    sget-object v0, Lcom/mopub/common/MoPub$LocationAwareness;->NORMAL:Lcom/mopub/common/MoPub$LocationAwareness;

    return-object v0
.end method
