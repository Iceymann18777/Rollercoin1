.class public final enum Lcom/mopub/common/privacy/ConsentStatus;
.super Ljava/lang/Enum;
.source "ConsentStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/privacy/ConsentStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/privacy/ConsentStatus;

.field public static final enum DNT:Lcom/mopub/common/privacy/ConsentStatus;

.field public static final enum EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

.field public static final enum EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

.field public static final enum POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

.field public static final enum UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 17
    new-instance v0, Lcom/mopub/common/privacy/ConsentStatus;

    const-string v1, "EXPLICIT_YES"

    const/4 v2, 0x0

    const-string v3, "explicit_yes"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/privacy/ConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    .line 22
    new-instance v0, Lcom/mopub/common/privacy/ConsentStatus;

    const-string v1, "EXPLICIT_NO"

    const/4 v3, 0x1

    const-string v4, "explicit_no"

    invoke-direct {v0, v1, v3, v4}, Lcom/mopub/common/privacy/ConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    .line 28
    new-instance v0, Lcom/mopub/common/privacy/ConsentStatus;

    const-string v1, "UNKNOWN"

    const/4 v4, 0x2

    const-string v5, "unknown"

    invoke-direct {v0, v1, v4, v5}, Lcom/mopub/common/privacy/ConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    .line 35
    new-instance v0, Lcom/mopub/common/privacy/ConsentStatus;

    const-string v1, "POTENTIAL_WHITELIST"

    const/4 v5, 0x3

    const-string v6, "potential_whitelist"

    invoke-direct {v0, v1, v5, v6}, Lcom/mopub/common/privacy/ConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    .line 41
    new-instance v0, Lcom/mopub/common/privacy/ConsentStatus;

    const-string v1, "DNT"

    const/4 v6, 0x4

    const-string v7, "dnt"

    invoke-direct {v0, v1, v6, v7}, Lcom/mopub/common/privacy/ConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentStatus;->DNT:Lcom/mopub/common/privacy/ConsentStatus;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/mopub/common/privacy/ConsentStatus;

    .line 13
    sget-object v7, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    aput-object v7, v1, v2

    sget-object v2, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/mopub/common/privacy/ConsentStatus;->$VALUES:[Lcom/mopub/common/privacy/ConsentStatus;

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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/mopub/common/privacy/ConsentStatus;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentStatus;
    .registers 6

    if-nez p0, :cond_5

    .line 62
    sget-object p0, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    return-object p0

    .line 65
    :cond_5
    invoke-static {}, Lcom/mopub/common/privacy/ConsentStatus;->values()[Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 66
    invoke-virtual {v3}, Lcom/mopub/common/privacy/ConsentStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 71
    :cond_1d
    sget-object p0, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentStatus;
    .registers 2

    .line 13
    const-class v0, Lcom/mopub/common/privacy/ConsentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/privacy/ConsentStatus;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/privacy/ConsentStatus;
    .registers 1

    .line 13
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->$VALUES:[Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0}, [Lcom/mopub/common/privacy/ConsentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/privacy/ConsentStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentStatus;->mValue:Ljava/lang/String;

    return-object v0
.end method
