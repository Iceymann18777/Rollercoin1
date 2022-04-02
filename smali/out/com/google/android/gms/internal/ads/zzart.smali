.class public final Lcom/google/android/gms/internal/ads/zzart;
.super Lcom/google/android/gms/internal/ads/zzaru;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqw;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaru;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Z)V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaru;->zza(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
