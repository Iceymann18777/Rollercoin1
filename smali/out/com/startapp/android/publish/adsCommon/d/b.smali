.class public Lcom/startapp/android/publish/adsCommon/d/b;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adTag:Ljava/lang/String;

.field private clientSessionId:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private nonImpressionReason:Ljava/lang/String;

.field private offset:I

.field private profileId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/d/b;->adTag:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/g;->d()Lcom/startapp/android/publish/adsCommon/Utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/Utils/g;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/d/b;->clientSessionId:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getProfileId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/d/b;->profileId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/startapp/android/publish/adsCommon/d/b;->offset:I

    return-void
.end method

.method private getAdTagQuery()Ljava/lang/String;
    .registers 5

    .line 107
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/d/b;->adTag:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 108
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/d/b;->adTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1c

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/d/b;->adTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 109
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&adTag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/d/b;->adTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/adsCommon/d/b;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_39
    return-object v1
.end method

.method private getClientSessionIdQuery()Ljava/lang/String;
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/d/b;->clientSessionId:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&clientSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/d/b;->clientSessionId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/adsCommon/d/b;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    const-string v0, ""

    return-object v0
.end method

.method private getLocationQuery()Ljava/lang/String;
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/d/b;->location:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&locations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/d/b;->location:Ljava/lang/String;

    invoke-static {v1}, Lcom/startapp/common/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/adsCommon/d/b;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    return-object v1
.end method

.method private getNonImpressionReasonQuery()Ljava/lang/String;
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/d/b;->nonImpressionReason:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&isShown=false&reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/d/b;->nonImpressionReason:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/adsCommon/d/b;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    return-object v1
.end method

.method private getProfileIdQuery()Ljava/lang/String;
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/d/b;->profileId:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/d/b;->profileId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/adsCommon/d/b;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method protected encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    .line 133
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    const-string p1, ""

    return-object p1
.end method

.method public getAdTag()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/d/b;->adTag:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSessionId()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/d/b;->clientSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getNonImpressionReason()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/d/b;->nonImpressionReason:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/d/b;->offset:I

    return v0
.end method

.method protected getOffsetQuery()Ljava/lang/String;
    .registers 3

    .line 99
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/d/b;->offset:I

    if-lez v0, :cond_18

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/adsCommon/d/b;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    const-string v0, ""

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/d/b;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .registers 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/d/b;->getAdTagQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/d/b;->getClientSessionIdQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/d/b;->getProfileIdQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/d/b;->getOffsetQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/d/b;->getNonImpressionReasonQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/d/b;->getLocationQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLocation(Landroid/content/Context;)V
    .registers 4

    .line 72
    :try_start_0
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/adsCommon/m;->h(Landroid/content/Context;)V

    .line 73
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getLocationConfig()Lcom/startapp/android/publish/common/metaData/LocationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/LocationConfig;->isFiEnabled()Z

    move-result v0

    .line 74
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getLocationConfig()Lcom/startapp/android/publish/common/metaData/LocationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/LocationConfig;->isCoEnabled()Z

    move-result v1

    .line 73
    invoke-static {p1, v0, v1}, Lcom/startapp/common/a/f;->a(Landroid/content/Context;ZZ)Ljava/util/List;

    move-result-object p1

    .line 75
    invoke-static {p1}, Lcom/startapp/common/a/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/d/b;->location:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_2d

    :catch_2a
    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/d/b;->location:Ljava/lang/String;

    :goto_2d
    return-void
.end method

.method public setNonImpressionReason(Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/d/b;
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/d/b;->nonImpressionReason:Ljava/lang/String;

    return-object p0
.end method

.method public setOffset(I)Lcom/startapp/android/publish/adsCommon/d/b;
    .registers 2

    .line 58
    iput p1, p0, Lcom/startapp/android/publish/adsCommon/d/b;->offset:I

    return-object p0
.end method
