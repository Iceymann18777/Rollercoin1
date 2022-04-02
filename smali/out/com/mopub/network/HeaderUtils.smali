.class public Lcom/mopub/network/HeaderUtils;
.super Ljava/lang/Object;
.source "HeaderUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z
    .registers 3

    .line 62
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/mopub/network/HeaderUtils;->formatBooleanHeader(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;
    .registers 2

    .line 30
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p0, :cond_8

    const-string p0, ""

    return-object p0

    .line 36
    :cond_8
    invoke-virtual {p1}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;
    .registers 2

    .line 53
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/network/HeaderUtils;->formatIntHeader(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;I)Ljava/lang/Integer;
    .registers 3

    .line 58
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/mopub/network/HeaderUtils;->formatIntHeader(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static extractJsonObjectHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Lorg/json/JSONObject;
    .registers 2

    .line 42
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p0, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_7
    invoke-virtual {p1}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static extractPercentHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;
    .registers 2

    .line 67
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/network/HeaderUtils;->formatPercentHeader(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static extractPercentHeaderString(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;
    .registers 2

    .line 96
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractPercentHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 97
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method static extractStringArray(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/mopub/common/util/ResponseHeader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {p1}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_16

    return-object v0

    :cond_16
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 82
    :goto_18
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_50

    .line 84
    :try_start_1e
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_25} :catch_26

    goto :goto_4d

    .line 86
    :catch_26
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_50
    return-object v0
.end method

.method private static formatBooleanHeader(Ljava/lang/String;Z)Z
    .registers 2

    if-nez p0, :cond_3

    return p1

    :cond_3
    const-string p1, "1"

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static formatIntHeader(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 119
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 126
    :catch_9
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 130
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    const/4 p0, 0x0

    return-object p0
.end method

.method private static formatIntHeader(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 2

    .line 109
    invoke-static {p0}, Lcom/mopub/network/HeaderUtils;->formatIntHeader(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_a

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method private static formatPercentHeader(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "%"

    const-string v2, ""

    .line 143
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/network/HeaderUtils;->formatIntHeader(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 145
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_22

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_21

    goto :goto_22

    :cond_21
    return-object p0

    :cond_22
    :goto_22
    return-object v0
.end method
