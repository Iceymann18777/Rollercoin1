.class Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/common/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;-><init>(Lcom/startapp/android/publish/common/model/AdDetails;Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;ILcom/startapp/android/publish/ads/nativead/NativeAdDetails$a;)V
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

    .line 55
    iput-object p1, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1;->a:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;I)V
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1;->a:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->a(Landroid/graphics/Bitmap;)V

    .line 59
    new-instance p1, Lcom/startapp/common/a;

    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1;->a:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getSecondaryImageUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1$1;-><init>(Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1;)V

    invoke-direct {p1, v0, v1, p2}, Lcom/startapp/common/a;-><init>(Ljava/lang/String;Lcom/startapp/common/a$a;I)V

    .line 65
    invoke-virtual {p1}, Lcom/startapp/common/a;->a()V

    return-void
.end method
