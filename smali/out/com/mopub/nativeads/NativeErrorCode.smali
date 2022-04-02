.class public final enum Lcom/mopub/nativeads/NativeErrorCode;
.super Ljava/lang/Enum;
.source "NativeErrorCode.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubError;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/nativeads/NativeErrorCode;",
        ">;",
        "Lcom/mopub/mobileads/MoPubError;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum AD_SUCCESS:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum EMPTY_AD_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum IMAGE_DOWNLOAD_FAILURE:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum INVALID_REQUEST_URL:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum NATIVE_ADAPTER_NOT_FOUND:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum NATIVE_RENDERER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum NETWORK_INVALID_REQUEST:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum NETWORK_INVALID_STATE:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum NETWORK_TIMEOUT:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum SERVER_ERROR_RESPONSE_CODE:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum UNEXPECTED_RESPONSE_CODE:Lcom/mopub/nativeads/NativeErrorCode;

.field public static final enum UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 12
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "AD_SUCCESS"

    const/4 v2, 0x0

    const-string v3, "ad successfully loaded."

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->AD_SUCCESS:Lcom/mopub/nativeads/NativeErrorCode;

    .line 13
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "EMPTY_AD_RESPONSE"

    const/4 v3, 0x1

    const-string v4, "Server returned empty response."

    invoke-direct {v0, v1, v3, v4}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->EMPTY_AD_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 14
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "INVALID_RESPONSE"

    const/4 v4, 0x2

    const-string v5, "Unable to parse response from server."

    invoke-direct {v0, v1, v4, v5}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 15
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "IMAGE_DOWNLOAD_FAILURE"

    const/4 v5, 0x3

    const-string v6, "Unable to download images associated with ad."

    invoke-direct {v0, v1, v5, v6}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->IMAGE_DOWNLOAD_FAILURE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 16
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "INVALID_REQUEST_URL"

    const/4 v6, 0x4

    const-string v7, "Invalid request url."

    invoke-direct {v0, v1, v6, v7}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_REQUEST_URL:Lcom/mopub/nativeads/NativeErrorCode;

    .line 17
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "UNEXPECTED_RESPONSE_CODE"

    const/4 v7, 0x5

    const-string v8, "Received unexpected response code from server."

    invoke-direct {v0, v1, v7, v8}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNEXPECTED_RESPONSE_CODE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 18
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "SERVER_ERROR_RESPONSE_CODE"

    const/4 v8, 0x6

    const-string v9, "Server returned erroneous response code."

    invoke-direct {v0, v1, v8, v9}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->SERVER_ERROR_RESPONSE_CODE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 19
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "CONNECTION_ERROR"

    const/4 v9, 0x7

    const-string v10, "Network is unavailable."

    invoke-direct {v0, v1, v9, v10}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    .line 20
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "UNSPECIFIED"

    const/16 v10, 0x8

    const-string v11, "Unspecified error occurred."

    invoke-direct {v0, v1, v10, v11}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    .line 22
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "NETWORK_INVALID_REQUEST"

    const/16 v11, 0x9

    const-string v12, "Third-party network received invalid request."

    invoke-direct {v0, v1, v11, v12}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_REQUEST:Lcom/mopub/nativeads/NativeErrorCode;

    .line 23
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "NETWORK_TIMEOUT"

    const/16 v12, 0xa

    const-string v13, "Third-party network failed to respond in a timely manner."

    invoke-direct {v0, v1, v12, v13}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/nativeads/NativeErrorCode;

    .line 24
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "NETWORK_NO_FILL"

    const/16 v13, 0xb

    const-string v14, "Third-party network failed to provide an ad."

    invoke-direct {v0, v1, v13, v14}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    .line 25
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "NETWORK_INVALID_STATE"

    const/16 v14, 0xc

    const-string v15, "Third-party network failed due to invalid internal state."

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/nativeads/NativeErrorCode;

    .line 27
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "NATIVE_RENDERER_CONFIGURATION_ERROR"

    const/16 v15, 0xd

    const-string v14, "A required renderer was not registered for the CustomEventNative."

    invoke-direct {v0, v1, v15, v14}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_RENDERER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    .line 28
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "NATIVE_ADAPTER_CONFIGURATION_ERROR"

    const/16 v14, 0xe

    const-string v15, "CustomEventNative was configured incorrectly."

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    .line 29
    new-instance v0, Lcom/mopub/nativeads/NativeErrorCode;

    const-string v1, "NATIVE_ADAPTER_NOT_FOUND"

    const/16 v15, 0xf

    const-string v14, "Unable to find CustomEventNative."

    invoke-direct {v0, v1, v15, v14}, Lcom/mopub/nativeads/NativeErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_NOT_FOUND:Lcom/mopub/nativeads/NativeErrorCode;

    const/16 v1, 0x10

    new-array v1, v1, [Lcom/mopub/nativeads/NativeErrorCode;

    .line 11
    sget-object v14, Lcom/mopub/nativeads/NativeErrorCode;->AD_SUCCESS:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v14, v1, v2

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->EMPTY_AD_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->IMAGE_DOWNLOAD_FAILURE:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_REQUEST_URL:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->UNEXPECTED_RESPONSE_CODE:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->SERVER_ERROR_RESPONSE_CODE:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v2, v1, v8

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v2, v1, v10

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_REQUEST:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v2, v1, v11

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v2, v1, v12

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v2, v1, v13

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/nativeads/NativeErrorCode;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_RENDERER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/mopub/nativeads/NativeErrorCode;->$VALUES:[Lcom/mopub/nativeads/NativeErrorCode;

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

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/mopub/nativeads/NativeErrorCode;->message:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/nativeads/NativeErrorCode;
    .registers 2

    .line 11
    const-class v0, Lcom/mopub/nativeads/NativeErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/nativeads/NativeErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/mopub/nativeads/NativeErrorCode;
    .registers 1

    .line 11
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->$VALUES:[Lcom/mopub/nativeads/NativeErrorCode;

    invoke-virtual {v0}, [Lcom/mopub/nativeads/NativeErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/nativeads/NativeErrorCode;

    return-object v0
.end method


# virtual methods
.method public getIntCode()I
    .registers 4

    .line 45
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode$1;->$SwitchMap$com$mopub$nativeads$NativeErrorCode:[I

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_17

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    const/16 v0, 0x2710

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0

    :cond_16
    return v2

    :cond_17
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/mopub/nativeads/NativeErrorCode;->message:Ljava/lang/String;

    return-object v0
.end method
