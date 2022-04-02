.class public Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;
.super Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/startapp/common/c/e;
    c = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fraction:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;-><init>()V

    return-void
.end method


# virtual methods
.method public getFraction()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;->fraction:I

    return v0
.end method

.method public setFraction(I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;->fraction:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/startapp/android/publish/ads/video/tracking/FractionTrackingLink;->fraction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
