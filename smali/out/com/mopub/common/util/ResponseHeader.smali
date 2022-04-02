.class public final enum Lcom/mopub/common/util/ResponseHeader;
.super Ljava/lang/Enum;
.source "ResponseHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/util/ResponseHeader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/util/ResponseHeader;

.field public static final enum ACCEPT_LANGUAGE:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum ADUNIT_FORMAT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum AD_GROUP_ID:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum AD_RESPONSES:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum AD_TIMEOUT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum AFTER_LOAD_FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum AFTER_LOAD_SUCCESS_URL:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum AFTER_LOAD_URL:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum ALLOW_CUSTOM_CLOSE:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum BACKFILL:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum BACKOFF_MS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum BACKOFF_REASON:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum BANNER_IMPRESSION_MIN_VISIBLE_DIPS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum BANNER_IMPRESSION_MIN_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum BEFORE_LOAD_URL:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum BROWSER_AGENT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum CLICK_TRACKING_URL:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum CONSENT_CHANGE_REASON:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum CONTENT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum CONTENT_TYPE:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum CUSTOM_EVENT_DATA:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum CUSTOM_EVENT_NAME:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum DISABLE_VIEWABILITY:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum DSP_CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum ENABLE_DEBUG_LOGGING:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum FORCE_EXPLICIT_NO:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum FORCE_GDPR_APPLIES:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum FULL_AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum HEIGHT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum IMPRESSION_DATA:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum IMPRESSION_MIN_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum IMPRESSION_MIN_VISIBLE_PX:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum IMPRESSION_URL:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum IMPRESSION_URLS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum IMPRESSION_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum INVALIDATE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum LOCATION:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum MAX_BUFFER_MS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum METADATA:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum NATIVE_PARAMS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum NETWORK_TYPE:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum ORIENTATION:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum PAUSE_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum PLAY_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REACQUIRE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REFRESH_TIME:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REQUEST_ID:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REWARDED_CURRENCIES:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REWARDED_DURATION:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REWARDED_VIDEO_COMPLETION_URL:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REWARDED_VIDEO_CURRENCY_AMOUNT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum REWARDED_VIDEO_CURRENCY_NAME:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum SHOULD_REWARD_ON_CLICK:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum USER_AGENT:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum VAST_CLICK_ENABLED:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum VAST_VIDEO_PLAYER_VERSION:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum VIDEO_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum VIDEO_VIEWABILITY_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum WARMUP:Lcom/mopub/common/util/ResponseHeader;

.field public static final enum WIDTH:Lcom/mopub/common/util/ResponseHeader;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 8
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "BACKOFF_REASON"

    const/4 v2, 0x0

    const-string v3, "backoff_reason"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->BACKOFF_REASON:Lcom/mopub/common/util/ResponseHeader;

    .line 9
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "BACKOFF_MS"

    const/4 v3, 0x1

    const-string v4, "backoff_ms"

    invoke-direct {v0, v1, v3, v4}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->BACKOFF_MS:Lcom/mopub/common/util/ResponseHeader;

    .line 10
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "AD_TIMEOUT"

    const/4 v4, 0x2

    const-string v5, "x-ad-timeout-ms"

    invoke-direct {v0, v1, v4, v5}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->AD_TIMEOUT:Lcom/mopub/common/util/ResponseHeader;

    .line 11
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "AD_TYPE"

    const/4 v5, 0x3

    const-string v6, "x-adtype"

    invoke-direct {v0, v1, v5, v6}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    .line 12
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "AD_GROUP_ID"

    const/4 v6, 0x4

    const-string v7, "x-adgroupid"

    invoke-direct {v0, v1, v6, v7}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->AD_GROUP_ID:Lcom/mopub/common/util/ResponseHeader;

    .line 13
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "ADUNIT_FORMAT"

    const/4 v7, 0x5

    const-string v8, "adunit-format"

    invoke-direct {v0, v1, v7, v8}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->ADUNIT_FORMAT:Lcom/mopub/common/util/ResponseHeader;

    .line 14
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "IMPRESSION_DATA"

    const/4 v8, 0x6

    const-string v9, "impdata"

    invoke-direct {v0, v1, v8, v9}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_DATA:Lcom/mopub/common/util/ResponseHeader;

    .line 15
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "CLICK_TRACKING_URL"

    const/4 v9, 0x7

    const-string v10, "x-clickthrough"

    invoke-direct {v0, v1, v9, v10}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->CLICK_TRACKING_URL:Lcom/mopub/common/util/ResponseHeader;

    .line 16
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "CUSTOM_EVENT_DATA"

    const/16 v10, 0x8

    const-string v11, "x-custom-event-class-data"

    invoke-direct {v0, v1, v10, v11}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/mopub/common/util/ResponseHeader;

    .line 17
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "CUSTOM_EVENT_NAME"

    const/16 v11, 0x9

    const-string v12, "x-custom-event-class-name"

    invoke-direct {v0, v1, v11, v12}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_NAME:Lcom/mopub/common/util/ResponseHeader;

    .line 18
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "CREATIVE_ID"

    const/16 v12, 0xa

    const-string v13, "x-creativeid"

    invoke-direct {v0, v1, v12, v13}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

    .line 19
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "DSP_CREATIVE_ID"

    const/16 v13, 0xb

    const-string v14, "x-dspcreativeid"

    invoke-direct {v0, v1, v13, v14}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->DSP_CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

    .line 20
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "FAIL_URL"

    const/16 v14, 0xc

    const-string v15, "x-next-url"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    .line 21
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "FULL_AD_TYPE"

    const/16 v15, 0xd

    const-string v14, "x-fulladtype"

    invoke-direct {v0, v1, v15, v14}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->FULL_AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    .line 22
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "HEIGHT"

    const/16 v14, 0xe

    const-string v15, "x-height"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->HEIGHT:Lcom/mopub/common/util/ResponseHeader;

    .line 23
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "IMPRESSION_URL"

    const/16 v15, 0xf

    const-string v14, "x-imptracker"

    invoke-direct {v0, v1, v15, v14}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_URL:Lcom/mopub/common/util/ResponseHeader;

    .line 24
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "IMPRESSION_URLS"

    const/16 v14, 0x10

    const-string v15, "imptrackers"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_URLS:Lcom/mopub/common/util/ResponseHeader;

    .line 25
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "NATIVE_PARAMS"

    const/16 v15, 0x11

    const-string v14, "x-nativeparams"

    invoke-direct {v0, v1, v15, v14}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->NATIVE_PARAMS:Lcom/mopub/common/util/ResponseHeader;

    .line 26
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "NETWORK_TYPE"

    const/16 v14, 0x12

    const-string v15, "x-networktype"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->NETWORK_TYPE:Lcom/mopub/common/util/ResponseHeader;

    .line 27
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "ORIENTATION"

    const/16 v15, 0x13

    const-string v14, "x-orientation"

    invoke-direct {v0, v1, v15, v14}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->ORIENTATION:Lcom/mopub/common/util/ResponseHeader;

    .line 28
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REFRESH_TIME"

    const/16 v14, 0x14

    const-string v15, "x-refreshtime"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REFRESH_TIME:Lcom/mopub/common/util/ResponseHeader;

    .line 29
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "WARMUP"

    const/16 v15, 0x15

    const-string v14, "x-warmup"

    invoke-direct {v0, v1, v15, v14}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->WARMUP:Lcom/mopub/common/util/ResponseHeader;

    .line 30
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "WIDTH"

    const/16 v14, 0x16

    const-string v15, "x-width"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->WIDTH:Lcom/mopub/common/util/ResponseHeader;

    .line 31
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "BACKFILL"

    const/16 v14, 0x17

    const-string v15, "x-backfill"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->BACKFILL:Lcom/mopub/common/util/ResponseHeader;

    .line 32
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REQUEST_ID"

    const/16 v14, 0x18

    const-string v15, "x-request-id"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REQUEST_ID:Lcom/mopub/common/util/ResponseHeader;

    .line 35
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "CONTENT_TYPE"

    const/16 v14, 0x19

    const-string v15, "content-type"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->CONTENT_TYPE:Lcom/mopub/common/util/ResponseHeader;

    .line 36
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "LOCATION"

    const/16 v14, 0x1a

    const-string v15, "location"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->LOCATION:Lcom/mopub/common/util/ResponseHeader;

    .line 37
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "USER_AGENT"

    const/16 v14, 0x1b

    const-string v15, "user-agent"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->USER_AGENT:Lcom/mopub/common/util/ResponseHeader;

    .line 38
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "ACCEPT_LANGUAGE"

    const/16 v14, 0x1c

    const-string v15, "accept-language"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->ACCEPT_LANGUAGE:Lcom/mopub/common/util/ResponseHeader;

    .line 40
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "BROWSER_AGENT"

    const/16 v14, 0x1d

    const-string v15, "x-browser-agent"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->BROWSER_AGENT:Lcom/mopub/common/util/ResponseHeader;

    .line 43
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "BANNER_IMPRESSION_MIN_VISIBLE_DIPS"

    const/16 v14, 0x1e

    const-string v15, "x-banner-impression-min-pixels"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->BANNER_IMPRESSION_MIN_VISIBLE_DIPS:Lcom/mopub/common/util/ResponseHeader;

    .line 44
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "BANNER_IMPRESSION_MIN_VISIBLE_MS"

    const/16 v14, 0x1f

    const-string v15, "x-banner-impression-min-ms"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->BANNER_IMPRESSION_MIN_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    .line 47
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "IMPRESSION_MIN_VISIBLE_PERCENT"

    const/16 v14, 0x20

    const-string v15, "x-impression-min-visible-percent"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 48
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "IMPRESSION_VISIBLE_MS"

    const/16 v14, 0x21

    const-string v15, "x-impression-visible-ms"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    .line 49
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "IMPRESSION_MIN_VISIBLE_PX"

    const/16 v14, 0x22

    const-string v15, "x-native-impression-min-px"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PX:Lcom/mopub/common/util/ResponseHeader;

    .line 52
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "PLAY_VISIBLE_PERCENT"

    const/16 v14, 0x23

    const-string v15, "x-play-visible-percent"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->PLAY_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 53
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "PAUSE_VISIBLE_PERCENT"

    const/16 v14, 0x24

    const-string v15, "x-pause-visible-percent"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->PAUSE_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 54
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "MAX_BUFFER_MS"

    const/16 v14, 0x25

    const-string v15, "x-max-buffer-ms"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->MAX_BUFFER_MS:Lcom/mopub/common/util/ResponseHeader;

    .line 57
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REWARDED_VIDEO_CURRENCY_NAME"

    const/16 v14, 0x26

    const-string v15, "x-rewarded-video-currency-name"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_NAME:Lcom/mopub/common/util/ResponseHeader;

    .line 58
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REWARDED_VIDEO_CURRENCY_AMOUNT"

    const/16 v14, 0x27

    const-string v15, "x-rewarded-video-currency-amount"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_AMOUNT:Lcom/mopub/common/util/ResponseHeader;

    .line 59
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REWARDED_CURRENCIES"

    const/16 v14, 0x28

    const-string v15, "x-rewarded-currencies"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REWARDED_CURRENCIES:Lcom/mopub/common/util/ResponseHeader;

    .line 60
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REWARDED_VIDEO_COMPLETION_URL"

    const/16 v14, 0x29

    const-string v15, "x-rewarded-video-completion-url"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_COMPLETION_URL:Lcom/mopub/common/util/ResponseHeader;

    .line 61
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REWARDED_DURATION"

    const/16 v14, 0x2a

    const-string v15, "x-rewarded-duration"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REWARDED_DURATION:Lcom/mopub/common/util/ResponseHeader;

    .line 62
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "SHOULD_REWARD_ON_CLICK"

    const/16 v14, 0x2b

    const-string v15, "x-should-reward-on-click"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->SHOULD_REWARD_ON_CLICK:Lcom/mopub/common/util/ResponseHeader;

    .line 65
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "VIDEO_TRACKERS"

    const/16 v14, 0x2c

    const-string v15, "x-video-trackers"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->VIDEO_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

    .line 68
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "VIDEO_VIEWABILITY_TRACKERS"

    const/16 v14, 0x2d

    const-string v15, "x-video-viewability-trackers"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->VIDEO_VIEWABILITY_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

    .line 69
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "DISABLE_VIEWABILITY"

    const/16 v14, 0x2e

    const-string v15, "x-disable-viewability"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->DISABLE_VIEWABILITY:Lcom/mopub/common/util/ResponseHeader;

    .line 72
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "AD_RESPONSES"

    const/16 v14, 0x2f

    const-string v15, "ad-responses"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->AD_RESPONSES:Lcom/mopub/common/util/ResponseHeader;

    .line 73
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "CONTENT"

    const/16 v14, 0x30

    const-string v15, "content"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->CONTENT:Lcom/mopub/common/util/ResponseHeader;

    .line 74
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "METADATA"

    const/16 v14, 0x31

    const-string v15, "metadata"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->METADATA:Lcom/mopub/common/util/ResponseHeader;

    .line 76
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "BEFORE_LOAD_URL"

    const/16 v14, 0x32

    const-string v15, "x-before-load-url"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->BEFORE_LOAD_URL:Lcom/mopub/common/util/ResponseHeader;

    .line 77
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "AFTER_LOAD_URL"

    const/16 v14, 0x33

    const-string v15, "x-after-load-url"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->AFTER_LOAD_URL:Lcom/mopub/common/util/ResponseHeader;

    .line 78
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "AFTER_LOAD_SUCCESS_URL"

    const/16 v14, 0x34

    const-string v15, "x-after-load-success-url"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->AFTER_LOAD_SUCCESS_URL:Lcom/mopub/common/util/ResponseHeader;

    .line 79
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "AFTER_LOAD_FAIL_URL"

    const/16 v14, 0x35

    const-string v15, "x-after-load-fail-url"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->AFTER_LOAD_FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    .line 82
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "INVALIDATE_CONSENT"

    const/16 v14, 0x36

    const-string v15, "invalidate_consent"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->INVALIDATE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

    .line 83
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "FORCE_EXPLICIT_NO"

    const/16 v14, 0x37

    const-string v15, "force_explicit_no"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->FORCE_EXPLICIT_NO:Lcom/mopub/common/util/ResponseHeader;

    .line 84
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "REACQUIRE_CONSENT"

    const/16 v14, 0x38

    const-string v15, "reacquire_consent"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->REACQUIRE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

    .line 85
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "CONSENT_CHANGE_REASON"

    const/16 v14, 0x39

    const-string v15, "consent_change_reason"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->CONSENT_CHANGE_REASON:Lcom/mopub/common/util/ResponseHeader;

    .line 86
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "FORCE_GDPR_APPLIES"

    const/16 v14, 0x3a

    const-string v15, "force_gdpr_applies"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->FORCE_GDPR_APPLIES:Lcom/mopub/common/util/ResponseHeader;

    .line 89
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "ENABLE_DEBUG_LOGGING"

    const/16 v14, 0x3b

    const-string v15, "enable_debug_logging"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->ENABLE_DEBUG_LOGGING:Lcom/mopub/common/util/ResponseHeader;

    .line 92
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "VAST_CLICK_ENABLED"

    const/16 v14, 0x3c

    const-string v15, "vast-click-enabled"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->VAST_CLICK_ENABLED:Lcom/mopub/common/util/ResponseHeader;

    .line 93
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "VAST_VIDEO_PLAYER_VERSION"

    const/16 v14, 0x3d

    const-string v15, "vast-player-version"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->VAST_VIDEO_PLAYER_VERSION:Lcom/mopub/common/util/ResponseHeader;

    .line 96
    new-instance v0, Lcom/mopub/common/util/ResponseHeader;

    const-string v1, "ALLOW_CUSTOM_CLOSE"

    const/16 v14, 0x3e

    const-string v15, "allow-custom-close"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/util/ResponseHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/ResponseHeader;->ALLOW_CUSTOM_CLOSE:Lcom/mopub/common/util/ResponseHeader;

    const/16 v1, 0x3f

    new-array v1, v1, [Lcom/mopub/common/util/ResponseHeader;

    .line 7
    sget-object v14, Lcom/mopub/common/util/ResponseHeader;->BACKOFF_REASON:Lcom/mopub/common/util/ResponseHeader;

    aput-object v14, v1, v2

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->BACKOFF_MS:Lcom/mopub/common/util/ResponseHeader;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->AD_TIMEOUT:Lcom/mopub/common/util/ResponseHeader;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->AD_GROUP_ID:Lcom/mopub/common/util/ResponseHeader;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->ADUNIT_FORMAT:Lcom/mopub/common/util/ResponseHeader;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_DATA:Lcom/mopub/common/util/ResponseHeader;

    aput-object v2, v1, v8

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->CLICK_TRACKING_URL:Lcom/mopub/common/util/ResponseHeader;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/mopub/common/util/ResponseHeader;

    aput-object v2, v1, v10

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_NAME:Lcom/mopub/common/util/ResponseHeader;

    aput-object v2, v1, v11

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

    aput-object v2, v1, v12

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->DSP_CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

    aput-object v2, v1, v13

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->FULL_AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->HEIGHT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_URL:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_URLS:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->NATIVE_PARAMS:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->NETWORK_TYPE:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->ORIENTATION:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->REFRESH_TIME:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->WARMUP:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->WIDTH:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->BACKFILL:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->REQUEST_ID:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->CONTENT_TYPE:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->LOCATION:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->USER_AGENT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->ACCEPT_LANGUAGE:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->BROWSER_AGENT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->BANNER_IMPRESSION_MIN_VISIBLE_DIPS:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->BANNER_IMPRESSION_MIN_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PX:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->PLAY_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->PAUSE_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->MAX_BUFFER_MS:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x25

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_NAME:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_AMOUNT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x27

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->REWARDED_CURRENCIES:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x28

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_COMPLETION_URL:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x29

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->REWARDED_DURATION:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->SHOULD_REWARD_ON_CLICK:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->VIDEO_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->VIDEO_VIEWABILITY_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->DISABLE_VIEWABILITY:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->AD_RESPONSES:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->CONTENT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x30

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->METADATA:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x31

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->BEFORE_LOAD_URL:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x32

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->AFTER_LOAD_URL:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x33

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->AFTER_LOAD_SUCCESS_URL:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x34

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->AFTER_LOAD_FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x35

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->INVALIDATE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x36

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->FORCE_EXPLICIT_NO:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x37

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->REACQUIRE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x38

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->CONSENT_CHANGE_REASON:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x39

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->FORCE_GDPR_APPLIES:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->ENABLE_DEBUG_LOGGING:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->VAST_CLICK_ENABLED:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->VAST_VIDEO_PLAYER_VERSION:Lcom/mopub/common/util/ResponseHeader;

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    const/16 v2, 0x3e

    aput-object v0, v1, v2

    sput-object v1, Lcom/mopub/common/util/ResponseHeader;->$VALUES:[Lcom/mopub/common/util/ResponseHeader;

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

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput-object p3, p0, Lcom/mopub/common/util/ResponseHeader;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/util/ResponseHeader;
    .registers 2

    .line 7
    const-class v0, Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/util/ResponseHeader;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/util/ResponseHeader;
    .registers 1

    .line 7
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->$VALUES:[Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v0}, [Lcom/mopub/common/util/ResponseHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/util/ResponseHeader;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/mopub/common/util/ResponseHeader;->key:Ljava/lang/String;

    return-object v0
.end method
