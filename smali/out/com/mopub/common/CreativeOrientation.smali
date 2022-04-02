.class public final enum Lcom/mopub/common/CreativeOrientation;
.super Ljava/lang/Enum;
.source "CreativeOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/CreativeOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/CreativeOrientation;

.field public static final enum DEVICE:Lcom/mopub/common/CreativeOrientation;

.field public static final enum LANDSCAPE:Lcom/mopub/common/CreativeOrientation;

.field public static final enum PORTRAIT:Lcom/mopub/common/CreativeOrientation;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 14
    new-instance v0, Lcom/mopub/common/CreativeOrientation;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/CreativeOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/CreativeOrientation;->PORTRAIT:Lcom/mopub/common/CreativeOrientation;

    new-instance v0, Lcom/mopub/common/CreativeOrientation;

    const-string v1, "LANDSCAPE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mopub/common/CreativeOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/CreativeOrientation;->LANDSCAPE:Lcom/mopub/common/CreativeOrientation;

    new-instance v0, Lcom/mopub/common/CreativeOrientation;

    const-string v1, "DEVICE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mopub/common/CreativeOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/CreativeOrientation;->DEVICE:Lcom/mopub/common/CreativeOrientation;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mopub/common/CreativeOrientation;

    .line 13
    sget-object v5, Lcom/mopub/common/CreativeOrientation;->PORTRAIT:Lcom/mopub/common/CreativeOrientation;

    aput-object v5, v1, v2

    sget-object v2, Lcom/mopub/common/CreativeOrientation;->LANDSCAPE:Lcom/mopub/common/CreativeOrientation;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/mopub/common/CreativeOrientation;->$VALUES:[Lcom/mopub/common/CreativeOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/mopub/common/CreativeOrientation;
    .registers 2

    const-string v0, "l"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 19
    sget-object p0, Lcom/mopub/common/CreativeOrientation;->LANDSCAPE:Lcom/mopub/common/CreativeOrientation;

    return-object p0

    :cond_b
    const-string v0, "p"

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 23
    sget-object p0, Lcom/mopub/common/CreativeOrientation;->PORTRAIT:Lcom/mopub/common/CreativeOrientation;

    return-object p0

    .line 26
    :cond_16
    sget-object p0, Lcom/mopub/common/CreativeOrientation;->DEVICE:Lcom/mopub/common/CreativeOrientation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/CreativeOrientation;
    .registers 2

    .line 13
    const-class v0, Lcom/mopub/common/CreativeOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/CreativeOrientation;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/CreativeOrientation;
    .registers 1

    .line 13
    sget-object v0, Lcom/mopub/common/CreativeOrientation;->$VALUES:[Lcom/mopub/common/CreativeOrientation;

    invoke-virtual {v0}, [Lcom/mopub/common/CreativeOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/CreativeOrientation;

    return-object v0
.end method
