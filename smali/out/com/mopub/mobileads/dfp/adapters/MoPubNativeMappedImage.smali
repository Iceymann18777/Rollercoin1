.class public Lcom/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage;
.super Lcom/google/android/gms/ads/formats/NativeAd$Image;
.source "MoPubNativeMappedImage.java"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageUri:Landroid/net/Uri;

.field private mScale:D


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;D)V
    .registers 5

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 20
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage;->mImageUri:Landroid/net/Uri;

    .line 21
    iput-wide p3, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage;->mScale:D

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getScale()D
    .registers 3

    .line 36
    iget-wide v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage;->mScale:D

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method
