.class public final Lcom/truenet/android/a/f;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static final a(Landroid/telephony/TelephonyManager;)I
    .registers 4

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_44

    .line 16
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {v0}, La/a/a/g;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 18
    :goto_19
    instance-of v1, v0, Landroid/telephony/CellInfoGsm;

    const-string v2, "info.cellIdentity"

    if-eqz v1, :cond_2d

    check-cast v0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    invoke-static {p0, v2}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p0

    goto :goto_48

    .line 19
    :cond_2d
    instance-of v1, v0, Landroid/telephony/CellInfoCdma;

    if-eqz v1, :cond_3f

    check-cast v0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    invoke-static {p0, v2}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p0

    goto :goto_48

    .line 20
    :cond_3f
    invoke-static {p0}, Lcom/truenet/android/a/f;->c(Landroid/telephony/TelephonyManager;)I

    move-result p0

    goto :goto_48

    .line 22
    :cond_44
    invoke-static {p0}, Lcom/truenet/android/a/f;->c(Landroid/telephony/TelephonyManager;)I

    move-result p0

    :goto_48
    return p0
.end method

.method public static final b(Landroid/telephony/TelephonyManager;)I
    .registers 3

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_32

    .line 26
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {v0}, La/a/a/g;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 28
    :goto_19
    instance-of v1, v0, Landroid/telephony/CellInfoGsm;

    if-eqz v1, :cond_2d

    check-cast v0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    const-string v0, "info.cellIdentity"

    invoke-static {p0, v0}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p0

    goto :goto_36

    .line 29
    :cond_2d
    invoke-static {p0}, Lcom/truenet/android/a/f;->d(Landroid/telephony/TelephonyManager;)I

    move-result p0

    goto :goto_36

    .line 31
    :cond_32
    invoke-static {p0}, Lcom/truenet/android/a/f;->d(Landroid/telephony/TelephonyManager;)I

    move-result p0

    :goto_36
    return p0
.end method

.method private static final c(Landroid/telephony/TelephonyManager;)I
    .registers 2

    .line 35
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    .line 37
    instance-of v0, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_f

    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p0

    goto :goto_1b

    .line 38
    :cond_f
    instance-of v0, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_1a

    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p0

    goto :goto_1b

    :cond_1a
    const/4 p0, -0x1

    :goto_1b
    return p0
.end method

.method private static final d(Landroid/telephony/TelephonyManager;)I
    .registers 2

    .line 45
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    .line 47
    instance-of v0, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_f

    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, -0x1

    :goto_10
    return p0
.end method
