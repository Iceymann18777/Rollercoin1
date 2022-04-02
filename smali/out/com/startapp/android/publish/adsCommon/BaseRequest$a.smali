.class Lcom/startapp/android/publish/adsCommon/BaseRequest$a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/BaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/net/wifi/ScanResult;


# direct methods
.method public constructor <init>(Landroid/net/wifi/ScanResult;)V
    .registers 2

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest$a;->a:Landroid/net/wifi/ScanResult;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 8

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 846
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest$a;->a:Landroid/net/wifi/ScanResult;

    if-eqz v1, :cond_53

    .line 847
    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 848
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest$a;->a:Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 849
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest$a;->a:Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 851
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest$a;->a:Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    .line 852
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 854
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest$a;->a:Landroid/net/wifi/ScanResult;

    invoke-static {v2}, Lcom/startapp/common/a/c;->a(Landroid/net/wifi/ScanResult;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_45

    .line 856
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 858
    :cond_45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 860
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/BaseRequest$a;->a:Landroid/net/wifi/ScanResult;

    invoke-static {v1}, Lcom/startapp/common/a/c;->b(Landroid/net/wifi/ScanResult;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 862
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 865
    :cond_53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
