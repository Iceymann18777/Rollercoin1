.class final enum Lcom/mopub/mobileads/VastResource$CreativeType;
.super Ljava/lang/Enum;
.source "VastResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CreativeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/VastResource$CreativeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/VastResource$CreativeType;

.field public static final enum IMAGE:Lcom/mopub/mobileads/VastResource$CreativeType;

.field public static final enum JAVASCRIPT:Lcom/mopub/mobileads/VastResource$CreativeType;

.field public static final enum NONE:Lcom/mopub/mobileads/VastResource$CreativeType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 43
    new-instance v0, Lcom/mopub/mobileads/VastResource$CreativeType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/VastResource$CreativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastResource$CreativeType;->NONE:Lcom/mopub/mobileads/VastResource$CreativeType;

    .line 44
    new-instance v0, Lcom/mopub/mobileads/VastResource$CreativeType;

    const-string v1, "IMAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/VastResource$CreativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastResource$CreativeType;->IMAGE:Lcom/mopub/mobileads/VastResource$CreativeType;

    .line 45
    new-instance v0, Lcom/mopub/mobileads/VastResource$CreativeType;

    const-string v1, "JAVASCRIPT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mopub/mobileads/VastResource$CreativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastResource$CreativeType;->JAVASCRIPT:Lcom/mopub/mobileads/VastResource$CreativeType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mopub/mobileads/VastResource$CreativeType;

    .line 42
    sget-object v5, Lcom/mopub/mobileads/VastResource$CreativeType;->NONE:Lcom/mopub/mobileads/VastResource$CreativeType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/mopub/mobileads/VastResource$CreativeType;->IMAGE:Lcom/mopub/mobileads/VastResource$CreativeType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/mopub/mobileads/VastResource$CreativeType;->$VALUES:[Lcom/mopub/mobileads/VastResource$CreativeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/VastResource$CreativeType;
    .registers 2

    .line 42
    const-class v0, Lcom/mopub/mobileads/VastResource$CreativeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/VastResource$CreativeType;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/VastResource$CreativeType;
    .registers 1

    .line 42
    sget-object v0, Lcom/mopub/mobileads/VastResource$CreativeType;->$VALUES:[Lcom/mopub/mobileads/VastResource$CreativeType;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/VastResource$CreativeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/VastResource$CreativeType;

    return-object v0
.end method
