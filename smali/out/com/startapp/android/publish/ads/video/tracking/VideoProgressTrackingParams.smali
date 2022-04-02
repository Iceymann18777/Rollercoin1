.class public Lcom/startapp/android/publish/ads/video/tracking/VideoProgressTrackingParams;
.super Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getCompletedQuery()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method
