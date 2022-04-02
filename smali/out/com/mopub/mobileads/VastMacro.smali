.class final enum Lcom/mopub/mobileads/VastMacro;
.super Ljava/lang/Enum;
.source "VastMacro.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/VastMacro;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/VastMacro;

.field public static final enum ASSETURI:Lcom/mopub/mobileads/VastMacro;

.field public static final enum CACHEBUSTING:Lcom/mopub/mobileads/VastMacro;

.field public static final enum CONTENTPLAYHEAD:Lcom/mopub/mobileads/VastMacro;

.field public static final enum ERRORCODE:Lcom/mopub/mobileads/VastMacro;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 16
    new-instance v0, Lcom/mopub/mobileads/VastMacro;

    const-string v1, "ERRORCODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/VastMacro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastMacro;->ERRORCODE:Lcom/mopub/mobileads/VastMacro;

    .line 22
    new-instance v0, Lcom/mopub/mobileads/VastMacro;

    const-string v1, "CONTENTPLAYHEAD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/VastMacro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastMacro;->CONTENTPLAYHEAD:Lcom/mopub/mobileads/VastMacro;

    .line 27
    new-instance v0, Lcom/mopub/mobileads/VastMacro;

    const-string v1, "CACHEBUSTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mopub/mobileads/VastMacro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastMacro;->CACHEBUSTING:Lcom/mopub/mobileads/VastMacro;

    .line 32
    new-instance v0, Lcom/mopub/mobileads/VastMacro;

    const-string v1, "ASSETURI"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mopub/mobileads/VastMacro;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastMacro;->ASSETURI:Lcom/mopub/mobileads/VastMacro;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/mopub/mobileads/VastMacro;

    .line 11
    sget-object v6, Lcom/mopub/mobileads/VastMacro;->ERRORCODE:Lcom/mopub/mobileads/VastMacro;

    aput-object v6, v1, v2

    sget-object v2, Lcom/mopub/mobileads/VastMacro;->CONTENTPLAYHEAD:Lcom/mopub/mobileads/VastMacro;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/VastMacro;->CACHEBUSTING:Lcom/mopub/mobileads/VastMacro;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/mopub/mobileads/VastMacro;->$VALUES:[Lcom/mopub/mobileads/VastMacro;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/VastMacro;
    .registers 2

    .line 11
    const-class v0, Lcom/mopub/mobileads/VastMacro;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/VastMacro;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/VastMacro;
    .registers 1

    .line 11
    sget-object v0, Lcom/mopub/mobileads/VastMacro;->$VALUES:[Lcom/mopub/mobileads/VastMacro;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/VastMacro;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/VastMacro;

    return-object v0
.end method
