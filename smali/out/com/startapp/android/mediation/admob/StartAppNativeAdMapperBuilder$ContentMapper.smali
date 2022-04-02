.class Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$ContentMapper;
.super Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;
.source "StartAppNativeAdMapperBuilder.java"

# interfaces
.implements Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$IMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContentMapper"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field details:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;)V
    .registers 3

    .line 122
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$ContentMapper;->context:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$ContentMapper;->details:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    return-void
.end method


# virtual methods
.method public asMapper()Lcom/google/android/gms/ads/mediation/NativeAdMapper;
    .registers 1

    return-object p0
.end method

.method public handleClick(Landroid/view/View;)V
    .registers 3

    .line 134
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$ContentMapper;->details:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$ContentMapper;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->sendClick(Landroid/content/Context;)V

    return-void
.end method

.method public recordImpression()V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$ContentMapper;->details:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    iget-object v1, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$ContentMapper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->sendImpression(Landroid/content/Context;)V

    return-void
.end method

.method public setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V
    .registers 2

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setStarRating(D)V
    .registers 3

    return-void
.end method

.method public setStore(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
