.class public final enum Lcom/mopub/mobileads/MoPubErrorCode;
.super Ljava/lang/Enum;
.source "MoPubErrorCode.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubError;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/MoPubErrorCode;",
        ">;",
        "Lcom/mopub/mobileads/MoPubError;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum ADAPTER_INITIALIZATION_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum AD_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum CANCELLED:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum DO_NOT_TRACK:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum GDPR_DOES_NOT_APPLY:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum MISSING_AD_UNIT_ID:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum RENDER_PROCESS_GONE_UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum RENDER_PROCESS_GONE_WITH_CRASH:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum REWARDED_CURRENCIES_PARSING_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum REWARD_NOT_SELECTED:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum VIDEO_DOWNLOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum VIDEO_NOT_AVAILABLE:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum VIDEO_PLAYBACK_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

.field public static final enum WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 8
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "AD_SUCCESS"

    const/4 v2, 0x0

    const-string v3, "ad successfully loaded."

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->AD_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 9
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "DO_NOT_TRACK"

    const/4 v3, 0x1

    const-string v4, "Do not track is enabled."

    invoke-direct {v0, v1, v3, v4}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->DO_NOT_TRACK:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 10
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "UNSPECIFIED"

    const/4 v4, 0x2

    const-string v5, "Unspecified error."

    invoke-direct {v0, v1, v4, v5}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 13
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "NO_FILL"

    const/4 v5, 0x3

    const-string v6, "No ads found."

    invoke-direct {v0, v1, v5, v6}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 14
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "WARMUP"

    const/4 v6, 0x4

    const-string v7, "Ad unit is warming up. Try again in a few minutes."

    invoke-direct {v0, v1, v6, v7}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 15
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "SERVER_ERROR"

    const/4 v7, 0x5

    const-string v8, "Unable to connect to MoPub adserver."

    invoke-direct {v0, v1, v7, v8}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 18
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "INTERNAL_ERROR"

    const/4 v8, 0x6

    const-string v9, "Unable to serve ad due to invalid internal state."

    invoke-direct {v0, v1, v8, v9}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 19
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "RENDER_PROCESS_GONE_WITH_CRASH"

    const/4 v9, 0x7

    const-string v10, "Render process for this WebView has crashed."

    invoke-direct {v0, v1, v9, v10}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->RENDER_PROCESS_GONE_WITH_CRASH:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 20
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "RENDER_PROCESS_GONE_UNSPECIFIED"

    const/16 v10, 0x8

    const-string v11, "Render process is gone for this WebView. Unspecified cause."

    invoke-direct {v0, v1, v10, v11}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->RENDER_PROCESS_GONE_UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 21
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "CANCELLED"

    const/16 v11, 0x9

    const-string v12, "Ad request was cancelled."

    invoke-direct {v0, v1, v11, v12}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->CANCELLED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 22
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "MISSING_AD_UNIT_ID"

    const/16 v12, 0xa

    const-string v13, "Unable to serve ad due to missing or empty ad unit ID."

    invoke-direct {v0, v1, v12, v13}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->MISSING_AD_UNIT_ID:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 23
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "NO_CONNECTION"

    const/16 v13, 0xb

    const-string v14, "No internet connection detected."

    invoke-direct {v0, v1, v13, v14}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 25
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "ADAPTER_NOT_FOUND"

    const/16 v14, 0xc

    const-string v15, "Unable to find Native Network or Custom Event adapter."

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 26
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "ADAPTER_CONFIGURATION_ERROR"

    const/16 v15, 0xd

    const-string v14, "Native Network or Custom Event adapter was configured incorrectly."

    invoke-direct {v0, v1, v15, v14}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 27
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "ADAPTER_INITIALIZATION_SUCCESS"

    const/16 v14, 0xe

    const-string v15, "AdapterConfiguration initialization success."

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_INITIALIZATION_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 30
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "EXPIRED"

    const/16 v15, 0xf

    const-string v14, "Ad expired since it was not shown within 4 hours."

    invoke-direct {v0, v1, v15, v14}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 32
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "NETWORK_TIMEOUT"

    const/16 v14, 0x10

    const-string v15, "Third-party network failed to respond in a timely manner."

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 33
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "NETWORK_NO_FILL"

    const/16 v15, 0x11

    const-string v14, "Third-party network failed to provide an ad."

    invoke-direct {v0, v1, v15, v14}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 34
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "NETWORK_INVALID_STATE"

    const/16 v14, 0x12

    const-string v15, "Third-party network failed due to invalid internal state."

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 35
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "MRAID_LOAD_ERROR"

    const/16 v15, 0x13

    const-string v14, "Error loading MRAID ad."

    invoke-direct {v0, v1, v15, v14}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 36
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "VIDEO_CACHE_ERROR"

    const/16 v14, 0x14

    const-string v15, "Error creating a cache to store downloaded videos."

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 37
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "VIDEO_DOWNLOAD_ERROR"

    const/16 v15, 0x15

    const-string v14, "Error downloading video."

    invoke-direct {v0, v1, v15, v14}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 39
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "GDPR_DOES_NOT_APPLY"

    const/16 v14, 0x16

    const-string v15, "GDPR does not apply. Ignoring consent-related actions."

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->GDPR_DOES_NOT_APPLY:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 41
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "REWARDED_CURRENCIES_PARSING_ERROR"

    const/16 v14, 0x17

    const-string v15, "Error parsing rewarded currencies JSON header."

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->REWARDED_CURRENCIES_PARSING_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 42
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "REWARD_NOT_SELECTED"

    const/16 v14, 0x18

    const-string v15, "Reward not selected for rewarded ad."

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->REWARD_NOT_SELECTED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 44
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "VIDEO_NOT_AVAILABLE"

    const/16 v14, 0x19

    const-string v15, "No video loaded for ad unit."

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_NOT_AVAILABLE:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 45
    new-instance v0, Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "VIDEO_PLAYBACK_ERROR"

    const/16 v14, 0x1a

    const-string v15, "Error playing a video."

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/mobileads/MoPubErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_PLAYBACK_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v1, 0x1b

    new-array v1, v1, [Lcom/mopub/mobileads/MoPubErrorCode;

    .line 7
    sget-object v14, Lcom/mopub/mobileads/MoPubErrorCode;->AD_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v14, v1, v2

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->DO_NOT_TRACK:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v8

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->RENDER_PROCESS_GONE_WITH_CRASH:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->RENDER_PROCESS_GONE_UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v10

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->CANCELLED:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v11

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->MISSING_AD_UNIT_ID:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v12

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v13

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_INITIALIZATION_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->GDPR_DOES_NOT_APPLY:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->REWARDED_CURRENCIES_PARSING_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->REWARD_NOT_SELECTED:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_NOT_AVAILABLE:Lcom/mopub/mobileads/MoPubErrorCode;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    sput-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->$VALUES:[Lcom/mopub/mobileads/MoPubErrorCode;

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

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/mopub/mobileads/MoPubErrorCode;->message:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/MoPubErrorCode;
    .registers 2

    .line 7
    const-class v0, Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/MoPubErrorCode;
    .registers 1

    .line 7
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->$VALUES:[Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/MoPubErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/MoPubErrorCode;

    return-object v0
.end method


# virtual methods
.method public getIntCode()I
    .registers 4

    .line 59
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode$1;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubErrorCode;->ordinal()I

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

.method public toString()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubErrorCode;->message:Ljava/lang/String;

    return-object v0
.end method
