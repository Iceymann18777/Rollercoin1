.class Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/common/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1;->a(Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1$1;->a:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;I)V
    .registers 3

    .line 62
    iget-object p2, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1$1;->a:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1;

    iget-object p2, p2, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1;->a:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    invoke-virtual {p2, p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->b(Landroid/graphics/Bitmap;)V

    .line 63
    iget-object p1, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1$1;->a:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1;

    iget-object p1, p1, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1;->a:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->a()V

    return-void
.end method
