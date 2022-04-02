.class Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$AppInstallMapper;
.super Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;
.source "StartAppNativeAdMapperBuilder.java"

# interfaces
.implements Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$IMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppInstallMapper"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field details:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;)V
    .registers 3

    .line 97
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$AppInstallMapper;->context:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$AppInstallMapper;->details:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    return-void
.end method


# virtual methods
.method public asMapper()Lcom/google/android/gms/ads/mediation/NativeAdMapper;
    .registers 1

    return-object p0
.end method

.method public handleClick(Landroid/view/View;)V
    .registers 3

    .line 109
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$AppInstallMapper;->details:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$AppInstallMapper;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->sendClick(Landroid/content/Context;)V

    return-void
.end method

.method public recordImpression()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$AppInstallMapper;->details:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    iget-object v1, p0, Lcom/startapp/android/mediation/admob/StartAppNativeAdMapperBuilder$AppInstallMapper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->sendImpression(Landroid/content/Context;)V

    return-void
.end method
