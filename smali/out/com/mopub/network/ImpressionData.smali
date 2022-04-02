.class public Lcom/mopub/network/ImpressionData;
.super Ljava/lang/Object;
.source "ImpressionData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/ImpressionData$SerializableJson;
    }
.end annotation


# static fields
.field public static final ADGROUP_ID:Ljava/lang/String; = "adgroup_id"

.field public static final ADGROUP_NAME:Ljava/lang/String; = "adgroup_name"

.field public static final ADGROUP_PRIORITY:Ljava/lang/String; = "adgroup_priority"

.field public static final ADGROUP_TYPE:Ljava/lang/String; = "adgroup_type"

.field public static final ADUNIT_FORMAT:Ljava/lang/String; = "adunit_format"

.field public static final ADUNIT_ID:Ljava/lang/String; = "adunit_id"

.field public static final ADUNIT_NAME:Ljava/lang/String; = "adunit_name"

.field public static final APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final CURRENCY:Ljava/lang/String; = "currency"

.field public static final IMPRESSION_ID:Ljava/lang/String; = "id"

.field public static final NETWORK_NAME:Ljava/lang/String; = "network_name"

.field public static final NETWORK_PLACEMENT_ID:Ljava/lang/String; = "network_placement_id"

.field public static final PRECISION:Ljava/lang/String; = "precision"

.field public static final PUBLISHER_REVENUE:Ljava/lang/String; = "publisher_revenue"

.field private static final serialVersionUID:J = 0x4fL


# instance fields
.field private mJson:Lcom/mopub/network/ImpressionData$SerializableJson;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/mopub/network/ImpressionData$SerializableJson;

    invoke-direct {v0, p1}, Lcom/mopub/network/ImpressionData$SerializableJson;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    return-void
.end method

.method static create(Lorg/json/JSONObject;)Lcom/mopub/network/ImpressionData;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 57
    :cond_4
    :try_start_4
    new-instance v1, Lcom/mopub/network/ImpressionData;

    invoke-direct {v1, p0}, Lcom/mopub/network/ImpressionData;-><init>(Lorg/json/JSONObject;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    return-object v1

    :catch_a
    move-exception p0

    .line 59
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 163
    new-instance v0, Lcom/mopub/network/ImpressionData$SerializableJson;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mopub/network/ImpressionData$SerializableJson;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 158
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    invoke-virtual {v0}, Lcom/mopub/network/ImpressionData$SerializableJson;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdGroupId()Ljava/lang/String;
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    const-string v1, "adgroup_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/ImpressionData$SerializableJson;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdGroupName()Ljava/lang/String;
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    const-string v1, "adgroup_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/ImpressionData$SerializableJson;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdGroupPriority()Ljava/lang/Integer;
    .registers 3

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    const-string v1, "adgroup_priority"

    invoke-virtual {v0, v1}, Lcom/mopub/network/ImpressionData$SerializableJson;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdGroupType()Ljava/lang/String;
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    const-string v1, "adgroup_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/ImpressionData$SerializableJson;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitFormat()Ljava/lang/String;
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    const-string v1, "adunit_format"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/ImpressionData$SerializableJson;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    const-string v1, "adunit_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/ImpressionData$SerializableJson;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitName()Ljava/lang/String;
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    const-string v1, "adunit_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/ImpressionData$SerializableJson;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    const-string v1, "app_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/ImpressionData$SerializableJson;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    const-string v1, "country"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/ImpressionData$SerializableJson;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    const-string v1, "currency"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/ImpressionData$SerializableJson;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/ImpressionData$SerializableJson;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsonRepresentation()Lorg/json/JSONObject;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    const-string v1, "network_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/ImpressionData$SerializableJson;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    const-string v1, "network_placement_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/ImpressionData$SerializableJson;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()Ljava/lang/String;
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    const-string v1, "precision"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/ImpressionData$SerializableJson;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherRevenue()Ljava/lang/Double;
    .registers 3

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/mopub/network/ImpressionData;->mJson:Lcom/mopub/network/ImpressionData$SerializableJson;

    const-string v1, "publisher_revenue"

    invoke-virtual {v0, v1}, Lcom/mopub/network/ImpressionData$SerializableJson;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    const/4 v0, 0x0

    return-object v0
.end method
