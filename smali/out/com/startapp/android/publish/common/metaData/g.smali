.class public Lcom/startapp/android/publish/common/metaData/g;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ambientTemperatureSensor:Lcom/startapp/android/publish/common/metaData/a;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private enabled:Z

.field private gravitySensor:Lcom/startapp/android/publish/common/metaData/a;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private gyroscopeUncalibratedSensor:Lcom/startapp/android/publish/common/metaData/a;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private lightSensor:Lcom/startapp/android/publish/common/metaData/a;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private linearAccelerationSensor:Lcom/startapp/android/publish/common/metaData/a;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private magneticFieldSensor:Lcom/startapp/android/publish/common/metaData/a;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private pressureSensor:Lcom/startapp/android/publish/common/metaData/a;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private relativeHumiditySensor:Lcom/startapp/android/publish/common/metaData/a;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private rotationVectorSensor:Lcom/startapp/android/publish/common/metaData/a;
    .annotation runtime Lcom/startapp/common/c/f;
        a = true
    .end annotation
.end field

.field private timeoutInSec:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 13
    iput v0, p0, Lcom/startapp/android/publish/common/metaData/g;->timeoutInSec:I

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/g;->enabled:Z

    .line 16
    new-instance v0, Lcom/startapp/android/publish/common/metaData/a;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/common/metaData/a;-><init>(I)V

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->ambientTemperatureSensor:Lcom/startapp/android/publish/common/metaData/a;

    .line 19
    new-instance v0, Lcom/startapp/android/publish/common/metaData/a;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Lcom/startapp/android/publish/common/metaData/a;-><init>(I)V

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->gravitySensor:Lcom/startapp/android/publish/common/metaData/a;

    .line 22
    new-instance v0, Lcom/startapp/android/publish/common/metaData/a;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lcom/startapp/android/publish/common/metaData/a;-><init>(I)V

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->lightSensor:Lcom/startapp/android/publish/common/metaData/a;

    .line 25
    new-instance v0, Lcom/startapp/android/publish/common/metaData/a;

    invoke-direct {v0, v2}, Lcom/startapp/android/publish/common/metaData/a;-><init>(I)V

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->linearAccelerationSensor:Lcom/startapp/android/publish/common/metaData/a;

    .line 28
    new-instance v0, Lcom/startapp/android/publish/common/metaData/a;

    invoke-direct {v0, v3}, Lcom/startapp/android/publish/common/metaData/a;-><init>(I)V

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->magneticFieldSensor:Lcom/startapp/android/publish/common/metaData/a;

    .line 31
    new-instance v0, Lcom/startapp/android/publish/common/metaData/a;

    invoke-direct {v0, v2}, Lcom/startapp/android/publish/common/metaData/a;-><init>(I)V

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->pressureSensor:Lcom/startapp/android/publish/common/metaData/a;

    .line 34
    new-instance v0, Lcom/startapp/android/publish/common/metaData/a;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/common/metaData/a;-><init>(I)V

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->relativeHumiditySensor:Lcom/startapp/android/publish/common/metaData/a;

    .line 37
    new-instance v0, Lcom/startapp/android/publish/common/metaData/a;

    invoke-direct {v0, v2}, Lcom/startapp/android/publish/common/metaData/a;-><init>(I)V

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->rotationVectorSensor:Lcom/startapp/android/publish/common/metaData/a;

    .line 40
    new-instance v0, Lcom/startapp/android/publish/common/metaData/a;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/common/metaData/a;-><init>(I)V

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->gyroscopeUncalibratedSensor:Lcom/startapp/android/publish/common/metaData/a;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/startapp/android/publish/common/metaData/g;->timeoutInSec:I

    return v0
.end method

.method public b()Z
    .registers 2

    .line 54
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/g;->enabled:Z

    return v0
.end method

.method public c()Lcom/startapp/android/publish/common/metaData/a;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->ambientTemperatureSensor:Lcom/startapp/android/publish/common/metaData/a;

    return-object v0
.end method

.method public d()Lcom/startapp/android/publish/common/metaData/a;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->gravitySensor:Lcom/startapp/android/publish/common/metaData/a;

    return-object v0
.end method

.method public e()Lcom/startapp/android/publish/common/metaData/a;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->lightSensor:Lcom/startapp/android/publish/common/metaData/a;

    return-object v0
.end method

.method public f()Lcom/startapp/android/publish/common/metaData/a;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->linearAccelerationSensor:Lcom/startapp/android/publish/common/metaData/a;

    return-object v0
.end method

.method public g()Lcom/startapp/android/publish/common/metaData/a;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->magneticFieldSensor:Lcom/startapp/android/publish/common/metaData/a;

    return-object v0
.end method

.method public h()Lcom/startapp/android/publish/common/metaData/a;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->pressureSensor:Lcom/startapp/android/publish/common/metaData/a;

    return-object v0
.end method

.method public i()Lcom/startapp/android/publish/common/metaData/a;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->relativeHumiditySensor:Lcom/startapp/android/publish/common/metaData/a;

    return-object v0
.end method

.method public j()Lcom/startapp/android/publish/common/metaData/a;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->rotationVectorSensor:Lcom/startapp/android/publish/common/metaData/a;

    return-object v0
.end method

.method public k()Lcom/startapp/android/publish/common/metaData/a;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/g;->gyroscopeUncalibratedSensor:Lcom/startapp/android/publish/common/metaData/a;

    return-object v0
.end method
