.class public final enum Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
.super Ljava/lang/Enum;
.source "ClientMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/ClientMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MoPubNetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/ClientMetadata$MoPubNetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum ETHERNET:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum GG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum GGG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum GGGG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum MOBILE:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum UNKNOWN:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum WIFI:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 59
    new-instance v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->UNKNOWN:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 60
    new-instance v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v1, "ETHERNET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->ETHERNET:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 61
    new-instance v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v1, "WIFI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->WIFI:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 62
    new-instance v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v1, "MOBILE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->MOBILE:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 63
    new-instance v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v1, "GG"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->GG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 64
    new-instance v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v1, "GGG"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->GGG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 65
    new-instance v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v1, "GGGG"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->GGGG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 58
    sget-object v9, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->UNKNOWN:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    aput-object v9, v1, v2

    sget-object v2, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->ETHERNET:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->WIFI:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->MOBILE:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->GG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->GGG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->$VALUES:[Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .registers 2

    .line 58
    const-class v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .registers 1

    .line 58
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->$VALUES:[Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    invoke-virtual {v0}, [Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->mId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 74
    iget v0, p0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
