.class public abstract Lcom/startapp/android/publish/adsCommon/BaseRequest;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/Utils/NameValueSerializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adsCommon/BaseRequest$a;
    }
.end annotation


# static fields
.field private static final OS:Ljava/lang/String; = "android"


# instance fields
.field private androidId:Ljava/lang/String;

.field private appCode:I

.field private appOnForeground:Ljava/lang/Boolean;

.field private appVersion:Ljava/lang/String;

.field private blat:Ljava/lang/String;

.field private blon:Ljava/lang/String;

.field private bssid:Ljava/lang/String;

.field private cellSignalLevel:Ljava/lang/String;

.field private cellTimingAdv:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private clientSessionId:Ljava/lang/String;

.field private density:F

.field private deviceIP:Ljava/lang/String;

.field private deviceVersion:Ljava/lang/String;

.field private frameworksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private inputLangs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private installerPkg:Ljava/lang/String;

.field private isp:Ljava/lang/String;

.field private ispName:Ljava/lang/String;

.field private lac:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private netOper:Ljava/lang/String;

.field private networkOperName:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private packageId:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private personalizedAdsServing:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field protected retry:Ljava/lang/Integer;

.field private roaming:Ljava/lang/Boolean;

.field private root:Z

.field private sdkFlavor:J

.field private sdkId:I

.field private sdkVersion:Ljava/lang/String;

.field private signalLevel:Ljava/lang/String;

.field private simulator:Z

.field private ssid:Ljava/lang/String;

.field private subProductId:Ljava/lang/String;

.field private subPublisherId:Ljava/lang/String;

.field private unknownSourcesAllowed:Ljava/lang/Boolean;

.field private usbDebug:Z

.field private userAdvertisingId:Lcom/startapp/common/a/b$c;

.field private wfScanRes:Ljava/lang/String;

.field private width:I

.field private wifiRSSILevel:Ljava/lang/String;

.field private wifiSignalLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->parameters:Ljava/util/Map;

    .line 51
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->sdkVersion:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/math/BigInteger;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants;->i:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->sdkFlavor:J

    .line 54
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->frameworksMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->locations:Ljava/util/List;

    const-string v0, "android"

    .line 93
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->os:Ljava/lang/String;

    const/4 v0, 0x3

    .line 100
    iput v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->sdkId:I

    return-void
.end method

.method private addParams(Lcom/startapp/android/publish/adsCommon/Utils/e;)V
    .registers 9

    .line 608
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->publisherId:Ljava/lang/String;

    const-string v1, "publisherId"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 609
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->productId:Ljava/lang/String;

    const-string v1, "productId"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 610
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->os:Ljava/lang/String;

    const-string v1, "os"

    invoke-virtual {p1, v1, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 611
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->sdkVersion:Ljava/lang/String;

    const-string v1, "sdkVersion"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 612
    iget-wide v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->sdkFlavor:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "flavor"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 613
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->frameworksMap:Ljava/util/Map;

    const-string v1, ""

    if-eqz v0, :cond_7f

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 615
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->frameworksMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v1

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 616
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->frameworksMap:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_40

    .line 618
    :cond_71
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "frameworksData"

    invoke-virtual {p1, v4, v0, v2, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 621
    :cond_7f
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->packageId:Ljava/lang/String;

    const-string v4, "packageId"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 622
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->installerPkg:Ljava/lang/String;

    const-string v4, "installerPkg"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 623
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->userAdvertisingId:Lcom/startapp/common/a/b$c;

    if-eqz v0, :cond_bd

    .line 624
    invoke-virtual {v0}, Lcom/startapp/common/a/b$c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "userAdvertisingId"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 625
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->userAdvertisingId:Lcom/startapp/common/a/b$c;

    invoke-virtual {v0}, Lcom/startapp/common/a/b$c;->b()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 626
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->userAdvertisingId:Lcom/startapp/common/a/b$c;

    invoke-virtual {v0}, Lcom/startapp/common/a/b$c;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "limat"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 628
    :cond_b1
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->userAdvertisingId:Lcom/startapp/common/a/b$c;

    invoke-virtual {v0}, Lcom/startapp/common/a/b$c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v4, "advertisingIdSource"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_c6

    .line 629
    :cond_bd
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->androidId:Ljava/lang/String;

    if-eqz v0, :cond_c6

    const-string v4, "userId"

    .line 630
    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 633
    :cond_c6
    :goto_c6
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->model:Ljava/lang/String;

    const-string v4, "model"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 634
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->manufacturer:Ljava/lang/String;

    const-string v4, "manufacturer"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 635
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->deviceVersion:Ljava/lang/String;

    const-string v4, "deviceVersion"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 636
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->locale:Ljava/lang/String;

    const-string v4, "locale"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 637
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->inputLangs:Ljava/util/Set;

    const-string v4, "inputLangs"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 639
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->isp:Ljava/lang/String;

    const-string v4, "isp"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 640
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->ispName:Ljava/lang/String;

    const-string v4, "ispName"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 641
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getNetOper()Ljava/lang/String;

    move-result-object v0

    const-string v4, "netOper"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 642
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getNetworkOperName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "networkOperName"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 643
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getCid()Ljava/lang/String;

    move-result-object v0

    const-string v4, "cid"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 644
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getLac()Ljava/lang/String;

    move-result-object v0

    const-string v4, "lac"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 645
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getBlat()Ljava/lang/String;

    move-result-object v0

    const-string v4, "blat"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 646
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getBlon()Ljava/lang/String;

    move-result-object v0

    const-string v4, "blon"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 647
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getSsid()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ssid"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 648
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getBssid()Ljava/lang/String;

    move-result-object v0

    const-string v4, "bssid"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 649
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getWfScanRes()Ljava/lang/String;

    move-result-object v0

    const-string v4, "wfScanRes"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 651
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->subPublisherId:Ljava/lang/String;

    const-string v4, "subPublisherId"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 652
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->subProductId:Ljava/lang/String;

    const-string v4, "subProductId"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 653
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->retry:Ljava/lang/Integer;

    const-string v4, "retryCount"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 654
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->isRoaming()Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "roaming"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 655
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    const-string v4, "deviceIP"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 656
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "grid"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 657
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getSignalLevel()Ljava/lang/String;

    move-result-object v0

    const-string v4, "silev"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 658
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getCellSignalLevel()Ljava/lang/String;

    move-result-object v0

    const-string v4, "cellSignalLevel"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 661
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getWifiSignalLevel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_199

    .line 662
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getWifiSignalLevel()Ljava/lang/String;

    move-result-object v0

    const-string v4, "wifiSignalLevel"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 665
    :cond_199
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getWifiRssiLevel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a8

    .line 666
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getWifiRssiLevel()Ljava/lang/String;

    move-result-object v0

    const-string v4, "wifiRssiLevel"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 668
    :cond_1a8
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getCellTimingAdv()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b7

    .line 669
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getCellTimingAdv()Ljava/lang/String;

    move-result-object v0

    const-string v4, "cellTimingAdv"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 672
    :cond_1b7
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->isUnknownSourcesAllowed()Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "outsource"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 674
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->width:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "width"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 675
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->height:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "height"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 676
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->density:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v4, "density"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 677
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->isAppOnForeground()Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "fgApp"

    invoke-virtual {p1, v4, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 679
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->sdkId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "sdkId"

    invoke-virtual {p1, v4, v0, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 681
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->clientSessionId:Ljava/lang/String;

    const-string v3, "clientSessionId"

    invoke-virtual {p1, v3, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 683
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->appVersion:Ljava/lang/String;

    const-string v3, "appVersion"

    invoke-virtual {p1, v3, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 684
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->appCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "appCode"

    invoke-virtual {p1, v3, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 686
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getTimeSinceBoot()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "timeSinceBoot"

    invoke-virtual {p1, v3, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 688
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getLocations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_244

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getLocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_244

    .line 689
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getLocations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/common/a/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_244

    .line 690
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_244

    .line 691
    invoke-static {v0}, Lcom/startapp/common/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "locations"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 695
    :cond_244
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->usbDebug:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "udbg"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 696
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->root:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "root"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 697
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->simulator:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "smltr"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 699
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->personalizedAdsServing:Ljava/lang/String;

    const-string v1, "pas"

    invoke-virtual {p1, v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private fillCellLocationDetails(Landroid/content/Context;Landroid/telephony/TelephonyManager;)V
    .registers 4

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 732
    invoke-static {p1, v0}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v0}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 733
    :cond_10
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 735
    instance-of p2, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz p2, :cond_3b

    .line 736
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 737
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/startapp/common/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setCid(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/startapp/common/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setLac(Ljava/lang/String;)V

    goto :goto_5f

    .line 739
    :cond_3b
    instance-of p2, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz p2, :cond_5f

    .line 740
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 741
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/startapp/common/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setBlat(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/startapp/common/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setBlon(Ljava/lang/String;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method private fillNetworkOperatorDetails(Landroid/content/Context;Landroid/telephony/TelephonyManager;)V
    .registers 4

    .line 716
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    if-eqz p1, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    .line 719
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 721
    invoke-static {p1}, Lcom/startapp/common/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setNetOper(Ljava/lang/String;)V

    .line 723
    :cond_16
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 725
    invoke-static {p1}, Lcom/startapp/common/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setNetworkOperName(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private fillSimDetails(Landroid/telephony/TelephonyManager;)V
    .registers 4

    .line 709
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    .line 710
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setIsp(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setIspName(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method private fillWifiDetails(Landroid/content/Context;Z)V
    .registers 6

    .line 795
    :try_start_0
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->isWfScanEnabled()Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string v0, "wifi"

    .line 796
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_8a

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 798
    invoke-static {p1, v1}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 799
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 800
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 802
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setDeviceIP(Landroid/net/wifi/WifiInfo;)V

    .line 803
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 804
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_42

    .line 806
    invoke-static {v2}, Lcom/startapp/common/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setSsid(Ljava/lang/String;)V

    :cond_42
    if-eqz v1, :cond_4b

    .line 809
    invoke-static {v1}, Lcom/startapp/common/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setBssid(Ljava/lang/String;)V

    :cond_4b
    if-eqz p2, :cond_8a

    .line 815
    invoke-static {p1, v0}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8a

    .line 816
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8a

    .line 817
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_61
    const/4 v1, 0x5

    .line 818
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_7d

    .line 819
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 820
    new-instance v2, Lcom/startapp/android/publish/adsCommon/BaseRequest$a;

    invoke-direct {v2, v1}, Lcom/startapp/android/publish/adsCommon/BaseRequest$a;-><init>(Landroid/net/wifi/ScanResult;)V

    .line 821
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_7d
    const-string p1, ";"

    .line 823
    invoke-static {p1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/startapp/common/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setWfScanRes(Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8a} :catch_8a

    :catch_8a
    :cond_8a
    return-void
.end method

.method private getCellTimingAdv()Ljava/lang/String;
    .registers 2

    .line 749
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->cellTimingAdv:Ljava/lang/String;

    return-object v0
.end method

.method private static getTimeSinceBoot()J
    .registers 2

    .line 757
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private setAndroidId(Landroid/content/Context;)V
    .registers 5

    const-string v0, "com.google.android.gms"

    const/4 v1, 0x0

    .line 156
    invoke-static {p1, v0, v1}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 159
    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 162
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2f

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->androidId:Ljava/lang/String;
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_2f} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_2f

    :catch_2f
    :cond_2f
    return-void
.end method

.method private setCellTimingAdv(Landroid/content/Context;Landroid/telephony/TelephonyManager;)V
    .registers 3

    .line 753
    invoke-static {p1, p2}, Lcom/startapp/common/a/c;->b(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->cellTimingAdv:Ljava/lang/String;

    return-void
.end method

.method private setNetworkLevels(Landroid/content/Context;)V
    .registers 4

    const-string v0, "e106"

    .line 203
    :try_start_2
    invoke-static {}, Lcom/startapp/common/c;->a()Lcom/startapp/common/c;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 206
    invoke-virtual {v1}, Lcom/startapp/common/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->cellSignalLevel:Ljava/lang/String;

    const/4 v0, 0x0

    .line 209
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->isWfScanEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 210
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->networkType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/startapp/common/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/startapp/common/a/h$b;

    move-result-object v0

    :cond_1f
    if-eqz v0, :cond_4d

    .line 213
    invoke-virtual {v0}, Lcom/startapp/common/a/h$b;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3a

    .line 214
    invoke-virtual {v0}, Lcom/startapp/common/a/h$b;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->signalLevel:Ljava/lang/String;

    .line 215
    invoke-virtual {v0}, Lcom/startapp/common/a/h$b;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->wifiRSSILevel:Ljava/lang/String;

    .line 216
    invoke-virtual {v0}, Lcom/startapp/common/a/h$b;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->wifiSignalLevel:Ljava/lang/String;

    goto :goto_5a

    .line 218
    :cond_3a
    invoke-virtual {v0}, Lcom/startapp/common/a/h$b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->signalLevel:Ljava/lang/String;

    .line 219
    invoke-virtual {v0}, Lcom/startapp/common/a/h$b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->wifiRSSILevel:Ljava/lang/String;

    .line 220
    invoke-virtual {v0}, Lcom/startapp/common/a/h$b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->wifiSignalLevel:Ljava/lang/String;

    goto :goto_5a

    .line 223
    :cond_4d
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->cellSignalLevel:Ljava/lang/String;

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->signalLevel:Ljava/lang/String;

    goto :goto_5a

    .line 226
    :cond_52
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->signalLevel:Ljava/lang/String;

    .line 227
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->cellSignalLevel:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->wifiSignalLevel:Ljava/lang/String;

    .line 229
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->wifiRSSILevel:Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5a} :catch_5a

    :catch_5a
    :goto_5a
    return-void
.end method

.method private setNetworkType(Landroid/content/Context;)V
    .registers 2

    .line 198
    invoke-static {p1}, Lcom/startapp/common/a/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->networkType:Ljava/lang/String;

    return-void
.end method

.method public static setUsingLocation(Landroid/content/Context;Z)V
    .registers 3

    .line 790
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "shared_prefs_using_location"

    invoke-static {p0, v0, p1}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public fillApplicationDetails(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 4

    const/4 v0, 0x1

    .line 519
    invoke-virtual {p0, p1, p2, v0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->fillApplicationDetails(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Z)V

    return-void
.end method

.method public fillApplicationDetails(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Z)V
    .registers 5

    .line 523
    invoke-virtual {p2}, Lcom/startapp/android/publish/common/model/AdPreferences;->getPublisherId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setPublisherId(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Lcom/startapp/android/publish/common/model/AdPreferences;->getProductId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setProductId(Ljava/lang/String;)V

    .line 525
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->frameworksMap:Ljava/util/Map;

    const-string v0, "sharedPrefsWrappers"

    invoke-static {p1, v0, p2}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->frameworksMap:Ljava/util/Map;

    .line 526
    sget-object p2, Lcom/startapp/android/publish/adsCommon/AdsConstants;->g:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_32

    .line 527
    invoke-static {}, Lcom/startapp/common/a/b;->a()Lcom/startapp/common/a/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/startapp/common/a/b;->a(Landroid/content/Context;)Lcom/startapp/common/a/b$c;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setUserAdvertisingId(Lcom/startapp/common/a/b$c;)V

    .line 529
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->userAdvertisingId:Lcom/startapp/common/a/b$c;

    if-nez p2, :cond_32

    .line 531
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setAndroidId(Landroid/content/Context;)V

    .line 535
    :cond_32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setPackageId(Ljava/lang/String;)V

    .line 536
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setInstallerPkg(Ljava/lang/String;)V

    .line 537
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setManufacturer(Ljava/lang/String;)V

    .line 538
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setModel(Ljava/lang/String;)V

    .line 539
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setDeviceVersion(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setLocale(Ljava/lang/String;)V

    .line 541
    invoke-static {p1}, Lcom/startapp/common/a/c;->b(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setInputLangs(Ljava/util/Set;)V

    .line 542
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setWidth(I)V

    .line 543
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setHeight(I)V

    .line 544
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setDensity(F)V

    .line 545
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setAppOnForeground(Landroid/content/Context;)V

    .line 547
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/Utils/g;->d()Lcom/startapp/android/publish/adsCommon/Utils/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/Utils/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setSessionId(Ljava/lang/String;)V

    .line 550
    invoke-static {p1}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setUnknownSourcesAllowed(Ljava/lang/Boolean;)V

    .line 552
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setRoaming(Landroid/content/Context;)V

    .line 553
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setNetworkType(Landroid/content/Context;)V

    .line 554
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setNetworkLevels(Landroid/content/Context;)V

    .line 556
    invoke-static {p1}, Lcom/startapp/common/a/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setAppVersion(Ljava/lang/String;)V

    .line 557
    invoke-static {p1}, Lcom/startapp/common/a/c;->d(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setAppCode(I)V

    :try_start_c2
    const-string p2, "phone"

    .line 559
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    if-eqz p2, :cond_d8

    .line 561
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->fillSimDetails(Landroid/telephony/TelephonyManager;)V

    .line 562
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->fillNetworkOperatorDetails(Landroid/content/Context;Landroid/telephony/TelephonyManager;)V

    .line 563
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->fillCellLocationDetails(Landroid/content/Context;Landroid/telephony/TelephonyManager;)V

    .line 564
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setCellTimingAdv(Landroid/content/Context;Landroid/telephony/TelephonyManager;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_d8} :catch_d8

    .line 570
    :catch_d8
    :cond_d8
    invoke-direct {p0, p1, p3}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->fillWifiDetails(Landroid/content/Context;Z)V

    .line 572
    invoke-static {p1}, Lcom/startapp/common/a/c;->g(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->usbDebug:Z

    .line 573
    invoke-static {p1}, Lcom/startapp/common/a/c;->h(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->root:Z

    .line 574
    invoke-static {p1}, Lcom/startapp/common/a/c;->i(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->simulator:Z

    const/4 p2, 0x0

    const-string p3, "USER_CONSENT_PERSONALIZED_ADS_SERVING"

    .line 576
    invoke-static {p1, p3, p2}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->personalizedAdsServing:Ljava/lang/String;

    return-void
.end method

.method public fillLocationDetails(Lcom/startapp/android/publish/common/model/AdPreferences;Landroid/content/Context;)V
    .registers 7

    .line 761
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->locations:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_3f

    .line 765
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 768
    new-instance v1, Landroid/location/Location;

    const-string v2, "loc"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->getLongitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 770
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->getLongitude()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    const-string p1, "API"

    .line 771
    invoke-virtual {v1, p1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 772
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->locations:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    goto :goto_40

    :cond_3f
    const/4 p1, 0x0

    .line 775
    :goto_40
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/startapp/android/publish/adsCommon/m;->h(Landroid/content/Context;)V

    .line 779
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getLocationConfig()Lcom/startapp/android/publish/common/metaData/LocationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/LocationConfig;->isFiEnabled()Z

    move-result v1

    .line 780
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/common/metaData/MetaData;->getLocationConfig()Lcom/startapp/android/publish/common/metaData/LocationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/common/metaData/LocationConfig;->isCoEnabled()Z

    move-result v2

    .line 778
    invoke-static {p2, v1, v2}, Lcom/startapp/common/a/f;->a(Landroid/content/Context;ZZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 781
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_71

    .line 783
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->locations:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_72

    :cond_71
    move v0, p1

    .line 786
    :goto_72
    invoke-static {p2, v0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->setUsingLocation(Landroid/content/Context;Z)V

    return-void
.end method

.method public getAndroidId()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppCode()I
    .registers 2

    .line 498
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->appCode:I

    return v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .registers 2

    .line 490
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBlat()Ljava/lang/String;
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->blat:Ljava/lang/String;

    return-object v0
.end method

.method public getBlon()Ljava/lang/String;
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->blon:Ljava/lang/String;

    return-object v0
.end method

.method public getBssid()Ljava/lang/String;
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCellSignalLevel()Ljava/lang/String;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->cellSignalLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getDensity()F
    .registers 2

    .line 461
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->density:F

    return v0
.end method

.method public getDeviceIP()Ljava/lang/String;
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->deviceIP:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->deviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 410
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->height:I

    return v0
.end method

.method public getInputLangs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->inputLangs:Ljava/util/Set;

    return-object v0
.end method

.method public getInstallerPkg()Ljava/lang/String;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->installerPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getIsp()Ljava/lang/String;
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->isp:Ljava/lang/String;

    return-object v0
.end method

.method public getIspName()Ljava/lang/String;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->ispName:Ljava/lang/String;

    return-object v0
.end method

.method public getLac()Ljava/lang/String;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->lac:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getLocations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->locations:Ljava/util/List;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNameValueJson()Lcom/startapp/android/publish/adsCommon/Utils/e;
    .registers 2

    .line 596
    new-instance v0, Lcom/startapp/android/publish/adsCommon/Utils/c;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/Utils/c;-><init>()V

    .line 597
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->addParams(Lcom/startapp/android/publish/adsCommon/Utils/e;)V

    return-object v0
.end method

.method public getNameValueMap()Lcom/startapp/android/publish/adsCommon/Utils/e;
    .registers 2

    .line 602
    new-instance v0, Lcom/startapp/android/publish/adsCommon/Utils/d;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/Utils/d;-><init>()V

    .line 603
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->addParams(Lcom/startapp/android/publish/adsCommon/Utils/e;)V

    return-object v0
.end method

.method public getNetOper()Ljava/lang/String;
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->netOper:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperName()Ljava/lang/String;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->networkOperName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .registers 2

    .line 398
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->packageId:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestString()Ljava/lang/String;
    .registers 2

    .line 703
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/BaseRequest;->getNameValueMap()Lcom/startapp/android/publish/adsCommon/Utils/e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkFlavor()J
    .registers 3

    .line 136
    iget-wide v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->sdkFlavor:J

    return-wide v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .line 426
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->clientSessionId:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getSignalLevel()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->signalLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getSubProductId()Ljava/lang/String;
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->subProductId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubPublisherId()Ljava/lang/String;
    .registers 2

    .line 382
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->subPublisherId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAdvertisingId()Lcom/startapp/common/a/b$c;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->userAdvertisingId:Lcom/startapp/common/a/b$c;

    return-object v0
.end method

.method public getWfScanRes()Ljava/lang/String;
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->wfScanRes:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 402
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->width:I

    return v0
.end method

.method public getWifiRssiLevel()Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->wifiRSSILevel:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSignalLevel()Ljava/lang/String;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->wifiSignalLevel:Ljava/lang/String;

    return-object v0
.end method

.method public isAppOnForeground()Ljava/lang/Boolean;
    .registers 2

    .line 469
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->appOnForeground:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isRoaming()Ljava/lang/Boolean;
    .registers 2

    .line 437
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->roaming:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isUnknownSourcesAllowed()Ljava/lang/Boolean;
    .registers 2

    .line 453
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->unknownSourcesAllowed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAppCode(I)V
    .registers 2

    .line 502
    iput p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->appCode:I

    return-void
.end method

.method public setAppOnForeground(Landroid/content/Context;)V
    .registers 2

    .line 474
    :try_start_0
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->e(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->appOnForeground:Ljava/lang/Boolean;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_e

    :catch_b
    const/4 p1, 0x0

    .line 477
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->appOnForeground:Ljava/lang/Boolean;

    :goto_e
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .registers 2

    .line 494
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setBlat(Ljava/lang/String;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->blat:Ljava/lang/String;

    return-void
.end method

.method public setBlon(Ljava/lang/String;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->blon:Ljava/lang/String;

    return-void
.end method

.method public setBssid(Ljava/lang/String;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->bssid:Ljava/lang/String;

    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->cid:Ljava/lang/String;

    return-void
.end method

.method public setDensity(F)V
    .registers 2

    .line 465
    iput p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->density:F

    return-void
.end method

.method public setDeviceIP(Landroid/net/wifi/WifiInfo;)V
    .registers 2

    .line 449
    invoke-static {p1}, Lcom/startapp/common/a/h;->a(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->deviceIP:Ljava/lang/String;

    return-void
.end method

.method public setDeviceVersion(Ljava/lang/String;)V
    .registers 2

    .line 370
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->deviceVersion:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 414
    iput p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->height:I

    return-void
.end method

.method public setInputLangs(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 486
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->inputLangs:Ljava/util/Set;

    return-void
.end method

.method public setInstallerPkg(Ljava/lang/String;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->installerPkg:Ljava/lang/String;

    return-void
.end method

.method public setIsp(Ljava/lang/String;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->isp:Ljava/lang/String;

    return-void
.end method

.method public setIspName(Ljava/lang/String;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->ispName:Ljava/lang/String;

    return-void
.end method

.method public setLac(Ljava/lang/String;)V
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->lac:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->locale:Ljava/lang/String;

    return-void
.end method

.method public setLocations(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 510
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->locations:Ljava/util/List;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .registers 2

    .line 362
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    .line 354
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->model:Ljava/lang/String;

    return-void
.end method

.method public setNetOper(Ljava/lang/String;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->netOper:Ljava/lang/String;

    return-void
.end method

.method public setNetworkOperName(Ljava/lang/String;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->networkOperName:Ljava/lang/String;

    return-void
.end method

.method public setPackageId(Ljava/lang/String;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->packageId:Ljava/lang/String;

    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->parameters:Ljava/util/Map;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->productId:Ljava/lang/String;

    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->publisherId:Ljava/lang/String;

    return-void
.end method

.method public setRetry(I)V
    .registers 2

    const/4 p1, 0x0

    .line 350
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->retry:Ljava/lang/Integer;

    return-void
.end method

.method public setRoaming(Landroid/content/Context;)V
    .registers 2

    .line 441
    invoke-static {p1}, Lcom/startapp/common/a/h;->c(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->roaming:Ljava/lang/Boolean;

    return-void
.end method

.method public setSdkFlavor(J)V
    .registers 3

    .line 140
    iput-wide p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->sdkFlavor:J

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .registers 2

    .line 422
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 2

    .line 433
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->clientSessionId:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->ssid:Ljava/lang/String;

    return-void
.end method

.method public setSubProductId(Ljava/lang/String;)V
    .registers 2

    .line 394
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->subProductId:Ljava/lang/String;

    return-void
.end method

.method public setSubPublisherId(Ljava/lang/String;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->subPublisherId:Ljava/lang/String;

    return-void
.end method

.method public setUnknownSourcesAllowed(Ljava/lang/Boolean;)V
    .registers 2

    .line 457
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->unknownSourcesAllowed:Ljava/lang/Boolean;

    return-void
.end method

.method public setUserAdvertisingId(Lcom/startapp/common/a/b$c;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->userAdvertisingId:Lcom/startapp/common/a/b$c;

    return-void
.end method

.method public setWfScanRes(Ljava/lang/String;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->wfScanRes:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 406
    iput p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseRequest [parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest;->parameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
