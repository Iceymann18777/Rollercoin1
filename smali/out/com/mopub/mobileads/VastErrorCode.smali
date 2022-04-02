.class public final enum Lcom/mopub/mobileads/VastErrorCode;
.super Ljava/lang/Enum;
.source "VastErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/VastErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/VastErrorCode;

.field public static final enum GENERAL_COMPANION_AD_ERROR:Lcom/mopub/mobileads/VastErrorCode;

.field public static final enum GENERAL_LINEAR_AD_ERROR:Lcom/mopub/mobileads/VastErrorCode;

.field public static final enum NO_ADS_VAST_RESPONSE:Lcom/mopub/mobileads/VastErrorCode;

.field public static final enum UNDEFINED_ERROR:Lcom/mopub/mobileads/VastErrorCode;

.field public static final enum WRAPPER_TIMEOUT:Lcom/mopub/mobileads/VastErrorCode;

.field public static final enum XML_PARSING_ERROR:Lcom/mopub/mobileads/VastErrorCode;


# instance fields
.field private final mErrorCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 20
    new-instance v0, Lcom/mopub/mobileads/VastErrorCode;

    const-string v1, "XML_PARSING_ERROR"

    const/4 v2, 0x0

    const-string v3, "100"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/VastErrorCode;->XML_PARSING_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    .line 26
    new-instance v0, Lcom/mopub/mobileads/VastErrorCode;

    const-string v1, "WRAPPER_TIMEOUT"

    const/4 v3, 0x1

    const-string v4, "301"

    invoke-direct {v0, v1, v3, v4}, Lcom/mopub/mobileads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/VastErrorCode;->WRAPPER_TIMEOUT:Lcom/mopub/mobileads/VastErrorCode;

    .line 32
    new-instance v0, Lcom/mopub/mobileads/VastErrorCode;

    const-string v1, "NO_ADS_VAST_RESPONSE"

    const/4 v4, 0x2

    const-string v5, "303"

    invoke-direct {v0, v1, v4, v5}, Lcom/mopub/mobileads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/VastErrorCode;->NO_ADS_VAST_RESPONSE:Lcom/mopub/mobileads/VastErrorCode;

    .line 38
    new-instance v0, Lcom/mopub/mobileads/VastErrorCode;

    const-string v1, "GENERAL_LINEAR_AD_ERROR"

    const/4 v5, 0x3

    const-string v6, "400"

    invoke-direct {v0, v1, v5, v6}, Lcom/mopub/mobileads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/VastErrorCode;->GENERAL_LINEAR_AD_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    .line 44
    new-instance v0, Lcom/mopub/mobileads/VastErrorCode;

    const-string v1, "GENERAL_COMPANION_AD_ERROR"

    const/4 v6, 0x4

    const-string v7, "600"

    invoke-direct {v0, v1, v6, v7}, Lcom/mopub/mobileads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/VastErrorCode;->GENERAL_COMPANION_AD_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    .line 49
    new-instance v0, Lcom/mopub/mobileads/VastErrorCode;

    const-string v1, "UNDEFINED_ERROR"

    const/4 v7, 0x5

    const-string v8, "900"

    invoke-direct {v0, v1, v7, v8}, Lcom/mopub/mobileads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/VastErrorCode;->UNDEFINED_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/mopub/mobileads/VastErrorCode;

    .line 15
    sget-object v8, Lcom/mopub/mobileads/VastErrorCode;->XML_PARSING_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    aput-object v8, v1, v2

    sget-object v2, Lcom/mopub/mobileads/VastErrorCode;->WRAPPER_TIMEOUT:Lcom/mopub/mobileads/VastErrorCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/VastErrorCode;->NO_ADS_VAST_RESPONSE:Lcom/mopub/mobileads/VastErrorCode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mopub/mobileads/VastErrorCode;->GENERAL_LINEAR_AD_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mopub/mobileads/VastErrorCode;->GENERAL_COMPANION_AD_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/mopub/mobileads/VastErrorCode;->$VALUES:[Lcom/mopub/mobileads/VastErrorCode;

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

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, "errorCode cannot be null"

    .line 54
    invoke-static {p3, p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p3, p0, Lcom/mopub/mobileads/VastErrorCode;->mErrorCode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/VastErrorCode;
    .registers 2

    .line 15
    const-class v0, Lcom/mopub/mobileads/VastErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/VastErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/VastErrorCode;
    .registers 1

    .line 15
    sget-object v0, Lcom/mopub/mobileads/VastErrorCode;->$VALUES:[Lcom/mopub/mobileads/VastErrorCode;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/VastErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/VastErrorCode;

    return-object v0
.end method


# virtual methods
.method getErrorCode()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/mopub/mobileads/VastErrorCode;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method
