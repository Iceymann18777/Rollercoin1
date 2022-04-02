.class public Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;
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


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 13
    invoke-super {p0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
