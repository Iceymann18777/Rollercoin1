.class public final Lcom/truenet/android/DeviceInfo;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final advertisingId:Ljava/lang/String;

.field private final cellId:Ljava/lang/String;

.field private final deviceManufacturer:Ljava/lang/String;

.field private final deviceModel:Ljava/lang/String;

.field private final deviceType:Ljava/lang/String;

.field private final deviceVersion:Ljava/lang/String;

.field private final isp:Ljava/lang/String;

.field private final ispName:Ljava/lang/String;

.field private final latitude:Ljava/lang/String;

.field private final locale:Ljava/lang/String;

.field private final locationAreaCode:Ljava/lang/String;

.field private final longitude:Ljava/lang/String;

.field private final networkOperName:Ljava/lang/String;

.field private final networkType:Ljava/lang/String;

.field private final osId:Ljava/lang/String;

.field private final osVer:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field private final sdkVersion:Ljava/lang/String;

.field private final signalLevel:Ljava/lang/String;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "latitude"

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "longitude"

    invoke-static {v2, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    invoke-static {v3, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {v4, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisingId"

    invoke-static {v5, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osId"

    invoke-static {v6, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osVer"

    invoke-static {v7, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceModel"

    invoke-static {v8, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManufacturer"

    invoke-static {v9, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceVersion"

    invoke-static {v10, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {v11, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkOperName"

    invoke-static {v12, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isp"

    invoke-static {v13, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ispName"

    invoke-static {v14, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellId"

    invoke-static {v15, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationAreaCode"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signalLevel"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceType"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkVersion"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherId"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Lcom/truenet/android/DeviceInfo;->latitude:Ljava/lang/String;

    iput-object v2, v0, Lcom/truenet/android/DeviceInfo;->longitude:Ljava/lang/String;

    iput-object v3, v0, Lcom/truenet/android/DeviceInfo;->userAgent:Ljava/lang/String;

    iput-object v4, v0, Lcom/truenet/android/DeviceInfo;->locale:Ljava/lang/String;

    iput-object v5, v0, Lcom/truenet/android/DeviceInfo;->advertisingId:Ljava/lang/String;

    iput-object v6, v0, Lcom/truenet/android/DeviceInfo;->osId:Ljava/lang/String;

    iput-object v7, v0, Lcom/truenet/android/DeviceInfo;->osVer:Ljava/lang/String;

    iput-object v8, v0, Lcom/truenet/android/DeviceInfo;->deviceModel:Ljava/lang/String;

    iput-object v9, v0, Lcom/truenet/android/DeviceInfo;->deviceManufacturer:Ljava/lang/String;

    iput-object v10, v0, Lcom/truenet/android/DeviceInfo;->deviceVersion:Ljava/lang/String;

    iput-object v11, v0, Lcom/truenet/android/DeviceInfo;->packageName:Ljava/lang/String;

    iput-object v12, v0, Lcom/truenet/android/DeviceInfo;->networkOperName:Ljava/lang/String;

    iput-object v13, v0, Lcom/truenet/android/DeviceInfo;->isp:Ljava/lang/String;

    iput-object v14, v0, Lcom/truenet/android/DeviceInfo;->ispName:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/truenet/android/DeviceInfo;->cellId:Ljava/lang/String;

    iput-object v15, v0, Lcom/truenet/android/DeviceInfo;->locationAreaCode:Ljava/lang/String;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Lcom/truenet/android/DeviceInfo;->networkType:Ljava/lang/String;

    iput-object v2, v0, Lcom/truenet/android/DeviceInfo;->signalLevel:Ljava/lang/String;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    iput-object v1, v0, Lcom/truenet/android/DeviceInfo;->deviceType:Ljava/lang/String;

    iput-object v2, v0, Lcom/truenet/android/DeviceInfo;->sdkVersion:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/truenet/android/DeviceInfo;->publisherId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truenet/android/DeviceInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/truenet/android/DeviceInfo;
    .registers 41

    move-object/from16 v0, p0

    move/from16 v1, p22

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/truenet/android/DeviceInfo;->latitude:Ljava/lang/String;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/truenet/android/DeviceInfo;->longitude:Ljava/lang/String;

    goto :goto_16

    :cond_14
    move-object/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/truenet/android/DeviceInfo;->userAgent:Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget-object v5, v0, Lcom/truenet/android/DeviceInfo;->locale:Ljava/lang/String;

    goto :goto_28

    :cond_26
    move-object/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget-object v6, v0, Lcom/truenet/android/DeviceInfo;->advertisingId:Ljava/lang/String;

    goto :goto_31

    :cond_2f
    move-object/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-object v7, v0, Lcom/truenet/android/DeviceInfo;->osId:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    move-object/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-object v8, v0, Lcom/truenet/android/DeviceInfo;->osVer:Ljava/lang/String;

    goto :goto_43

    :cond_41
    move-object/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4a

    iget-object v9, v0, Lcom/truenet/android/DeviceInfo;->deviceModel:Ljava/lang/String;

    goto :goto_4c

    :cond_4a
    move-object/from16 v9, p8

    :goto_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_53

    iget-object v10, v0, Lcom/truenet/android/DeviceInfo;->deviceManufacturer:Ljava/lang/String;

    goto :goto_55

    :cond_53
    move-object/from16 v10, p9

    :goto_55
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5c

    iget-object v11, v0, Lcom/truenet/android/DeviceInfo;->deviceVersion:Ljava/lang/String;

    goto :goto_5e

    :cond_5c
    move-object/from16 v11, p10

    :goto_5e
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_65

    iget-object v12, v0, Lcom/truenet/android/DeviceInfo;->packageName:Ljava/lang/String;

    goto :goto_67

    :cond_65
    move-object/from16 v12, p11

    :goto_67
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6e

    iget-object v13, v0, Lcom/truenet/android/DeviceInfo;->networkOperName:Ljava/lang/String;

    goto :goto_70

    :cond_6e
    move-object/from16 v13, p12

    :goto_70
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_77

    iget-object v14, v0, Lcom/truenet/android/DeviceInfo;->isp:Ljava/lang/String;

    goto :goto_79

    :cond_77
    move-object/from16 v14, p13

    :goto_79
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_80

    iget-object v15, v0, Lcom/truenet/android/DeviceInfo;->ispName:Ljava/lang/String;

    goto :goto_82

    :cond_80
    move-object/from16 v15, p14

    :goto_82
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8b

    iget-object v15, v0, Lcom/truenet/android/DeviceInfo;->cellId:Ljava/lang/String;

    goto :goto_8d

    :cond_8b
    move-object/from16 v15, p15

    :goto_8d
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_99

    iget-object v15, v0, Lcom/truenet/android/DeviceInfo;->locationAreaCode:Ljava/lang/String;

    goto :goto_9b

    :cond_99
    move-object/from16 v15, p16

    :goto_9b
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_a6

    iget-object v15, v0, Lcom/truenet/android/DeviceInfo;->networkType:Ljava/lang/String;

    goto :goto_a8

    :cond_a6
    move-object/from16 v15, p17

    :goto_a8
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_b3

    iget-object v15, v0, Lcom/truenet/android/DeviceInfo;->signalLevel:Ljava/lang/String;

    goto :goto_b5

    :cond_b3
    move-object/from16 v15, p18

    :goto_b5
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_c0

    iget-object v15, v0, Lcom/truenet/android/DeviceInfo;->deviceType:Ljava/lang/String;

    goto :goto_c2

    :cond_c0
    move-object/from16 v15, p19

    :goto_c2
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_cd

    iget-object v15, v0, Lcom/truenet/android/DeviceInfo;->sdkVersion:Ljava/lang/String;

    goto :goto_cf

    :cond_cd
    move-object/from16 v15, p20

    :goto_cf
    const/high16 v16, 0x100000

    and-int v1, v1, v16

    if-eqz v1, :cond_d8

    iget-object v1, v0, Lcom/truenet/android/DeviceInfo;->publisherId:Ljava/lang/String;

    goto :goto_da

    :cond_d8
    move-object/from16 v1, p21

    :goto_da
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p20, v15

    move-object/from16 p21, v1

    invoke-virtual/range {p0 .. p21}, Lcom/truenet/android/DeviceInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truenet/android/DeviceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->deviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->networkOperName:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->isp:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->ispName:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->cellId:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->locationAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->signalLevel:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->osId:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->osVer:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->deviceManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truenet/android/DeviceInfo;
    .registers 46

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    const-string v0, "latitude"

    move-object/from16 v22, v1

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "longitude"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisingId"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osId"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osVer"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceModel"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManufacturer"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceVersion"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkOperName"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isp"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ispName"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellId"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationAreaCode"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signalLevel"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceType"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkVersion"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherId"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v23, Lcom/truenet/android/DeviceInfo;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct/range {v0 .. v21}, Lcom/truenet/android/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_dd

    instance-of v0, p1, Lcom/truenet/android/DeviceInfo;

    if-eqz v0, :cond_db

    check-cast p1, Lcom/truenet/android/DeviceInfo;

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->latitude:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->latitude:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->longitude:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->longitude:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->userAgent:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->userAgent:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->locale:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->locale:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->advertisingId:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->advertisingId:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->osId:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->osId:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->osVer:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->osVer:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->deviceModel:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->deviceModel:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->deviceManufacturer:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->deviceManufacturer:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->deviceVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->deviceVersion:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->networkOperName:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->networkOperName:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->isp:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->isp:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->ispName:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->ispName:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->cellId:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->cellId:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->locationAreaCode:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->locationAreaCode:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->networkType:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->networkType:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->signalLevel:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->signalLevel:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->deviceType:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->deviceType:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->sdkVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/truenet/android/DeviceInfo;->sdkVersion:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->publisherId:Ljava/lang/String;

    iget-object p1, p1, Lcom/truenet/android/DeviceInfo;->publisherId:Ljava/lang/String;

    invoke-static {v0, p1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_db

    goto :goto_dd

    :cond_db
    const/4 p1, 0x0

    return p1

    :cond_dd
    :goto_dd
    const/4 p1, 0x1

    return p1
.end method

.method public final getAdvertisingId()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCellId()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->cellId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceManufacturer()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->deviceManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceModel()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceType()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceVersion()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->deviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsp()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->isp:Ljava/lang/String;

    return-object v0
.end method

.method public final getIspName()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->ispName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatitude()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocale()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocationAreaCode()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->locationAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getLongitude()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkOperName()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->networkOperName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsId()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->osId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsVer()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->osVer:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublisherId()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignalLevel()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->signalLevel:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/truenet/android/DeviceInfo;->latitude:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->longitude:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->userAgent:Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->locale:Ljava/lang/String;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->advertisingId:Ljava/lang/String;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->osId:Ljava/lang/String;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->osVer:Ljava/lang/String;

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->deviceModel:Ljava/lang/String;

    if-eqz v2, :cond_64

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_65

    :cond_64
    const/4 v2, 0x0

    :goto_65
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->deviceManufacturer:Ljava/lang/String;

    if-eqz v2, :cond_71

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_72

    :cond_71
    const/4 v2, 0x0

    :goto_72
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->deviceVersion:Ljava/lang/String;

    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7f

    :cond_7e
    const/4 v2, 0x0

    :goto_7f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_8b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8c

    :cond_8b
    const/4 v2, 0x0

    :goto_8c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->networkOperName:Ljava/lang/String;

    if-eqz v2, :cond_98

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->isp:Ljava/lang/String;

    if-eqz v2, :cond_a5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a6

    :cond_a5
    const/4 v2, 0x0

    :goto_a6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->ispName:Ljava/lang/String;

    if-eqz v2, :cond_b2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b3

    :cond_b2
    const/4 v2, 0x0

    :goto_b3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->cellId:Ljava/lang/String;

    if-eqz v2, :cond_bf

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c0

    :cond_bf
    const/4 v2, 0x0

    :goto_c0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->locationAreaCode:Ljava/lang/String;

    if-eqz v2, :cond_cc

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_cd

    :cond_cc
    const/4 v2, 0x0

    :goto_cd
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->networkType:Ljava/lang/String;

    if-eqz v2, :cond_d9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_da

    :cond_d9
    const/4 v2, 0x0

    :goto_da
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->signalLevel:Ljava/lang/String;

    if-eqz v2, :cond_e6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e7

    :cond_e6
    const/4 v2, 0x0

    :goto_e7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->deviceType:Ljava/lang/String;

    if-eqz v2, :cond_f3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f4

    :cond_f3
    const/4 v2, 0x0

    :goto_f4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->sdkVersion:Ljava/lang/String;

    if-eqz v2, :cond_100

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_101

    :cond_100
    const/4 v2, 0x0

    :goto_101
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truenet/android/DeviceInfo;->publisherId:Ljava/lang/String;

    if-eqz v2, :cond_10c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_10c
    add-int/2addr v0, v1

    return v0
.end method

.method public final setPublisherId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/truenet/android/DeviceInfo;->publisherId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceInfo(latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->latitude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->longitude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", advertisingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->advertisingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", osId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->osId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", osVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->osVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->deviceModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceManufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->deviceManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->deviceVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkOperName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->networkOperName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->isp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ispName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->ispName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cellId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->cellId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", locationAreaCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->locationAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", signalLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->signalLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", publisherId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truenet/android/DeviceInfo;->publisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
