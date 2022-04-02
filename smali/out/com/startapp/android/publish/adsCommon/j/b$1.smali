.class Lcom/startapp/android/publish/adsCommon/j/b$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adsCommon/j/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/j/b;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/j/b$1;->a:Lcom/startapp/android/publish/adsCommon/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/j/b$1;->a:Lcom/startapp/android/publish/adsCommon/j/b;

    iget-object v0, v0, Lcom/startapp/android/publish/adsCommon/j/b;->a:Lcom/startapp/android/publish/adsCommon/j/a;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/adsCommon/j/a;->a(Landroid/hardware/SensorEvent;)I

    move-result p1

    .line 69
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/j/b$1;->a:Lcom/startapp/android/publish/adsCommon/j/b;

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/j/b;->a(Lcom/startapp/android/publish/adsCommon/j/b;)I

    move-result v0

    if-ne p1, v0, :cond_28

    .line 70
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/j/b$1;->a:Lcom/startapp/android/publish/adsCommon/j/b;

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/j/b;->b()V

    .line 71
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/j/b$1;->a:Lcom/startapp/android/publish/adsCommon/j/b;

    iget-object p1, p1, Lcom/startapp/android/publish/adsCommon/j/b;->c:Lcom/startapp/common/d;

    if-eqz p1, :cond_28

    .line 72
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/j/b$1;->a:Lcom/startapp/android/publish/adsCommon/j/b;

    iget-object p1, p1, Lcom/startapp/android/publish/adsCommon/j/b;->c:Lcom/startapp/common/d;

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/j/b$1;->a:Lcom/startapp/android/publish/adsCommon/j/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/j/b;->c()Lorg/json/JSONArray;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/startapp/common/d;->a(Ljava/lang/Object;)V

    :cond_28
    return-void
.end method
