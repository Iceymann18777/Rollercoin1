.class public Lcom/startapp/android/publish/ads/video/VASTJson;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private admtag:Ljava/lang/String;

.field private campaign_id:Ljava/lang/String;

.field private ttl_sec:Ljava/lang/String;

.field private vasttag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdmTag()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/VASTJson;->admtag:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/VASTJson;->campaign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTtlSec()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/VASTJson;->ttl_sec:Ljava/lang/String;

    return-object v0
.end method

.method public getVastTag()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/VASTJson;->vasttag:Ljava/lang/String;

    return-object v0
.end method
