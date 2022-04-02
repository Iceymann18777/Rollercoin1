.class Lcom/mopub/common/VisibilityTracker$TrackingInfo;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/VisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackingInfo"
.end annotation


# instance fields
.field mAccessOrder:J

.field mMaxInvisiblePercent:I

.field mMinViewablePercent:I

.field mMinVisiblePx:Ljava/lang/Integer;

.field mRootView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
