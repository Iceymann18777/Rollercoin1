.class public Lcom/mopub/network/MultiAdResponse;
.super Ljava/lang/Object;
.source "MultiAdResponse.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/mopub/network/AdResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static sServerOverrideListener:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;


# instance fields
.field private mFailUrl:Ljava/lang/String;

.field private final mResponseIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/mopub/network/AdResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/volley/NetworkResponse;Lcom/mopub/common/AdFormat;Ljava/lang/String;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/mopub/network/MoPubNetworkError;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p4

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static/range {p2 .. p2}, Lcom/mopub/network/MultiAdResponse;->parseStringBody(Lcom/mopub/volley/NetworkResponse;)Ljava/lang/String;

    move-result-object v10

    .line 92
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v2}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mopub/network/MultiAdResponse;->mFailUrl:Ljava/lang/String;

    .line 94
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->ADUNIT_FORMAT:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v2}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 95
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->REQUEST_ID:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v2}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 97
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->BACKOFF_MS:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v0, v2}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v2

    .line 98
    sget-object v3, Lcom/mopub/common/util/ResponseHeader;->BACKOFF_REASON:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v0, v3}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-static {}, Lcom/mopub/network/RequestRateTracker;->getInstance()Lcom/mopub/network/RequestRateTracker;

    move-result-object v4

    invoke-virtual {v4, v9, v2, v3}, Lcom/mopub/network/RequestRateTracker;->registerRateLimit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 101
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->INVALIDATE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

    const/4 v13, 0x0

    invoke-static {v0, v2, v13}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v2

    .line 103
    sget-object v3, Lcom/mopub/common/util/ResponseHeader;->FORCE_EXPLICIT_NO:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v0, v3, v13}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v3

    .line 105
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->REACQUIRE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v0, v4, v13}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v4

    .line 107
    sget-object v5, Lcom/mopub/common/util/ResponseHeader;->CONSENT_CHANGE_REASON:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v0, v5}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v5

    .line 109
    sget-object v6, Lcom/mopub/common/util/ResponseHeader;->FORCE_GDPR_APPLIES:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v0, v6, v13}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v6

    .line 111
    sget-object v7, Lcom/mopub/network/MultiAdResponse;->sServerOverrideListener:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    if-eqz v7, :cond_87

    if-eqz v6, :cond_6b

    .line 113
    invoke-interface {v7}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onForceGdprApplies()V

    :cond_6b
    if-eqz v3, :cond_73

    .line 116
    sget-object v2, Lcom/mopub/network/MultiAdResponse;->sServerOverrideListener:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    invoke-interface {v2, v5}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onForceExplicitNo(Ljava/lang/String;)V

    goto :goto_82

    :cond_73
    if-eqz v2, :cond_7b

    .line 118
    sget-object v2, Lcom/mopub/network/MultiAdResponse;->sServerOverrideListener:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    invoke-interface {v2, v5}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onInvalidateConsent(Ljava/lang/String;)V

    goto :goto_82

    :cond_7b
    if-eqz v4, :cond_82

    .line 120
    sget-object v2, Lcom/mopub/network/MultiAdResponse;->sServerOverrideListener:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    invoke-interface {v2, v5}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onReacquireConsent(Ljava/lang/String;)V

    .line 122
    :cond_82
    :goto_82
    sget-object v2, Lcom/mopub/network/MultiAdResponse;->sServerOverrideListener:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    invoke-interface {v2, v9}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onRequestSuccess(Ljava/lang/String;)V

    .line 125
    :cond_87
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->ENABLE_DEBUG_LOGGING:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v0, v2, v13}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 129
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->setLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)V

    .line 132
    :cond_94
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->AD_RESPONSES:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v2}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const/4 v0, 0x3

    .line 134
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move-object/from16 v16, v0

    const/4 v8, 0x0

    .line 136
    :goto_a8
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_175

    const/4 v7, 0x1

    .line 138
    :try_start_af
    invoke-virtual {v14, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_b3
    .catch Lorg/json/JSONException; {:try_start_af .. :try_end_b3} :catch_152
    .catch Lcom/mopub/network/MoPubNetworkError; {:try_start_af .. :try_end_b3} :catch_125
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b3} :catch_100

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v0

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    const/4 v13, 0x1

    move-object v7, v11

    move/from16 v17, v8

    move-object v8, v12

    .line 139
    :try_start_c1
    invoke-static/range {v2 .. v8}, Lcom/mopub/network/MultiAdResponse;->parseSingleAdResponse(Landroid/content/Context;Lcom/mopub/volley/NetworkResponse;Lorg/json/JSONObject;Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/network/AdResponse;

    move-result-object v2

    const-string v3, "clear"

    .line 146
    invoke-virtual {v2}, Lcom/mopub/network/AdResponse;->getAdType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d5

    .line 147
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_123

    :cond_d5
    const-string v3, ""

    .line 152
    iput-object v3, v1, Lcom/mopub/network/MultiAdResponse;->mFailUrl:Ljava/lang/String;
    :try_end_d9
    .catch Lorg/json/JSONException; {:try_start_c1 .. :try_end_d9} :catch_155
    .catch Lcom/mopub/network/MoPubNetworkError; {:try_start_c1 .. :try_end_d9} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_d9} :catch_fc

    .line 154
    :try_start_d9
    invoke-static {v0}, Lcom/mopub/network/MultiAdResponse;->extractWarmup(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_e3

    move-object/from16 v16, v2

    goto/16 :goto_175

    .line 155
    :cond_e3
    new-instance v0, Lcom/mopub/network/MoPubNetworkError;

    const-string v3, "Server is preparing this Ad Unit."

    sget-object v4, Lcom/mopub/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/mopub/network/MoPubNetworkError$Reason;

    .line 157
    invoke-virtual {v2}, Lcom/mopub/network/AdResponse;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;Ljava/lang/Integer;)V

    throw v0
    :try_end_f1
    .catch Lorg/json/JSONException; {:try_start_d9 .. :try_end_f1} :catch_f9
    .catch Lcom/mopub/network/MoPubNetworkError; {:try_start_d9 .. :try_end_f1} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_f1} :catch_f1

    :catch_f1
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_104

    :catch_f5
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_129

    :catch_f9
    move-object/from16 v16, v2

    goto :goto_155

    :catch_fc
    move-exception v0

    goto :goto_104

    :catch_fe
    move-exception v0

    goto :goto_129

    :catch_100
    move-exception v0

    move/from16 v17, v8

    const/4 v13, 0x1

    .line 170
    :goto_104
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v3, v13, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected error parsing response item. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_123
    const/4 v4, 0x0

    goto :goto_170

    :catch_125
    move-exception v0

    move/from16 v17, v8

    const/4 v13, 0x1

    .line 165
    :goto_129
    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v2

    sget-object v3, Lcom/mopub/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/mopub/network/MoPubNetworkError$Reason;

    if-eq v2, v3, :cond_151

    .line 168
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v3, v13, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid response item. Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_123

    .line 166
    :cond_151
    throw v0

    :catch_152
    move/from16 v17, v8

    const/4 v13, 0x1

    .line 163
    :catch_155
    :goto_155
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v2, v13, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid response item. Body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_170
    add-int/lit8 v8, v17, 0x1

    const/4 v13, 0x0

    goto/16 :goto_a8

    .line 173
    :cond_175
    :goto_175
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, v1, Lcom/mopub/network/MultiAdResponse;->mResponseIterator:Ljava/util/Iterator;

    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_197

    const/16 v0, 0x7530

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v16, :cond_18d

    .line 179
    invoke-virtual/range {v16 .. v16}, Lcom/mopub/network/AdResponse;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v0

    .line 181
    :cond_18d
    new-instance v2, Lcom/mopub/network/MoPubNetworkError;

    sget-object v3, Lcom/mopub/network/MoPubNetworkError$Reason;->NO_FILL:Lcom/mopub/network/MoPubNetworkError$Reason;

    const-string v4, "No ads found for ad unit."

    invoke-direct {v2, v4, v3, v0}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;Ljava/lang/Integer;)V

    throw v2

    :cond_197
    return-void
.end method

.method private static eventDataIsInResponseBody(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "mraid"

    .line 513
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "html"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "interstitial"

    .line 514
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "vast"

    if-eqz v0, :cond_20

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    :cond_20
    const-string v0, "rewarded_video"

    .line 515
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    :cond_2e
    const-string p1, "rewarded_playable"

    .line 516
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    goto :goto_39

    :cond_37
    const/4 p0, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 p0, 0x1

    :goto_3a
    return p0
.end method

.method private static extractRefreshTimeMS(Lorg/json/JSONObject;)Ljava/lang/Integer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 484
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 486
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->METADATA:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v0}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 487
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->REFRESH_TIME:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {p0, v0}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_17

    const/4 p0, 0x0

    goto :goto_21

    .line 488
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_21
    return-object p0
.end method

.method private static extractWarmup(Lorg/json/JSONObject;)Z
    .registers 3

    .line 492
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 494
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->METADATA:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v0}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 495
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->WARMUP:Lcom/mopub/common/util/ResponseHeader;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result p0

    return p0
.end method

.method protected static parseSingleAdResponse(Landroid/content/Context;Lcom/mopub/volley/NetworkResponse;Lorg/json/JSONObject;Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/network/AdResponse;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/mopub/network/MoPubNetworkError;
        }
    .end annotation

    const-string v0, "adm"

    .line 229
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 230
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 231
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 232
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 233
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 235
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->RESPONSE_RECEIVED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 p1, 0x1

    new-array v1, p1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 237
    new-instance p0, Lcom/mopub/network/AdResponse$Builder;

    invoke-direct {p0}, Lcom/mopub/network/AdResponse$Builder;-><init>()V

    .line 238
    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->CONTENT:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v1}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->METADATA:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v2}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 241
    invoke-virtual {p0, p3}, Lcom/mopub/network/AdResponse$Builder;->setAdUnitId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 244
    invoke-virtual {p0, v1}, Lcom/mopub/network/AdResponse$Builder;->setResponseBody(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 246
    sget-object p3, Lcom/mopub/common/util/ResponseHeader;->AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p3}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p3

    .line 247
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->AD_GROUP_ID:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, v4}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v4

    .line 248
    sget-object v5, Lcom/mopub/common/util/ResponseHeader;->FULL_AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, v5}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v5

    .line 249
    invoke-virtual {p0, p3}, Lcom/mopub/network/AdResponse$Builder;->setAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 250
    invoke-virtual {p0, v4}, Lcom/mopub/network/AdResponse$Builder;->setAdGroupId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 251
    invoke-virtual {p0, v5}, Lcom/mopub/network/AdResponse$Builder;->setFullAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 255
    invoke-static {p2}, Lcom/mopub/network/MultiAdResponse;->extractRefreshTimeMS(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object p2

    .line 256
    invoke-virtual {p0, p2}, Lcom/mopub/network/AdResponse$Builder;->setRefreshTimeMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    const-string p2, "clear"

    .line 258
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6e

    .line 259
    invoke-virtual {p0}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object p0

    return-object p0

    .line 262
    :cond_6e
    sget-object p2, Lcom/mopub/common/util/ResponseHeader;->DSP_CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p2

    .line 263
    invoke-virtual {p0, p2}, Lcom/mopub/network/AdResponse$Builder;->setDspCreativeId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 265
    sget-object p2, Lcom/mopub/common/util/ResponseHeader;->NETWORK_TYPE:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p2

    .line 266
    invoke-virtual {p0, p2}, Lcom/mopub/network/AdResponse$Builder;->setNetworkType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 268
    sget-object p2, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_DATA:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p2}, Lcom/mopub/network/HeaderUtils;->extractJsonObjectHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Lorg/json/JSONObject;

    move-result-object p2

    .line 269
    invoke-static {p2}, Lcom/mopub/network/ImpressionData;->create(Lorg/json/JSONObject;)Lcom/mopub/network/ImpressionData;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mopub/network/AdResponse$Builder;->setImpressionData(Lcom/mopub/network/ImpressionData;)Lcom/mopub/network/AdResponse$Builder;

    .line 273
    sget-object p2, Lcom/mopub/common/util/ResponseHeader;->CLICK_TRACKING_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p2

    .line 274
    invoke-virtual {p0, p2}, Lcom/mopub/network/AdResponse$Builder;->setClickTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 277
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_URLS:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, v4}, Lcom/mopub/network/HeaderUtils;->extractStringArray(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/util/List;

    move-result-object v4

    .line 279
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 282
    sget-object v6, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, v6}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_ab
    invoke-virtual {p0, v4}, Lcom/mopub/network/AdResponse$Builder;->setImpressionTrackingUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;

    .line 286
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->BEFORE_LOAD_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, v4}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mopub/network/AdResponse$Builder;->setBeforeLoadUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 288
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->AFTER_LOAD_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, v4}, Lcom/mopub/network/HeaderUtils;->extractStringArray(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/util/List;

    move-result-object v4

    .line 290
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 291
    sget-object v6, Lcom/mopub/common/util/ResponseHeader;->AFTER_LOAD_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, v6}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_cc
    invoke-virtual {p0, v4}, Lcom/mopub/network/AdResponse$Builder;->setAfterLoadUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;

    .line 295
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->AFTER_LOAD_SUCCESS_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, v4}, Lcom/mopub/network/HeaderUtils;->extractStringArray(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/util/List;

    move-result-object v4

    .line 297
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e4

    .line 298
    sget-object v6, Lcom/mopub/common/util/ResponseHeader;->AFTER_LOAD_SUCCESS_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, v6}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_e4
    invoke-virtual {p0, v4}, Lcom/mopub/network/AdResponse$Builder;->setAfterLoadSuccessUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;

    .line 302
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->AFTER_LOAD_FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, v4}, Lcom/mopub/network/HeaderUtils;->extractStringArray(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/util/List;

    move-result-object v4

    .line 304
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_fc

    .line 305
    sget-object v6, Lcom/mopub/common/util/ResponseHeader;->AFTER_LOAD_FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, v6}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_fc
    invoke-virtual {p0, v4}, Lcom/mopub/network/AdResponse$Builder;->setAfterLoadFailUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;

    .line 309
    invoke-virtual {p0, p6}, Lcom/mopub/network/AdResponse$Builder;->setRequestId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 311
    sget-object p6, Lcom/mopub/common/util/ResponseHeader;->WIDTH:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p6}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object p6

    .line 312
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->HEIGHT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, v4}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v4

    .line 313
    invoke-virtual {p0, p6, v4}, Lcom/mopub/network/AdResponse$Builder;->setDimensions(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 315
    sget-object p6, Lcom/mopub/common/util/ResponseHeader;->AD_TIMEOUT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p6}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object p6

    .line 316
    invoke-virtual {p0, p6}, Lcom/mopub/network/AdResponse$Builder;->setAdTimeoutDelayMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    const-string p6, "json"

    .line 318
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "json_video"

    if-nez v4, :cond_12a

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_132

    .line 320
    :cond_12a
    :try_start_12a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/mopub/network/AdResponse$Builder;->setJsonBody(Lorg/json/JSONObject;)Lcom/mopub/network/AdResponse$Builder;
    :try_end_132
    .catch Lorg/json/JSONException; {:try_start_12a .. :try_end_132} :catch_2ed

    .line 328
    :cond_132
    invoke-static {p4, p3, v5, v2}, Lcom/mopub/mobileads/AdTypeTranslator;->getCustomEventName(Lcom/mopub/common/AdFormat;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 330
    invoke-virtual {p0, v4}, Lcom/mopub/network/AdResponse$Builder;->setCustomEventClassName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 333
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->BROWSER_AGENT:Lcom/mopub/common/util/ResponseHeader;

    .line 334
    invoke-static {v2, v4}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v4

    .line 333
    invoke-static {v4}, Lcom/mopub/common/MoPub$BrowserAgent;->fromHeader(Ljava/lang/Integer;)Lcom/mopub/common/MoPub$BrowserAgent;

    move-result-object v4

    .line 335
    invoke-static {v4}, Lcom/mopub/common/MoPub;->setBrowserAgentFromAdServer(Lcom/mopub/common/MoPub$BrowserAgent;)V

    .line 336
    invoke-virtual {p0, v4}, Lcom/mopub/network/AdResponse$Builder;->setBrowserAgent(Lcom/mopub/common/MoPub$BrowserAgent;)Lcom/mopub/network/AdResponse$Builder;

    .line 339
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, v4}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15b

    .line 343
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->NATIVE_PARAMS:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, v4}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v4

    .line 348
    :cond_15b
    :try_start_15b
    invoke-static {v4}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4
    :try_end_15f
    .catch Lorg/json/JSONException; {:try_start_15b .. :try_end_15f} :catch_2e2

    .line 355
    :try_start_15f
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_170

    .line 356
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_170
    .catch Lorg/json/JSONException; {:try_start_15f .. :try_end_170} :catch_2d7

    .line 363
    :cond_170
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17b

    const-string v0, "clickthrough-url"

    .line 366
    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_17b
    sget-object p2, Lcom/mopub/common/util/ResponseHeader;->VAST_CLICK_ENABLED:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p2, v3}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_188

    goto :goto_189

    :cond_188
    const/4 p1, 0x0

    .line 376
    :goto_189
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com_mopub_vast_click_exp_enabled"

    .line 375
    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "adunit_format"

    .line 378
    invoke-interface {v4, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-static {p3, v5}, Lcom/mopub/network/MultiAdResponse;->eventDataIsInResponseBody(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1ad

    const-string p1, "html-response-body"

    .line 382
    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object p1, Lcom/mopub/common/util/ResponseHeader;->ORIENTATION:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com_mopub_orientation"

    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_1ad
    sget-object p1, Lcom/mopub/common/util/ResponseHeader;->ALLOW_CUSTOM_CLOSE:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p1, v3}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result p1

    .line 387
    invoke-virtual {p0, p1}, Lcom/mopub/network/AdResponse$Builder;->setAllowCustomClose(Z)Lcom/mopub/network/AdResponse$Builder;

    .line 389
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c2

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f5

    .line 390
    :cond_1c2
    sget-object p1, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p1}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p1

    .line 392
    sget-object p2, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p2

    .line 394
    sget-object p5, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PX:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p5}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p5

    .line 396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_1df

    const-string p6, "impression-min-visible-percent"

    .line 397
    invoke-interface {v4, p6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_1df
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1ea

    const-string p1, "impression-visible-ms"

    .line 401
    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_1ea
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1f5

    const-string p1, "impression-min-visible-px"

    .line 404
    invoke-interface {v4, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_1f5
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21c

    .line 409
    sget-object p1, Lcom/mopub/common/util/ResponseHeader;->PLAY_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 410
    invoke-static {v2, p1}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "play-visible-percent"

    .line 409
    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object p1, Lcom/mopub/common/util/ResponseHeader;->PAUSE_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 412
    invoke-static {v2, p1}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pause-visible-percent"

    .line 411
    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object p1, Lcom/mopub/common/util/ResponseHeader;->MAX_BUFFER_MS:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "max-buffer-ms"

    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_21c
    sget-object p1, Lcom/mopub/common/util/ResponseHeader;->VIDEO_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p1

    .line 419
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_22d

    const-string p2, "video-trackers"

    .line 420
    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22d
    const-string p1, "rewarded_video"

    .line 422
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_245

    const-string p2, "interstitial"

    .line 423
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_250

    const-string p2, "vast"

    .line 424
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_250

    .line 425
    :cond_245
    sget-object p2, Lcom/mopub/common/util/ResponseHeader;->VIDEO_VIEWABILITY_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

    .line 426
    invoke-static {v2, p2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p2

    const-string p5, "external-video-viewability-trackers"

    .line 425
    invoke-interface {v4, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_250
    sget-object p2, Lcom/mopub/common/AdFormat;->BANNER:Lcom/mopub/common/AdFormat;

    invoke-virtual {p2, p4}, Lcom/mopub/common/AdFormat;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26e

    .line 431
    sget-object p2, Lcom/mopub/common/util/ResponseHeader;->BANNER_IMPRESSION_MIN_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    .line 432
    invoke-static {v2, p2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "banner-impression-min-ms"

    .line 431
    invoke-interface {v4, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object p2, Lcom/mopub/common/util/ResponseHeader;->BANNER_IMPRESSION_MIN_VISIBLE_DIPS:Lcom/mopub/common/util/ResponseHeader;

    .line 434
    invoke-static {v2, p2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "banner-impression-min-pixels"

    .line 433
    invoke-interface {v4, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_26e
    sget-object p2, Lcom/mopub/common/util/ResponseHeader;->DISABLE_VIEWABILITY:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p2

    .line 440
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_283

    .line 442
    invoke-static {p2}, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->fromKey(Ljava/lang/String;)Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    move-result-object p2

    if-eqz p2, :cond_283

    .line 444
    invoke-virtual {p2}, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->disable()V

    .line 448
    :cond_283
    invoke-virtual {p0, v4}, Lcom/mopub/network/AdResponse$Builder;->setServerExtras(Ljava/util/Map;)Lcom/mopub/network/AdResponse$Builder;

    .line 450
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29c

    const-string p1, "custom"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29c

    const-string p1, "rewarded_playable"

    .line 451
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d2

    .line 452
    :cond_29c
    sget-object p1, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_NAME:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p1

    .line 454
    sget-object p2, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_AMOUNT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p2}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p2

    .line 456
    sget-object p3, Lcom/mopub/common/util/ResponseHeader;->REWARDED_CURRENCIES:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p3}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p3

    .line 458
    sget-object p4, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_COMPLETION_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p4}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p4

    .line 460
    sget-object p5, Lcom/mopub/common/util/ResponseHeader;->REWARDED_DURATION:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p5}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object p5

    .line 462
    sget-object p6, Lcom/mopub/common/util/ResponseHeader;->SHOULD_REWARD_ON_CLICK:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v2, p6, v3}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result p6

    .line 464
    invoke-virtual {p0, p1}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCurrencyName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 465
    invoke-virtual {p0, p2}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCurrencyAmount(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 466
    invoke-virtual {p0, p3}, Lcom/mopub/network/AdResponse$Builder;->setRewardedCurrencies(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 467
    invoke-virtual {p0, p4}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCompletionUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 468
    invoke-virtual {p0, p5}, Lcom/mopub/network/AdResponse$Builder;->setRewardedDuration(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 469
    invoke-virtual {p0, p6}, Lcom/mopub/network/AdResponse$Builder;->setShouldRewardOnClick(Z)Lcom/mopub/network/AdResponse$Builder;

    .line 472
    :cond_2d2
    invoke-virtual {p0}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object p0

    return-object p0

    :catch_2d7
    move-exception p0

    .line 359
    new-instance p1, Lcom/mopub/network/MoPubNetworkError;

    sget-object p2, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_BODY:Lcom/mopub/network/MoPubNetworkError$Reason;

    const-string p3, "Failed to parse ADM for advanced bidding"

    invoke-direct {p1, p3, p0, p2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    throw p1

    :catch_2e2
    move-exception p0

    .line 350
    new-instance p1, Lcom/mopub/network/MoPubNetworkError;

    sget-object p2, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_HEADER_DATA:Lcom/mopub/network/MoPubNetworkError$Reason;

    const-string p3, "Failed to decode server extras for custom event data."

    invoke-direct {p1, p3, p0, p2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    throw p1

    :catch_2ed
    move-exception p0

    .line 322
    new-instance p1, Lcom/mopub/network/MoPubNetworkError;

    sget-object p2, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_BODY:Lcom/mopub/network/MoPubNetworkError$Reason;

    const-string p3, "Failed to decode body JSON for native ad format"

    invoke-direct {p1, p3, p0, p2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    throw p1
.end method

.method private static parseStringBody(Lcom/mopub/volley/NetworkResponse;)Ljava/lang/String;
    .registers 4

    .line 500
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 504
    :try_start_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/volley/NetworkResponse;->data:[B

    iget-object v2, p0, Lcom/mopub/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_10} :catch_11

    goto :goto_18

    .line 506
    :catch_11
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/mopub/volley/NetworkResponse;->data:[B

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :goto_18
    return-object v0
.end method

.method public static setServerOverrideListener(Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;)V
    .registers 1

    .line 205
    sput-object p0, Lcom/mopub/network/MultiAdResponse;->sServerOverrideListener:Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    return-void
.end method


# virtual methods
.method public getFailURL()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/mopub/network/MultiAdResponse;->mFailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/mopub/network/MultiAdResponse;->mResponseIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method isWaterfallFinished()Z
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/mopub/network/MultiAdResponse;->mFailUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public next()Lcom/mopub/network/AdResponse;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/mopub/network/MultiAdResponse;->mResponseIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/network/AdResponse;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 52
    invoke-virtual {p0}, Lcom/mopub/network/MultiAdResponse;->next()Lcom/mopub/network/AdResponse;

    move-result-object v0

    return-object v0
.end method
