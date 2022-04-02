.class Lcom/mopub/nativeads/MoPubCustomEventVideoNative$NativeVideoControllerFactory;
.super Ljava/lang/Object;
.source "MoPubCustomEventVideoNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventVideoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeVideoControllerFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createForId(JLandroid/content/Context;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;)Lcom/mopub/nativeads/NativeVideoController;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;",
            "Lcom/mopub/mobileads/VastVideoConfig;",
            ")",
            "Lcom/mopub/nativeads/NativeVideoController;"
        }
    .end annotation

    .line 964
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mopub/nativeads/NativeVideoController;->createForId(JLandroid/content/Context;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;)Lcom/mopub/nativeads/NativeVideoController;

    move-result-object p1

    return-object p1
.end method
