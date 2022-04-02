.class public abstract Lcom/startapp/android/publish/ads/list3d/Dynamics;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:F

.field protected b:F

.field protected c:F

.field protected d:F

.field protected e:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 23
    iput v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->c:F

    const v0, -0x800001

    .line 26
    iput v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->d:F

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->e:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 23
    iput v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->c:F

    const v0, -0x800001

    .line 26
    iput v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->d:F

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->e:J

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->a:F

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->b:F

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->c:F

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->d:F

    .line 39
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->e:J

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .line 63
    iget v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->a:F

    return v0
.end method

.method public a(D)V
    .registers 5

    .line 184
    iget v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->a:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-float p1, v0

    iput p1, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->a:F

    return-void
.end method

.method public a(F)V
    .registers 2

    .line 104
    iput p1, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->c:F

    return-void
.end method

.method public a(FFJ)V
    .registers 5

    .line 51
    iput p2, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->b:F

    .line 52
    iput p1, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->a:F

    .line 53
    iput-wide p3, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->e:J

    return-void
.end method

.method protected abstract a(I)V
.end method

.method public a(J)V
    .registers 8

    .line 122
    iget-wide v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    sub-long v0, p1, v0

    long-to-int v1, v0

    const/16 v0, 0x32

    if-le v1, v0, :cond_11

    const/16 v1, 0x32

    .line 128
    :cond_11
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/list3d/Dynamics;->a(I)V

    .line 131
    :cond_14
    iput-wide p1, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->e:J

    return-void
.end method

.method public a(FF)Z
    .registers 8

    .line 92
    iget v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 93
    :goto_f
    iget v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->a:F

    sub-float v3, v0, p2

    iget v4, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->c:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_22

    add-float/2addr v0, p2

    iget p2, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->d:F

    cmpl-float p2, v0, p2

    if-lez p2, :cond_22

    const/4 p2, 0x1

    goto :goto_23

    :cond_22
    const/4 p2, 0x0

    :goto_23
    if-eqz p1, :cond_28

    if-eqz p2, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    return v1
.end method

.method public b()F
    .registers 2

    .line 72
    iget v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->b:F

    return v0
.end method

.method public b(F)V
    .registers 2

    .line 113
    iput p1, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->d:F

    return-void
.end method

.method protected c()F
    .registers 4

    .line 144
    iget v0, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->a:F

    iget v1, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->c:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_a

    :goto_8
    sub-float/2addr v1, v0

    goto :goto_12

    .line 146
    :cond_a
    iget v1, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->d:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_11

    goto :goto_8

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Position: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], Velocity:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], MaxPos: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], mMinPos: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] LastTime:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 170
    iget p2, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->a:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 171
    iget p2, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->b:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 172
    iget p2, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->c:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 173
    iget p2, p0, Lcom/startapp/android/publish/ads/list3d/Dynamics;->d:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
