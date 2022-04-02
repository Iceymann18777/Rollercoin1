.class Lcom/mopub/nativeads/MoPubCustomEventVideoNative$HeaderVisibilityStrategy;
.super Ljava/lang/Object;
.source "MoPubCustomEventVideoNative.java"

# interfaces
.implements Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent$OnTrackedStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventVideoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeaderVisibilityStrategy"
.end annotation


# instance fields
.field private final mMoPubVideoNativeAd:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V
    .registers 3

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$HeaderVisibilityStrategy;->mMoPubVideoNativeAd:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 2

    .line 932
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$HeaderVisibilityStrategy;->mMoPubVideoNativeAd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    if-eqz v0, :cond_d

    .line 934
    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->notifyAdImpressed()V

    :cond_d
    return-void
.end method
