.class interface abstract Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$IMapper;
.super Ljava/lang/Object;
.source "StartAppNativeAdMapperBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IMapper"
.end annotation


# virtual methods
.method public abstract asMapper()Lcom/google/android/gms/ads/mediation/NativeAdMapper;
.end method

.method public abstract setBody(Ljava/lang/String;)V
.end method

.method public abstract setCallToAction(Ljava/lang/String;)V
.end method

.method public abstract setHeadline(Ljava/lang/String;)V
.end method

.method public abstract setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V
.end method

.method public abstract setImages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPrice(Ljava/lang/String;)V
.end method

.method public abstract setStarRating(D)V
.end method

.method public abstract setStore(Ljava/lang/String;)V
.end method
