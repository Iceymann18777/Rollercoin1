.class Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$1;
.super Ljava/lang/Object;
.source "MoPubCustomEventVideoNative.java"

# interfaces
.implements Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;Lcom/mopub/common/VisibilityTracker;Lcom/mopub/nativeads/MoPubCustomEventVideoNative$NativeVideoControllerFactory;Ljava/lang/String;Lcom/mopub/mobileads/VastManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 270
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$000(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 271
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$002(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;Z)Z

    .line 272
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$100(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V

    goto :goto_33

    .line 273
    :cond_1a
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_33

    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$000(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 274
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$002(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;Z)Z

    .line 275
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$100(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V

    :cond_33
    :goto_33
    return-void
.end method
