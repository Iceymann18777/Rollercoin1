.class public Lcom/startapp/android/mediation/admob/StartAppNativeAdImage;
.super Lcom/google/android/gms/ads/formats/NativeAd$Image;
.source "StartAppNativeAdImage.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdImage;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdImage;->bitmap:Landroid/graphics/Bitmap;

    .line 19
    iput-object p3, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdImage;->uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 25
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdImage;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getScale()D
    .registers 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdImage;->uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
