.class public final enum Lcom/mopub/common/AdFormat;
.super Ljava/lang/Enum;
.source "AdFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/AdFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/AdFormat;

.field public static final enum BANNER:Lcom/mopub/common/AdFormat;

.field public static final enum INTERSTITIAL:Lcom/mopub/common/AdFormat;

.field public static final enum NATIVE:Lcom/mopub/common/AdFormat;

.field public static final enum REWARDED_VIDEO:Lcom/mopub/common/AdFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 8
    new-instance v0, Lcom/mopub/common/AdFormat;

    const-string v1, "BANNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/AdFormat;->BANNER:Lcom/mopub/common/AdFormat;

    .line 9
    new-instance v0, Lcom/mopub/common/AdFormat;

    const-string v1, "INTERSTITIAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mopub/common/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/AdFormat;->INTERSTITIAL:Lcom/mopub/common/AdFormat;

    .line 10
    new-instance v0, Lcom/mopub/common/AdFormat;

    const-string v1, "NATIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mopub/common/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/AdFormat;->NATIVE:Lcom/mopub/common/AdFormat;

    .line 11
    new-instance v0, Lcom/mopub/common/AdFormat;

    const-string v1, "REWARDED_VIDEO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mopub/common/AdFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/AdFormat;->REWARDED_VIDEO:Lcom/mopub/common/AdFormat;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/mopub/common/AdFormat;

    .line 7
    sget-object v6, Lcom/mopub/common/AdFormat;->BANNER:Lcom/mopub/common/AdFormat;

    aput-object v6, v1, v2

    sget-object v2, Lcom/mopub/common/AdFormat;->INTERSTITIAL:Lcom/mopub/common/AdFormat;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/AdFormat;->NATIVE:Lcom/mopub/common/AdFormat;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/mopub/common/AdFormat;->$VALUES:[Lcom/mopub/common/AdFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/AdFormat;
    .registers 2

    .line 7
    const-class v0, Lcom/mopub/common/AdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/AdFormat;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/AdFormat;
    .registers 1

    .line 7
    sget-object v0, Lcom/mopub/common/AdFormat;->$VALUES:[Lcom/mopub/common/AdFormat;

    invoke-virtual {v0}, [Lcom/mopub/common/AdFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/AdFormat;

    return-object v0
.end method
