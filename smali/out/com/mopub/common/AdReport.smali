.class public Lcom/mopub/common/AdReport;
.super Ljava/lang/Object;
.source "AdReport.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAdResponse:Lcom/mopub/network/AdResponse;

.field private final mAdUnitId:Ljava/lang/String;

.field private final mAdvertisingId:Lcom/mopub/common/privacy/AdvertisingId;

.field private final mDeviceLocale:Ljava/util/Locale;

.field private final mDeviceModel:Ljava/lang/String;

.field private final mSdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/ClientMetadata;Lcom/mopub/network/AdResponse;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mopub/common/AdReport;->mAdUnitId:Ljava/lang/String;

    .line 31
    invoke-virtual {p2}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/AdReport;->mSdkVersion:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/AdReport;->mDeviceModel:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Lcom/mopub/common/ClientMetadata;->getDeviceLocale()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/AdReport;->mDeviceLocale:Ljava/util/Locale;

    .line 34
    invoke-virtual {p2}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/AdReport;->mAdvertisingId:Lcom/mopub/common/privacy/AdvertisingId;

    .line 35
    iput-object p3, p0, Lcom/mopub/common/AdReport;->mAdResponse:Lcom/mopub/network/AdResponse;

    return-void
.end method


# virtual methods
.method public getDspCreativeId()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/mopub/common/AdReport;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getDspCreativeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseString()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/mopub/common/AdReport;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getStringBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldAllowCustomClose()Z
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/mopub/common/AdReport;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->allowCustomClose()Z

    move-result v0

    return v0
.end method
