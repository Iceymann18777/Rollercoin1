.class Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$2;->a:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SingleAd ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$2;->a:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    iget v1, v1, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] Loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartAppNativeAd"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$2;->a:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->b:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$a;

    if-eqz v0, :cond_31

    .line 114
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$2;->a:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->b:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$a;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$2;->a:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    iget v1, v1, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->a:I

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$a;->onNativeAdDetailsLoaded(I)V

    :cond_31
    return-void
.end method
